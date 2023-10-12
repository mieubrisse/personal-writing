---
title: "Hashing, Intuitively"
---

_Written on 2023-10-11_

Until today, I'd never truly grokked [hashing](https://en.wikipedia.org/wiki/Hash_function). I understood it logically - a one-way function that produces an output that _might_ collide, but for my purposes wouldn't - but I didn't really trust it. After all, couldn't there be collisions? MD5 had some. 

The epiphany I had today goes as follows.

UUIDv4 is a "universally unique" identifier because it's basically a random number between 1 and 2^128, which is 3.4028237e+38. It's such an enormous number that the chance you pick two of the same is astronomically low. SHA-256 is almost the same thing: every conceivable piece of information that can ever exist (the input) is assigned a random number between 1 and 2^256, which is 1.1579209e+77 and roughly the number of particles in the universe. 

In other words, a hash function assigns every input that can ever exist a random particle in the universe. We obviously know that there must be collisions because the input is infinite, but the chance of actually finding a collision by trying inputs is tantamount to, "I am going to pick particles in the universe randomly until I get the electron at the end of my nose."

Once I'd realized this, I realized how exceedingly important it is that the output of the hashing algorithm is random based on the input. We don't need to worry about collisions if we're picking randomly from all particles in the universe, but if the hashing function tends to assign particles on Earth then our chance of collision gets a lot higher.

This led me to investigate what hashing randomness is exactly. It appears that in the perfect hashing function, changing exactly one bit in the input should change half the bits of the output. This is called the [avalanche effect](https://en.wikipedia.org/wiki/Avalanche_effect), and it's a good thing in cryptography. This makes sense if you think about what it would mean at the extremes if this wasn't true:

1. if changing one bit in the input resulted in changing no bits in the output, your hash function is already broken because you've already generated a known collision
1. if changing one bit in the input resulted in changing just one bit in the output, it would be much easier to guess inputs as you could hash any input, get its output, and then explore around the output with the knowledge that the nearby hashes (hashes that are only one bit different than your output) would have inputs only one bit different than your input
1. if changing one bit in the input resulted in changing all the bits in the output, you'd have collisions like crazy because changing one bit in the input would create the inverse, and changing one bit in _that_ input would create the same output as the original hash
1. if changing one bit in the input resulted in changing all but one of the bits in the output, it would also be much easier to guess inputs as you could hash any input, gets its output, and explore any hashes who differ by all but one bit with the knowledge that their input must differ from your hash by at most one bit

The "change one bit" and "change all but one bit" cases are functionally the same, suffering from very high collision and reverse-engineering, because changing any one bit in their inputs can only yield at most N new unique output hashes (where N is the number of bits in the output).

This is why the "change half the bits in the output" is important: it maximizes the number of unique new output hashes that changing any one bit in the input yields. Equivalently, it means that changing any bit in the input makes every single bit in the output have a 50% chance of being 0 and a 50% chance of being 1. In other words, changing one bit in the input creates a totally new random number.
