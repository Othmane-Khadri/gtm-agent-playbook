---
name: meeting-prep-brief
description: Use when preparing for a sales call, investor meeting, partnership discussion, or any meeting where you need company context, contact profiles, and talking points. Symptoms — going into calls cold, not knowing what the company does, no prepared questions.
---

# Meeting Prep Brief

One-page brief before any meeting. Company context, contact profiles, talking points, objections to prepare for, and questions that show you did your homework. Requires web search (Claude Pro/Team plan or configured MCP).

## When This Skill Applies

User says: "prep me for [company]", "meeting prep", "brief me on [company]", "I have a call with [person] at [company]", "prepare for my meeting", or any request for pre-meeting research.

## Workflow

### Step 1 — Gather Inputs

Extract from the user's message:
- **Company name** (required)
- **Contact name(s)** (optional but valuable)
- **Meeting context** (optional): what it's about, sales stage, prior history

If company isn't clear, ask: "Which company is the meeting with? And who specifically — names help me dig deeper."

### Step 2 — Research the Company

Run 3-4 web searches:

**Search 1 — Overview:**
`"[Company]"` — what they do, size, stage, funding, products

**Search 2 — Recent news:**
`"[Company] [current year]"` — funding, launches, partnerships, leadership changes

**Search 3 — Competitive landscape:**
`"[Company] vs OR alternative OR competitor"` — positioning, competitors

**Search 4 — Challenges:**
`"[Company] challenges OR problems OR hiring OR scaling"` — what they're struggling with

Build:
- What the company does (1-2 sentences, specific)
- Stage and size (employees, funding, revenue if public)
- Recent news (3-5 bullets, most recent first)
- Competitive landscape (who they compete with, differentiation)
- Likely challenges (based on stage, industry, recent activity)

### Step 3 — Research the Contacts

For each contact, run 1-2 web searches:

`"[Person] [Company]"` — role, background, LinkedIn activity, talks, quotes

Build per-contact:
- Current role and responsibilities
- Background (previous companies, career path)
- Recent public activity (posts, talks, interviews)
- Communication style guess (formal? data-driven? visionary?)
- What they likely care about (role + company stage)

No contact names? Identify the likely decision maker based on company size and product/service.

### Step 4 — Synthesize the Brief

```markdown
# Meeting Brief: [Company Name]
> Prepared [date] | Meeting with: [contact names]

## Company Snapshot
- **What they do:** [specific description]
- **Size:** [employees, funding stage]
- **Founded:** [year, location]
- **Key product(s):** [main offerings]

## Recent Signals
- [Most recent — date] — [what happened + why it matters]
- [Second item]
- [Third item]

## Contact Profiles

### [Name] — [Title]
- **Background:** [1-2 sentences on career path]
- **Likely priorities:** [What they care about]
- **Recent activity:** [Posts, talks, quotes]
- **Style:** [Formal/casual, data-driven/visionary, etc.]

## Why Now
[1-2 sentences connecting a recent signal to a likely pain point]

## 3 Talking Points

1. **[Topic]** — [Why bring this up + angle — 2 sentences]
2. **[Topic]** — [Why + angle]
3. **[Topic]** — [Why + angle]

## Objections to Prepare For

| Likely Objection | Why They'd Say It | Suggested Response |
|-----------------|-------------------|-------------------|
| "[Objection 1]" | [Context] | [1-2 sentences] |
| "[Objection 2]" | [Context] | [Response] |
| "[Objection 3]" | [Context] | [Response] |

## Questions to Ask Them

1. [References something specific about their company]
2. [About a challenge they likely face]
3. [Opens conversation about your value — without being salesy]
```

### Step 5 — Present the Brief

Display inline. Ask: "Anything to add? Any prior context with this company I should factor in?"

If user provides additional context (e.g., "We had a demo last month"), update talking points and objections.

### Step 6 — Offer to Save

Ask: "Want me to save this brief?"

If yes, save to `docs/briefs/[company-slug]-[date].md`. Create directory if needed.

## Common Mistakes

- **Surface-level company research.** "They're a SaaS company" isn't useful. Dig for specifics: what product, what stage, what's changed recently.
- **Skipping contact research.** The brief is dramatically more useful with contact profiles. Always research the people.
- **Generic talking points.** "Discuss how we can help" isn't a talking point. Reference a specific signal and connect it to a specific angle.
- **Too many objections.** 3 is enough. More than that overwhelms prep instead of focusing it.

## Key File Paths

| File | Path |
|------|------|
| Briefs output | `docs/briefs/[company]-[date].md` |
