<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

Lessons From A First-time Founder Who Failed
=================================
What I learned trying and failing to build a successful startup

![](./images/image.png)

TODO note about how I can't say what to do, but I can say what not to do?

"I think we could do this."

It's March, 2020

I'm living in Sao Paulo Brazil, and 

The pandemic is starting to asert its grip on the world

My best friend is living in the apartment above me, and 

He'd been interested in starting a side hustle for a while, and had learned that his former CS professor from Cornell, Emin Gun Sirer, had founded a little blockchain startup called Ava.

They were in pre-launch testing, and had released a grant to build a framework for finding bugs in their nascent blockchain

My friend had gotten in touch with me because he knew we were _the people_ to build this

See, we'd been working at Palantir for a while. I for 7 nearly years, he for 5.

Palantir is a heavily distributed company, with small teams owning products.

As such, they rely heavily on microservices. The core product, Foundry, had at least 50 if not a hundred.

Testing this was a beast: to spin up a Foundry stack on your machine meant maxed CPUs (this was before the days of Apple Silicon).

So when he saw the Ava grant to test a distributed blockchain system, he knew our experience at Palantir would transfer

We spent a few coffee- and beer-fuelled days researching to put together a proposal and...

We won it.

For the next 3 months, as Sao Paulo entered full lockdown, we worked nights and weekends to build a Go framework that could spin up the Ava blockchain in Docker and run various test scenarios over it.

Neither of us were familiar with Go or Docker. But we were hungry and we learned.

> 💡 Lesson: lack of knowledge isn't a barrier. With the internet - and especially ChatGPT today - you can learn anything.

We delivered on schedule, the product worked damn well, and Ava found caught various bugs with it before their ICO in September 2020.

### The beginnings of Kurtosis
The grant had ended, but we felt this could be revolutionary for testing.

We'd both been working at Palantir a while - me nearly 7 years, he nearly 5.

It seemed only natural that we leave Palantir to embark on our first entrepreneurship adventure together.

> 💡 Lesson: becoming a founder gives INSANE growth. Even though I needed 7 years to feel ready to leave Palantir, I'd have gotten more net growth if I'd left after 5.

But what to call it?

Our team name for the grant proposal had been "Kurtosis Was Framed".

"Kurtosis" because we were both Nassim Taleb fanboys, fascinated by the idea of outliers making all the difference. It seemed relevant to the testing framework: a bug caught by the testing framework could (and did) make all the difference at Ava's launch.

"Was Framed" because... no reason at all; we just thought it was funny.

So in October 2020, Delaware corporation "Kurtosis Technologies, LLC" was born.

> 💡 Lesson: a Delaware corporation was the right choice. Most corporations are based there, and there's lots of infrastructure and legal precedent for dealing with Delaware corporations.

> 💡 Lesson: TODO CLEAN THIS choosing a name is *hard*. before choosing the name we searched to see if there was any Kurtosis company. There wasn't so we thought we were good. but we should have avoided a name that nobody knows what it is or how to spell it, that also collides with a statistical principle. more on this later

The following month we quit our jobs at Palantir, took a week break, and started work on Kurtosis fulltime.

> 💡 Lesson: just a week was a big mistake; we should have taken at least a month. We were hopped up on enthusiasm and felt we had to capitalize immediately on our momentum with Ava, but in retrospect a month to recharge the batter

We were Official Founders™!

But now we had a bunch of decisions to make:

What's our logo? What colors should we use? What should the website be? What are our roles? What are our company values? What's our culture?

He and I are both opinionated people, and we got into some pretty heated arguments about a bunch of things that felt _really_ important at the time.

![](page of my drawings of Kurtosis logos)

_Early Kurtosis logos._

