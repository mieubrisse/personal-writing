---
title: "Inputs, Not Outputs"
subtitle: "TODO"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

I lost my wallet the other week. It had both my Brazilian and American ID cards inside, as well as a credit card.

It was tempting to berate myself.

How could I be so careless?

But I'd just read a post [about writing code with AI](https://www.john-rush.com/posts/ai-20250701.html).

The author suggests that we ought to treat AI code generation as a factory.

When the factory produces the wrong product - the wrong product - it's tempting to try and fix that product.

Correct the AI, tell it what it got wrong, refine.

But this fixes the symptom, not the cause.

Better: figure out what in the factory itself caused that incorrect output.

Then, fix that and make the factory produce a new product.

In the case of AI, this would be the context we gave:

- Did we not include the right files?
- Did we give vague, or incorrect context?
- How's our prompt?

When we identify the problem(s), roll the fixes back into the factory.

For example:

- Add more context in your `CLAUDE.md`
- Instruct the AI to ask for clarifications before it does any changes
- Have the AI make a plan and verify it with you before making changes

This makes _so much sense_.

After all, if your data pipeline doesn't transform your data _quite_ the way it ought to, you don't hand-correct each output.

You fix the data pipeline.

I was reminded of [The Phoenix Project](TODO) and the DevOps movement, which push the same idea.

Don't spend time doing bespoke releases & deployments.

Instead, build the system (factory) that does it for you.

Same idea, different field.

When you wake up to this idea, you notice it's everywhere:

- When a failure at NASA, it's treated as a _system failure_ rather than an individual failure and lessons get rolled back into the system
- The incredible safety records of surgery and commercial air travel are the result of checklists encoding the lessons learned over the decades
- The Toyota Production System (which arguably started this all) had the famous TODO cord, where any issues stopped the whole production line 

It's all about "fix the input, not the output".

So when I noticed I was beating myself up for losing my wallet, I pivoted: "This is a system failure, not a Kevin failure. I need to make the system better."

First, I needed to identify where the system had failed.

I reached for a technique we used at Palantir called a "Five Whys". It's simple: you build a tree of "why?" questions, with their response. Once you get to five levels deep, you're looking at the real root of the problem:

```
- Q: Why did I lose my wallet?
    - A: I was carrying a wallet with me
        - Q: Why do I carry a wallet?
            - A: I have to carry around my Brazilian ID card
                - Q: Why do I have to carry around my Brazilian ID card?
                    - A: Occasionally bars ask for it, but I'm actually not sure if I need to carry it around (a digital copy might suffice)
            - A: I carry around my American driver's license
                - Q: Why do I carry around my American driver's license in Brazil?
                    - A: I was worried that I wouldn't have my driver's license if I needed to rent a car
                        - Q: Why am I carrying around my driver's license all day, every day, as a solution for a very rare occurrence?
                            - A: Honestly, because I don't have a good system for ensuring that my driver's license gets into my wallet in the situations where I do rent a car
                            - A: 
                    - A: 
            - A: Just in case I need to rent a car
                - Q: 
- Q: Why didn't I notice my wallet was gone?
    - A: I have to rely on memory to notice that my wallet is missing
        - Q: Why do I have to rely on 
    - A: I mostly leave home with my wallet, but sometimes I leave without it which hurts my ability to say "if I don't feel my wallet, problem"
        - Q: Why do I sometimes leave home without my wallet?
            - A: I'm sometimes worried that it will fall out of my pocket while I'm wearing loose shorts
            - A: I'm trying to reduce my risk surface area in case I get robbed (unfortunately, a reality in São Paulo)
                - Q: Why do I 
- Q: Why was this such a big deal?
    - A: I had my American driver's license, my Brazilian ID card, and my 
        - Q: Why did I have my American driver's license in Brazil?
```

Along the way I tracked action items to follow up on:

- Check if a digital copy of my Brazilian ID card is sufficient
- Some sort of system (maybe AI? maybe a checklist?) that can remind me to pack my driver's license when I'm planning to rent a car








The idea is the same: the output is not special. You fix the inputs.






TODO image generation

- Losing wallet
    - Beating myself up
- The "code factory" post: https://www.john-rush.com/posts/ai-20250701.html
    - Updating my Cursor rules so that Markdown uses "======" rather than "#"
- How can I have a general-purpose AI assistant?
    - Inputs to the training
- NASA "it's not a personal failure; it's a systems failure"
- Toyota production system
- Maalvika - system builders
- My failings with Youtube 
- Creating a ChatGPT project for my blog post image generation, wiht custom instructions, because i kept finding myself needing to reinforce "square aspect ratio... don't include text"



_NOTE: 


the book it's based on, [The Goal](TODO), which introduced the Toyota Production System to the United States.


Conclusion
----------
TODO Challenge/questions to the reader

### Further Reading

TODO link to previous writing

_TODO SUBSCRIBE BUTTON CTA (use ChatgGPT)_

TODO SUBSCRIBE BUTTON

_Thank you to TODO TODO TODO for reviewing drafts of this post._

<!------------------ IG POST DESCRIPTION --------------------->
<!--
TODO

👉 Read the full article (link in bio)

#hashtag1 #hashtag2 #hashtag3
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
