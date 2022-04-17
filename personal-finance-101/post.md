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

Foundation Principles
=====================
If a physical house is built on a concrete slab then a financial house is built on sound financial principles. These are mine, with explanations for why I've chosen them.

### The future is unknown
Many people will tell you that the future is unpredictable, and then immediately behave as if they know what's going to happen. I've heard all of the following from friends and family; my thoughts come after:

* "We've had a bull market for so long; the market's going to have a crash soon." Maybe, maybe not. People thought the same in 2011, 3 years after the housing crisis. The bull market then continued for the next 7 years, and is still ongoing at time of writing.
* "Crypto's going to be the next huge thing." Maybe, maybe not. In 2000, everybody thought the Internet was the Next Big Thing... and then the dotcom crash happened. And then the internet actually took off about 10 years later.
* "NFTs are going to be the next big thing." Maybe, maybe not. People thought Beanie Babies and Pokemon cards were going to be the next big things too. Beanie Babies crashed and [people lost serious money](https://qz.com/114753/meet-the-family-who-lost-100000-when-the-beanie-baby-bubble-burst/), while Pokemon cards are still valuable.
* "The withdrawal of troops from Afghanistan is going to cause global instability that causes the markets to crash." Maybe, maybe not. The interactions between international politics, troop withdrawal, inter-country connections, and the market are so insanely complex that it's impossible to predict how something half a world away will affect us.
* "This is our plan for what we're going to get done as a team in Q2 of this year." Maybe, maybe not. What happens when the customer announces they're thinking about backing out of the contract next month?

Why do people believe these stories? This topic alone merits a whole book series ([and fortunately Nassim Taleb has already written it][incerto]), but the short answer is that humans are pattern-finding machines that can't help but try and suss out cause and effect. This works at small scales (e.g. your vase fell because your toddler pushed it), but fails in deceptive ways in large, complex systems like the stock market.

This is a hard concept to internalize because, after all, it's easy to point to the events that caused something after the fact. To get an intuitive sense for why Wall Street's refrain of "past performance is no indicator of future results" is true, watch [this video](https://www.youtube.com/watch?v=d0Z8wLLPNE0) and try predicting where the brown ball goes. 

A double pendulum has only a few components - the weight, two arms, two hinges, and gravity - and the interactions between the components follow well-known laws of physics, but the brown ball's path is already impossible to predict. That's not just "impossible to predict for laypeople like you and I" - no, it's impossible in the sense of "no mathematician or physicist can do it because imperceptibly small variations in the starting conditions can lead to a radically different path for the brown ball."

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

At the end of the day though, there _was_ no strategy - only randomness. The randomness came from a coin flip in the trading example, but it could just as easily come from our thousandfold pendulum that represents the stock market. The result is the same: winners and losers will be made purely by chance, and the winners are strongly incentivized to market and sell their "strategy" for profit.

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

When faced with an extraordinary claim, let time sort out if it's just luck.

### The structure of the bet is important
The second thing we can do to turn the randomness of the world to our advantage is to incorporate the _type_ of randomness into our decisions. Randomness is at the heart of poker, but professional poker players can consistently make a profit - even in online poker where there's little element of human interaction. They do this by consistently structuring their bets in ways that are advantageous: a 60% chance to win a hand means the poker pro will lose 4 out of every 10 hands, yes, but with enough time the pro has a very high likelihood to end up with more money than he started with.

With a 60% chance to win a hand, the pro would be foolish to go all-in on any one hand. He'd still have a 4 in 10 chance of losing, and losing means he's guaranteed to be negative for the night. Far better to keep playing with small amounts, surviving long enough for the law of averages to overcome any short-term losses.

Unfortunately, unlike in poker, the real world rarely comes with known win and loss probabilities (vis a vis, "the future is unknown" principle from above). We know we want to consistently take favorable bets, but there's no flashing "45% chance of success" that flashes in the sky to advise us. How can we bet well?

The answer, again, comes from Taleb: we look at the _nature_ of the bet. Some bets, like our example earlier with traders flipping coins, are _symmetric_, meaning you're looking at roughly the same upside as downside. In our example earlier, any given trader could go either up $25 or down $25. While our example might be contrived, the average stock follows basically the same profile: whether the stock launches to the moon or crashes to the ground is unknown, meaning roughly equal probabilities for gain or loss.

Many people think all bets are symmetric, but there's another type: asymmetric bets. Asymmetric bets are ones where you're either taking fixed gains with the potential for unbounded losses, or fixed losses with the potential for unbounded gains. Not purchasing insurance is a great example of a negative (i.e. bad) asymmetric bet: you gain a small, fixed amount of money that you otherwise would have paid to the insurance company, but you're now exposed to catastrophic loss in case your house burns down or you get cancer. Investing in startups goes the other way: you're taking small, highly-likely losses constantly but if your chosen startup gets big then you can see thousandfold returns-on-investment.

Asymmetric bets seem to be a fundamental property of the world, rather than specific to the finance industry. Here are several more examples outside finance:

* Not wearing a seatbelt (negative asymmetric: small comfort each time, with the risk of death if you get in a crash)
* Maintaining your social relationships (positive asymmetric: small, constant time "lost" but when you _really_ need help your friends and family will be there)
* Scrupulously paying your taxes diligently (positive asymmetric: fixed time and money lost each year to save yourself from the tremendous pain of an audit or jail time)
* Leaving your door unlocked (negative asymmetric: your life is slightly easier 99.9% of the time, but your house gets cleaned out the 0.1% of the time a thief is checking doorknobs in the neighborhoods)

The decision isn't so simple as, "always take positive asymmetric bets and avoid negative asymmetric bets" (else you'd never go outside because doing so runs the risk of the getting hit by a car or struck by lightning), but the nature of the risk is an important tool we can use when making financial choices.

The Tactical Skills of Finance
==============================
If you've followed me this far, you've seen that my theory of a stable financial foundation is predicated on four principles:

* The future is unknown
* People who claim to predict the future are probably liars
* Time will reveal which strategies accurately predict the future
* In the face of uncertainty, you should look at the risk asymmetry

These principles are the guides that inform my decisions, but I haven't yet told you how I translate these principles into action. We're getting there, but this is a "Personal Finance 101" so we need to cover some things in the world of finance first. 

Imagine we're playing basketball. I've told you what I consider to be the essential theory of basketball - when to play offense and when to play defense, how to think about court movement, how to think about using your teammates - but we haven't yet covered tactical skills like shooting, dribbling, and foot movement. 

To me, a tactical skill is "doing VERB to NOUN". In basketball, the verbs and nouns are obvious: "dribble the ball", "shoot the ball", "move your feet". In finance, the verbs and nouns are more arcane: "buy an ETF", "rebalance your portfolio", "take a long position", "hedge your position". Many people find this lingo off-putting, so let's get you up to speed.

### The verbs & nouns of finance
Finance is all about money, so everything comes down to how money gets used, made, or lost. You have some money now, and you want to make more. The money you're investing is known as the **principal**. 

Broadly speaking, there are two ways that your principal makes you money. The first, known as **yield**, is when you make your money available to someone else and that person pays you a percentage of your principal in exchange for the use of your money. The second, known as **capital gains**, is when you buy something with your money that you hope to sell in the future for a higher price.

### Yield
A simple example of yield is putting your money in a savings account in your bank: you give the bank the permission to lend your money to other people, and the bank promises to pay you a low percentage **interest** in return. Interest is a type of yield on the principal you invested in the bank. In effect, putting your money into a savings account is equivalent to making a loan to the bank.

When you put your money in a savings account in the bank, the bank guarantees that you can withdraw the money at any time. This is bad for the bank, because it means that at any point you can say "give me all my money back" and the bank is forced to comply. Accordingly, the bank makes you pay for the freedom by giving you a low interest rate (as of 2022-04-17, my bank savings account is paying abysmal 0.5% interest).

A slightly more complex, slightly more profitable example of yield would be buying a **bond**. When you buy a bond, your money is locked up for a certain period of time (e.g. 6 months). After that period of time (called the **maturity date** because the CD or bond becomes "mature"), you are entitled to your principal back plus the interest. Just like with a savings account, you are lending your money to someone and the lendee pays you extra money for the privilege. Unlike with a savings account, the lendee is guaranteed that you won't ask for your money back before the maturity date. Accordingly, CDs and bonds pay higher yields than savings accounts (as of 2022-04-17, the bonds issued by the US government with 2-year maturation are paying 2.45% yield). The most commonly-traded bonds are US government bonds (the US government is taking a loan from you) and corporate bonds (the corporation is taking a loan from you).

A more advanced example of yield is rent from an apartment. If you've invested your principal in purchasing an apartment, you might let someone "borrow" the apartment from you in exchange for rent (yield) on the apartment.

Still another advanced example of yield is **dividends** on a stock. Dividends are money that the company decides to pay from the company's treasury to all the holders of the company's stock.

### Capital Gains
The other common way to make money off your principal is capital gains: buying something in hopes that it goes up in value in the future and selling for a profit. This increase in value is known as **appreciation**.

Likely the most common example of capital gains is real estate. If I buy a home for $100,000 and sell it for $400,000, my home has appreciated by $300,000. Note that the apartment in our yield example could offer both the possibility of yield and capital gains: I gain yield from the rent, and have the potential for capital gains when I sell the apartment in the future.

The second most common example of capital gains is **stock**. Having stock in a company means that you own some (usually infinitesimal) percentage of the company, and if the company is doing well then you can sell your tiny percentage for more than you bought it for (thereby getting capital gains on your sale). We'll cover what it means to own a percentage of a company soon.

There are many more things you can buy in hopes of appreciation - e.g. cryptocurrency, foreign currency, Pokemon cards, or oil - but they all are purchased in the hopes that their future value will be higher than their current value meaning they can be sold for capital gains.

### Ownership & Equity
It's fairly clear what it means to own real estate: you get a real estate **title** which gives you the legal right to a piece of land and the structures on it, meaning that someone who's there without your permission will be forcibly removed if you call the police. We talked about having stock in a company earlier, but what does that actually mean?

Let's imagine you had a Thing - a boat, a house, a horse, a car, etc. If you own 100% of that thing, you obviously have full control over what happens with that Thing: where it goes, how it's modified, and when it's sold. What would it mean to own 75% of the Thing? Here things get tricky: you might say that this means you own three of the four wheels on the car or three of the four legs on the horse, but the situation becomes silly very quickly (what if the whole horse becomes sick?). The issue is that Things in the real world aren't easily divisible, and usually become less useful when split into parts (a piece of land the size of a dog isn't very useful if you're not a dog). To get around this problem, we tend to assign ownership by decision rights or usage: a timeshare is a house where families get to use the house in accordance with the percentage of the house they own, and a condominium usually has a homeowner's organization where each family gets a vote in what's done with the building.

Companies are considered a Thing by the government, but unlike many Things in the real world can be divided into infinitely smaller pieces called **shares** (because you share in the company's profits and losses). Each share of a company represents a piece of the company's value if it were to be sold, and confers a tiny bit of voting power to dictate what the company does. For example, Tesla has ~1.12 billion shares issued (called **shares outstanding**) as of 2022-04-17. If I own 10,000 shares of Tesla, I own roughly 0.00089% of Tesla which means means I have functionally zero ability to dictate what Tesla does as a company (and it's therefore not worth it to me to even vote in what the company does

. Elon Musk, however, owns 193.3 million shares as of 2021-12-19 which gives him 



a which means that if Tesla were to be sold to Apple for $1.2 trillion then I would be entitled to roughly $10.7k worth of Apple stock (because my 0.00089% multiplied by $1.2 trillion = $10.7k).






Nonetheless, people have figured out ways around it 

A company is more a concept than 

Like a piece of land, a company is considered a Thing by the government. This means that it can be bought and sold just like a piece of land. Unlike a piece of land, companies can be divided into arbitrarily small pieces called **shares** (because you share in the profits and losses of the company) and sold. Land is most useful in large pieces (a piece of land the size of a dog is not very useful if you're not a dog) and no two pieces are exactly alike, but possessing more pieces (shares) of a company simply means that you get more of a vote in what the company does. 


Unlike most pieces of land, a company can be divided into tiny pieces

The ownership of a home is fairly simple
To concretely own a part of a company you need to buy **shares** in a company (so named because you share in the company's profits and losses)


### Risk & Reward




If I buy a rare Pokemon card for $100 and later sell it for $1,000, I have made $900 of capital gains on the card.

A less facetious example of capital gains 


### Inflation


These principles guide the actions I take, but in themselves are just theory that are useless unless they result in effective action. Just like a 


You might know the theory of being a successful basketball player, but you still need to combine that theory with the tactical skills of basketball. So too with finance.

What do I mean by "tactical sk



foot movement, dribbling, passing the ball, shooting, etc. What do I mean by "tactical skill"? Concretely, "doing an action on something". In basketball, both the action and the thing being acted upon are obvious: you're bouncing the ball, or moving your feet, or blocking a player. In the financial world, both the actions and 


In the basketball world the concrete _things_ of basketball are obvious

Pouring The Foundation
======================

These principles guide the actions I take, which in turn form my foundation. Concretely, this means that I:

* Don't trust new financial instruments (e.g. crypto, 
* Don't trust actively-traded funds






### Resources

For some reason, personal finance is fun for me (perhaps the engineer's "optimize everything" sensibilities). I've spent significant persons

* You have money - now what?
* Order of operations
* FIRE


<!------------------------------ ONLY LINKS BELOW THIS POINT ---------------------------------------->
[incerto]: https://www.goodreads.com/series/164555-incerto