Thankfully, we just happened to stumble across [Jeff Bezos' Type 1 and Type 2 decision framework](type 1 type 2 decision framework).

Just asking "Can we change this in the future?" gave us an easy answer for "Do we need to burn time coming to agreement on this?"

We defined his role as CEO, mine as CTO, and started letting each take responsibility for his area.

> 💡 Lesson: the Type 1 and Type 2 decision framework was foundational. It provides an easy answer for, "Do we need to discuss this, or just do something and fix it later?"

> 💡 Lesson: consensus is expensive! As [Jocko Willink](extreme ownership decentralized command), [John Boyd](https://www.amazon.com/Boyd-Fighter-Pilot-Who-Changed/dp/0316796883), and the Nazis all learned, decentralized operating outcompetes centralized consensus. Defining roles is an important part of allowing decentralization

Now, we _knew_ we were sitting on a hot product here.

Wow, a completely distributed testing system! A blockchain company is using this! Palantir could use this! So many ideas!

The next part, we knew, was to start charging customers. But we had to make sure they didn't steal our product!

So we kept the codebase closed-source, and built a complicated auth and usage-tracking system to ensure we could gate features by user subscription tier.

Gotta make sure the hordes beating a path to our door don't sucker us out of dollars!

> 💡 Lesson: this was a gigantic waste of time. It made the product harder to use, and we ripped it out months later. The first iteration of any product sucks. You need feedback, and lots of it, to carve it into something that delivers value and people love. Focus on that first. What does "deliver value" mean? More on this later.

Of course, the path to our door was completely unbeaten by anyone.

The Ava folks were willing to put in a good word to some other folks in the crypto community, but that was it.

So my cofounder started doing cold outreach: emails and Linkedin messages.

To whom?

Well our product was for distributed systems so, anyone who had a distributed system problem... right?

This cost a ton of time and, and amounted to exactly one confused call with a VP at LaunchDarkly.

He thought he was selling us on the value of LaunchDarkly, and we thought we were selling him on the value of Kurtosis. Thanks for your patience with us, Adam 😅

> 💡 Lesson: don't do cold outreach to start. People have their guards too high; it's too lossy and time inefficient. Use your network: friends, friends-of-friends, and friends-of-friends-of-friends. Just keep asking, "Can you introduce us to anyone who has this problem?"

We eventually realized that cold leads weren't working and started tapping our networks.

We started getting calls, but the shape of company on the other end of the line ran a broad gamut: online shopping, microservices, serverless, defense tech...

We knew we were supposed to build for our customers, so we started planning how we'd meet the needs of each of these potential customers.

After all, our long-term vision of a distributed testing platform was all-encompassing; it was just a question of when we'd build any particular feature.

> 💡 Lesson: you need to get _way_ more specific than you think. You don't want to limit your idea or your product, so the natural tendency is to think "Yeah, we could do that!" This is death. Go narrow: solve one valuable problem *really well* for a single customer profile.

Meanwhile, as 2021 dawned and we moved to Mexico City for lighter lockdowns, the word on Kurtosis was inching out within the market where we actually delivered value: crypto.

We got calls with high-level folks at several blockchain projects, including well-known Solana and Chainlink.

They liked the idea of Kurtosis, and we scoped out paid pilots with both.

Our first revenue dollars; exciting!

We crunched hard to upgrade Kurtosis so it  months to build out the pilot feature set, and got 

> 💡 

> 💡 TODO lesson about 




TODO signing up with Gui and Hustlefund


> 💡 Lesson: 

> 💡 Lesson: 

This cost a ton of time and... amounted to our very first pitch call to the founder of LaunchDarkly who 

> 💡 Lesson: don't do cold outreach when you're starting; it's too time-inefficient. Identify your 

Thanks

> 💡 Lesson: 


> 💡 Lesson: TODO me getting anxious 


> TODO lesson on being in-person esp with your cofounder


### First hires

> 💡 Lesson: no rules rules


> 💡 Lesson: don't hire interns at a startup. Interns are a long-term investment, and you don't know if your startup will be around in a year.


> 💡 TODO User vs Designer

> 💡 Lesson: first Hackernews launch, everybody complaining about the name and not at all the product


TODO Solana

> 💡 Lesson: your users need to be using the product every day



> 



TODO i'm being dramatic when I say "failed"

Conclusion
----------
TODO Challenge/questions to the reader

### Further Reading

TODO link to previous writing

TODO SUBSCRIBE BUTTON

_Thank you to TODO TODO TODO for reviewing drafts of this post._

<!------------------ IG POST DESCRIPTION --------------------->
<!--
TODO

🐒 Full article at link in bio.
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
