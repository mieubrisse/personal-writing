---
title: "No Really, Inputs Not Outputs"
---

_Written on 2025-01-25_

There's a saying in tech: "fix the root cause, not the symptom." Everyone nods along sagely, then promptly goes back to patching symptoms. I'm no exception. But I'm trying to change that, and my AI work factory is forcing me to confront this habit head-on.

### What I'm Building

I've been building what I call an "AI work factory" - a collection of AI agents that can help me with various tasks. The vision is that these agents can operate semi-autonomously, handling routine work while I focus on higher-level thinking.

The core technology is Claude Code, Anthropic's CLI tool that lets you interact with Claude directly in your terminal. It can read files, write code, run commands, and generally act as a capable coding assistant. But more importantly, it can be configured and instructed through configuration files, which is where things get interesting.

<!-- subscribe button -->

### The Permission Problem

Here's a common scenario: I'm working with Claude Code and it asks me for permission to edit a file. The dialog looks something like this:

```
Claude wants to edit: src/components/Button.tsx
Allow? (y/n/a)
```

The easy thing to do is hit `y` (yes) or `a` (allow for this session). Problem solved. Move on.

But that's focusing on **outputs** - the immediate result. The agent did what I wanted this time. Great.

The **input-focused** approach is different. When Claude asks for permission, it's a signal that my configuration is incomplete. The right response is to update `settings.json` to grant that permission permanently (or at least, for the appropriate scope). Now Claude won't ask again, and more importantly, future sessions will benefit from this configuration.

### The Instruction Problem

Permissions are just the beginning. A more interesting case is when an agent *misbehaves* - not in a dangerous way, but in a "that's not what I meant" way.

Say I'm working with an agent that's supposed to help me write blog posts. I ask it to create a new post, and it creates the file in the wrong directory. Or it uses a formatting convention I don't like. Or it forgets to create the images subdirectory.

The **output-focused** response is to correct it: "No, put it in the `posts/` directory, not `drafts/`." The agent complies. Done.

The **input-focused** response is to ask: "Why did the agent do that?" Usually the answer is that my instructions weren't clear enough. So I update the `CLAUDE.md` file with more specific guidance. Now future interactions will be better.

### Why This Is Hard

This approach requires discipline that runs counter to our instincts.

When something is broken, we want to fix it. The fastest fix is almost always to address the immediate symptom. Updating configuration files, refining instructions, improving documentation - these feel like distractions from the "real work."

But they're not distractions. They ARE the work.

Every time I update a configuration file instead of just clicking "allow," I'm investing in the future. Every time I refine an instruction file instead of just correcting the agent, I'm building a better system.

The compounding effect is real. After a few weeks of this discipline, my agents need fewer corrections. They ask for fewer permissions. They understand my preferences better. The system gets smarter, not because the AI itself is learning (it's not, at least not between sessions), but because my instructions have gotten clearer and more complete.

### The Meta-Lesson

There's a deeper lesson here that extends beyond AI agents.

Every system we build - whether it's a codebase, a team process, or an AI factory - is governed by its inputs. The behavior you observe (the outputs) is a function of the code, the configuration, the instructions, the culture, the incentives. If you don't like the outputs, you have two choices:

1. Manually correct each output as it happens (doesn't scale)
2. Change the inputs that produce the outputs (compounds)

Most of us spend most of our time on #1. It feels productive. It solves immediate problems. But it's a treadmill - you're running hard and staying in place.

The people and teams that achieve escape velocity are the ones who invest disproportionately in #2. They fix root causes. They improve systems. They treat every symptom as a signal about inputs.

### Practical Application

If you're building with AI agents, here's my concrete advice:

**When an agent asks for permission:**
- Don't just click "yes for this session"
- Update the settings file to grant the permission properly
- Take the extra 30 seconds now to save minutes later

**When an agent misbehaves:**
- Don't just correct it in the moment
- Ask: "What instruction was missing or unclear?"
- Update the instruction file (`CLAUDE.md` in my case)
- Consider if similar ambiguities exist elsewhere

**When you're frustrated:**
- Your frustration is a signal
- Something about the inputs is wrong
- That's valuable information - use it

### The Journey Continues

I'm still early in building my AI work factory. The agents aren't fully autonomous yet. I still spend significant time configuring and correcting. But each correction is an investment.

Every `settings.json` update, every `CLAUDE.md` refinement, every permission granted properly - these are the building blocks of a system that will eventually run more smoothly than I can imagine.

The work is the configuration. The work is the instructions. The work is the inputs.

The outputs will follow.
