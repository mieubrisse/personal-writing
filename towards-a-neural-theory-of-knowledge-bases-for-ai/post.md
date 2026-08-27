<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

TODO
=============================================
SUBTITLE TEXT

![](./images/image.png)



<!--
This post will be successful if:
- I explain how I currently think about Claude's brain
- I explain how skills are general knowledge nodes
- I demonstrate that I'm thinking seriously about AI knowledge bases, to Anthropic
-->


Intro
-----
- Assumptions:
    - You're using Claude + Claude skills
    - You want to spend your time doing as much Unique Work as possible, and offload anything that's not Unique Work to Claude
- Goal: propose a new way to think about your Claude that delivers better outcomes

Framing the problem
----------------------
- My experience learning to delegate to people:
    - You have to give them the right amount of knowledge
    - Too little, and they're left fumbling in the dark, and may go off down complete tangents. I call this the **knowledge starvation** problem.
    - Too much, and they get overwhelmed and confused. I call this the **signal:noise problem**.
- This is hard enough
- Only now, as we delegate to AI, we ALSO have to decide how Claude's brain is constructed to hold all this
- This essay lays out how I solve these problems

Knowledge Starvation
--------------------
- Imagine you're sitting alone sitting alone, in a dark room, staring at a "User typing...
    - TODO
- Claude is trained on a bunch of books + internet
- Designed to be usable by anybody, from a grandma in Arkansas to a Silicon Valley Exec
    - https://www.atvbt.com/youre-weirder-than-you-think/
- If you don't tell it which you are, _it doesn't know_
- There are a bajillion things you might take for granted because you don't recognize how unique you are:
    - What foods you favor
    - When you work best
    - How you prioritize
    - What seats you like booking on a plane
    - How much you prefer to stay home vs go out and do stuff
    - What writing you prefer
- There are also a bunch of things that humans intuitively know, that AI doesn't intuitively know & feel:
    - How certain tasks affect your energy
    - How lots of text feels like a slog to read
    - What getting distracted feels like
    - What a caffeine crash is like
- You can make your Claude deliver a _lot_ better output simply by having it store lots of information about you
- If I haven't convinced you yet, imagine being in a garden maze for the first time vs having done it before
    - The person who's done it before (has the knowledge) is a lot "smarter" for having done it
- To fix, store EVERYTHING about you in Claude - preferences, history, routines
- Prompts to extract more information (should reference this essay)
    - TODO

Knowledge Web = Neurons
-----------------------
- Obviously though, this won't all fit into the CLAUDE.md - you'd get "Claude is getting overwhelmed and confused by the amount of information" (too noisy)
- So we need to address signal:noise
- On-demand context is the solution
- The flagship on-demand context is skills: a short always-on description that points to full context which only gets pulled when needed
- The essence of this is the "I'll follow this link only if useful...." conditional link nature of skills: a link with a bit of description around it to give an idea of if the link is worth following
    - So in a vast sea of knowledge, you're constantly pulling just the useful bits
    - This allows storing huge quantities of knowledge without getting overwhelmed, because you only follow the links that are needed (most information isn't consumed)
- Now extending this idea: _everything_ can be conditionally linked to
    - Recorded meetings
    - Todoist projects
    - Emails
    - Other skiils
- And when those destinations themselves link to places... you have a web of knowledge
- **Notice this looks like neurons!**
- Each knowledge node (page, task, whatever) is a neuron, and the conditional links are synapses
- A given task will have Claude follow certain links, reading through specific "circuits" in the knowledge web, to produce its result
    - Just like how certain circuits light up in our brain depending on what we're doing
- I think about this from a programming perspective: each knowledge node is a function that loads context into Claude, and those function can point to other functions (and Claude decides whether to call them or not depending on what it's doing)
- The CLAUDE.md + your skill descriptions are the "main function", the entrypoint, that leads out into everything else
    - if a piece of knowledge isn't reachable by the CLAUDE.md or links inside of skills, I assume Claude doesn't know about it & won't use it

Day-to-day practicalities
-------------------------
- Turns out, Claude (esp Opus+) is really good at using this structure
- I've built out my Claude with the "provenance principle": all things Claude produces must link to the knowledge that was used to produce it
    - Usually this is the Claude conversation UUID of where it came from (Claude conversations are knowledge too!), but can also be things like meetings, emails, etc.
- In practice this means:
    - All my Git commits have the Claude conversation UUID of where it came from
    - All edits to all my Claude skills + CLAUDE.md have the same conversation UUID
    - Code contains comments with the UUID of where stuff came from
    - Notes that Claude generates have the same
- This way all future Claudes have a deep, rich chain of info to pull from if they need
- I now think about bad Claude results as failures of my knowledge web
    - If Claude doesn't read something it should, we need to strengthen the link ("synapse") between those (maybe better descriptions, maybe better linking within a skill). E.g. the difference between "You might want to see $URL" vs "YOU MUST READ $URL"
    - If there's contradictory info, that needs to be resolved
    - If Claude reads unnecessary unrelated info and gets confused, we need to 
- What my skills look like in practice:
    - TODO examples
- My CLAUDE.md, settings.json, and skills are all auto-committed into Git so I have a version history of my Claude's "brain"
- To actually make the changes, I have Claude write & update skills itself
- To keep the brain lean and workable, I have a "Single Source of Truth" rule where there's only one single source of truth for any piece of information, and it should be linked to when needed rather than duplicated


Conclusion
----------
- Model Claude as a contractor by default tailored to suit the average internet user
- You need to give it lots of knowledge - more than you think (the "alone in a dark room" problem)
- Knowledge web = knowledge nodes + links is the solution for signal:noise
    - Let Claude modify this stuff on its own
- Tell your Claude about this modelling!
    - Your attention is expensive, tokens + Claude's time are cheap





TODO SUBSCRIBE BUTTON

-----------

If this post was useful to you, here's more of my writing:

- POST1
- POST2
- POST3

_Thank you to TODO TODO TODO for reviewing drafts of this post._
