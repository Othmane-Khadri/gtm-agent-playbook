---
name: outreach-packager
description: Use this skill when the user says "package outreach for", "research these prospects", "personalize messages for this list", "write outreach for", "help me reach out to", or any variant indicating they have a list of prospects and want researched, personalized outreach messages.
version: 1.0.0
---

# Outreach Packager

Give me a list of prospects. I'll research each one, find a timely signal, and craft a personalized message. No spray-and-pray — every message references something real.

## When This Skill Applies

User says any variant of: "package outreach for", "research these prospects", "personalize messages for this list", "write outreach for", "help me reach out to [names]", or shares a list of companies/people and asks for outreach help.

## Workflow

### Step 1 — Load ICP (Optional, Silent)

Check if `docs/icp.md` exists.

- If yes: read it silently. Use it to score fit and tailor messaging angle.
- If no: proceed without it. The skill works standalone — ICP just adds fit scoring.

Don't mention this step to the user.

### Step 2 — Accept the Prospect List

The user can provide prospects in any format:

- **Pasted list:** Names and companies, one per line
- **File reference:** "Read from `prospects.csv`" or similar
- **Inline:** "Research John Smith at Acme Corp and Sarah Chen at TechCo"

Parse the input into a structured list of: `[Name, Company, (optional: Role, Context)]`

If the user provides just company names (no contacts), work at the company level and note: "I'll research the company. If you want messages to specific people, add their names."

**Batch limit:** Process up to 5 prospects at a time. If the list is longer, process in batches of 5 and present results between batches.

### Step 3 — Research Each Prospect

For each prospect, run 2-3 web searches:

**Search 1 — Company context:**
`"[Company name] [current year]"` — recent news, funding, product launches, hiring

**Search 2 — Personal context (if name provided):**
`"[Person name] [Company name]"` — LinkedIn activity, talks, blog posts, podcast appearances, quotes

**Search 3 — Signal hunting:**
`"[Company name] hiring OR launching OR raised OR expanding OR partnering"` — find a timely trigger

From the results, extract:
- **Company snapshot:** What they do, stage, recent news (2-3 bullets)
- **The signal:** One specific, timely event that makes outreach relevant NOW
- **Contact context:** If a person was named — their role, background, any recent public activity
- **Fit score:** If ICP doc exists, score 1-10 based on fit/timing/access/intent. If no ICP doc, skip this.

### Step 4 — Craft Personalized Messages

For each prospect, write one outreach message. The message must:

1. **Open with the signal** — reference the specific thing you found. No generic openers.
2. **Connect to their problem** — link the signal to a challenge they likely face
3. **Offer value, not a pitch** — suggest a conversation, share an insight, or ask a smart question
4. **Be short** — 3-5 sentences for DMs, 5-8 sentences for email. Never longer.
5. **Sound human** — contractions, natural language, no corporate speak

Provide two versions:
- **LinkedIn DM version** (shorter, more casual)
- **Email version** (slightly more structured, includes subject line)

### Step 5 — Present Results

For each prospect, present a structured package:

```
---

## [Name] — [Company]

**Company:** [What they do — 1 sentence]
**Recent signal:** [The timely event you found]
**Why reach out now:** [1 sentence connecting the signal to your value]
**Fit score:** [X/10] (if ICP available)

### LinkedIn DM
[Message]

### Email
**Subject:** [Subject line]
[Message]

---
```

After all prospects, summarize: "Researched [N] prospects. [X] are strong signals, [Y] are worth a shot, [Z] had weak signals — you might want to wait for better timing."

### Step 6 — Handle Revisions

If the user gives feedback on tone, approach, or specific messages:
- Fix immediately
- If the feedback is generalizable (e.g., "I never mention competitors in first touch"), note it and apply to all remaining messages in the batch

If the user has more prospects: "Got more names? Drop them and I'll research the next batch."

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
