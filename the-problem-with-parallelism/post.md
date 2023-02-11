---
title: "The Problem With Parallelism"
---

_Written on 2023-02-11_

I've been spending a lot of time obsessing about the language of writing, and as a result not publishing. This post takes a different approach: bullet points, to get the idea out there. Call it an "MVP post", maybe.

### Why Distributed Systems Are Hard
- We humans think in causation
    - Causation: this, then this, then this
- We at Kurtosis have thought a lot about what how to make working with distributed systems easier
- Q: What makes them so hard?
    - A: **relatavity**
    - There is no single authority on the source of time
    - Many things are happening in many places (everything, everywhere, all at once)...
    - ...but due to the speed of light/relativity we cannot place those events into a single unified timeline
        - _Aside: this makes me realize intuitively why the speed of light means time MUST be relative. If the universe weren't relative then there would be a single source that could be used to judge "when did Y happen?" which means that source would have to have knowledge of all other things, but it could only gain knowledge of other things by information transfer and the fastest information transfer possible is the speed of light so therefore the universe must be relative._
- Single CPU can be modelled as a state machine
    - First this, then this, then this
    - Neat transitions between each thing
- Even parallel CPUs might be able to do this, because we have a single system clock
- As soon as we leave that single system clock and send data over the wire, the network link becomes a part of the system too
    - I.e., the bytes in transit - the electricity signals - are part of it
- Even if you _could_ measure what's going on over the wire, you'd still need:
    - To perturb the system to measure it
    - Deal with time lag in getting your measurement back to some central source
        - You haven't solved the problem, just added to it
        - Distributed systems are like the haunted forests proposed [here](https://john-millikin.com/sre-school/no-haunted-forests): any time you try to control them and impose order on them, you just add to them
    - **The speed of light is why distributed systems are hard**
        - I.e. the speed of information transfer is why distributed systems are hard
- This becomes even more obvious with data
    - As long as data is colocated on the host, you're alright
    - As soon as you want to put data in the cloud (e.g. S3), then you have a network request to store data
        - How could you even possibly take a consistent cut of the system with all its data represented if some of the data is flowing over the network link?

### Kubernetes
- Kubernetes thinks about "control loops"
    1. You define the desired state
    1. Kubernetes constantly measures the observed state
    1. It tries to drive the system towards the desired state
- This is actually:
    - Genius: k8s says "I'm not going to bother trying to determine a consistent state of the system; I'm just going to push it towards where I want to go"
        - **This is the domain of black swans!!!**
        - You could even get adversarial processes pushing against each other
    - Hard: k8s is universally known to be complex and hard to reason about
        - Humans think causally
        - k8s doesn't
- k8s centralizes the desired state of the system (in its internal datastore, via `etcd`)
    - Actual state of the system can never be represented

### Kurtosis Idea
- Can we do it better?
- **How do we make all this more approachable and easier to reason about, especially for the 80% of developers with simple usecases?**
- Prod can get SO complex, especially with autoscaling and all that craziness
- Dev/test/debug are actually informed by Prod, except we want determinism too
    - DON'T need full determinism; just enough

### What Might Better Look Like?
- Ability to represent a desired state of the entire system (as much as possible) at any given point in time
- In any real system (e.g. Stage, Prod), have the ability to:
    - Very accurately look at what happens when the system deviates
    - At minimum we MUST have detailed logs of what happened, from each machine's perspective
    - Why each machine? Because each machine has a consistent view of its own world
- Must be able to reproduce, to some decent degree of fidelity, systems in Dev and Test
- Must be able easily define what you want!!!!!
    - This is a big problem right now: it's a gigantic pain in the ass to define distributed systems
    - Kubernetes forces you to deal with many, many abstractions up front, and most people are struggling to understand containers still

### Ideas for Solutions
- Starlark has potential for easy-to-write distributed system definitions
    - It will very likely fall short for a huge, production-grade system with lots of teams and moving parts
- CUElang: great for representing the desired state of the system, with constraints, in a federated way
    - Rejects single sources of truth
    - Very useful, but very complex and hard to wrap your head around
- GitOps: great, until reality deviates from what you think
    - This is the "single source of truth" way

### Conclusion
- I feel silly talking about this
- I feel like I'm playing catch-up to the rest of the world
- Feels like it took me this long to truly grok why distributed systems are hard and why Kubernetes is designed the way it is
- In retrospect, I had serious naivete assuming that distributed systems are hard to work with simply because of bad tooling
- Folks on the cutting-edge have been thinking about this for years, if not decades, already
    - E.g. Brian Grant of Kubernetes
    - E.g. Kelsey Hightower of Kubernetes
    - E.g. Marcel van Lohuizen of CUE
- I am playing catch-up
- However, knowing what I know now, I still don't think we're at the best we can do with working with distributed systems
- As a newcomer, they're just too hard in the average case
- Feels like we're missing a unification that can take us through Dev, Test, Stage, and Prod (and back again, as we debug)
