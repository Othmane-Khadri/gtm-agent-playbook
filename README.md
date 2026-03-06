# GTM Agent Playbook

7 Claude Code skills that run your go-to-market motion from the terminal.

Each skill encodes a GTM methodology — not a prompt, a repeatable system that gets sharper as you use it. Install them, trigger them by name, and run your GTM from Claude Code.

## The 7 Skills

| # | Skill | Trigger | What it produces |
|---|-------|---------|-----------------|
| 01 | **ICP Sharpener** | "sharpen my ICP" | `docs/icp.md` — scored segments, buying signals, disqualifiers |
| 02 | **LinkedIn Voice Builder** | "build my LinkedIn voice" | `docs/voice.md` — tone spectrum, hooks, structure templates |
| 03 | **LinkedIn Daily Debrief** | "daily debrief" | Appends to `docs/content-seeds.md` — 2-3 content seeds per session |
| 04 | **LinkedIn Idea Sourcer** | "source ideas" | 5 trending ideas with your angle, hooks, and resonance ratings |
| 05 | **LinkedIn Post Repurposer** | "repurpose this" + URL | Full post rewritten in your voice |
| 06 | **Outreach Packager** | "package outreach for" + names | Per-prospect research + personalized LinkedIn DM & email |
| 07 | **Meeting Prep Brief** | "prep me for [company]" | One-page brief with talking points, objections, smart questions |

## Install

Clone this repo into your project:

```bash
git clone https://github.com/Othmane-Khadri/gtm-agent-playbook.git temp-playbook
cp -r temp-playbook/.claude/skills/gtm-playbook .claude/skills/
rm -rf temp-playbook
```

Or copy the `.claude/skills/gtm-playbook/` directory manually into your project's `.claude/skills/`.

Claude Code auto-discovers skills — no configuration needed.

## How They Chain Together

```
ICP Sharpener ──→ docs/icp.md ──→ Idea Sourcer
                                 → Outreach Packager

Voice Builder ──→ docs/voice.md ──→ Daily Debrief
                                  → Post Repurposer
                                  → Idea Sourcer

Daily Debrief ──→ docs/content-seeds.md (accumulates over time)
```

Start with Skills 01 and 02. Everything downstream reads their output automatically.

## Prerequisites

- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed
- **Claude Pro or Team plan** recommended — Skills 04, 05, 06, and 07 use web search
- A project directory where you work (the skills save output to `docs/` in your project root)

## Tips

- **Run the Daily Debrief for 5 days.** You'll bank 10-15 content seeds.
- **Outreach Packager works best with 3-5 prospects at a time.** Research quality drops with large batches.
- **Meeting Prep works for any meeting** — investor calls, partnerships, podcast interviews.
- **Skills improve with use.** Voice Builder learns from corrections. Content seeds accumulate. ICP gets sharper each revisit.

---

Built by [Othmane Khadri](https://linkedin.com/in/othmanekhadri). GTM engineering for B2B SaaS — AI agents, content systems, and outreach infrastructure.
