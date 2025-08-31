---
title: "Inputs, Not Outputs"
subtitle: "TODO"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

I lost my wallet the other week. It had my Brazilian and American ID cards inside, as well as a credit card.

It was tempting to berate myself.

How could I be so careless?

But I'd just read a post [about writing code with AI](https://www.john-rush.com/posts/ai-20250701.html).

The author suggests that we ought to treat AI code generation as a factory.

When the factory produces the wrong output, it's tempting to try and fix that product.

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

- When a failure occurs at NASA, it's treated as a _system failure_ rather than an individual failure and lessons get rolled back into the system
- The incredible safety records of surgery and commercial air travel are the result of checklists encoding the lessons learned over the decades
- The Toyota Production System (which arguably started this all) had the famous TODO cord, where any issues stopped the whole production line 

It's all about "fix the input, not the output".

So when I noticed I was beating myself up for losing my wallet, I pivoted: "This is a system failure, not a Kevin failure. I need to make the system better."

First, I needed to identify where the system had failed.

I reached for a technique we used at Palantir called a ["Five Whys"](TODO). It's simple: you build a tree of "why?" questions, with their response. Once you get to five levels deep, you're looking at real roots of the problem:

```
- Q: Why did I lose my wallet?
    - A: I was carrying a wallet with me
        - Q: Why do I carry a wallet?
            - A: I have to carry around my Brazilian ID card
                - Q: Why do I have to carry around my Brazilian ID card?
                    - A: because various government offices require me to have the physical card
            - A: I carry around my American driver's license
                - Q: Why do I carry around my American driver's license in Brazil?
                    - A: I was worried that I wouldn't have my driver's license if I needed to rent a car
                        - Q: Why am I carrying around my driver's license all day, every day, as a solution for a very rare occurrence?
                            - A: Honestly, because I don't have a good system for ensuring that my driver's license gets into my wallet in the situations where I do rent a car
            - A: Because, very rarely, sometimes things like the metro or restaurants only take cash
                - Q: Why can't I use Pix?
                    - A: The metro doesn't take Pix
                        - Q: Why don't I use a metro card?
                            - A: I've applied to get one, but I have to go to a faraway station, I'm not sure the exact process, and it's seemed like a hassle
                                - Q: Why don't I know the exact process?
                                    - A: Honestly, I haven't done the research via friends, ChatGPT, or Google
                    - A: For restaurants, I honestly probably can
- Q: Why didn't I notice my wallet was gone?
    - A: I have to rely on memory to notice that my wallet is missing
        - Q: Why do I have to rely on memory?
            - A: I don't have any way to notify me if I leave my wallet behind (e.g. in an Uber)
                - Q: Why don't I have this?
                    - A: Partly, because my understanding is something like an Airtag would be bulky. Partly, because it would be one more thing to charge. Partly, because I have a slight worry about my phone's battery getting eaten.
                        - Q: Why don't I know what this would entail.
                            - A: I haven't done the research yet
            - A: I can't verify if I had my wallet when I left the house
                - Q: Why can't I verify if I had my wallet when I left the house?
                    - A: I don't have a trackable tile, nor do I have any home camera to see so I have to rely on the security cameras wherever I go (but those aren't viable)
                        - Q: Why aren't the security cameras where I go viable?
                            - A: Who knows if there even will be security cameras, and I discovered that I have to open a court case in order to get access to the cameras
                        - Q: Why don't I have a security camera in my house?
                            - A: In part, I don't want to make my cleaning lady uncomfortable
                                - Q: Why do I think it will make my cleaning lady uncomfortable?
                                    - A: Really, because I haven't asked her (I'm just assuming)
                            - A: I haven't done any research to see which one I'd like
    - A: I mostly leave home with my wallet, but sometimes I leave without it which hurts my ability to say "I don't feel my wallet = problem"
        - Q: Why do I sometimes leave home without my wallet?
            - A: I'm sometimes worried that it will fall out of my pocket while I'm wearing loose shorts
                - Q: Why would my wallet fall out of my shorts pocket?
                    - A: It's pretty light, and the pockets aren't always the deepest
                        - Q: Why don't I have a way to secure my wallet to my pants/shorts?
            - A: I'm trying to reduce my risk surface area in case I get robbed (unfortunately, a reality in São Paulo)
                - Q: Why do I live in a place where I have to worry about getting robbed?
                    - A: Because I love my apartment, my neighborhood, my friends, and the fun activity opportunities offered in the city.
                        - Q: Why don't I find a place 
            - A: It's one less thing to lose
                - Q: Why am I afraid of losing it?
                    - A: See answers above about robbery, and not having a tracker
- Q: Why was this such a big deal?
    - A: I had my American driver's license, my Brazilian ID card, and my 
        - Q: Why did I have my American driver's license in Brazil?
```

Along the way I tracked action items to follow up on:

- Check if a digital copy of my Brazilian ID card is sufficient
- Some sort of system (maybe AI? maybe a checklist?) that can remind me to pack my driver's license when I'm planning to rent a car
- Research with ChatGPT or the internet exactly what I have to do to get my metro card
- Research Airtags or tiles in order to figure out if I could put one in my wallet, what its battery profile would be, and whether it would drain my phone battery
- Look into protective phone cases that also have credit card & money slots
- Check with my cleaning lady if a security camera would make them uncomfortable

_These_ move towards real solutions.

They address the causes for the bad output, and build the system stronger to minimize the chance the bad output happens again.

Fix inputs, not outputs.

Conclusion
----------
A high-performing person like you can handle a lot.

When you drop the ball, it's tempting to beat yourself up: "I just wasn't good enough; I need to be better."

But we're only human.

We get tired, distracted, and low on battery.

The highest performers encode their lessons into systems that let their worst days look like their best.

The next time you don't get the output you want, can you identify the bad inputs and fix those so your system is stronger?

TODO SUBSCRIBE BUTTON

---

If you liked this article








TODO link to "buliding the factory"


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
