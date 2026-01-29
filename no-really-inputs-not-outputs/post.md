---
title: "No Really, Inputs Not Outputs"
subtitle: "Building an AI work factory by fixing the system, not the symptom"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[leveraged-judgment]: https://mieubrisse.substack.com/p/leveraged-judgment
[you-need-an-exobrain]: https://mieubrisse.substack.com/p/you-need-an-exobrain
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

I caught myself cheating yesterday.

I was working with one of my AI coding agents when it asked me for permission to edit a file. A little dialog popped up: "Claude wants to edit `settings.json`. Allow?"

My hand moved for the "Yes, allow for this session" button before I even thought about it.

And then I stopped.

Because clicking "yes for this session" is an _output_. It solves the immediate problem. The agent gets unblocked, the work continues, and I feel productive.

But the _next_ time the agent runs, it'll ask me again. And I'll click "yes" again. And again. And again. Each time, I'm doing manual labor that a machine should be handling.

The _input_ fix is to update my `settings.json` so the agent _always_ has permission to edit that file. One change, upstream, and the friction disappears forever.

This is a small example. But it's the difference between building a system and doing chores.

The AI Work Factory
===================
I've been building what I call an AI work factory. It's a collection of AI agents, each specialized for a different task, all configured through files that define how they should behave.

Think of it like... a kitchen. Each agent is a cook with a specific station. One writes Substack posts. One manages my calendar. One handles code. And the recipe each cook follows? That's a file I maintain.

The architecture is straightforward: each agent has a `CLAUDE.md` file that defines its personality, its rules, its constraints. There's also a `settings.json` that controls permissions -- what files it can touch, what commands it can run.

These files are the _inputs_ to the system.

The work the agents produce -- the posts, the code, the calendar events -- those are the _outputs_.

And I've learned that the quality of the outputs is entirely downstream of the quality of the inputs.

> 💡 If you're familiar with the concept: this is the same principle behind [leveraged judgment][leveraged-judgment]. A small amount of work on the input side can transform all future output.

The Discipline
==============
Here's where it gets hard.

Every time an agent misbehaves, my instinct is to correct it in the moment. Tell it what I actually wanted. Fix its output manually. Move on.

This is the _output_ approach. It feels faster. It _is_ faster, in the moment.

But it's a trap.

Because the agent doesn't learn from my in-the-moment correction. Next time, it'll make the same mistake. And I'll correct it again. I'm now a babysitter, not a builder.

The _input_ approach is slower upfront: stop what I'm doing, figure out _why_ the agent misbehaved, and update the `CLAUDE.md` so it doesn't happen again.

Meaning, every friction point is a gift. It's the system telling me exactly where it needs to be improved.

> 🤔 This is the Five Whys applied to AI workflows. The surface symptom is "the agent did the wrong thing." The root cause is almost always "the instructions didn't account for this situation."

The permission dialog example is the most obvious case. Agent asks for permission it should already have? Don't click "yes." Update the `settings.json`. But the principle goes _way_ deeper.

Agent writes in a tone that doesn't sound like you? Update the voice guide in its `CLAUDE.md`. Agent structures a file wrong? Add the expected format to its instructions. Agent doesn't know about a convention in your codebase? Document the convention where the agent can see it.

Every single time, the fix is the same: go upstream and improve the input.

Why This Is So Hard
===================
I'll be honest -- this discipline is genuinely difficult.

The output fix takes ten seconds. Click "yes," move on with your day.

The input fix takes minutes. You have to stop your flow, open the config file, figure out the right phrasing, test it, iterate. It feels like you're _slowing down_ to do infrastructure work when you could be doing Real Work(TM).

But this is the same trap that keeps people hand-editing spreadsheets instead of writing a formula. Or manually deploying code instead of setting up CI/CD. Or answering the same Slack question for the fifteenth time instead of writing documentation.

The work that _feels_ productive -- fixing the output -- is actually the least leveraged thing you can do. And the work that _feels_ like a detour -- fixing the input -- is the highest-leverage investment available.

> ⚠️ Beware the seduction of quick fixes. Each one feels harmless. But they compound into a system that requires your constant presence to function. That's the opposite of leverage.

It's the difference between being a factory _owner_ and being a factory _worker_. Both are in the factory. But one of them can leave, and the factory keeps running.

What I've Learned So Far
========================
A few weeks into this discipline, some patterns have emerged.

**The config files get better fast.** Each fix is permanent. Unlike correcting an agent in conversation (which evaporates when the session ends), updating a `CLAUDE.md` persists. The improvements stack. My agents get noticeably better week over week.

**My instinct for root causes is sharpening.** I'm getting faster at diagnosing _why_ an agent went sideways. Early on, I'd stare at the misbehavior confused. Now I can usually trace it back to a missing instruction or an ambiguous one within a minute or two.

**The agents need less supervision.** This is the compounding payoff. As the input files get better, the agents need fewer corrections. I'm spending less time babysitting and more time on work that actually requires a human brain.

**I notice input-vs-output thinking everywhere.** Once you see the pattern, you can't unsee it. Colleague asks a question on Slack? The output fix is to answer it. The input fix is to update the documentation so nobody has to ask again. Kid keeps leaving the lights on? The output fix is to turn them off. The input fix is to install motion-sensor switches.

Nassim Taleb would call the input approach _antifragile_. Each stressor -- each misbehavior, each friction point -- makes the system _stronger_ rather than just getting patched over.

Conclusion
==========
Building an AI work factory isn't really about AI. It's about the willingness to invest in systems over shortcuts.

Every time I catch myself reaching for the "yes, allow for this session" button, I know I'm at a choice point. The easy path leaves the system unchanged. The harder path makes it permanently better.

I'm not going to pretend I nail it every time. Sometimes I'm tired, or in the middle of something, and I just click the button. But the _commitment_ is to go back and fix the input as soon as I can. Because the whole point of building a factory is that eventually, it runs without you.

So here's what I'd ask you to consider: where are you fixing outputs instead of inputs? Where are you doing the same manual correction for the third, fifth, tenth time? What would it look like to go upstream and fix the _system_ instead of the symptom?

The fix is almost always smaller than you think. And the payoff compounds forever.

_**Like what you're reading?** Subscribe to get more posts on leverage, systems, and building smarter._

<!-- subscribe button -->

-----------

If this post was useful to you, here's more of my writing:

- [Leveraged Judgment][leveraged-judgment] -- why smart decisions beat hard work in a leveraged world
- [You Need An Exobrain][you-need-an-exobrain] -- why everyone needs AI guardrails for their thinking
