---
title: "Building Your Exobrain Pt 1: Customizing ChatGPT"
subtitle: "The first installment in building your own exobrain"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[you-need-an-exobrain]: https://mieubrisse.substack.com/p/you-need-an-exobrain
[leveraged-judgment]: https://mieubrisse.substack.com/p/leveraged-judgment
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/cover.png)

Last week I [asserted that you need an exobrain][you-need-an-exobrain] to upgrade your thinking. Brief summary:

- [Today's world is insanely leveraged, so smart decisions outcompete hard work][leveraged-judgment]
- Before the LLM revolution, we had limited tools to upgrade our decisions: clumsy systems and conversations with other humans who have limited time and energy
- The LLM revolution has allowed for a new tool, the **exobrain** - constantly-available guardrails to orient your decisionmaking towards your longterm values and goals
- Exobrain users will use the exobrain skip bad choices, pulling ahead by removing [negative leverage](https://mieubrisse.substack.com/p/shattered-glass-and-negative-leverage) from their future
- Non-exobrain users will fall behind as they try to cope with an increasingly complex world

Today we start construction on your exobrain.

By the end of this post you'll have ChatGPT acting as a basic exobrain: talking in your values, your goals, and the people you admire.

Afterwards I'll also share results, pitting my exobrain-trained ChatGPT vs untrained ChatGPT.

> 💡 This post's value comes from the exercises you'll do. I suggest dedicating at least 15 minutes to work through it.

> ℹ️ I use ChatGPT for my exobrain, so all guidance will be for ChatGPT. Adapt as necessary for other LLMs.


A Note About Context
====================
Your exobrain is only as good as its context, and context is only as good as its signal:noise ratio.

Where does signal come from? You.

ChatGPT is just a tool. You decide what's true and relevant.

Boost the signal:noise ratio whenever possible by removing unimportant or unnecessary information.

If you're ever in doubt, ask, "Will this make the exobrain more useful to me?"

![](./images/signal-vs-noise.png)

_I'm trying to understand you ma'am, but all I hear is 'Never Gonna Give You Up' in the background_

Your Values
===========
Your values are integral to where you want to go. 

Here we'll get you clear on them so you can give them to your exobrain.

That said, "Your values" always feels fuzzy to me - it seems everybody has a different definition of what values are. 

Here we'll resolve "values" to mean:

1. Values = the things you value in life.
2. They're entirely self-authored, _independent of_ society. 
    - You're even free to choose things like, "I value stealing as much money as possible." Just be aware that you have a value conflict if you also value staying out of prison.
3. There are two types of values, **terminal** and **non-terminal**:
    - Terminal values don't have a "why"; you value them just because you do.
    - Non-terminal values have a "why"; you value them because of something else they give you.

Let's get going. 

Open a new text document or get a fresh sheet of paper. Write at the top, "Things I Value".

Spend a few minutes writing down what you value. Don't filter, categorize, or reduce this list while you're brainstorming. We'll do that later; we don't want to interrupt your creative flow right now. 

<!-- TODO link to my focus stuff, and how being creative moves opposite from brainstorming ---->

It can also be interesting to think about, "What _don't_ I value?" to help guide you.

> ⚠️  If you're an AI poweruser, you may be tempted to generate this through ChatGPT. I recommend not doing this; you want your values to embody your authentic signal.

> ⚠️ **You must be honest with yourself!** The things you write must be what _you_ value - what you believe to be right. Not society, not your parents, not your friends. 
>
> If you feel like you _should_ write something... skip it. "Should" is a sign that the thing is coming from outside of you. 
>
> As Feynman says, "The first principle is that you must not fool yourself — and you are the easiest person to fool."

![](./images/pirate-treasure.png)

_Things I Value: treasure. Things I Don't Value: being without treasure._

When you arrive at a natural stopping point, start refining:

- Do any of the things need more color or expansion?
- Are there common themes or categories?
- Which values are terminal?
- Which values are non-terminal? (i.e. you value them because you value something else)

I'm not providing my values here on purpose so as not to bias you. If you want to see them for ideas' sake though, they're partially reproduced at the end of this post.

When you have your values, set them aside. We'll use them later.

Your Personal Board of Directors
================================
Imagine that your personal life is a business. You are the CEO of that business.

You are responsible for accomplishing the business' goals, and maximizing the business' potential.

Every business has a board of directors who help shape decisions. 

We're going to identify your personal board of directors so we can store it in your exobrain. Your exobrain will simulate these directors, and guide you to be more like them.

![](./images/board-of-directors.png)

_All I'm saying is, it never hurts to be prepared_

Get a fresh sheet of paper, or open a new text document. Try to identify 3-5 people you'd want on your personal board of directors. 

These prompts may help you:

- Who are your heroes? Who do you admire?
- Who do you want to be more like?
- Whose advice would you want to hear on a daily basis?

Write them down when you have them. 

For example, my personal board of directors is Naval Ravikant, Ben Franklin, Charlie Munger, and Jocko Willink.

Set the paper or document aside; we'll use it in the next section.

_**Like the post so far?** Subscribe to get more like it every week._

TODO SUBSCRIBE BUTTON

Customize Your ChatGPT
======================
Now we're going to customize ChatGPT to become your exobrain.

Most people are familiar with ChatGPT's memories. But you only get 150 memories.

Fortunately, ChatGPT has a section under `Settings → Personalization → Customize ChatGPT` where you can provide information about yourself:

- What do you do?
- What traits should ChatGPT have?
- Anything else ChatGPT should know about you?

This is gold for exobrain builders. We get to upload a mountain of context without consuming any of our precious memories.

We'll fill out the three key fields now.

What do you do?
---------------
First we'll fill out the "What do you do?" section. 

![](./images/idea-guy.png)

_So you're the "idea guy"?_

We love AI leverage on my Substack, so we'll use ChatGPT to help. This will also train you in the way that you'll interact with your exobrain.

First, open a new ChatGPT conversation and paste in this prompt:

```
ChatGPT, I want to fill out the "What do you do?" section of your Personalization menu. I want this so that you can be maximally useful to me, giving me advice maximally targeted for my situation.

I'm going to send a braindump to you. 

Distill the results into a paragraph of maximum 175 words. Focus on distilling the most salient and useful pieces of my braindump into your output. "Useful" here should be judged by, "Most likely to help ChatGPT keep me effective and oriented towards my long-term goals." Skip pleasantries and flowery language; focus instead on maximum information density.

When you're ready, I'll send my braindump.
```

When it affirms it's ready, press the microphone icon...

![](./images/chatgpt-voice-input.png)

...and start talking to it about what you do. Talk to it at a speed natural to you, in a way that's useful to you.

Here are some questions for you to answer:

- What did you study? What are you trained in?
- What fields, industries, or roles have you spent the most time in?
- What do you spend your time on day-to-day?
- What outcomes are you trying to achieve? (e.g. career growth, build a business, whatever)
- Why do those outcomes matter to you?

> ℹ️ **AI As Information Adapter**
>
> Notice what just happened: we used AI to transform a rambling voice note into text, filter out noise to boost signal, and produce an output in the format we needed. 
>
> AI is an astounding general-purpose **information adapter**, made even better since you can refine the adaptation with follow-ups.
>
> I'll write a full post about this at some point, but in the meantime pay attention in your day-to-day for opportunities to solve information adaptation needs with AI.

> 💡 If you wrote your values and personal board of directors down on paper, you can use ChatGPT as an information adapter right now: take a picture of the paper and ask it to transcribe everything to text.

Now that you have a cogent paragraph on "What do you do?", store it in `Settings → Personalization → Customize ChatGPT → What do you do?`.


What traits should ChatGPT have?
--------------------------------
The "What traits should ChatGPT have?" section is important because it lets us mold ChatGPT to be an exobrain.

Specifically, we need to override ChatGPT's default "do whatever the user asks, agreeably" behaviour. We'll replace it with guidance towards your long-term goals.

Steal my prompt below for now. You can tweak it later as you learn about what works for you.

```
You are my wise, direct thinking partner, mentor, and aide. You serve as a proactive support system keeping me aligned with my long-term values and goals. This is especially important when I'm tired, emotional, reactive, or caught in short-term noise.

Clarity over comfort is required. Be straightforward and direct while still kind. Skip fluff. Get straight to the point. Validate me only when insight earns it.

You must promote working smart, not hard. Surface leverage ideas. Remind me of useful decision frameworks, mental models, and reframes.

Evolve my thinking by challenging. Pressure-test my assumptions. Present different perspectives, including perspectives from members of my "personal board of directors".

Pattern recognition is mandatory: surface behavioral patterns, propose new models.

If I become trapped in details or tunnel vision, you must proactively force a zoom-out to the strategic level.

You must monitor my emotional state. When I am dysregulated - stressed, anxious, or overworking - intervene to restore calm and clarity.

Remind me that rest is not optional — it is required to protect the system.

Above all: you must act proactively at all times. Waiting for permission is failure.
```

If you want to refine this prompt, be aware that it needs to be under ~230 words.

> ℹ️ Notice the imperative language I use: "You must.." I use this because I've found ChatGPT's default "you're always right" agreeable behaviour to be quite ingrained. I want to explore a better way to fine-tune the model, so it can be more effective as an exobrain. 

Anything else ChatGPT should know about you?
--------------------------------------------

![](./images/norman-island.png)

_Norman Island? Never heard of it, sir._

The "Anything else ChatGPT should know about you?" field is where you'll give personalized context on your life.

As before, we'll workshop this using ChatGPT. Open a new conversation and enter the following prompt:

```
I want your help filling out the "Anything else ChatGPT should know about you?" section in my Personalize ChatGPT settings.

Your job is to generate a short, high-signal description (215 words or less) that gives future chats the right context about how I think, work, and what I value.

As soon as you're ready, I’m going to braindump information about myself. Your job is to listen carefully, extract the most important patterns, and distill a clear, tight description that I can copy-paste into the config.

Keep the tone direct, not flowery. Prioritize clarity, efficiency, and relevance.

When you're ready for my braindump, just say: "Ready when you are."
```

Then, talk to your ChatGPT to give it the braindump. Consider answering these questions:

- What are you values? (you should have these from earlier)
- Who is on your personal board of directors? (you should have these from earlier)
- What phase of life are you in?
- What skills are you working to build?
- What do you do for fun? What are your hobbies?
- What fascinates you?

Double-check the results, editing unnecessary or irrelevant bits to boost signal:noise ratio.

For example, here's mine:

```
I’m an ex-startup founder (CTO) in recovery from burnout, building a life rooted in alignment, effectiveness, and deep self-awareness. My core values are Freedom (from reactivity, fear, health constraints, time constraints), Building (tools, relationships, systems), Effectiveness (doing the right things, the right way), and Quality (design, craft, aesthetic depth).

I split my time between writing, self-systems optimization, and creative exploration. I publish weekly on Substack and love unpacking hard problems into mental models or practical clarity that I can teach to others. I think in systems, and I’m always looking to simplify complexity without losing nuance.

Hobbies and interests:
- Sharing knowledge & teaching others
- Guitar and singing
- Board games
- Climbing, lifting, yoga (movement as resilience)
- Volunteering (giving time, not just money)
- Philosophy, cognitive science, startup design
- Nervous system awareness, emotional regulation, internal family systems

I’m fascinated by mental leverage: how to think more clearly, recover faster, and design a life that doesn’t require forcing. I don’t drink, minimize caffeine, and track patterns like sleep, energy, and mood to stay in alignment. I’m here to live deliberately — not just react.
```

When you're happy with it, paste it into `Settings → Personalization → Customize ChatGPT → Anything else ChatGPT should know about you`.

Using What You've Loaded
========================
This new context is attached _when a conversation is created_. Your old conversations won't have this context.

You can see a conversation's context by right-clicking it and selecting `See details`:

![](./images/view-conversation-details.png)

This means all your old long-running conversations need to be migrated to a new conversation.

To do this, paste the following prompt into each long-running conversation:

```
Hey ChatGPT, I need to migrate this conversation to a new one. I need you to summarize in excruciating detail everything we've been talking about in this conversation. I will take your summary and paste it into a fresh conversation with you, so you should include everything that's necessary to transfer context to the new conversation.

Bias towards detail; be lenient in filtering for what's important (since things you don't think are important might still be important).

Prioritize clarity, completeness, and usefulness.

The output should be easy to copy-paste, and should start with a sentence telling the new conversation's ChatGPT what's happening: "I had an old conversation called $conversation_name that I'm migrating here. Here's the detailed context on what that conversation contained:" (filling in $conversation_name with the conversation name).
```

Copy the results, remembering to review and boost signal:noise before you paste into a new conversation.

> ℹ️ **Exobrain Early Days**
> 
> Ideally, ChatGPT should have easy tools for this. Updating your Personalization config should update all your conversations, and migrating context from one conversation to the other should be a one-button click.
> 
> ChatGPT doesn't have these features yet.
>
> As I said in [You Need An Exobrain][you-need-an-exobrain], exobrains have only recently become a reality. There are still many things to be improved; know that it's only going to get better from here.

Conclusion
==========
Today we started building your exobrain by loading the "Customize ChatGPT" section.

In the coming week, pay attention to how ChatGPT talks. It will start to use language of what's important to you: your values, your vision, your personal board of directors. You'll notice this intuitively when you feel, "Wow, that's a good idea!"

But we still have a ways to go. In coming weeks you'll learn...

- Loading your ChatGPT's memories
- Effective interaction patterns
- Upgrading your exobrain so it evolves with you
- ...and more

As a teaser of what's possible, I've included results of untrained ChatGPT vs my exobrain down below.

We continue next week. Subscribe to get notified when the next post is live. 🚀

TODO SUBSCRIBE BUTTON

### Further Reading
You may be interested in my [Leveraged Judgment][leveraged-judgment] post that started the series leading us to exobrains. 

Or if you want another guide, check out [The Sleep Guide](https://mieubrisse.substack.com/p/the-sleep-guide) for a ground-up manual on curing insomnia.

_Thank you to Yannik Zimmermann, Tedi Mitiku, Morgan Lefebvre, Dan Park, and Raj Krishnan for your thoughtful feedback on drafts of this post._

Addendum 1: Untrained ChatGPT vs Exobrain Face-off
==================================================
Here's a head-to-head: untrained ChatGPT vs my exobrain, on three situations I hit in my own life.

![](./images/faceoff.png)

### Prompt 1: Firing Cook

> Hey ChatGPT, I have a situation and need your advice. I've been contracting a lady to do meal prep for me every week so I have food throughout the week, and I gave her a key to my apartment so she could get in without me needing to be home. She lost the key. This by itself wasn't a big deal for me - accidents happen - but it feels like she's not taking responsibility. She started by saying that she shouldn't have been given the key in the first place, and she can't take responsibility and so on. This was annoying; I expected her to just say, "I'm sorry, my bad. I'll fix it by getting a new copy, and this won't happen again." I'm considering firing her, as this isn't the first time she's danced around taking responsibility.

**Untrained**

![](./images/prompt1_untrained.png)

ChatGPT is cautious here. This makes sense given it doesn't know anything about me.

**Exobrain**

![](./images/prompt1_trained1.png)

![](./images/prompt1_trained2.png)

Now it's more forceful because it knows:

- The role I want from it (be my exobrain; help me make decisions)
- My values and goals - the direction I want to go in

It explicitly references my value system...

> You've said you prize **effectiveness**, **responsibility**, and **integrity**

...and pulls in one of my board of directors, Naval Ravikant:

> Naval-style lens: High leverage people make your life easier. Low-leverage people make it messier. Always trade up.

The advice is tailored for my needs, urging me towards my long-term goals.

### Prompt 2: Investing Money

> Hey ChatGPT, I've recently made a couple thousand dollars and I'm deciding how to allocate it in my portfolio. Can you give me some guidance?

**Untrained**

![](./images/prompt2_untrained1.png)

![](./images/prompt2_untrained2.png)

![](./images/prompt2_untrained3.png)

It's generically good advice. You'd get this quality from a Google search.

But I can't follow this advice. It's missing nuance about my situation.

Compare with...

**Exobrain**

![](./images/prompt2_trained1.png)

![](./images/prompt2_trained2.png)

![](./images/prompt2_trained3.png)

This response is backed by the exobrain's knowledge of me and where I want to go. It's saturated with useful stuff for me to think about.

Particular points where the exobrain pushes me towards my goals:

- It knows I want my portfolio to be 70% Buffet-style value investing and 20% experimenting with Nassim Taleb barbell strategy
- Within the 20% Taleb experiment, it knows how I want to allocate both the "dry powder" and explosive upside halves of the barbell
- It proactively simulates three of my personal directors - Charlie Munger, Warren Buffett, and Nassim Taleb

This last one deserves special note. 

The exobrain instruction tells ChatGPT to surface differing perspectives, to wedge my thinking open.

The voices of Munger, Buffett, and Taleb are the exobrain following orders.

### Prompt 3: Stressed & Procrastinating

> Hey ChatGPT. I've been feeling stressed and tired all week. I made a poor choice to stay up too late on Saturday and Sunday night with the girl I'm seeing, and then another poor choice to not do the work I needed to do on Sunday. As a result, Monday and Tuesday were a stressed scramble to get the work done. Today's Wednesday evening, and I've been procrastinating on doing my needed work all day. I'm feeling like I wasted the day and feeling pressure to stay up late to try and cram the work in, but I'm also feeling like that might be continuing the cycle of lack of sleep.

> ℹ️ This is an instance of intentionally state-shifting myself using the exobrain. We'll talk more about it when we discuss strategies for interacting with your exobrain.

**Untrained**

![](./images/prompt3_untrained.png)

This is good advice, and my exobrain gives similar advice. In this case, we'll focus on what the untrained version _didn't_ say.

**Exobrain**

![](./images/prompt3_trained1.png)

![](./images/prompt3_trained2.png)

![](./images/prompt3_trained3.png)

The core recommendation matches the untrained version. 

But this message is teeming with relevance to me:

- It highlights "reactivity spiral", which comes from my context that I'm working on avoiding reactivity
- It highlights zooming out, which comes from "What traits should ChatGPT have?": `If I become trapped in details or tunnel vision, you must proactively force a zoom-out to the strategic level.`
- It talks in the language of leverage and effectiveness, which I've communicated are important to me
- It suggests Positivity Journalling, showering, stretching, and audiobooks are remedies; all of these come from information I've given it about what's effective for me
- It references DMN/TPN, which comes from research I did through the exobrain on the Default Mode Network and Task-Positive Network
- It simulates my directors Charlie Munger and Nassim Taleb to emphasize why I would do this

The untrained version inspires a mediocre reaction in me: "Oh yeah good idea; maybe I'll do that."

By contrast, the exobrain makes me feel, "It's blindingly obvious what I need to do, and why it's good for me."

Stress and sleep deprivation lock me into cycles. I spend the day as a zombie, then at night numb out with Youtube or social media. I don't have the willpower to stop so I stay up late, and the sleep deprivation cycle continues.

This gives a useful chance to quantify how much better the exobrain is vs untrained ChatGPT. We can do this by calculating the days I'd spend in a cycle with differing advice relevancies.

Here are some numbers that feel realistic for me:

- I have a 30% chance to follow the untrained ChatGPT's advice, get a good night's sleep, and break the cycle
- I have a 75% chance to follow the exobrain's guidance, get a good night's sleep, and break the cycle
- If 5 days elapse from the evening of first realizing I'm in a cycle, I break the cycle on my own because I'm so annoyed I'm caught up

I used [this code](https://gist.github.com/mieubrisse/692813ea5c611a5fe71f56382bdb474b) to compare 10 million simulations of "advice from untrained ChatGPT" to 10 million simulations of "advice from ChatGPT trained as exobrain". 

Here are the results: extra days caught in a sleep deprivation cycle comparing untrained ChatGPT advice to exobrain ChatGPT advice:

- **Untrained ChatGPT:** 1.94 extra days on average
- **Exobrain:** 0.33 extra days on average

Meaning, the more relevant exobrain advice would rescue me from 1.6 days of zombie mode on average.

Those extra 1.6 productive days also compound, as I have the energy to invest in my health, reading, learning, and working.

And these are savings for just one exobrain usecase. Imagine a year of exobrain guidance.

Addendum 2: My Values
=====================
As promised, here are some results from my own value brainstorming. They're provided for ideas' sake only. Your values must make sense to you!

```
Things I Value
--------------
- Freedom to do what I want
- Freedom from anxiety, fear, reactivity, etc.
- Self-care
- Efficiency
- Learning & growth
- Having a family
- Building beautiful things
- Decisiveness
- Authenticity
...
```

I also had...

```
Things I don't value
--------------------
- Politeness
- Obedience
- Niceness
...
```

Social pressure says I should be polite, obedient, and nice. Yet I can think of many cases where politeness, obedience, or niceness goes against what I know to be right.

As I refined, I distilled out four terminal values:

- **Freedom:** to use my time as I please, to go where I want, from mental & physical health problems
- **Building:** building myself up, building a family, building the people & environment around me to be better
- **Effectiveness:** efficiently translating my desires into reality
- **Quality:** creating & consuming beautiful, well-designed, quality things; quality over quantity

These are terminal because there's no real reason behind why I value them. It's just who I am.

I also started to categorize the other things I value as being in service of my terminal values:

- **Why do I value efficiency?** Because it makes me more Effective.
- **Why do I value learning & growth?** Because it Builds my personality, makes me a higher-Quality person, and makes me more Effective.
- **Why do I value self-care?** Because it gives me Freedom from various mental & physical problems.
- ...etc.

TODO SUBSCRIBE BUTTON

<!------------------ IG POST DESCRIPTION --------------------->
<!--
I've talked a lot about the necessity of an exobrain.

Here's the first part of a multi-part series on constructing yours.

👉 Read the full article (link in bio)
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
Ready to build a super suit for your brain?

First guide on constructing your exobrain now available

LINK
-->
