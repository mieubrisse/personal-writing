<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[TODO]: some-link
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

"What's 'AI' Anyway? (Part 2)?"
===============================
Explaining in plain English what all the AI hubbub is about

![](./images/image.png)

[Yesterday](https://mieubrisse.substack.com/p/whats-ai-anyway-part-1) we talked about the birth of computers, and the start of humanity's quest to talk to them.

Today we continue the AI journey with why talking to computers is hard, and our first steps at doing so.

(Not) passing the Turing test
-----------------------------
So from the 1940s onwards, everyone's trying to write a program that can pass the Turing test: a human can talk to the machine, and the machine talks back convincingly enough to fool the human.

It's not hard to get the machine to talk back. I can write a program that simply prints "potato" no matter what the human enters:

"How are you?" "potato"

"What's up?" "potato"

But unless the human is a demented farmer, the human is going to choose "I'm talking to a computer" every time on the Turing test.

And so began decades of research into language, to see if we could encode the precise concepts of language into a computer program that could fool the human.

If you ever used "AI" in the 90s, 2000s, or 2010s, you know how well that went. It _kinda_ worked, but was pretty crappy. 

Artificial intelligence was a bit of meme: it was _definitely_ artificial, but intelligent it was not.

And it makes sense. Language is vast enough to represent the infinity of reality, including reality that doesn't exist.

Just imagine trying to write a program that can handle _whatever_ made-up bullshit I throw at it.

"You be Zeblom, of the world Geblorx. Yo blurz is failing and you gotta flurg before you keplank. How you do it?"

That's standard fare for science fiction (from Jamaica), and humans have no problem dealing with it.

But throw that at a pre-2020 computer program and watch it quail in terror.

Language is a hard problem, man.

A wild idea appears
-------------------
But something was bubbling in the background.

In 2006 a little company called Google launched a little program called Google Translate, with the goal of translating anything in any language into any other language.

The infinity of language (including the fact that I can make up whatever bullshit I want) meant it was impossible for Google Translate to use rules to anticipate any text that users would ever throw at it.

So the Google Translate team took a different approach. Rather than trying to create precise rules for translating input text to output, Google Translate used statistics.

The theory went like this: while I'm in the middle of a sentence, there are some words that are more likely than others to come next. 

If I start a sentence with "I need to go to the...", the next word is very likely to be "bathroom" and very unlikely to be "toothpaste".

The Google Translate team then:

1. Grabbed hundreds of United Nations and EU Parliament documents
1. Fed them into a computer
1. Had the computer build a statistics database of the likelihood of any word to come next based on the words it had already seen

When doing translation, the Google Translate program would do a loop: it would use the user's input text, the statistics database, and whatever translation the program had already to make guess after guess at what the next word is. It continued until the program determined that the likely next "word" was "No word at all; end translation".

For example, let's say I want to translate "I want an apple" into Portuguese.

The word for "I" in Portuguese is "Eu".

So the first loop of Google Translate has the program asking the statistics databases, "The user's input text is 'I want an apple' and the current translation output is empty, ''. What's the most likely next word?"

Based on the text of the United Nations and EU Parliament documents the statistics database was created from, the response arrives: "I think the most likely next word is 'Eu'."

Then the cycle repeats: "The user's input text is 'I want an apple' and the current translation output is 'Eu'. What's the most likely next word?" 

This loops, over and over, until the translation of "Eu quero uma maçã" is complete and the statistics database says, "The most likely next 'word' is nothing; the sentence is over and the translation is complete."

This thing - a program that takes input text and predicts the next word using a statistics database - is called a "language model".

The act of building the statistics database by crunching documents is called "training the model".

To be continued...
------------------
Today we discussed the first attempts to talk to computers, and Google Translate's innovative statistical language approach.

Tomorrow we'll talk about the shortcomings of this approach, and a breakthrough. Stay tuned!

TODO SUBSCRIBE









<!--
LLMs in your day-to-day
-----------------------
I've been light on specifics to keep this explanation comprehensible. Now I'll paint in just a bit of detail, because it will help you think about your interactions with modern LLMs.

### Context
First, remember how the first Google Translate language models took in the user's input text to translate?

This text is called the "context" (remember how human language is contextual?). Context provides the LLM a basis to start generating output words from.

In ChatGPT, this context starts with the text that you enter at the beginning of a conversation.

But here's the magic: when ChatGPT replies to you, its response _also_ gets included in the context next time you send a message.

In other words, each time you send a message ChatGPT is getting the history of the conversation.

This is how it seems so clever, and attentive. It's running the "Attention Is All There Is" algorithm over the entire chat history at superspeed, picking out what to pay attention to, and generating a response based on the whole conversation you've had.

But not only that. If you've used ChatGPT's "Memories" feature, the context that gets sent to ChatGPT on each generation _also_ includes your memories. This allows ChatGPT to reference them if it's relevant to the conversation.

Only OpenAI know what this actually looks like, but we can guess that a conversation like this...

```
Me: Hey ChatGPT, what's the capital of France?

GPT: Hi Kevin! The capital of France is Paris.

Me: Can I go climbing there?
```

...actually gets sent to the GPT model as something like this:

```
INSTRUCTIONS:
You are a helpful, friendly AI assistant. Your job is assist the user without causing harm to them. You must refuse to assist the user in anything that would cause damage to their own life or the lives of others.

You know certain things about the user, which are included under a section labelled "MEMORIES". You have had a conversation with the user, which is included under "CONVERSATION".

MEMORIES:
- The user's name is Kevin
- The user values short, direct responses
- The user enjoys rock climbing

CONVERSATION:
User: Hey ChatGPT, what's the capital of France?

You: Hi Kevin! The capital of France is Paris.

User: Can I go climbing there?
```

Then, based on that full context, the GPT model generates makes it prediction at the next word, then another, then another until it deems it likely no more words are needed.

The size of the context that an LLM can receive is called its "context window", and it has limits.

GPT-3 had a very small context window - about 1,500 words - which is why you'd see it start to forget things in longer conversations.

The latest LLMs have much bigger context windows. Claude-4 can handle up to 150,000 words, which is about 500 pages of text!
-->

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
