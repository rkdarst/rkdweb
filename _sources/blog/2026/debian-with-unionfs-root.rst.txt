:blogpost: true
:date: 2026-07-13
:author: Richard Darst
:category: linux


Debian with unionfs root
========================

I wanted to make a virtual machine that has a root that is immutable -
when booted, it would have a tmpfs for all files, and then when
reboots, everything goes back to normal.  I set this up before the
:doc:`read-only root filesystem </blog/2026/debian-read-only-root>`,
but the use case is slightly different here.  I want a way to test
things on the internet, without going through my home network, more
lightweight than making/snapshotting and deleting a VM every time.  It
might also be useful when you want a system that is mostly normal but
home directories are in memory.

This post is mostly internal notes but may be helpful to others.


The idea
--------

I make a VM and give it an overlayfs for ``/home``.  This has the base
(the real ``/home`` and the upper directory ``/tmp/home`` where any
modifications are stored.  ``/tmp`` is an automatic tmpfs, and then
there is no permanent changes made to one's home directory.

First, install the VM and I have found it is good to ``touch
~/.Xauthority`` before doing the overlay, so that ``ssh -X`` works.


Filesystem mounts
-----------------

This is implemented via an overlayfs.

On the Debian version I have, ``/tmp`` is already a ``tmpfs``.  If
not, you should set up that first.

I add the following into ``/etc/fstab``.  It seems to automatically
make the directories within /tmp, which of course are never saved
since it is a tmpfs.::

   homeoverlay   /home/          overlay  auto,nofail,unbindable,lowerdir=/home/,upperdir=/tmp/home/,workdir=/tmp/home-work 0 0

The following line makes a bind-mount of root which I hoped to use to
access the underlay of ``/home`` without having to reboot, but this
line did *not* work that way (the binds were passed through, even
though it is ``bind`` and not ``rbind`` which should be recursive).
Any other bind-mounts I tried to do did not work as expected::

  /             /mnt/root-bind/ none     defaults,bind 0 0

To bind-mount (via qemu or whatever it was) from outside, I have this
fstab line::

  /new          /new/           virtiofs defaults,auto 0 0



Network bridge to VPN
---------------------

The network is bridged to a separate vlan to further isolate it (this
vlan is managed by my home router outside the host, so there is no way
this system could possibly send traffic without the vpn).  In
virt-manager, I set it to a bridge device I have configured on the
host to be bridged to the VPN.  I'm recording this here since it's
relevant.

First, you need to make a bridge device.  I add the following to
``/etc/network/interfaces``.  I don't make this automatically
activate, since on the host I don't want long-term effects unless I do
something.  The VM fails to start if it isn't activated::

   iface br-vpn2 inet dhcp
     bridge_ports enp4s0.22
     metric 300

Activate the bridge with ``ifup br-vpn22``.

Modern Linux send bridge traffic through netfiter (iptables).  You can
either allow it in the ``FORWARD`` chain if it's not set by default,
or for my case it was easiest to make it not use netfilter:

.. code:: console

   # echo "0" | sudo tee /proc/sys/net/bridge/bridge-nf-call-iptables

If you don't do the above, remember to ``sysctl net.ipv4.ip_forward=1``.
