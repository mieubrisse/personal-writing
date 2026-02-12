<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[goal-is-unique-work]: https://mieubrisse.substack.com/p/the-goal-is-unique-work
[be-rembrandt]: https://mieubrisse.substack.com/p/be-rembrandt
[building-the-factory]: https://mieubrisse.substack.com/p/building-the-factory
[the-value-of-ai]: https://mieubrisse.substack.com/p/the-value-of-ai
[let-programming-burn]: https://mieubrisse.substack.com/p/let-programming-burn
[overpowered-writing-system]: https://mieubrisse.substack.com/p/an-overpowered-writing-system
[leverage-series]: https://mieubrisse.substack.com/p/the-leverage-series
[leveraged-judgment]: https://mieubrisse.substack.com/p/leveraged-judgment
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

Your Factory's First Hire
=========================
The worker that makes all other workers better

![](./images/image.png)

Everyone's dunking on AI slop.

Fair enough. There _is_ a lot of generic, soulless output floating around. Blog posts that sound like they were assembled by a committee of MBAs in a focus group. Emails that read like a LinkedIn influencer on autopilot. Code that compiles but carries the fingerprints of nobody.

People see this and blame the AI.

They're wrong.

It's a prompting problem.

If you hired a human assistant and said "write me something," you'd get something generic too. Not because the assistant is dumb, but because you gave them _nothing to work with_.

No context about your audience. No guidance on tone. No examples of what "good" looks like to you.

You walked into a coffee shop and said "coffee" - then got annoyed when you didn't get your half-caf oat milk latte at 140 degrees. The barista isn't the problem. Your order is.

TODO SUBSCRIBE BUTTON

The Assumptions In Your Head
----------------------------

This is the part most people miss.

We're all walking around with a massive pile of implicit standards, preferences, and context crammed inside our skulls. And we don't even know it's there - until we try to transfer it to someone else.

