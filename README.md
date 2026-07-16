# 🌶️ kimchi

**Turn a raw idea into build-ready docs your AI can just execute.**

![kimchi turning an idea into build-ready docs](assets/demo.gif)

Having ideas was never the problem. Getting your AI to *build* one correctly is. You open
Claude or Codex, type a vague prompt, and burn hours re-explaining yourself while it fills
gaps you never specified and builds the wrong thing — because the real spec only ever lived
in your head. A few frustrating hours later the idea joins the graveyard.

**kimchi gives you the spec.** You hand it a raw idea; it hands back a clean, easy-to-read
set of **build-ready docs**:

- **One doc per EPIC** — user stories with business severity/complexity and a strict priority order.
- **Locked decisions** — tech stack, architecture, exact API contracts, security and deployment calls, all fixed so a build session never re-litigates them.
- **`execute.md`** — a self-driving handoff that lets Claude Code or Codex build the whole thing **story-by-story, autonomously, across multiple sessions**, resuming from trackers.
- **A net tracker + pre-build audit** — whole-product status at a glance, and a gate that catches flawed decisions while they're still a doc edit, not a rewrite.

No more prompt-wrestling. You give the docs to your AI and it executes.

How it gets there: instead of one agreeable assistant, kimchi puts your idea through 11
world-class expert personas (product, architecture, design, security, finance, a
deliberately lazy staff engineer, and more) that **grill you, counter you, and refuse to
flatter you** until every decision is nailed down. The grilling is the engine — the docs
are the gold.

Raw ingredients in. Pressure and time. A sharp, buildable spec comes out. That's the name.

> Direct prompting creates AI slop. kimchi hands your AI a spec it can actually build.

---

## What it does

- **Grills the idea.** Summon experts one at a time; each interrogates your idea in their
  domain until ~9 of 10 hard questions have clean answers. No "great idea!" — real friction.
- **No appeasement.** Every persona recommends _with reasons_ and tells you when you're
  hand-waving past a real problem.
- **Compiles build docs.** One doc per EPIC — user stories, business severity/complexity,
  priority order, locked tech decisions, API contracts, and a tracker.
- **Self-driving build.** An `execute.md` handoff so Claude Code builds story-by-story in
  priority order across separate sessions, resuming from trackers.
- **Audits before you build.** A pre-build audit gate catches flawed or contradictory
  decisions while they're still a doc edit — not a rewrite.

## The personas

`PH` product-head · `CF` co-founder · `ARCH` architect · `DG` design-girl · `TB` tech-bro
(lazy staff eng) · `SM` security-master · `DO` devops · `FB` finance-bro (market research
+ the money) · `LB` legal-bro · `COO` operations & execution · `AUD` auditor.

## Install

Works in **[Claude Code](https://claude.com/claude-code)** and **[Codex CLI](https://developers.openai.com/codex)**
— both read the same `SKILL.md` format.

### Claude Code — plugin (recommended: auto-updates)

```
/plugin marketplace add chitransh-cj/kimchi
/plugin install kimchi@chitransh-cj
```

Update later with `/plugin marketplace update chitransh-cj`. kimchi ships as a single skill, so
it invokes with the clean name **`/kimchi`** (e.g. `/kimchi PH`) — no namespace prefix.

### Claude Code / Codex — clone + install script

```bash
git clone https://github.com/chitransh-cj/kimchi.git
cd kimchi
./install.sh          # auto-detects installed agents
# or force one:  ./install.sh claude | codex | all
```

- **Claude Code** → `~/.claude/skills/kimchi/` → invoke `/kimchi`
- **Codex CLI** → `~/.codex/skills/kimchi/` → invoke via `/skills` menu or `$kimchi`

**Restart the agent** after installing so it picks up the skill.

### Codex — manual

Copy the skill into your Codex skills directory (personal or project-local):

```bash
git clone https://github.com/chitransh-cj/kimchi.git
mkdir -p ~/.codex/skills/kimchi
cp -R kimchi/plugin/SKILL.md kimchi/plugin/references ~/.codex/skills/kimchi/
```

## Usage

Invoke `/kimchi` (Claude Code) or `$kimchi` (Codex). Arguments are the same either way.

```
/kimchi              # no argument — full product-development lifecycle, guided
/kimchi CF           # summon one persona by name or acronym (co-founder here)
/kimchi PH           # product-head — builds the EPIC → STORY → TASK breakdown
/kimchi generate     # compile the build docs (README, EPIC-*.md, execute.md)
/kimchi audit        # run the auditor over the docs (do this before you build)
```

Start with `/kimchi` and let it walk you through. Answer honestly — it's designed to catch
you when you don't.

## License

MIT
