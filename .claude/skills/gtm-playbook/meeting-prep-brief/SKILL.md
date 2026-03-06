---
name: meeting-prep-brief
description: Use this skill when the user says "prep me for", "meeting prep for", "brief me on [company]", "I have a call with", "prepare for my meeting with", or any variant indicating they want a pre-meeting brief on a company or prospect.
version: 1.0.0
---

# Meeting Prep Brief

One-page brief before any sales call. Company context, contact profiles, angles to use, objections to prepare for, and questions that show you did your homework.

## When This Skill Applies

User says any variant of: "prep me for [company]", "meeting prep", "brief me on [company]", "I have a call with [person] at [company]", "prepare for my meeting", or any request for pre-meeting research.

## Workflow

### Step 1 — Gather Inputs

Extract from the user's message:
- **Company name** (required)
- **Contact name(s)** (optional but valuable)
- **Meeting context** (optional): what it's about, where in the sales process, any prior history

If company name isn't clear, ask: "Which company is the meeting with? And who specifically — names help me dig deeper."

### Step 2 — Research the Company

Run 3-4 web searches:

**Search 1 — Company overview:**
`"[Company name]"` — what they do, size, stage, funding, key products

**Search 2 — Recent news:**
`"[Company name] [current year]"` — funding rounds, product launches, partnerships, leadership changes, press coverage

**Search 3 — Competitive landscape:**
`"[Company name] vs OR alternative OR competitor"` — who they compete with, how they position themselves

**Search 4 — Challenges/pain points:**
`"[Company name] challenges OR problems OR hiring OR scaling"` — what they're struggling with

From the results, build:
- What the company does (1-2 sentences, specific — not a tagline)
- Stage and size (employees, funding, revenue if public)
- Recent news (3-5 bullets, most recent first)
- Competitive landscape (who they compete with, how they differentiate)
- Likely challenges (based on stage, industry, recent activity)

### Step 3 — Research the Contacts

For each contact name provided, run 1-2 web searches:

`"[Person name] [Company name]"` — role, background, LinkedIn activity, talks, blog posts, podcast appearances, quotes

Build per-contact:
- Current role and likely responsibilities
- Background (previous companies, career path)
- Recent public activity (posts, talks, interviews)
- Communication style guess (based on their public content — are they formal? data-driven? visionary?)
- What they likely care about (based on role + company stage)

If no contact names provided, identify the likely decision maker based on company size and the user's product/service.

### Step 4 — Synthesize the Brief

Compile everything into a one-page brief:

```markdown
# Meeting Brief: [Company Name]
> Prepared [date] | Meeting with: [contact names]

## Company Snapshot
- **What they do:** [specific description]
- **Size:** [employees, funding stage]
- **Founded:** [year, location]
- **Key product(s):** [main offerings]

## Recent Signals
- [Most recent news — date] — [what happened and why it matters]
- [Second item]
- [Third item]

## Contact Profiles

### [Contact Name] — [Title]
- **Background:** [1-2 sentences on career path]
- **Likely priorities:** [What they care about based on role]
- **Recent activity:** [Any public posts, talks, quotes]
- **Style:** [Formal/casual, data-driven/visionary, etc.]

## Why Now
[1-2 sentences on what makes this meeting timely — connect a recent signal to a likely pain point]

## 3 Talking Points

1. **[Topic]** — [Why bring this up + what angle to take — 2 sentences]
2. **[Topic]** — [Why + angle]
3. **[Topic]** — [Why + angle]

## Objections to Prepare For

| Likely Objection | Why They'd Say It | Suggested Response |
|-----------------|-------------------|-------------------|
| "[Objection 1]" | [Context] | [How to handle it — 1-2 sentences] |
| "[Objection 2]" | [Context] | [Response] |
| "[Objection 3]" | [Context] | [Response] |

## Questions to Ask Them

Smart questions that show you did your homework:

1. [Question that references something specific about their company/situation]
2. [Question about a challenge they likely face]
3. [Question that opens a conversation about your value — without being salesy]
```

### Step 5 — Present the Brief

Display the brief inline.

Then ask: "Anything you'd add? Any prior context with this company I should factor in?"

If the user provides additional context (e.g., "We had a demo last month" or "They're comparing us to X"), update the talking points and objections accordingly.

### Step 6 — Offer to Save

Ask: "Want me to save this brief to a file?"

If yes, save to `docs/briefs/[company-name-slug]-[date].md`.

Create the directory if it doesn't exist.

## Key File Paths

| File | Path |
|------|------|
| Briefs output | `docs/briefs/[company]-[date].md` |
