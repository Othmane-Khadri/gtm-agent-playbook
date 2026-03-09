# GTM Agent Playbook

7 Claude Code skills that run your go-to-market motion from the terminal.

Each skill encodes a GTM methodology — not a prompt, a repeatable system that gets sharper as you use it. Install them, trigger them by name, and run your GTM from Claude Code.

## The 7 Skills

| # | Skill | What it does |
|---|-------|-------------|
| 01 | **ICP Sharpener** | Structured interview that produces a scored ICP with segments, buying signals, deal economics, and disqualifiers |
| 02 | **LinkedIn Voice Builder** | Analyzes your writing + runs a voice interview → produces a 3-mode voice doc (Teaching, Storytelling, Provoking) |
| 03 | **LinkedIn Daily Debrief** | 5-minute daily capture with rotating question sets → content seeds with urgency tags and auto-review |
| 04 | **LinkedIn Idea Sourcer** | Searches Reddit, HN, and industry discourse → 5 ideas with specific post outlines and gap detection |
| 05 | **LinkedIn Post Repurposer** | Takes any content, deconstructs it visibly, finds your angle, rewrites in your voice with format options |
| 06 | **Meeting Prep Brief** | One-page brief adapted by meeting type (discovery/demo/negotiation/renewal) with competitive intel |
| 07 | **Outreach Packager** | Researches prospects, finds signals + warm paths, generates a 3-touch sequence with A/B variants |

## Install

Clone this repo into your project:

```bash
mkdir -p .claude/skills
git clone https://github.com/Othmane-Khadri/gtm-agent-playbook.git temp-playbook
cp -r temp-playbook/.claude/skills/gtm-playbook .claude/skills/
rm -rf temp-playbook
```

Or copy the `.claude/skills/gtm-playbook/` directory manually into your project's `.claude/skills/`.

Claude Code auto-discovers skills — no configuration needed.

## How to Use Each Skill

### 01 — ICP Sharpener

**Trigger:** Say `sharpen my ICP`, `define my ICP`, or `who should I sell to`

**What happens:**
1. Asks how many paying customers you have
2. **5+ customers → Evidence Mode** (7 questions grounded in real conversion data)
3. **<5 customers → Hypothesis Mode** (5 questions + web research to validate assumptions)
4. Produces a scored ICP document with one-line ICP statement, deal economics, segments, a 4-axis scoring rubric (Fit/Timing/Access/Intent), buying signals, disqualifiers, and competitive landscape
5. Saves to `docs/icp.md` — referenced automatically by Idea Sourcer and Outreach Packager

**Revisit:** Say `recalibrate my ICP` after 3+ months. It re-interviews against actual conversion data and re-weights the scoring rubric.

---

### 02 — LinkedIn Voice Builder

**Trigger:** Say `build my LinkedIn voice` or `define my writing style`

**What happens:**
1. Collects 3-5 writing samples (including your best-performing post)
2. Analyzes across 7 dimensions (sentence rhythm, hooks, structure, tone, formatting)
3. Runs a 5-question voice discovery interview focused on audience, influences, and feel
4. Produces a voice doc with 3 writing modes (Teaching, Storytelling, Provoking), tone spectrum, hook patterns, word substitutions, and LinkedIn-specific platform rules
5. Saves to `docs/voice.md` — referenced automatically by Daily Debrief, Idea Sourcer, and Post Repurposer

**Check consistency:** Say `check my voice` after 5+ posts. It scores each post as a percentage match against your voice doc and surfaces drift patterns.

---

### 03 — LinkedIn Daily Debrief

**Trigger:** Say `daily debrief` or `debrief me`

**What happens:**
1. Asks 3 questions from a rotating set (3 different sets cycle by day to prevent fatigue)
2. Extracts 2-3 content seeds, each tagged with angle, audience, urgency (🔴 48h / 🟡 this week / 🟢 evergreen), and topic tags
3. Appends to `docs/content-seeds.md` (accumulates over time, never overwrites)
4. At 7+ seeds, automatically surfaces top 3 to write first

**Review seeds:** Say `review my seeds` to prioritize, cluster by theme, and prune stale ideas.

**Best practice:** Run this daily for a week. You'll bank 14-21 seeds and start seeing your signature topics emerge.

---

### 04 — LinkedIn Idea Sourcer

**Trigger:** Say `source ideas`, `find content ideas`, or `what should I write about`

