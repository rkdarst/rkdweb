:blogpost: true
:date: 2026-04-12
:author: Richard Darst
:category: linux


Notes on Debian with a read-only root
=====================================

I run several Raspberry Pis for home servers.  They currently use SD
cards for their root filesystems (the actual data is stored either on
USB disks on NVMe disks), and I wanted a way to preserve the life of
the SD cards.  Can I make them more like an appliance, that just works
and only rarely gets updates, rather than a normal server that's
always writing to disk.

This was tested with Debian 13.4 but probably works even for much
older.


The basics
----------

Basically, add ``ro`` to the mount options for ``/`` in ``/etc/fstab``::

   PARTUUID=7ad6db44-02  /   ext4    defaults,discard,noatime,ro    0 1

This worked enough for the computer to boot and me to ssh to it, and
my feeling is it's hard to get locked out enough that you can't ssh to it.

When you need to go to read-write mode, you can ``mount -o remount,rw
/``, do what you need (package upgrades, etc.), and then reboot (or
you can try to remount to ro, but it might not work if some files are
open rw).


Stuff that automatically works
------------------------------

* The following are automatically mounted as tmpfs by default (among
  other things)
  * ``/tmp``
  * ``/run``
  * ``/run/lock``
  * ``/var/run``
  * ``/dev/shm``
  * ``/run/user/0`` (per-user tmp)

What is also already set up on a Debian system:

  * ``/etc/mtab`` (a symlink to ``/proc/self/mounts``)

Systemd / journalctl seem to track recent logs in memory, so it just
works as expected (you get logs from the last boot, plus logs that
were written to disk before the logs dir weth read-only).


Things to do
------------

Install ``resolvconf`` and it will move ``/etc/resolv.conf`` to
``/run/resolvconf/resolv.conf``.  For certain network tools you need
to configure them, but it seems that for all the default stuff, it
just works.


Samba
-----

A samba server will fail if it can't open certain directories
read-write.  For some, you can mount a tmpfs there via
``/etc/fstab``::

   tmpfs    /var/log/samba         tmpfs   defaults,size=10M   0 2
   tmpfs    /var/cache/samba       tmpfs   defaults,size=10M   0 2
   tmpfs    /var/lib/samba         tmpfs   defaults,size=10M   0 2
   tmpfs    /var/lib/samba/private tmpfs   defaults,size=10M   0 3

I don't know if mounting /var/lib/samba will cause problems long-term,
but in my case, where there is no client state needed, it seems to
work.


Nginx
-----

We need to make it able to open logs.  In ``/etc/fstab``::

  tmpfs    /var/log/nginx          tmpfs   defaults,size=50M   0 2

This would need checking to see if we run out of space for the logs,
but hopefully logrotate works frequently enough.


Docker
------

I have already moved ``/var/lib/docker/`` away from the SD card to a
NVMe disk on the system.  Docker didn't need anything else, but
containerd needed something mounted to be able to start.  In
``/etc/fstab``::

  tmpfs    /var/lib/containerd/    tmpfs   defaults,size=50M   0 2
