---
title: "Inputs, Not Outputs"
subtitle: "Directing your energy where it counts"
---

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

I lost my wallet the other week. It had my Brazilian and American ID cards inside, as well as a credit card.

It was tempting to berate myself. How could I be so careless?

But I'd just read a post [about writing code with AI](https://www.john-rush.com/posts/ai-20250701.html).

The author suggests that we ought to treat AI code generation as a factory.

When the factory produces the wrong output, it's tempting to try and fix that product:

Correct the AI, tell it what it got wrong, refine.

But this fixes the symptom, not the cause.

Better: figure out what in the factory itself caused that incorrect output.

Then, fix that and have the factory produce a new product.

In the case of AI, this would be the context we gave:

- Did we not include the right files?
- Did we give vague, or incorrect instructions?
- How's our prompt?

When we identify the problem(s), roll the fixes back into the factory.

For example with coding:

- Add more context in your `CLAUDE.md`
- Have the AI generate a project plan before making any changes
- Have the AI generate a list of doubts before making any changes

This makes _so much sense_.

After all... if your data pipeline doesn't transform your data _quite_ the way it ought to, you don't hand-correct each output...

You fix the data pipeline.

I was reminded of [The Phoenix Project](https://www.amazon.com/Phoenix-Project-DevOps-Helping-Business/dp/0988262592) and the DevOps movement, which push the same idea:

Don't spend time on bespoke releases & deployments.

Instead, build the system (factory) that does it for you.

When you wake up to this idea, you notice it everywhere:

- The incredible safety records of surgery and commercial air travel are the result of checklists encoding lessons learned over the decades.
- Modern surgery is so high-success for the same reasons (see [The Checklist Manifest](https://atulgawande.com/book/the-checklist-manifesto/)).
- When a failure occurs at NASA, it's treated as a _system failure_ rather than an individual failure. Lessons get rolled back into the system in the form of SOPs.
- The Toyota Production System (which arguably started this all) had the famous [andon cord](https://en.wikipedia.org/wiki/Andon_(manufacturing)) that stopped the entire production line, surfacing issues immediately for later incorporation into the system.

It's all about "fix the input, not the output".

So when I noticed I was beating myself up for losing my wallet, I pivoted: "This is a system failure, not a Kevin failure. I need to make the system better."

First, I needed to identify where the system had failed.

I reached for a technique we used at Palantir (also from Toyota Production System) called [Five Whys](https://en.wikipedia.org/wiki/Five_whys). It's simple: you build a tree of "why?" questions, with their response. Once you get to five levels deep, you're looking at real roots of the problem:

```
- Q: Why did I lose my wallet?
    - A: I was carrying a wallet with me
        - Q: Why do I carry a wallet?
            - A: I have to carry around my Brazilian ID card
                - Q: Why do I have to carry around my Brazilian ID card?
                    - A: Because various government offices require me to have the physical card
                        - Q: Why can't I use a digital card?
                            - A: There's an app that supposedly lets me do this, but for some reason it won't install on my phone as "Not available in your region"
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
                            - A: I honestly haven't looked
            - A: I'm trying to reduce my risk surface area in case I get robbed (unfortunately, a reality in São Paulo)
                - Q: Why do I live in a place where I have to worry about getting robbed?
                    - A: Because I love my apartment, my neighborhood, my friends, and the fun activity opportunities offered in the city.
            - A: It's one less thing to lose
                - Q: Why am I afraid of losing it?
                    - A: See answers above about robbery, and not having a tracker
- Q: Why was this such a big deal?
    - A: I had my American driver's license, my Brazilian ID card, and my credit card inside
        - Q: Why did I have my American driver's license in Brazil?
            - A: See answer above about potentially needing it when renting a car
    - A: I didn't have any contact information inside the wallet, so even if someone found it they wouldn't have a way to contact me.
        - Q: Why didn't I have any contact information in the wallet?
            - A: I'd just never thought about it
```

Along the way I tracked action items to follow up on:

- Research how I can get the Brazilian digital ID card app on my phone in another way
- Some sort of system (maybe AI? maybe a checklist?) to remind me to pack my driver's license when I'm planning to rent a car
- Research with ChatGPT or the internet exactly what I must do to get my metro card
- Research Airtags or tiles in order to figure out if I could put one in my wallet, what its battery profile would be, and whether it would drain my phone battery
- Research a way to secure my wallet to my shorts/pants
- Look into protective phone cases that also have credit card & money slots
- Check with my cleaning lady if a security camera would make them uncomfortable, and if not then research security cameras
- Put contact information inside my wallet

_These_ are actions towards real solutions.

They address the causes for the bad output, and build the system stronger to minimize the chance the bad output happens again.

Fix inputs, not outputs.

Conclusion
----------
A high-performing person like you can handle a lot.

When you drop the ball, it's tempting to beat yourself up: "I just wasn't good enough; I need to be better."

But we're only human.

We get tired, distracted, and low on battery.

The highest performers encode their lessons into systems that let their worst days look like their best.

The next time you don't get the result you want, can you identify the bad inputs and fix them so your system is stronger?

TODO SUBSCRIBE BUTTON

_And my wallet? Contrary to every Brazilian's expectations, it was found and turned in to a metro station. When I retrieved it, not even the cash had been touched. Miracles do happen._

---

If you liked this article you might find my other ones valuable:

- [Building The Factory](https://mieubrisse.substack.com/p/building-the-factory?utm_source=publication-search)
- [The Goal Is Unique Work](https://mieubrisse.substack.com/p/the-goal-is-unique-work)
- [What's AI Anyway?](https://mieubrisse.substack.com/p/whats-ai-anyway)

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
