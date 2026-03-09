---
name: meeting-prep-brief
description: Use when preparing for a sales call, investor meeting, partnership discussion, or any meeting where you need company context, contact profiles, and talking points. Symptoms — going into calls cold, not knowing what the company does, no prepared questions.
---

# Meeting Prep Brief

One-page brief before any meeting. Company context, contact profiles, talking points, competitive intel, objections to prepare for, and questions that show you did your homework. Requires web search.

## When This Skill Applies

User says: "prep me for [company]", "meeting prep", "brief me on [company]", "I have a call with [person] at [company]", "prepare for my meeting", or any request for pre-meeting research.

## Workflow

### Step 1 — Gather Inputs

Extract from the user's message:
- **Company name** (required)
- **Contact name(s)** (optional but valuable)
- **Meeting type** (ask if not clear): Discovery / Demo / Negotiation / Renewal / Partnership / Investor / Other
- **Deal context** (optional): deal size, prior conversations, stage

If company isn't clear, ask: "Which company is the meeting with? And who specifically — names help me dig deeper."

If meeting type isn't clear, ask: "What kind of meeting — discovery call, demo, negotiation, or something else?"

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

### Step 4 — Adapt by Meeting Type

Generate sections based on meeting type:

**Discovery:**
- Focus talking points on THEIR problems, not your solution
- Add "Questions to QUALIFY them" section (budget, authority, need, timeline)
- Objections focus on "why talk to us at all"

**Demo:**
- Add "Features to highlight" mapped to their likely pain points
- Talking points connect specific capabilities to their challenges
- Objections focus on "why switch" and "implementation concerns"

**Negotiation:**
- Add "Leverage points" — signals that give you negotiating power
- Talking points focus on value delivered, not features
- Objections focus on price, terms, and competing offers

**Renewal:**
- Add "Value delivered" — what you've done for them so far
- Talking points focus on ROI and expansion
- Objections focus on "is it still worth it" and "what's changed"

**Partnership / Investor / Other:**
- Use standard brief format but adapt language to relationship type

### Step 5 — Synthesize the Brief

```markdown
# Meeting Brief: [Company Name]
> Prepared [date] | Meeting type: [Discovery/Demo/Negotiation/Renewal/etc.] | Meeting with: [contact names]

## Company Snapshot
- **What they do:** [specific description]
- **Size:** [employees, funding stage]
- **Founded:** [year, location]
- **Key product(s):** [main offerings]

## Recent Signals
- [Most recent — date] — [what happened + why it matters to YOUR conversation]
- [Second item]
- [Third item]

## Competitive Landscape
- **Their competitors:** [who they compete with]
- **What they're likely evaluating:** [based on signals — tools/vendors they may be looking at]
- **Your positioning vs alternatives:** [if applicable — where you win]

## Contact Profiles

### [Name] — [Title]
- **Background:** [1-2 sentences on career path]
- **Likely priorities:** [What they care about given role + company stage]
- **Recent activity:** [Posts, talks, quotes]
- **Style:** [Formal/casual, data-driven/visionary, etc.]

## Why Now
[1-2 sentences connecting a recent signal to a likely pain point]

## Talking Points
[Number varies by meeting type — at least 3, adapted to context]

1. **[Topic]** — [Why bring this up + angle — 2 sentences]
2. **[Topic]** — [Why + angle]
3. **[Topic]** — [Why + angle]

[DISCOVERY ONLY]
## Qualification Questions
1. [Budget: ...]
2. [Authority: ...]
3. [Need: ...]
4. [Timeline: ...]

[DEMO ONLY]
## Features to Highlight
1. **[Feature]** → maps to **[their pain point]**
2. **[Feature]** → maps to **[their pain point]**

## Objections to Prepare For

| Likely Objection | Why They'd Say It | Suggested Response |
|-----------------|-------------------|-------------------|
| "[Objection 1]" | [Context] | [1-2 sentences] |
| "[Objection 2]" | [Context] | [Response] |
| "[Objection 3]" | [Context] | [Response] |

## Questions to Ask Them

1. [References something specific about their company or a recent signal]
2. [About a challenge they likely face — shows you understand their world]
3. [Opens conversation about your value — without being salesy]
```

### Step 6 — Stakeholder Map (Multi-Person Meetings)

If multiple contacts are mentioned, add a stakeholder map:

```markdown
## Stakeholder Map

| Name | Role | Likely Priority | Potential Objection | How to Win Them |
|------|------|----------------|---------------------|-----------------|
| [Name] | [Title] | [What they care about] | [Their concern] | [Your angle] |
```

### Step 7 — Present the Brief

Display inline. Ask: "Anything to add? Any prior context with this company I should factor in?"

If user provides additional context (e.g., "We had a demo last month"), update talking points and objections.

### Step 8 — Offer to Save

Ask: "Want me to save this brief?"

If yes, save to `docs/briefs/[company-slug]-[date].md`. Create directory if needed.

### Step 9 — Feedback Loop (Post-Call Debrief)

This step triggers when the user says "debrief the call", "how did the meeting go", "post-call notes", or returns after a meeting.

1. Ask these 3 questions (one at a time):
   - "What came up that you didn't expect? Any surprises?"
   - "Which talking points landed? Which fell flat?"
   - "What's the next step? (Follow-up call, proposal, dead, need more info)"

2. Update the saved brief (if it exists in `docs/briefs/`) with a debrief section:

```markdown
## Post-Call Debrief — [date]

**Outcome:** [Next step]
**Meeting type:** [What it actually was]
**Surprises:** [What you didn't anticipate]
**Talking points that worked:** [Which ones and why]
**Talking points that didn't:** [Which ones and why]
**New objections surfaced:** [Any not predicted]
**Updated contact notes:** [Personality insights, communication preferences]
**Competitive intel gathered:** [What else they're evaluating — if mentioned]
```

3. If a follow-up meeting is scheduled:
   - Draft follow-up talking points based on what worked + what surfaced
   - Update the objection table with any new objections
   - Suggest the appropriate meeting type for the follow-up
   - Offer: "Want me to update the brief for the next call?"

4. If the deal is active, track cumulative context:
   - Each debrief appends to the same brief file
   - By meeting 3, you have a full history of what was discussed, what worked, and what to avoid
   - Tell the user: "Your brief for [Company] now has [N] meetings logged. Each follow-up builds on the last."

## Common Mistakes

- **Surface-level company research.** "They're a SaaS company" isn't useful. Dig for specifics: what product, what stage, what's changed recently.
- **Same brief for every meeting type.** A discovery call and a negotiation need completely different prep. Always ask the meeting type.
- **Skipping contact research.** The brief is dramatically more useful with contact profiles. Always research the people.
- **Generic talking points.** "Discuss how we can help" isn't a talking point. Reference a specific signal and connect it to a specific angle.
- **Missing competitive intel.** "What else are they evaluating?" is the #1 thing you need to know walking into any sales meeting.
- **Too many objections.** 3 is enough. More than that overwhelms prep instead of focusing it.
- **Prepping but never debriefing.** A brief without a debrief is a missed learning opportunity. Capture what happened after every call.

## Key File Paths

| File | Path |
|------|------|
| Briefs output | `docs/briefs/[company]-[date].md` |
