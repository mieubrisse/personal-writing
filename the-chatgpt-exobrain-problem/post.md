---
title: "The ChatGPT Exobrain Problem"
subtitle: "Why I'm losing faith in ChatGPT for exobrains"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

Several weeks ago I published [Building Your Exobrain 1: Customizing ChatGPT](https://mieubrisse.substack.com/p/building-your-exobrain-1-customizing). I promised to deliver the next part a week later. I still haven't done that.

What happened?

One week was just life stuff: travelling and not focusing on writing.

But the other weeks were creeping doubt... like I'm recommending something I'm losing faith in.

In exobrains?

Not at all! I believe more than ever that exobrains are the future.

Rather, I'm losing faith in ChatGPT as an exobrain implementation.

Since I've been working on the next post I've experienced...

- ChatGPT repeatedly telling me it will "update" a Canvas.. only to have it create a new one
- My conversations losing the "Edit Message" button roughly 50% of the time
- Longer (~5m) voice messages often failing to transcribe, quoting an opaque `NSPosixError, 40`, forcing me to throw away the message
- The two-choices "I prefer this response" dialog frequently picking the _opposite_ of what I select
- Searching for a way to give feedback and struggling to find one
- Finding [the model feedback form](https://openai.com/form/model-behavior-feedback/), taking the time to record a Loom video... and nobody watching it or replying
- ChatGPT hallucinating the memories it has about me
- ChatGPT hallucinating that it's removed memories, even getting the "Memory Updated" dialog when it's not actually removed
- A Kafkaesque experience where the chat widget on [the OpenAI Help Center](https://help.openai.com/en/) tells me that I need to open the chat widget to report a bug... without ever actually reporting the bug
- [Pinging OpenAI on Twitter about the hallucination issue, to no response](https://x.com/kevinjtoday/status/1922718592321081596)
- Filing via the model feedback form again (again, no response)
- Signing up to OpenAI's BugCrowd and [filing the hallucination issue](https://bugcrowd.com/submissions/8ca74ca9-e48b-4aa9-806c-85d6ce81c26d), just to have the ticket closed as "This is for security bugs only"
- Even pinging a ChatGPT product manager on Linkedin to try and report (no response)

This experience sucks. And letting your users report bugs is basic product development.

There are also some blindingly obvious features still unimplemented:

- Editing memories
- Seeing the full scope of what's changed when clicking "Memory Updated" (it's nearly always cut off)
- Sort the conversation list by date
- Push notifications (apparently these work on phone, but still don't exist on Mac app)
- Allow choosing a model in subprojects
- MCP support

I'm beginning to conclude that OpenAI doesn't have the product development skills to make it worth building your exobrain on ChatGPT.

And from the rumor I've been hearing, they're more interested in being a model provider than a product maintainer of ChatGPT.

As such, I've started looking elsewhere. 

And... I believe the right tool still needs to be built.

A good exobrain implementation should have a few things:

1. **Memory as a core feature:** The core of an exobrain is its profile about you: who you are, where you've been, and where you want to go.
2. **Flexible, but not too flexible:** An exobrain is guardrails: it needs to understand & accept where you want to go, but not let you drive off the cliff.
3. **Realtime Feedback:** To be effective guardrails, an exobrain needs to be able to nudge you back on course as soon as you start drifting.

ChatGPT, Claude, and Gemini are optimized for "I want to ask a random question" with hyper-agreeability. Memory is treated as a bonus.

So I've begun to explore what building my own exobrain implementation would look like.

If you're interested, DM me here on Substack, on [Twitter](https://x.com/kevinjtoday), or on [Instagram](https://www.instagram.com/kevinjtoday/).

_**Re. the future of the exobrain series** - the exobrain ideas are still relevant, if ChatGPT would work. I'm reconsidering whether I spend the time writing more guides on top of ChatGPT, or just build what's needed._
