---
blogpost: true
date: 2026-07-20
author: Richard Darst
category:
---

# "Code rules" vs "wiki rules" for project contributions

I have sometimes said the phrases "wiki rules". or "cade rules" about
contributing to a project.  What does this mean?  Roughly, "code
rules" is being careful and making sure everything is correct before
finalizing a contribution.  Wiki rules is just doing something and
letting it get improved later.  Both ways have their place, and I
think sometimes we can get so obsessed with being "right" that we
forget to get stuff done.  I'll discuss below.


## Code rules

This comes from contributing to code projects, where there are often
standards for a review before merging anything, exhaustive tests to
make sure that everything new is correct, and there should be no
possibility of regression.  The basic philosophy is that an error
anywhere can break things everywhere, so try to prevent errors from
making it into the project.

For stable, mature projects , this makes sense.  It can extend to
non-code things, too, when the expectation is "do nothing wrong": say,
you are organizing a big event and you need to have a consistent
message to attendees for everything you publish.

Code rules requires enough time to review and fix things up.  It could
be done without contribution guidelines, but then you spend more time
reviewing and it can have a demotivation problem, if the review is
perceived as too harsh.  With extensive contribution guidelines, the
barrier to contribution becomes higher.

Examples of this include:

- The general idea that one should make a pull request, get it
  reviewed, and if it's OK, then merge it.
- CodeRefinery would sometimes pedantically teach that all code should
  be reviewed, even if you are the main person of a project - since it
  improves quality and teaches others what is going on.
- Look at most mature project's contribution guidelines and they are
  usually somewhat specific and include reviews.  At a big scale, this
  is needed.

  - [Numpy contribution
    guidelines](https://numpy.org/doc/stable/dev/index.html)
  - Extensive [contribution guidelines for the book "The Turing
    Way"](https://book.the-turing-way.org/community-handbook/community-handbook/)


## Wiki rules

On the other hand, wikis usually operate on the idea of "press ahead",
make your change directly, and if so anything isn't perfect, it will
be iteratively improved later.  If people disagree, there are ways to
resolve conflicts later on.  There are few, if any, checks before
committing to the history.  This doesn't mean there aren't standards
and expectations, but there is tolerance if new contributors don't do
it just right in their contributions.

For a new, rapidly changing project with few contributors, this can
make sense.  If there are few contributors who communicate a lot, it is
easy.  If there are many contributors, there need to be good standards
(as there is some hope of convergence) and enough contributors to
converge to those standards.  Wiki rules requires a strong mental
model that everyone shares.

Disadvantages include the time needed to fix things up (or even notice
the wrong thing...).  It can also be demotivating if someone goes and
makes a big change, and it gets iterated to significantly change it.
(Sound similar to code rules, right?)

Examples of this include:

- [Wikipedia's "Be Bold" guide page](https://en.wikipedia.org/wiki/Wikipedia:Be_bold)
- [According to my memory,] The OpenStreetMap wiki (contributor
  instructions) used to have a page "Press Ahead" with a message to
  just add things to the best of your ability and it will be improved
  later.  I can't currently find the page, I presume because there's
  enough maturity that stability is more important now.


## Summary

I guess it all comes down to "don't let the perfect become the enemy
of the good".  When there are few people and you communicate often,
you can iterate and improve.  If you get large and stable (or people
depend on complete correctness), then maybe it's time to switch to
code rules.

**I think the difference is not exactly "are there strict contribution
guidelines?".  The difference is if someone should contribute
something possibly wrong and let it be fixed later, or strict
pre-review.**  Every project needs to find their balance of amount of
contribution guidelines, amount of prior review, amount of other
contribution, and wiki/code rules.


## Examples

A project could have an in-person meeting to make a plan, then switch
to wiki rules to implement the plan, then a round of review and
discussion followed by more iteration.  After it has stabilized,
moves towards code rules.

Early in planning a conference, we use wiki rules to combine all our
ideas onto the website (before anyone even sees the site) and refine
them, aggressively narrowing down.  To avoid wasted work, it's
"first-draft" or "notes" level work at the beginning if we aren't sure
about it.
