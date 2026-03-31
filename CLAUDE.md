Personal Writing Repository
==========================

This repository contains all posts for [Kevin Today's Substack](https://mieubrisse.substack.com/). Each post lives in its own directory (e.g., `./be-rembrandt/`) with a `post.md` and optional `images/` folder. The `TEMPLATE/` directory provides the scaffold for new posts.

---

AI Watermark — MANDATORY
------------------------

**When Claude writes or substantially contributes to any post, it MUST add the following HTML comment as the absolute last line of the file:**

```
<!-- CREATED WITH AI -->
```

This is not optional and must not be skipped. Place it after all other content — after the conclusion, after subscribe buttons, after IG post/story comment blocks, after everything. It is the final line.

**Why this matters:** This watermark tracks which posts had meaningful AI contribution, so the author can audit where AI voice may have crept in and maintain the integrity of his own writing voice over time.

Failure to add this watermark when applicable is a critical error.

---

The AI Work Factory
-------------------

The author's central thesis — and the lens through which new content should be understood — is the **AI work factory**: the user defines the work, and the factory turns that work into completed results. The goal is removing all non-unique work so the human can focus exclusively on what only they can contribute.

This idea develops across three posts, in order:

1. **[The Goal Is Unique Work](./the-goal-is-unique-work/)** — The foundational argument. Technology embodies efficiency (less input, more output). We should stop spending time on things society already knows how to do and focus on expressing the unique essence of ourselves. The aspiration: "a fluid stream of idea into constructed output."

2. **[Be Rembrandt](./be-rembrandt/)** — Extends the idea using Rembrandt's studio as metaphor. Rembrandt delegated fundamentals to apprentices so he could devote his hours to the details only he could provide. The metaskills of the 21st century are **delegation** and **description** — if you can form what you want into words others can consume, your thoughts get summoned into reality while you sleep.

3. **[Building The Factory](./building-the-factory/)** — The practical implementation. Documents the author's personal automation factory built on n8n + Railway: email triage, data pipelines, book note categorization, and more. Demonstrates the philosophy in action — automating non-unique work so the author can focus on what matters.

When working in this repo, understand that this thematic throughline — unique work, delegation to machines, and building systems that turn ideas into output — is the author's primary intellectual focus.


<!-- BEGIN BEADS INTEGRATION v:1 profile:minimal hash:ca08a54f -->
## Beads Issue Tracker

This project uses **bd (beads)** for issue tracking. Run `bd prime` to see full workflow context and commands.

### Quick Reference

```bash
bd ready              # Find available work
bd show <id>          # View issue details
bd update <id> --claim  # Claim work
bd close <id>         # Complete work
```

### Rules

- Use `bd` for ALL task tracking — do NOT use TodoWrite, TaskCreate, or markdown TODO lists
- Run `bd prime` for detailed command reference and session close protocol
- Use `bd remember` for persistent knowledge — do NOT use MEMORY.md files

## Session Completion

**When ending a work session**, you MUST complete ALL steps below. Work is NOT complete until `git push` succeeds.

**MANDATORY WORKFLOW:**

1. **File issues for remaining work** - Create issues for anything that needs follow-up
2. **Run quality gates** (if code changed) - Tests, linters, builds
3. **Update issue status** - Close finished work, update in-progress items
4. **PUSH TO REMOTE** - This is MANDATORY:
   ```bash
   git pull --rebase
   bd dolt push
   git push
   git status  # MUST show "up to date with origin"
   ```
5. **Clean up** - Clear stashes, prune remote branches
6. **Verify** - All changes committed AND pushed
7. **Hand off** - Provide context for next session

**CRITICAL RULES:**
- Work is NOT complete until `git push` succeeds
- NEVER stop before pushing - that leaves work stranded locally
- NEVER say "ready to push when you are" - YOU must push
- If push fails, resolve and retry until it succeeds
<!-- END BEADS INTEGRATION -->
