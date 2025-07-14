<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

"What's 'AI' Anyway? (Part 3)?"
===============================
Explaining in plain English what all the AI hubbub is about

![](./images/image.png)

[Yesterday](https://mieubrisse.substack.com/p/whats-ai-anyway-part-2) I talked about our first attempts to talk to the computer, and the innovative approach Google Translate took.

Today we'll dig into what worked, what didn't, and what happened next.

Failures to translate
---------------------
If you're old enough to remember the 2010s you'll remember that Google Translate was better than anything else at the time, but it still wasn't perfect:

![](./images/fuck-vegetables.jpg)

_Image from [Reddit](https://old.reddit.com/r/engrish/comments/vljcal/fuck_vegetables/)_

Language is hard, man. And one of the big problems had to do with (surprise) ambiguity in words.

If I say "I'm going to see the model", it's unclear what "the model" is. It could be a model house, a Tesla Model 3, or a Victoria's secret model.

Of course, I'd probably made clear what "the model" was at some point earlier in the conversation. But that was several paragraphs earlier, and language models using simple statistical next-word prediction struggled to "remember" previous context.

Then in 2017 the Google Translate dropped a paper called ["Attention Is All You Need"](https://en.wikipedia.org/wiki/Attention_Is_All_You_Need#).

This thing was a bombshell.

It demonstrated a new, more accurate algorithm for predicting the likely next word by having the program "paying attention" to certain key words in the input text.

But not just that. This new algorithm had a very special property: parallelism.

See, before "Attention Is All You Need", training a language model required time in proportion to the size of the training dataset. If you wanted to train on a bigger set of documents, you needed to wait longer for the training to complete.

The original dataset of UN and EU Parliament documents that the Google Translate team trained on was fairly small. It definitely didn't contain references to internet culture, meaning the language model would have struggled to understand much of Reddit.

You _could_ train the model using documents of internet forum conversations... but you'd have to wait longer. And training on the entire internet would just be impractical.

Thanks to the algorithm in "Attention Is All You Need", for the first time you could train your model on a bigger set of documents in the same time simply by stuffing more computers in your datacenter.

"Attention Is All You Need" was a landmark paper, and has now been cited more than 50 _thousand_ times in scientific literature.

OpenAI
------
A certain company called OpenAI was watching these developments closely. 

If the "Attention Is All You Need" algorithm allowed more training data with more computers, why not get a bunch of training data, buy a bunch of computers, and see what happens?

But not just to build a language X → language Y translation machine. To build a general-purpose conversational partner.

And thus was born the "Generative Pre-trained Transformer" line of language models. Or as we know it today... GPT.

GPT-1 was trained on 4.5 GB of book data over 30 days. I couldn't find any examples of its output, though expect it was pretty dumb. But, promising enough to justify investing in...

GPT-2, which was trained on 40 GB of text, documents, and webpages. We don't know how long it took to train, but estimates are that it cost between $25-50 thousand.

GPT-2 shocked the world with how human-like its output was, and started to have humans doubting whether its poems were written by a machine or a human.

In other words, the Turing test that had stood undefeated since its invention in 1949 was starting to wobble.

But GPT-2 was still a bit of a madman. It would be coherent for a bit, and then slowly devolve into nonsense:

![](./images/gpt2-output.jpg)

_Image from [Improving Language Generation with Sentence Coherence Objective (Sun et al, 2020)](https://www.researchgate.net/publication/344245575_Improving_Language_Generation_with_Sentence_Coherence_Objective)_

(At least it's better than "potato potato potato")

> ℹ️  The GPT line of language models are called "large language models" (LLMs) because they're exactly that: language models which are trained on large datasets.

And you already know what came next: GPT-3, trained on 570 GB of text, Wikipedia, and books, [estimated](https://lambda.ai/blog/demystifying-gpt-3) to have costed $4.6 million.

It was released in chatbot form as ChatGPT in 2022, and took the world by storm.

GPT-4 and GPT-4.5 soon followed, and for the first time ever... [a machine beat the Turing test](https://arxiv.org/abs/2503.23674).

GPT-4.5 convinced humans that it, too, was human. It proved the machines can finally talk back.

Machines - so precise and exact - can be given context-free instructions and handle the ambiguity of humanity.

To be continued...
------------------







<!------------------ IG POST DESCRIPTION --------------------->
<!--
TODO

🐒 Full article at link in bio.
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
