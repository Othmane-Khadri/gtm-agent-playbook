---
name: outreach-packager
description: Use when personalizing outreach for a list of prospects. Symptoms — sending generic cold messages, no signal-based personalization, spray-and-pray outreach, need to research prospects before reaching out.
---

# Outreach Packager

Give me prospects. I'll research each one, find a timely signal, and craft a personalized message. No spray-and-pray — every message references something real. Requires web search (Claude Pro/Team plan or configured MCP).

## When This Skill Applies

User says: "package outreach for", "research these prospects", "personalize messages for this list", "write outreach for", "help me reach out to [names]", or shares a list of companies/people and asks for outreach help.

## Workflow

### Step 1 — Load ICP (Silent)

Check if `docs/icp.md` exists.

- If yes: read silently. Use for fit scoring and messaging angle.
- If no: proceed without it.

Don't mention this step.

### Step 2 — Accept the Prospect List

User can provide prospects in any format:

- **Pasted list:** Names and companies, one per line
- **File reference:** "Read from `prospects.csv`"
- **Inline:** "Research John Smith at Acme Corp and Sarah Chen at TechCo"

Parse into: `[Name, Company, (optional: Role, Context)]`

Company-only list (no names): work at company level and note: "Add contact names for more personalized messages."

**Batch limit:** Up to 5 at a time. Longer lists process in batches of 5 with results between batches.

### Step 3 — Research Each Prospect

For each prospect, run 2-3 web searches:

**Search 1 — Company context:**
`"[Company] [current year]"` — news, funding, launches, hiring

**Search 2 — Personal context (if name provided):**
`"[Person] [Company]"` — LinkedIn activity, talks, blog posts, quotes

**Search 3 — Signal hunting:**
`"[Company] hiring OR launching OR raised OR expanding OR partnering"` — timely trigger

Extract:
- **Company snapshot:** What they do, stage, recent news (2-3 bullets)
- **The signal:** One specific, timely event that makes outreach relevant NOW
- **Contact context:** Role, background, recent public activity
- **Fit score:** If ICP exists, score 1-10 on fit/timing/access/intent

### Step 4 — Craft Personalized Messages

For each prospect, write one outreach message that:

1. **Opens with the signal** — reference the specific thing you found. No generic openers.
2. **Connects to their problem** — link the signal to a challenge they likely face
3. **Offers value, not a pitch** — suggest a conversation, share an insight, ask a smart question
4. **Is short** — 3-5 sentences for DMs, 5-8 for email
5. **Sounds human** — contractions, natural language, no corporate speak

Provide two versions:
- **LinkedIn DM** (shorter, more casual)
- **Email** (slightly more structured, includes subject line)

### Step 5 — Present Results

For each prospect:

```
---

## [Name] — [Company]

**Company:** [What they do — 1 sentence]
**Recent signal:** [The timely event]
**Why reach out now:** [1 sentence connecting signal to value]
**Fit score:** [X/10] (if ICP available)

### LinkedIn DM
[Message]

### Email
**Subject:** [Subject line]
[Message]

---
```

After all prospects: "Researched [N] prospects. [X] strong signals, [Y] worth a shot, [Z] weak signals — consider waiting for better timing."

### Step 6 — Handle Revisions

If user gives feedback on tone or approach:
- Fix immediately
- If generalizable (e.g., "I never mention competitors in first touch"), apply to all remaining messages

More prospects? "Got more names? Drop them and I'll research the next batch."

### Step 7 — Feedback Loop (Reply Tracking)

This step triggers when the user says "track replies", "which outreach worked", "outreach results", or returns after sending a batch.

1. Ask: "Which messages got replies? For each, tell me: replied / no reply / meeting booked."

2. Log results in `docs/outreach-log.md` (create if doesn't exist):

```markdown
# Outreach Performance Log

## Batch [date] — [N] prospects

| Prospect | Signal Used | Channel | Result |
|----------|-------------|---------|--------|
| [Name] at [Company] | [Hiring for X] | LinkedIn DM | ★ Meeting booked |
| [Name] at [Company] | [Series B] | Email | ○ Replied, no meeting |
| [Name] at [Company] | [Product launch] | LinkedIn DM | ✗ No reply |

**Reply rate:** [X]%
**Best signal:** [Which signal type got replies]
**Best channel:** [DM vs email]
```

3. Analyze patterns across all logged batches:
   - Which signal types get replies? (hiring > funding > product launch?)
   - Which channel performs better? (DM vs email)
   - What message length gets responses?
   - If ICP exists, which scoring dimensions correlate with replies?

4. Apply learnings to next batch:
   - Prioritize signal types that historically convert
   - Lead with the better-performing channel
   - Tell the user: "Based on your last [N] batches, hiring signals get 3x more replies than funding news. I'll prioritize those."

5. After 3+ batches, recommend ICP refinements: "Prospects scoring 8+ on Timing replied 40% of the time. Prospects below 5 never replied. Consider raising your Timing threshold."

## Common Mistakes

- **Generic openers despite research.** "I noticed your company is doing great things" is not signal-based. Name the specific event.
- **Too long.** DMs over 5 sentences don't get read. Email over 8 sentences gets skimmed. Shorter is better.
- **Pitching in the first message.** First touch = earn a conversation, not close a deal.
- **Processing too many at once.** Quality drops past 5. Batch strictly.
- **Never tracking what got replies.** Sending outreach without logging results means you never learn which signals convert. Track every batch.

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
| Outreach log (feedback) | `docs/outreach-log.md` |