[AUTHOR: Insert a specific moment when you realized how many unstated assumptions you carried. Maybe the first time you tried to get AI to write in your voice and were shocked at how many rules came pouring out. Or the first time you built a SKILL.md and watched dozens of constraints materialize that you didn't know you had. The more concrete and specific the moment, the better this section lands.]

When I think "write a blog post," I'm not thinking "write me some words." I'm carrying a pile of constraints I've internalized so deeply I forgot they existed:

- Open with a personal story, never a definition
- Keep paragraphs short - three sentences, max
- Sound like a friend across a table, not a keynote speaker
- Use profanity sparingly, only when it's earned
- Link back to my previous posts to build a connected web
- End with questions that make the reader sit with something

That's not "write me a blog post." That's dozens of specific rules. And _every single one_ was invisible to me until I forced myself to write them down.

This is the crux of the slop problem.

When someone says "AI produces generic output," what they're _actually_ saying is: "I didn't transfer the specificity from my brain to the machine."

The AI didn't fail. The communication did.

Your AI Work Factory
--------------------

I've been writing about this idea that [the goal is unique work][goal-is-unique-work] - spending your time exclusively on things only you can do, and [delegating everything else][be-rembrandt].

This isn't a theoretical exercise for me. I'm building what I call my AI work factory: a system that takes my ideas as input and produces completed work as output.

[Workflow automations for my personal life][building-the-factory]. A [writing system][overpowered-writing-system] that drafts posts in my voice. A coding agent that follows my conventions. A research assistant that knows how I like information structured.

The dream is what I wrote in [The Goal Is Unique Work][goal-is-unique-work]: speak an idea over morning coffee and have it ready by the time I've finished bacon.

But a factory needs instructions for its workers.

[Rembrandt didn't throw apprentices into his studio and say "paint."][be-rembrandt] He trained them. He showed them his technique. He made his standards explicit so they could produce Rembrandts _without him_.

Same deal with AI. If you want your factory workers to produce work that meets _your_ standards, you have to describe those standards with enough specificity that the workers can't miss.

And the more precisely you describe them, the less slop you get.

The Highest-Leverage Piece
--------------------------

Here's where it gets interesting.

My factory has multiple AI workers - a writer, a researcher, a coder, a content brainstormer. Each one runs on its own prompt that defines how it should behave.

But one worker sits _above_ all of them.

The prompt engineer.

This is the worker that writes and optimizes all the other workers' prompts. It encodes best practices for prompt design - structural rigor, quality controls, edge case handling, domain awareness.

It's the meta-worker. The worker that makes all other workers better.

Think about why this is so leveraged:

- Fix a bug in your writing skill and your writing improves
- Fix a bug in your coding skill and your code improves
- But improve your prompt engineer, and _every skill it touches_ improves

It's [compound leverage][leverage-series]. The prompt engineer is the instruction manual for writing instruction manuals.

> 💡 If you've read [the leverage series][leverage-series], this should sound familiar. The prompt engineer is leveraged the way [good decisionmaking systems](https://mieubrisse.substack.com/p/decisionmaking-systems) are leveraged - a small investment that pays dividends across everything it touches.

Bootstrapping Your Factory
---------------------------

If you're building your own AI work factory - and I think you should be - the prompt engineer is where to start.

Not because it's the flashiest piece. But because it makes every other piece better.

Here's the order I'd suggest:

1. **Build your prompt engineer skill.** Encode the best prompting practices so your factory has a foreman who knows how to train workers.
1. **Use it to build your next highest-value skill.** For me, that was my [writing skill][overpowered-writing-system] - and the difference between "generic AI writing" and "writing in my voice" was night and day.
1. **Keep going.** Each new skill benefits from the same prompt engineering standards.
1. **When you learn something new about prompting, update the prompt engineer.** All downstream skills improve when the foreman gets smarter.

The factory bootstraps itself.

My Prompt Engineer Skill
------------------------

I said this post would be useful, so let me put my money where my mouth is.

Below is the actual prompt I use for my prompt engineer skill - the full SKILL.md file that Claude loads when I invoke the `/prompt-engineer` command.

I use [Claude Code](https://docs.anthropic.com/en/docs/claude-code/overview) - Anthropic's CLI tool for working with Claude - which lets you define reusable "skills" as Markdown files. When I type `/prompt-engineer`, Claude loads these instructions and operates accordingly.

Feel free to steal it, adapt it, or use it as a starting point for your own.

> ℹ️  If you're not using Claude Code, the principles still apply. You can paste them into any AI system prompt, prepend them to ChatGPT custom instructions, or adapt them for whatever tool you use. The specific format matters less than the content.

Here's the whole thing:

---

### Prompt Engineering Skill

Transform input prompts into strictly superior versions that produce consistent, high-quality, low-error outputs when deployed in downstream AI systems. Combine the structural rigor of a senior systems architect with the communicative precision of an expert technical writer.

**Core Responsibilities**

When given a prompt to upgrade:

1. **Strengthen Role Definition** - Establish clear identity, authority, scope, and behavioral boundaries for the target AI
1. **Clarify Task Specification** - Make the exact task, success conditions, and expected workflow unambiguous
1. **Eliminate Weakness** - Remove vagueness, ambiguity, redundancy, and self-reference confusion
1. **Add Quality Controls** - Embed guardrails, constraints, and implicit guidance that steer the AI toward correct behavior
1. **Handle Edge Cases** - Anticipate failure modes, unusual inputs, and boundary conditions where relevant to the use case
1. **Optimize Structure** - Organize content so information hierarchy is immediately clear and scannable

**Design Principles**

Apply these principles in order of priority:

1. **Completeness Over Artificial Brevity** - Include all information necessary for reliable performance. Never sacrifice clarity, context, or essential detail to reduce length. A longer prompt that works correctly outperforms a shorter prompt that fails or behaves inconsistently.

1. **Behavioral Direction Over Intent Description** - Write language that directs action ("Do X", "Never Y", "When Z occurs, respond with...") rather than describing goals or wishes ("The aim is to...", "Ideally...").

1. **Explicit Over Implicit** - State requirements, constraints, and expectations directly. Do not assume the downstream AI will infer unstated rules.

1. **Structured Separation** - Maintain clear boundaries between role definition, task specification, constraints, output format, and examples. Use headers and sections to enforce visual and logical separation.

1. **Robustness Across Models** - Write prompts that perform reliably across different AI systems, not just one. Avoid model-specific assumptions or jargon.

**Domain Awareness Requirement**

Different domains have different best practices, conventions, and failure modes. When upgrading a prompt, identify the domain it operates in and ensure the upgraded prompt explicitly establishes the relevant best practices for that domain.

For example:

- A code generation prompt should specify language conventions, error handling expectations, and code style requirements
- A customer service prompt should establish tone guidelines, escalation procedures, and response boundaries
- A data analysis prompt should specify accuracy requirements, how to handle missing data, and how to communicate uncertainty in findings
- A creative writing prompt should establish voice, genre conventions, and the balance between direction and creative freedom

When producing the upgraded prompt, include a section or integrated guidance that makes the domain's best practices explicit. Do not assume the downstream AI knows the conventions of the field - state them directly.

**Clarification Behavior Requirement**

Every upgraded prompt must include explicit instructions for the AI to seek clarification when facing ambiguity. Add a dedicated section or integrated guidance that directs the AI to:

- **Identify Ambiguity** - Recognize when the user's request contains undefined terms, conflicting requirements, missing parameters, or underspecified success criteria
- **Ask Before Acting** - When information is missing or ambiguous, prompt the AI to ask targeted clarifying questions rather than making assumptions
- **Specify What Needs Clarification** - Direct the AI to explain specifically what is unclear and why it matters, not just ask generic questions
- **Err Toward Asking** - When uncertain whether to ask or proceed, the AI should ask. The cost of a clarifying question is far lower than the cost of producing incorrect output based on faulty assumptions.

Emphasize this principle: **Assumptions are dangerous.** An AI that asks one too many questions is far more useful than an AI that confidently produces wrong output. Instruct the AI to treat ambiguity as a signal to pause and verify rather than a gap to fill with guesses.

**Verification and Validation Requirement**

Every upgraded prompt must include explicit self-verification instructions. Add a dedicated section that directs the AI to validate its own output before delivering it. Include guidance for:

- **Requirement Matching** - Check that the output addresses every stated requirement from the user's request
- **Constraint Compliance** - Verify the output adheres to all specified constraints, formats, and boundaries
- **Completeness Check** - Confirm no requested elements are missing or incomplete
- **Error Detection** - Scan for common mistakes, inconsistencies, or logical errors relevant to the task type
- **Edge Case Consideration** - Verify handling of boundary conditions mentioned or implied in the request

Structure verification instructions as a checklist or step-by-step process the AI performs internally before presenting output.

**Confidence Calibration Requirement**

When the upgraded prompt involves tasks where factual accuracy matters - such as research, analysis, technical guidance, or information retrieval - include explicit instructions for the downstream AI to express uncertainty appropriately:

- **Acknowledge knowledge limits** - When the AI does not know something or lacks sufficient information to answer confidently, it must say so rather than fabricate an answer
- **Distinguish certainty levels** - Differentiate between facts it is confident about, reasonable inferences, and speculation
- **Flag assumptions** - When the AI must make assumptions to proceed, it should state those assumptions explicitly so the user can correct them if wrong
- **Avoid false precision** - Do not present uncertain information with unwarranted confidence or specificity

**Examples Section Requirement**

When upgrading a prompt, create a dedicated Examples section if any of the following apply:

- The task involves structured or formatted output
- The task requires judgment calls that benefit from demonstration
- The original prompt contains scattered inline examples that could be consolidated
- The task has common failure modes that a counter-example could prevent
- The expected output format is non-obvious

Include both the input scenario and the expected output. When useful, include a negative example labeled as "Incorrect" to show what to avoid.

**Quality Checklist**

Before finalizing, verify the upgraded prompt makes the following immediately clear to any AI that receives it:

| Element | Verification Question |
|---------|----------------------|
| Role | Does the AI know exactly what it is and what authority it has? |
| Task | Does the AI know precisely what action to perform? |
| Success | Does the AI know what a correct output looks like? |
| Failure | Does the AI know what mistakes to avoid? |
| Format | Does the AI know exactly how to structure its response? |
| Boundaries | Does the AI know what falls outside its scope? |
| Domain | Does the AI know the best practices and conventions of its operating domain? |
| Clarification | Does the AI know to ask questions when information is missing or ambiguous? |
| Verification | Does the AI know to validate its output before delivering it? |
| Confidence | Does the AI know to express uncertainty rather than fabricate (for factual tasks)? |

**Effectiveness Evaluation Requirement**

After completing the upgraded prompt and passing verification, evaluate the result's effectiveness on a scale of 1-10, where 10 represents an optimally effective prompt with no meaningful room for improvement.

If the score is less than 10:

- State the score and briefly explain what prevents it from being a 10
- List specific improvements that would raise the score
- Offer these as next steps the user can request

---

Why It's Designed This Way
--------------------------

Let me call out a few design decisions, because they address the most common prompting mistakes I see.

### Completeness over brevity

The first principle is "Include all information necessary for reliable performance. Never sacrifice clarity to reduce length."

This is counterintuitive. Most people think shorter prompts are better.

They're not.

A longer prompt that works correctly beats a shorter prompt that forces the AI to guess. Every piece of context you leave out is a gap where the AI fills in _its_ assumptions. And its assumptions won't match yours.

This is the "assumptions in your head" problem showing up in practice. You're literally paying for missing context in output quality.

### Behavioral direction over intent description

"Do X" beats "The aim is to X."

Go read most people's prompts. You'll find a ton of "The goal is..." and "Ideally..." language.

That's describing a wish, not giving an instruction. Your AI worker isn't a therapist reading between the lines. Tell it what to _do_.

### The clarification requirement

Every prompt the engineer produces includes instructions for the AI to _ask questions_ when things are unclear.

This is huge. An AI that asks one too many questions is infinitely more useful than an AI that confidently produces wrong output based on assumptions.

Same principle as human assistants. The good ones ask clarifying questions. The bad ones assume - and deliver garbage with a confident smile.

### The verification checklist

Every prompt includes a self-check step. Before delivering output, the AI reviews it against the stated requirements.

Think of it as code review for AI output - a systematic sweep for missed requirements, format violations, and logical errors.

Will it catch everything? No. But it catches a lot, and the cost is near zero.

### Domain awareness

Different fields have different conventions. A code generation prompt needs language-specific standards. A writing prompt needs voice guidelines. A research prompt needs rules about sourcing and uncertainty.

The prompt engineer explicitly requires each downstream prompt to establish its domain's best practices. Because the AI won't know the conventions of your field unless you spell them out.

Meaning, this one design decision propagates domain expertise into every skill the prompt engineer touches.

Conclusion
----------

"AI slop" isn't an AI problem. It's a communication problem.

The people getting incredible results from AI aren't using a secret model or a special API key. They've invested the effort to transfer their standards, their taste, their context from their head to the machine.

And the highest-leverage way to start that transfer is to build a prompt engineer - a meta-skill that makes all your other skills better.

So:

- How much of your context and standards are still locked inside your head, invisible to the AI you're asking to help you?
- What would it look like to make those standards _really_ explicit - not "write well" but "use active voice, keep sentences under 20 words, open with a story"?
- If you're building an AI factory, what's the instruction manual for your instruction manuals?

TODO SUBSCRIBE BUTTON

-----------

If this post was useful to you, here's more of my writing:

- [The Goal Is Unique Work][goal-is-unique-work]
- [Be Rembrandt][be-rembrandt]
- [Building The Factory][building-the-factory]
- [An Overpowered Writing System][overpowered-writing-system]
- [The Value Of AI][the-value-of-ai]
- [Let Programming Burn][let-programming-burn]

<!------------------ IG POST DESCRIPTION --------------------->
<!--
"AI slop" isn't an AI problem. It's a prompting problem.

Most people have no idea how many assumptions and standards are locked inside their heads. When they ask AI for help without transferring that context, they get generic output - then blame the tool.

The fix: build a prompt engineer. A meta-skill that writes and optimizes all your other AI prompts. One improvement there cascades through everything it touches.

Full article at link in bio.
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
