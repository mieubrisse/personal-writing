---
title: "Cryptocurrency 101"
---

_Written on 2021-11-14_

At time of writing, [the company I started with my cofounder](https://www.kurtosistech.com/) has lived exclusively in the cryptocurrency space. Explaining it to friends & family has been difficult because most don't have a good understanding what crypto is or how it works, so this post aims to help.

Hashing
-------
No, not hash browns! The foundation of cryptocurrency is a process known in computer science as "hashing". At a high level, a computer will take an input and perform a series of operations on it (known as the "hashing function") that result in a unique, unrecognizable text of a fixed length. For example, if I pass the text `Kevin is awesome` through one of the most popular hashing functions, I get the output `57675f249c6f5272b77275b36029b32687efa970471c9065f2068f3bc7bf4960`. This might sound useless, but the key here is the unique unrecognizability: every time I pass "Kevin is awesome" through the hash function I get that same sequence out the other side, but it's impossible to look at the output and determine what the input it. Better still, no other input will result in the output `57675f249c6f5272b77275b36029b32687efa970471c9065f2068f3bc7bf4960`. A hash is therefore like a unique fingerprint of the input, where nobody who has the output fingerprint knows what the input was unless they too have the input. Put another way, a hash function is a "one-way function" - you can't go from output hash -> input; only input -> output hash.

This is useful for storing passwords: when you sign up for a website that doesn't care about security, the website will store `your.username@gmail.com` and `YourPassword123` in its database (this is known as storing in "plaintext"). If the website ever suffers a security breach, the hacker will have your exact password. They'll immediately go try it on Google to see if you reused the password and they can get into your Gmail, which will give them access to the rest of your online life. (See [this post][cybersecurity-101] for more details on why password reuse is terrible and how you can protect yourself online.)

A more security-conscious website would instead store a hashed version of your password in their database. The hash of `YourPassword123` is `17bfcefae8e2c4e5142e0548696b935d503fc20e5696fffe7a70209f5f5580d9`, so that would get saved in the website's database alongside `your.username@gmail.com` such that whenever you tried to log in, the hashed version of the password that you tried to log in with would get compared to the hash in the database. If they matched, then you must have entered the right password (due to the uniqueness property of hashes). If a hacker compromised the database, all they'd get is the hash of your password. That doesn't make your password completely secure - e.g. every hacker in the world knows that the hash of `password123` is `57db1253b68b6802b59a969f750fa32b60cb5cc8a3cb19b87dac28f541dc4e2a` so when they see that hash then they know the input - but it does make it more difficult. 

Blockchain
----------
Let's return to crypto-land. You'll probably have heard of the term "blockchain" before, but likely don't have a strong idea for what it really means. A blockchain is just a tool for storing arbitrary data, shared between multiple people, where the data grows over time. The "chain" aspect occurs because each block contains a hash of the previous block's data. Let's use an example to better understand what this means. 

Suppose that we want to store a bunch of names in a blockchain. Suppose that each block in the chain is just text composed of exactly one name, a `|` separator, and the hash of the previous block in the chain. The very first block might record `Kevin|` as its data, and has no hash after the `|` because there's no block that came before it. The next block, though, could record `Galen` as its data and `72cbbf157454addfe4920811c4b6ece6c2675b0c8c6a2b621694cbecca8239da` as its previous-block hash for a resultant block data text of `Galen|72cbbf157454addfe4920811c4b6ece6c2675b0c8c6a2b621694cbecca8239da`. Iterating once again, the third block might store `Jessica` and a hash of the `Galen` block for final block data of `Jessica|ca9869ef276dd4b21c3801ed1ae1398cfa94a45727982c3809bdd226dedbf7f6`. This can then continue to infinity.

The neat thing about this is that nobody can lie about a block being in the chain when it isn't. All we have to do to verify is walk forward from the beginning of time, hashing along the way, until we get to the tip of the blockchain (the most recently-added block). If the claimed block doesn't depend on an existing block (which depends on an existing block, which depends on an existing block...all the way to the first "genesis" block), then they're lying.

This provability is good, but we still haven't answered how blocks actually get added to the chain. If it was easy to add blocks, then everybody would be adding names all over the place and nobody could trust the system because it would be filled with garbage. This is where hashing comes in: we already know that there's no way to take a hash output and determine the input except by randomly guessing, running the hash function over and over on random pieces of input and seeing if one matches. 

We can therefore make it difficult to add blocks to the network by setting up a gate, where someone wanting to add a block to the chain has to produce an input string that matches a random "target" output hash. In this way, no block could get added to the blockchain until someone demonstrates they found an input that hashes into the target output hash. This process of repeatedly guessing until you find an input that matches the output is known as "mining": just like in gold mining, it's hard work to keep guessing until you find the solution and just like in gold mining, it's trivially easy for other people to verify that you found the real deal (because they hash your input and see if it matches the target hash).

Once a miner has found a solution for the target hash, they broadcast it to the other miners who verify that it is indeed a solution and the process continues for the next block.

Network Difficulty
------------------
Now, a caveat: hashing is a slow enough process that if we had _exactly one_ output hash hash that our blockchain miners needed to find the input for, we could be waiting until the end of the universe as they struggle to find the unique input. One more neat thing about hashes is that you can sort them in the same way you'd sort a list of numbers. Hashes are a slightly more complex because they contain both numbers and letters, but the same principles apply with the extra rule that numbers come before letters. The following hashes have been sorted:

1. `0000000000000000000000000000000000000000000000000000000000000000` comes before 
1. `0000000000000000000000000000000000000000000000000000000000000001` comes before 
1. `000000000000000000000000000000000000000000000000000000000000000a` comes before 
1. `000000000000000000000000000000000000000000000000000000000000000c` comes before 
1. `0000000000000000000000000000000000000000000000000000000000000010` comes before
1. `000000000000000000000000000000000000000000000000000000000001f2ba`

Using this property, we can make the mining process of finding a solution faster by setting a _range_ of hashes - rather than a single hash - that the miners must find before they can add a block to the chain. For example, we might say "you as a miner must find an input whose hash is less than `0000000000000000000000000000000000000000000000000000000000010000` which means that input that hashes to `0000000000000000000000000000000000000000000000000000000000000010` or `000000000000000000000000000000000000000000000000000000000000000a` would be accepted but input that hashes to `3d52fc5774328a17b65b1bc594319488653ce7444535afdbc20f3bb55a10605f` (which just so happens to be `hashing, baby`) would not.



[cybersecurity-101]: ../cybersecurity-101/post.md

