---
blogpost: true
date: 2026-06-21
author: Richard Darst
category: work
---

# A reasonable interpertation of the EU AI act

A lot has been written about the EU's AI act, and a lot more will still
be written, since it's still new, and as I have written before, *AI
doesn't exist*.  I see a need for someone to interpert the AI act with
the mindset of what is actually going on with "AI", rather than get
ourselves locked into legal interpertations which aren't useful.  The
actual technology and societal context matters.

How can EU regulations be sound good on the surface but cause us so many
problems?  It's easy when we don't have a consistent view of what they
really mean or how they should be applied to corner cases, and thus
bring in tons of extra work for ourselves.  Mega-corporations will do
whatever benefits them because they can tolerate risk, normal people
(such as us at universites) can drown in extra work.

## Disclaimers

* I'm not a lawyer.  This isn't how the AI act will be interperteted.
* This is not what others think.  This is what I think the interception should be.
* My background is in computing and research, and have been involved in
  implementing many similar laws at our university.  My reasonable
  interpertation comes based on problems I can expect.

So I'm not saying this is how others will intrepert it.  This is a
challenge to you, to bring your and the world's interpertation towards
what I write here.

## What is AI

As I have written before, AI can mean almost anything.  It's good that
the act doesn't actually regulate AI, since it doesn't exist.  Instead,
it gets it right and has two major themes about the *use* of deep
learning technology (and in fact, this is the basis of [my previous post
What is AI: everything, everywhere ,all at
once](https://aaltoscicomp.github.io/blog/2026/what-is-ai/)):

* AI can be **autonomous decision making** by a system which doesn't
  have explicite rules programmed into it, yet somehow learns from data
  somewhat autonomously (not under human control)
* It can be **content generation**, whether text (chatbots), images,
  videos, etc.

The AI act doesn't regulate math, science, or engineering.  Only the use
or "product" layer.  Let's get into it

## Autonomous decision making

Most of the act deals with **AI systems, not AI**.  This is a very
important distinction, and an AI system [is very carefully
defined](https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=OJ:L_202401689#art_3)
with [seven criteria expanded on in some
guidelines](https://digital-strategy.ec.europa.eu/en/library/commission-publishes-guidelines-ai-system-definition-facilitate-first-ai-acts-rules-application).
Of particular note is that it has to operate with some levels of
autonomy, exhibit adaptiveness (not have all the rules programmed in), and
makes outputs that affect physical or virtual environments.  In short,
it has to *do something by itself*.

**In any case, everything only applies when an AI system is put into service or placed on the market (so that others can use it as a product).**  Even without any 

I contrast autonomous decision making (AI act) from automatic decision
making (GDPR) by automatic being mostly programmed rules which a human
can verify.  I consider autonomous decision 

Take, for example, a chatbot.  It doesn't do anything by itself.  A
human has to filter everything in and filter any effects out.  Anything
that makes only recommendations, dashboards, etc. is not doing anything
by itself.  If the humans that set things up are careful, you can avoid
making something an AI system.

However, described in my other post
{doc}`the-platform-compliance-pitfall`, a human can easily turn a
chatbot into an AI system.  Take, for example, a teacher that is pressed
for time and gives a chatbot a homework assignment to grade.  If they
turn off their brain, the system is most certainly acting autonomously
and is, in fact, affecting the environment.  The AI act is also clear
that intentions matter.  If a company advertises a solution to detect
cheating saying it will *save tons of teacher time*, it can't get around
it being an AI system by saying "but you'll check everything yourself,
right?", since it's implied most teachers won't.

## Prohibited AI practices (Chapter 2)

These don't really concern me, since they are things that I wouldn't do
myself and I would argue against anyone else doing.  It's nice to have a
law behind it, though.  This includes things like subliminal
techniques, exploiting vulnerabilities of people, social classification,
mass surveillance, and so on.

You can read more about this if you want.

## High-risk AI practices (Chapter 3)

Some AI systems have a risk of affecting fundamental rights or safety,
and these are called high-risk systems - think about affecting
employment, studies, access to public services, and so on.  This also
doesn't concern me so much, since I wouldn't want to use an AI system
for most these things anyway (remember, the AI system would be acting
autonomously, doing things without me being able to understand it).

Take, for example, a company that wants to sell an anti-cheating AI
system to my university.  I would immediately be suspicious, since I
interpret this as using an "AI" buzzword to hide some logic and
procedures that can't be examined and for which no one is accountable.
I hope we do less time getting these systems approved and more time
simply not using them.

My interpretations are supported by a line in Ch 3 Art 6(3) that says
"... an AI system referred to in Annex III shall not be considered to be
high-risk where it does not pose a significant risk of harm to the
health, safety or fundamental rights of natural persons, including by
not materially influencing the outcome of decision making." (followed by
four criteria for this, so you have to use this moderately)  There you
have it - if it doesn't materially influence decision making (the
environment), it's not high-risk, and I think this reasoning cascades
down to the definition of an AI system, somewhat.

Anyway, if you are trying to use third-party content generation (e.g. a
chatbot) in a high-risk environment, you will have lots of difficulty
satisfying these rules.  If you make your own trained decision-making
system, you should do this stuff anyway as part of validating it.  And
remember my original feeling "one shouldn't be using AI" on these, at
least not if you are using the buzzword "AI" for the sake of "AI".



# General thoughts

* Three levels: Math, engineering, products
* 

# Regulation of decision making

* Main issue: decisions without accountability
* This regulates AI systems, not AI.  An AI system makes decisions affecting the world autonomously (meaning, at a distance of human accountability)
* There are almost no requirements on general decision making other than transparency.
* For decision making that can affect fundamental rights, there are more obligations (list).  This is fine.  You aren't regulating AI, you are regulating someone delegating their job to some other technology that isn't accountable.

# What is an AI system?

* What is an AI system?
* Colleague claimed that changing electrons in a computer monitor is having an effect on the world.  I think that is well beyond the spirit.  If making electrical signals is an effect of the environment, why even have a
* Research exclusions are mostly redundant since most research is not anAISystem (and even less is an AI system that affects the world).
* There is still some interpretation.  For example, generating content where the users critically examine the content before it is used is not an AI system.  But they could also take content and use it without thinking (like, to be honest, many users).
* In this case, the users are making it an AI system, since the users are making it affect the world and deciding how they will do so.
* I realize that this is  a tenuous claim, but it is something that needs analysis.  For example, someone who makes a LLM API available for developers can have a reasonable claim that their platform is not directory affecting the world.  It's the next human who uses it who might make it an AI system.  See: platform compliance pitfall.

# Regulation of content generation

* Main issue: source of data and use of content

# My opinions

* I first thought that it's probably doing things wrong, but it's not really.  It's just not regulating AI, it's regulating the things above.
* .
* If we make all data owned, Europe loses the model race.  Is this good or not?  Probably not good, since the modern exist.

# Call to action

* Help spread useful interpretations, not fear
* Don't rely on others who want to either make a problem so they can sell you a solution, or people who want to sell their knowledge by making things too complex.

# Appendix: AI system details

* The seven actual requirements
* 