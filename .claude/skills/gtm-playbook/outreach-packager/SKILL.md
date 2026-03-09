---
name: outreach-packager
description: Use when personalizing outreach for a list of prospects. Symptoms — sending generic cold messages, no signal-based personalization, spray-and-pray outreach, need to research prospects before reaching out.
---

# Outreach Packager

Give me prospects. I'll research each one, find a timely signal, and craft a personalized multi-touch sequence. No spray-and-pray — every message references something real. Requires web search.

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

**Search 4 — Warm path detection:**
`"[Company] [your company/industry]"` — shared communities, events, mutual connections

Extract:
- **Company snapshot:** What they do, stage, recent news (2-3 bullets)
- **The signal:** One specific, timely event that makes outreach relevant NOW
- **Contact context:** Role, background, recent public activity
- **Warm path:** Shared communities, events, mutual connections, content overlap
- **Fit score:** If ICP exists, score 1-10 on fit/timing/access/intent

**No signal found?** Don't fake it. Use the ICP doc + industry trends to craft a "pattern interrupt" — a relevant industry insight that demonstrates you understand their world. Flag it: "No public signal found. Using industry-angle approach."

### Step 4 — Craft 3-Touch Sequence

For each prospect, write a 3-message sequence across the best channel:

**Touch 1 — Day 0: The opener**
- Open with the signal (or pattern interrupt if no signal)
- Connect to their likely challenge
- End with a specific question — NOT a pitch
- **LinkedIn DM:** 1-2 sentences max. One question. That's it.
- **Email:** 3-5 sentences + subject line. Short paragraphs.

**Touch 2 — Day 3: The value drop**
- Share something useful — a relevant article, framework, insight, or data point
- Reference your previous message without being needy
- No ask. Pure value.
- **LinkedIn DM:** 1-2 sentences + link/resource
- **Email:** 2-4 sentences + the resource

**Touch 3 — Day 7: The direct ask**
- Acknowledge you've reached out before
- Make a specific, time-bound ask (15-min call about X)
- Give them an easy out ("If this isn't relevant, no worries")
- **LinkedIn DM:** 2-3 sentences
- **Email:** 3-5 sentences

**Channel recommendation:** Default to the channel where the prospect is most active. If they post on LinkedIn regularly → LinkedIn DM. If they have a public email or blog → email. If unsure → provide both.

Also generate an **A/B variant** for Touch 1 — same signal, different angle (e.g., one casual, one more direct).

### Step 5 — Present Results

For each prospect:

```
---

## [Name] — [Company]

**Company:** [What they do — 1 sentence]
**Recent signal:** [The timely event — or "No signal: industry angle"]
**Warm path:** [Shared connection/community — or "None found"]
**Why reach out now:** [1 sentence connecting signal to value]
**Fit score:** [X/10] (if ICP available)
**Recommended channel:** [LinkedIn DM / Email / Both]

### Touch 1A — Day 0 (Primary)
[Message]

### Touch 1B — Day 0 (A/B Variant)
[Message — different angle]

### Touch 2 — Day 3 (Value Drop)
[Message]

### Touch 3 — Day 7 (Direct Ask)
[Message]

---
```

After all prospects: "Researched [N] prospects. [X] with strong signals, [Y] with industry angles. [Z] with warm paths — prioritize those."

### Step 6 — Handle Revisions

If user gives feedback on tone or approach:
- Fix immediately
- If generalizable (e.g., "I never mention competitors in first touch"), apply to all remaining messages

More prospects? "Got more names? Drop them and I'll research the next batch."

### Step 7 — Feedback Loop (Reply Tracking)

This step triggers when the user says "track replies", "which outreach worked", "outreach results", or returns after sending a batch.

1. Ask: "Which messages got replies? For each, tell me: replied / no reply / meeting booked. And which touch # got the reply?"

2. Log results in `docs/outreach-log.md` (create if doesn't exist):

```markdown
# Outreach Performance Log

## Batch [date] — [N] prospects

| Prospect | Signal Used | Channel | Touch # | Result |
|----------|-------------|---------|---------|--------|
| [Name] at [Company] | [Hiring for X] | LinkedIn DM | Touch 1 | ★ Meeting booked |
| [Name] at [Company] | [Series B] | Email | Touch 3 | ○ Replied, no meeting |
| [Name] at [Company] | [Industry angle] | LinkedIn DM | — | ✗ No reply |

**Reply rate:** [X]%
**Best signal type:** [Which signal type got replies]
**Best channel:** [DM vs email]
**Best touch:** [Which touch # got most replies]
**Warm path impact:** [Did warm-path prospects reply more?]
```

3. Analyze patterns across all logged batches:
   - Which signal types get replies? (hiring > funding > product launch?)
   - Which channel performs better? (DM vs email)
   - Which touch # gets the most replies? (1, 2, or 3?)
   - Do warm-path prospects convert better?
   - What message length gets responses?
   - If ICP exists, which scoring dimensions correlate with replies?

4. Apply learnings to next batch:
   - Prioritize signal types that historically convert
   - Lead with the better-performing channel
   - Tell the user: "Based on your last [N] batches, hiring signals get 3x more replies than funding news. Touch 2 value drops have a 25% reply rate. I'll optimize accordingly."

5. After 3+ batches, recommend ICP refinements: "Prospects scoring 8+ on Timing replied 40% of the time. Prospects below 5 never replied. Consider raising your Timing threshold."

## Common Mistakes

- **Cold DMs that are too long.** LinkedIn DMs over 2 sentences don't get read. Be brutally short.
- **Faking a signal.** If there's no public signal, say so and use an industry angle instead. "I noticed your company is doing great things" fools nobody.
- **Only sending one message.** 80% of replies come from touch 2 or 3. The sequence IS the strategy.
- **Same message, different name.** The signal and angle should be genuinely different per prospect. If all messages look the same, you're spraying.
- **Pitching in Touch 1.** First touch = earn a conversation, not close a deal.
- **Processing too many at once.** Quality drops past 5. Batch strictly.
- **Never tracking what got replies.** Sending outreach without logging results means you never learn which signals convert. Track every batch.
- **Ignoring warm paths.** A shared community or mutual connection is worth 10x a cold signal. Always check.

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
| Outreach log (feedback) | `docs/outreach-log.md` |
