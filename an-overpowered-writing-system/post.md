An Overpowered Writing System
=============================
Steal my system and feel like you're flying

<!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
[goal-is-unique-work]: https://mieubrisse.substack.com/p/the-goal-is-unique-work
[writing-tools]: https://github.com/mieubrisse/writing-tools
[link-summoner]: https://github.com/mieubrisse/link-summoner/
<!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

![](./images/image.png)

_This post is part of [a series on leverage](https://mieubrisse.substack.com/p/the-leverage-series)._

I write like I'm painting.

Splash stuff down. Refine. Splash more (maybe at a later point in time). Refine.

The goal is minimal friction between mind and materialization.

Be Brandon Sanderson, not George R. R. Martin.

Painting, not surgery.

To support this I've developed a writing system.

Steal what you like from it.

> ⚠️  I heavily use tech. If you're not comfortable with this... you need to be, because it gives you insane efficiency. 😜

The repo
--------
To write like you're painting, you need to [feel confident you can roll back errors](https://mieubrisse.substack.com/p/the-value-of-ai#:~:text=all%20the%20time.-,Guardrails%20like%3A,-%22Oops%2C%20not%20what).

You also need to own your output.

This is a solved problem, so my writing source-of-truth is a [Git](https://github.blog/developer-skills/programming-languages-and-frameworks/what-is-git-our-beginners-guide-to-version-control/) repository on Github (I don't trust Substack to not disappear with my writing).

Each post that's not yet published is on its own branch.

The repo's layout is as follows:

```
TEMPLATE/
   post.md
   images/
some-post/
   post.md
   images/
      image.png
      some-image.png
      some-other-image.png
some-other-post/
   post.md
   images/
      image.png
...
```

Each post's text is in `post.md`.

`TEMPLATE/post.md` contains scaffolding for each post (detailed below). Remember, [the goal is unique work][goal-is-unique-work].

`images` contains the images I reference in the post (including the cover image).

I heavily leverage automation to work with the repo. I can:

- Summon up a new post from anywhere on my machine with `pn the post name` (`pn` = `post new`) from my [writing tools][writing-tools] to:
    1. `cd` into my writing repo
    1. Check out a new branch called `the-post-name`
    1. Copy `TEMPLATE` into a new directory called `the-post-name`
    1. Commit everything
    1. Open `post.md` in my text editor ([Vim](https://en.wikipedia.org/wiki/Vim_(text_editor)))
- Dip into an existing post from anywhere on my machine with `pf query term` (`pf` = `post find`) from my [writing tools][writing-tools] to:
    1. Fuzzy-search for post directories containing `query term` across all branches, with the option to interactively refine the query
    1. Upon selection, switch to the branch containing the post and open `post.md` in Vim
- Switch between branches using fuzzy queries with my [special `git checkout` alias](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/bash/bash_aliases#L322-L371)
- Switch between directories and posts using my [fuzzy open-anything ⌘-K for the terminal](https://github.com/mieubrisse/cmdk)
- Commit without writing unnecessary characters using [my `gg` and `gcmm` Git commit conveniences](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/bash/bash_aliases#L403-L404)

The goal is painting, not surgery, and these tools let me drop into splashing ideas around within a second.

Much of this automation leans on [`fzf`](https://github.com/junegunn/fzf). It's so absurdly good.

TODO SUBSCRIBE BUTTON

The writing
-----------
All my posts are written in [Markdown](https://www.markdownguide.org/). It's just better than anything else.

<!-- TODO link to inputs not outputs when it's ready -->

As of 2025-07-09, the `TEMPLATE/post.md` scaffolding looks like this:

    ---
    title: "TODO"
    subtitle: "TODO"
    ---

    <!------------------------- REFERENCE LINKS BLOCK ----------------------------------->
    [TODO]: some-link
    <!----------------------- END REFERENCE LINKS BLOCK --------------------------------->

    ![](./images/image.png)

    Write all the things here

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

Notes:

- There's always a cover image at the top (`image.png`), that I generate with ChatGPT
- The "REFERENCE LINKS" block is only for links that I repeat multiple times in the spirit of [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself); often it's unused
- The "IG POST DESCRIPTION" and "IG STORY TEXT" are more reminders to think about social; I often find that it's better to write the actual copy in Instagram because I can better feel how the text fits
- h1 and h2 headers use the `=======` and `------` style rather than `#` and `##` because they're easier to visually distinguish

I edit in Vim using [this config](https://github.com/mieubrisse/dotfiles/tree/master/nvim).

Some fancy features of my Vim config:

- `\h=` will h1-ize lines, so calling it on:
  ```
  My h1 header
  ```
  turns it into
  ```
  My h1 header
  ============
  ```
  [.vimrc code here](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/vim/vimrc#L402)
- `\h-` will h1-ize lines, so calling it on:
  ```
  My h2 header
  ```
  turns it into
  ```
  My h2 header
  ------------
  ```
  [.vimrc code here](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/vim/vimrc#L403)
- `\c` will open the Markdown in Chrome (more on that later)

I try to let thoughts flow, resisting the urge to edit (though I often can't help myself).

When adding links, I don't fill in the URL at first so I don't interrupt my flow. Instead, I do something like this:

```
Hey, I want to link [to something](note to myself about the URL to fill in)
```

I then fill in the actual URL later, before I post (more on this down below).

Image links get added using Markdown's image link syntax, with an optional caption added below:

```
![](./images/some-image.png)

_Optional caption_
```

Numbered lists always start with `1.`, like so:

```markdown
1. First item
1. Second item
1. Third item
```

Me keeping the order - `1. 2. 3.` - in Markdown is a waste of time because the Markdown renderer will fix it for me and I frequently adjust ordering.

I occasionally add notes for just myself - e.g a reminder to link to a post that I'm planning but doesn't exist yet.

This happens using Markdown comments:

```
<!-- TODO link to <post I'm planning> when it's published -->
```

You guys don't see it, but it's there as a reminder for myself. I always include the word "TODO" because it's a consistent search term I can use to find all my TODOs at a later point in time.

I often need to flip to Chrome to do research for a post.

I have [Karabiner](https://karabiner-elements.pqrs.org/) rebind the `Fn` key on my Mac to the "hyper" modifier (`cmd+ctrl+option`), and then use [Raycast](https://www.raycast.com/) to bind `hyper-q` to open Chrome (`q` because `hyper-c` is my calendar).

I also have Raycast bind `hyper-t` to my terminal ([iTerm](https://iterm2.com/)), so getting back to the terminal is a single keypress.

Often I rename the post in the course of writing, meaning the Git branch no longer matches the post name. 

This is fine; I just change the `title:` in the post and `git mv` to rename the directory. My `pf` tool searches based on directory name (not Git branch name) so it doesn't matter.

TODO SUBSCRIBE BUTTON

Publishing
----------
### Cover image
When I'm ready to publish, I generate an image with the ChatGPT Mac app (bound in Raycast to `hyper-g`).

ChatGPT's folders let you add custom instructions applying to just the conversations in the folder, so I have a folder called "🖼️ Blog Post Image Generation" with these custom instructions:

```
You are creative image-generating bot responsible for generating striking, unique cover images for blog posts the user writes. The goal of the images is to entice readers to click on the post.

Favor realism or surrealism, and avoid simplistic, cartoon-like, or diagram-like images. Lean away from any sort of "duality" themes, as these are overused.

Your images should always be in square or landscape aspect ratios.

Unless the user explicitly requests text in the generated image, it is crucially important that your generated image MUST NOT include any text whatsover.

The user may or may not include the text of the blog post the user wrote. If so, the text of the blog post will be provided after a header entitled "TEXT".

If the user does provide blog post text, you should use it for inspiration but need not feel compelled to slavishly include everything from the post. In the blog post text you may see lines like "TODO SUBSCRIBE BUTTON"; these can be ignored. You may also see lines that start with HTML comments like <!-- --> . These can also be ignored.

Again, your primary function is to generate striking, unique, realistic or surrealist images.
```

The "🖼️" in the folder name is to make it visually obvious when I'm looking for it in the mess of my ChatGPT conversations in the sidebar.

<!-- TODO link to inputs, not outputs -->

I'll then iterate on the image ChatGPT generates. Some tips for your own iteration:

- If I don't already know the image I want, I'll feed ChatGPT the blog post text itself and see what it spits out. Sometimes this leads to cool stuff, but other times it generates bland unappealing nonsense. If it's spitting out crap, I switch to giving it an idea of what I want.
- I find that once the GPT generates an image, it gets "locked" into a line of thinking based on that image. If you don't like the original image, I often find it useful to have it re-roll the image using the "Try again" feature (🔁 icon) rather than trying to refine the image.
- To save an output I sorta like, I'll save it into the post's `images` directory. I often accumulate several images and then pick the one I like the most.
- ChatGPT's really bad at taking an input image and making an output image that looks like it. If I want to explore parallel lines of thinking based on a source image, I'll have the GPT turn the image into a text with this prompt:
  ```
  Describe this image in excruciating detail, producing a text that's detailed enough so that I can paste it into a new conversation and have you generate the same image.
  ```
  (There's probably a product somewhere in here about Git branch-like workflows for image generation.)

Once I have an image I'm happy with, it gets dropped into `images` as `image.png` (which is the default filename for images downloaded from ChatGPT, which is why that's the filename versus something like `cover.png`).

### Previewing
I then preview what the file will look like in the browser using [this Chrome extension that will render Markdown into HTML](https://chromewebstore.google.com/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk).

To open the file, I use either:

- `\c` inside Vim ([.vimrc code](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/vim/vimrc#L392-L395))
- `chrome post.md` from the terminal ([.bashrc code](https://github.com/mieubrisse/dotfiles/blob/8039ceeeb868e74a3a52e7c4898a858edb9e23a2/bash/bash_aliases#L90-L112))

I'll then edit and review until I'm happy with it.

### Final checks
I then open the writing repo in Chrome using [Github CLI's](https://cli.github.com/) `gh browse`, and open a pull request.

Every pull request runs automation to verify that all the links in the writing repo are still valid. This is the safety net to remind me about all the URLs that I didn't fill in while writing.

I use CircleCI because that's what I used historically, but I'd like to switch to Github actions.

The CircleCI config:

```yaml
version: 2.1

jobs:
  validate:
    docker:
      # We have to install version 3.12.1 because 3.12.2 has a regression where dead links don't return a failing exit code
      # See: https://github.com/tcort/markdown-link-check/issues/457 and https://github.com/tcort/markdown-link-check/pull/452
      - image: ghcr.io/tcort/markdown-link-check:3.12.1
    resource_class: small
    steps:
      - checkout

      # Gotchas I discovered when writing this:
      # - Without the '--no-pager' flag, Git will print "WARNING: Terminal is not fully functional" and not display any output
      # - Circle has no way of getting the PR base branch, so we have to hardcode the base branch :( See: https://ideas.circleci.com/cloud-feature-requests/p/provide-env-variable-for-branch-name-targeted-by-pull-request
      # - The --exit-code flag to git-diff returns 0 on no changes, 1 on changes
      # - We have to use 'origin/master' rather than 'master' because Circle does a shallow checkout, and 'master' gets set to something weird and wrong that makes the check buggy
      - run: "! git --no-pager diff --exit-code origin/master...HEAD CHANGELOG.md"

      - run:
          name: Check links in Markdown docs
          command: |
            markdown-link-check --config markdown-link-check-config.json --retry -v $(find . -iname '*.md' | grep -v 'TEMPLATE/')

workflows:
  build:
    jobs:
      - validate:
          filters:
            branches:
              ignore: main
```

When the CI checks pass, I merge into `main` and the post branch gets deleted thanks to the "Auto-delete branches" setting on the Github repo.

### Adding on Substack
I then create a new post in Substack, copy the post from the HTML-rendered Markdown in Chrome, and paste it into Substack.

This mostly works, though there are a few things that don't:

- Images don't load in Substack, so I need to delete them and re-add using Substack's native image widget
- I have to manually switch the `_Optional image caption_` below images to be an actual image caption on the Substack image widget, else the text won't be centered
- I have to manually switch the `TODO SUBSCRIBE BUTTON` to the actual Substack subscribe widget

In the process, I often find typos and adjustments to make.

Ideally, I'd make these in Markdown and re-render the Markdown into Substack. But because of the little things that don't work, this would mean I need to re-make the manual changes.

Instead, I make my adjustments in parallel to the Substack draft and the Markdown. The adjustments in Markdown get committed directly to `main`.

### Publishing & amplifying
I have a checklist template (in Markdown of course) in a separate `checklists-and-templates` repo to run the publishing process. As of 2025-07-09 it looks like this:

```
BEFORE POSTING
--------------
1. [ ] Decide on tagline that will go in post caption text
1. [ ] Ensure I have hashtags in the post caption text
1. [ ] Ensure I have "Share" or "Subscribe" CTAs in the post!
1. [ ] Create a PR and merge into main

AFTER POSTING
-------------
### Prep
1. [ ] Download the shareable image that Substack generates for the post
1. [ ] Post the shareable link that Substack generates to my self Whatsapp group (for using in Stories)
1. [ ] Send raw cover image to myself on Whatsapp for stories

### On Mac
1. [ ] Restack my own post
1. [ ] Post a feed post to kevinjtoday, ensuring to cut off the `mieubrisse.substack`
1. [ ] Post the link to Twitter
1. [ ] Post the link to Linkedin
1. [ ] Post in the Discord
1. [ ] Send to all the friends that I've recorded as interested

### On Phone
1. [ ] Share story with raw cover from Whatsapp WITH LINK to kevinjtoday
```

I copy this template for each post I'm publishing, then run it.

The result is a published post, with reposts on my Substack notes, [Instagram](https://www.instagram.com/kevinjtoday/), [Linkedin](https://www.linkedin.com/in/kevintoday/), and [Twitter](https://x.com/kevinjtoday).

Further work
------------
This system has me feel like I'm flying, and I can get short posts out 1-2 hours while medium ones like this one take 2-3. But I can always fly faster:

- I'd like to finish my [link-summoner][link-summoner] automation to help me fill in links, then upgrade it so it can automatically fill in links I commonly use (e.g. my socials, my repos).
- I don't want to do manual fixing in Substack; I want to just modify the Markdown and regenerate the Substack post. This would have the extra benefit of allowing me to fail CI if there's "TODO" in the Markdown, ensuring I don't miss anything. 
    - There's probably a product in here for technical writers. <!-- TODO link to inputs not outputs -->
- Right now I manually open the pull request to merge the branch into `main`. I'd like automation that opens the PR for me, and notifies me when the checks pass or fail.
- CI checks run even on branches that I don't yet have a pull request for. It's not a big deal, but it pollutes my email if the CI fails so I want to modify the CI config to only run CI checks on branches being merged into `main`.
- When running the publishing checklist, I have to manually tick off items in Vim. I want a little terminal app that lets me scroll up and down lines and tick them off with a keystroke. I've taken a stab at this previously with [montu](https://github.com/mieubrisse/montu), but it needs a rewrite.
- I'd like to train an AI on my writing to lay down the first rough brush strokes for me to refine.

Also on my TODO list is to detail for you readers how I drive my Mac (including browsing) without a mouse.

Conclusion
----------
So now you have my system, and can start flying too. I'd love to hear your feedback:

What's useful for you?

How are you taking it and making it your own?

TODO SUBSCRIBE BUTTON

And if you liked this post, you might be interested in my other writing:

- [The Goal Is Unique Work][goal-is-unique-work]
- [The Value Of AI](https://mieubrisse.substack.com/p/the-value-of-ai)
- [Let Programming Burn](https://mieubrisse.substack.com/p/let-programming-burn)

<!------------------ IG POST DESCRIPTION --------------------->

<!--
TODO

🐒 Full article at link in bio.
-->

<!-------------------- IG STORY TEXT ------------------------->
<!--
TODO
-->
