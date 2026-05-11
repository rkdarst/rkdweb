----
blogpost: true
date: 2026-05-11
author: Richard Darst
category: work
----

# Hopes for new IT compliance

I recently saw that due to "organizational change", our small-scale
development IT compliance process is changing.  As usual for these
matters at my organization, security by obscurity is the rule (even
when it's not security related), so I won't go into the details.  But
I do have thoughts, and writing lets me give suggestions.

Not all details are known yet, so this shouldn't be seen on commentary
of any decisions, but hope of what can come next in the best possible
case.


## What is compliance?

Let's not be overly-complicated here.  I don't aim to go in-depth
here, but there are various laws that you have to comply with when you
do IT systems (let's focus on personal data management here: privacy
notices, legal use of the data, etc).  An organization needs to ensure
that anything its employees make is legal, so they set up some process
for that.

Ideally, the process is as minimal and simple as possible.  In some
cases... it becomes much longer and harder than the original laws that
were to be satisfied.  There become many more friction points and
bottlenecks, which isn't that great for agility, and in fact can
paralyze the whole organization.  Clever organizations would make sure
that the "compliance process" adjusts to the need of each thing that
needs to be complied with.

It's my general thought that ours doesn't do this.  I don't want to go
into why: if you know, you know.  If you don't know, maybe the
following won't be that interesting to you.


## What happened

Roughly, there seems like there will be less central review of
compliance forms and people/units need to take more responsibility
themselves.  This is likely only the case for small-scale development
(as in research and services which do not have an impact on other
services).  I don't know for sure, but I presume large scale
procurement and development is staying the same.

This will be unfortunate if there are still very specifically defined
requirements how to be compliant (stricter than the law says) - the
narrow definitions for a diverse organization are the very origin of
the problems we have had.  But there is potential.


## What I hope happens

Some of this can happen because of the upstream changes.  Some could
have happened anyway, but hopefully we have a good excuse to work
together to implement them.

**Delegation to units and adjustment to their local needs.**  There are
very different needs from a unit which is mostly procuring outside
services and one which is mostly developing research methods only on
local infrastructure (before these were treated identically).  Unit
heads will now hopefully be able to adjust processes to suit the
actual needs, tempo, and risks of their work.

**Better separation of goals and procedures.**  Our legal teams will
hopefully be able to specify what the necessary requirements to meet
legislative requirements, rather than hide the requirements behind
some process which is not transparent to anyone.  This will help us to
satisfy the actual needs and be able to communicate about with each
other better about how to do that.

**Better interactions with legal services.**  Instead of interactions with
legal services being focused on filling some forms (and much friction
caused by the difference between procedures and reality), legal
services will be available for more interesting questions.  I envision
a future where we can proactively approach legal services with
questions such as "Our goal is X, but we are uncertain how it
interacts with the law, can you help us think through this?"

**More local knowledge.**  Instead of all compliance knowledge being
centralized in a few people, units will have to skill up.  This way be
seen as a bad thing, but it's better than not having skills and also
not being able to do anything because it takes too long to get
answers.  For basic things, the difficulties are not too much (and I
would point out that for research purposes, all things are already
documented and, in practice, delegated to the end researchers).  Legal
staff will have time to help with advanced cases, and local staff will
be better prepared to work with them.  Instead of a hub and spoke
model where the only interaction is with a central team, we can talk
with and learn from each other.

**More sharing.**  I hope that, with more local responsibility, we will
have more local sharing of our documents and practices.  Right now, it
is too centralized, and there is very little sharing, so everyone is
trying to figure out things themselves.  (It's almost treated like a
quiz, instead of collective challenge.)  This sharing requires some
work from us, but will lead to great improvements in the long term.

**More time where it is needed.**  For projects with interesting legal
questions, such as third-party data transfers, I hope our legal
services will have more time.

**Better possibilities for security reviews.**  Right now, compliance is
often called security, but actually security is a small aspect, one
which can not be reached without going through many other steps which
are not always relevant.  I hope that our security teams can produce
better checklists (usable by our local teams independently) to be
considered during development processes and will be there for real
security advice for more projects than they were previously.

**Standard operating procedures.**  As of now, standard operating
procedures have not been allowed - everything needs separate review.
With this delegation, there is much more possibility for streamlining
the normal cases and focusing on the complex ones.

**More compliance.**  This may seem ironic, but as units determine their
local procedures and checklists, they will be more inclined to use
them.  Lower cost means higher uptake.  Less projects will fall
through the cracks.

**More data sovereignty.**  Since we can do small-scale development
faster, we will be less reliant on purchased services from large US
tech companies.  We can adjust progresses to make this possible.

I don't know if these will happen or not, but I hope we can work
towards them.
