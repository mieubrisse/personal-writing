---
title: "Personal Finance 101"
---

<!-- TODO ADD CHANGELOG -->

_To my friends and family, here it is. Finally._

What This Is
============
Most of us dream of having more money than we know what to do with. We see billionaires like Bill Gates and Jeff Bezos and Elon Musk in the news, watch deca-millionaire influencers on Youtube and Instagram, and might even know some millionaires through our friend circles. Money grants freedom from worry over everyday things like mortgage payments and bills, so we imagine having heaps of it will unlock a life of ease that we've never experienced.

There seems to be some truth to this from [what I've read from rich people](https://www.reddit.com/r/fatFIRE/), but there's a catch: money isn't enough. 

If you were to receive an obscene amount of cash right now but haven't invested in learning how to preserve and grow it, you're trying to plop a prefabricated house in the middle of a field: you outsourced the construction to someone else so you don't know how the house works. Worse still, the visible parts are there but the invisible necessities - the foundation and infrastructure - are missing. 

In this series I'll try to distill down everything I've learned in building my own house so that the construction of yours might be easier. I'll cover the following four areas:

* **Foundation:** The things you need to understand before you start _doing_ anything
* **Infrastructure:** The things you'll want to set up to make your house run well
* **Superstructure:** The building of wealth
* **Trim:** Pretty optimizations that get added on to the superstructure

By the time you finish this series, you should have a list of actionable items that you can do to get building.

<!--
My brain has a quirk: managing personal finance is fun for me. I've spent hundreds of hours of free time learning terms, researching optimization strategies, [reading](https://www.goodreads.com/book/show/40591670-i-will-teach-you-to-be-rich?from_search=true&from_srp=true&qid=3tdeFqYcCi&rank=1) finance [books](https://www.goodreads.com/book/show/38315.Fooled_by_Randomness?from_search=true&from_srp=true&qid=vTj7Ep7nNz&rank=1), diving into the US tax code, building spreadsheets, and [writing](https://github.com/mieubrisse/bulk-savings-bond-calculator) software [tools](https://github.com/mieubrisse/wealthdraft). This is the distillation of that knowledge, intended for a non-technical audience.
-->

The Foundation
==============
If a physical house is built on a concrete slab then a financial house is built on sound financial principles. These are mine, with explanations for why I've chosen them.

### The future is unknown
Many people will tell you that the future is unpredictable, and then immediately behave as if they know what's going to happen. I've heard all of these from friends and family, and I've added my thoughts after: 

* "We've had a bull market for so long; the market's going to have a crash soon." Maybe, maybe not. People thought the same in 2011, 3 years after the housing crisis. The bull market then continued for the next 7 years, and is still ongoing at time of writing.
* "Crypto's going to be the next huge thing." Maybe, maybe not. In 2000, everybody thought the Internet was the Next Big Thing... and then the dotcom crash happened. And then the internet actually took off about 10 years later.
* "NFTs are going to be the next big thing." Maybe, maybe not. People thought Beanie Babies and Pokemon cards were going to be the next big things too. Beanie Babies crashed and [people lost serious money](https://qz.com/114753/meet-the-family-who-lost-100000-when-the-beanie-baby-bubble-burst/), while Pokemon cards are still valuable.
* "The withdrawal of troops from Afghanistan is going to cause global instability that causes the markets to crash." Maybe, maybe not. The interactions between international politics, troop withdrawal, inter-country connections, and the market are so insanely complex that it's impossible to predict how something half a world away will affect us.
* "This is our plan for what we're going to get done as a team in Q2 of this year." Maybe, maybe not. What happens when the customer announces they're thinking about backing out of the contract next month?

Why do people believe these stories? This topic alone merits a whole book series ([and fortunately Nassim Taleb has already written it][incerto]), but the short answer is  that humans are pattern-finding machines who try to suss out cause and effect. This works at small scales (e.g. your vase fell because your toddler pushed it), but fails in deceptive ways in large, complex systems like the stock market.

This is a hard concept to internalize because, after all, it's easy to point to the events that caused something after the fact. To get an intuitive sense for why Wall Street's refrain of "past performance is no indicator of future results" is true, watch [this video](https://www.youtube.com/watch?v=d0Z8wLLPNE0) and try predicting where the brown ball goes. 

A double pendulum only has four components - two arms, the hinge, and gravity - and the interactions between the components follow well-known laws of physics, but the brown ball's path is already impossible to predict. That's not just "impossible to predict for laypeople like you and I" - no, it's impossible in the sense of "no mathematician or physicist can do it because imperceptibly small variations in the starting conditions can lead to a radically path for the brown ball."

And that was just a double pendulum. Now imagine a thousandfold pendulum with invisible segments, millions of people pushing simultaneously on various points, and constantly-changing gravity. It would still be simpler than the stock market.

Moral of the story: even if you think you know what's going to happen... you don't.

<!-- TODO INCLUDE A TRIPLE-PENDULUM-BACKED STOCK MARKET SIMULATION AND TELL PEOPLE TO BEAT IT??? -->

### The people who say they can predict the future are probably liars
Yet despite this, the world is full of people confidently proclaiming that the market WILL go up, or this event WILL have this effect, etc. They might couch it in bullshit probability language ("Crypto has an 80% chance of blah blah blah..."), but it's rooted in the same problematic assertion that the future is knowable. Why does this happen, and why do people believe them?

Again, [Nassim Taleb's "Incerto" series][incerto] has the full answer, but the abridged answer is something called [survivorship bias](https://en.wikipedia.org/wiki/Survivorship_bias). Imagine we have a unbiased coin that represents whether the stock market goes up or down on a given day, and we flip it over and over to represent daily market moves. We bring in 100 "traders" who each start with $100. Before each "day" (coin flip), we ask the traders to guess the outcome of the coin flip. If a trader guesses right then they gain $25. If they guess wrong, they lose $25. If any trader hits $0, they go bankrupt and stop playing.

The coin has a 50% probability of being heads, and a 50% probability of being tails. This means that every trader has a 50% probability to gain $25, and a 50% probability to lose $25. Therefore, after the first flip we'd expect roughly half the 100 traders to have $75 and the other half to have $125. After the second flip, we'd expect half of the losers to lose again (bringing their total down to $50), the other half of the losers to recoup their losses (bringing their total back up to $100), half of the winners to have their first loss (bringing their total back to $100), and the other half of the winners to win again (bringing their total to $150).

I'll log these results here and iterate out a couple more flips, so you can see what happens without doing the math yourself:

After first flip:
```
 $75: 50 traders
$125: 50 traders
```

After second flip:
```
 $50: 25 traders
$100: 50 traders
$150: 25 traders
```

After third flip:
```
 $25: 12.5 traders
 $75: 37.5 traders
$125: 37.5 traders
$175: 12.5 traders
```

After fourth flip:
```
  $0: 6.25 traders
 $50: 25 traders
$100: 37.5 traders
$150: 25 traders
$200: 6.25 traders
```

After fifth flip:
```
  $0: 6.25 traders
 $25: 12.5 traders
 $75: 31.25 traders
$125: 31.25 traders
$175: 15.625 traders
$225: 3.125 traders
```

After sixth flip:
```
  $0: 6.25 traders
 $25: 12.5 traders
 $75: 31.25 traders
$125: 31.25 traders
$175: 15.625 traders
$225: 3.125 traders
```

After seventh flip:
```
  $0: 12.5 traders
 $50: 21.875 traders
$100: 31.25 traders
$150: 23.4375 traders
$200: 9.375 traders
$250: 1.5625 traders
```

Those ~10 traders with $200 and $250 at the end are pretty good traders, huh? Their strategy must be quite a bit better than the rest... right? Of course not. The traders who ended up with the most money had (and still have) the same 50% chance that the others have. They ended up on top _purely_ by luck. 

If we now imagine adding three more zeroes to the end of everything, we start to see our answer to the original question of, "Why are there so many people claiming they can predict the market?" Those top traders would have doubled their money, and suddenly their friends become fascinated by the astounding success. Their friends haven't seen a double pendulum and believe there must be some killer strategy at play, so the traders would need strong morals to say, "I got this purely by luck," and even stronger morals to turn down the riches gained by promoting their "secret" on Youtube and Twitter and Instagram. Some of them might even delude themselves into thinking they really did have something special that skewed the odds in their favor.

At the end of the day though, there _was_ no strategy - only randomness. The randomness came from a coin flip in the trading example, but it could just as easily come from our thousandfold pendulum. The result is the same: winners and losers will be made purely by chance, and the winners are strongly incentivized to market and sell their "strategy" for profit.

If you're with me so far, you now understand how:

* Simple interactions between the parts of a system (e.g. the interaction between two segments of a pendulum) can, when combined, give rise to results so chaotic that they physically cannot be predicted
* The output of such a system might as well be random
* Randomness creates winners and losers
* Winners are incentivized to claim they got their results through strategy rather than luck

Is that it? Whether you end up a winner is purely chance? Not exactly - in the real world, there are two things we can do better.

### Time tests truly
The first is recognize time's place in the outcome. After the third flip, we had roughly 12.5 traders who had never guessed wrong and had $175. Undoubtedly, those traders' friends were applauding their financial skill and hungry to learn The Secret while the traders marketed themselves on social media. Look what happens if we follow those traders for the subsequent flips:

After fourth flip:
```
$150: 6.25 traders
$200: 6.25 traders
```

After fifth flip:
```
$125: 3.125 traders
$175: 3.125 traders
$175: 3.125 traders
$225: 3.125 traders
```

After sixth flip:
```
$100: 1.5625 traders
$150: 4.6875 traders
$200: 4.6875 traders
$250: 1.5625 traders
```

After seventh flip:
```
 $75: 0.78125 traders
$125: 0.78125 traders
$125: 2.34375 traders
$175: 2.34375 traders
$175: 2.34375 traders
$225: 2.34375 traders
$225: 0.78125 traders
$275: 0.78125 traders
```

By the end, only ~3.9 of those traders will have made money, ~4.69 will still have $175, and another ~3.9 will have lost money. Time revealed their "secret strategies" to be merely randomness.

Let's say we keep playing until 20 flips have been made. There are 2^20 = 1,048,576 possible outcomes, which means a 1 in 1,048,576 chance that any single trader correctly guesses all the outcomes, ending up with $600. If _two_ of the original traders ended up with $600, we'd know that those traders _must_ have a successful strategy because the odds of two traders getting all the flips right by chance alone is basically 0 (technically 1 in 1,099,511,627,776 which means you're roughly 100 times more likely to pick a certain $1 bill from all the $1 bills in circulation than have two traders end up with $600). For these two traders, time proved that they _weren't_ liars.

When faced with an extraordinary claim, let time sort out if it's true.

### The structure of the randomness is important
The second thing we can do to turn the randomness of the world to our advantage is to incorporate the _type_ of randomness into our decisions. Randomness is at the heart of poker, but professional poker players can consistently make a profit - even in online poker where there's little element of human interaction. They do this by consistently structuring their bets in ways that are advantageous: a 60% chance to win a hand means the poker pro will lose 4 out of every 10 hands, but with enough time the pro will have a very high likelihood to end up with more money than he started with.


### Resources

For some reason, personal finance is fun for me (perhaps the engineer's "optimize everything" sensibilities). I've spent significant persons

* You have money - now what?
* Order of operations
* FIRE


<!-- ONLY LINKS BELOW THIS POINT -->
[incerto]: https://www.goodreads.com/series/164555-incerto