**What happens:**
1. Loads your ICP and voice doc for context (if they exist)
2. Searches Reddit, Hacker News, Twitter/X, and industry sources for what's trending in your niche
3. Cross-references against your content seeds to avoid duplicates
4. Produces 5 idea cards, each with: trending topic, your unique angle, a specific hook, a 4-line post outline, and resonance rating
5. At least 2 of 5 are contrarian or surprising angles

**Track performance:** Say `which ideas worked` after publishing. It logs results and weights future ideas toward angles that performed.

**Requires:** Web search (Claude Pro/Team plan or configured MCP)

---

### 05 — LinkedIn Post Repurposer

**Trigger:** Share a URL or paste content and say `repurpose this` or `make this mine`

**What happens:**
1. Loads your voice doc (or asks 3 quick questions if you don't have one — it won't block you)
2. Fetches and deconstructs the source content — shows you the breakdown so you learn how to think about content
3. Asks 2-3 questions to find YOUR angle on the idea
4. Lets you choose format: text post, carousel, or thread
5. Rewrites entirely in your voice — different hook, structure, and framing. Never references the original.
6. Shows what it kept, what it changed, and which voice patterns it applied

**Track performance:** Say `how did the repurposed post do` to log results and surface which angles and formats perform best.

---

### 06 — Meeting Prep Brief

**Trigger:** Say `prep me for [company]` or `meeting prep`

**What happens:**
1. Asks for company, contacts, and meeting type (discovery / demo / negotiation / renewal / partnership)
2. Runs 6-8 web searches for company context, recent signals, competitive landscape, and contact profiles
3. Generates a brief adapted to the meeting type:
   - **Discovery** → qualification questions (BANT), talking points about their problems
   - **Demo** → features mapped to their pain points
   - **Negotiation** → leverage points, value-based talking points
   - **Renewal** → ROI recap, expansion opportunities
4. Adds stakeholder map for multi-person calls
5. Saves to `docs/briefs/[company]-[date].md`

**Post-call:** Say `debrief the call` to capture what worked, what surprised you, and next steps. Each debrief appends to the same file — by meeting 3, you have a full deal history.

**Requires:** Web search (Claude Pro/Team plan or configured MCP)

---

### 07 — Outreach Packager

**Trigger:** Say `package outreach for [names]` or share a prospect list

**What happens:**
1. Loads your ICP for fit scoring (if it exists)
2. Researches each prospect (max 5 per batch): company context, personal signals, and warm paths (shared communities, events, connections)
3. Generates a 3-touch sequence per prospect:
   - **Day 0:** Signal-based opener (1-2 sentences for DM, 3-5 for email) + A/B variant
   - **Day 3:** Value drop — share a resource, no ask
   - **Day 7:** Direct ask with an easy out
4. Recommends the best channel (LinkedIn DM vs email) based on prospect's online activity
5. If no public signal exists, uses an industry-angle approach instead of faking it

**Track replies:** Say `track replies` to log which signals, channels, and touch numbers get responses. After 3+ batches, it recommends ICP refinements based on actual reply data.

**Requires:** Web search (Claude Pro/Team plan or configured MCP)

## How They Chain Together

```
ICP Sharpener ──→ docs/icp.md ──→ Idea Sourcer (audience context)
                                 → Outreach Packager (fit scoring)

Voice Builder ──→ docs/voice.md ──→ Daily Debrief (angle matching)
                                  → Post Repurposer (voice modes)
                                  → Idea Sourcer (hook patterns)

Daily Debrief ──→ docs/content-seeds.md ←── Idea Sourcer (overlap check)
```

**Start with Skills 01 and 02.** Everything downstream reads their output automatically.

## Prerequisites

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed
- **Claude Pro or Team plan** recommended — Skills 04, 05, 06, and 07 use web search
- A project directory where you work (the skills save output to `docs/` in your project root)

## Tips

- **Run the Daily Debrief for 5 days.** You'll bank 10-15 content seeds with urgency tags.
- **Outreach Packager works best with 3-5 prospects at a time.** Research quality drops with large batches.
- **Meeting Prep works for any meeting** — investor calls, partnerships, podcast interviews. Just pick the right meeting type.
- **Skills improve with use.** Voice Builder learns from corrections. Content seeds accumulate. ICP gets sharper each revisit. Outreach sequences optimize based on reply data.
- **Everything saves to `docs/`.** Your ICP, voice, seeds, briefs, and logs all live in one place and build on each other.

---

Built by [Othmane Khadri](https://linkedin.com/in/othmanekhadri). GTM engineering for B2B SaaS — AI agents, content systems, and outreach infrastructure.
