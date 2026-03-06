---
name: icp-sharpener
description: Use this skill when the user says "sharpen my ICP", "define my ICP", "who should I sell to", "refine my ideal customer", "ICP workshop", or any variant indicating they want to define or pressure-test their Ideal Customer Profile.
version: 1.0.0
---

# ICP Sharpener

Pressure-test your Ideal Customer Profile through a structured interview. Produces a machine-readable ICP document that other skills can reference.

## When This Skill Applies

User says any variant of: "sharpen my ICP", "define my ICP", "who should I sell to", "refine my ideal customer", "ICP workshop", "help me figure out my target customer", or any request to define/validate their target market.

## Workflow

### Step 1 — Check for Existing ICP

Look for `docs/icp.md` in the project root.

- If it exists, read it and ask: "I found your existing ICP doc. Want to refine it, or start fresh?"
- If starting fresh, proceed to Step 2.
- If refining, skip to Step 3 with the existing data as context.

### Step 2 — The Interview (10 Questions)

Ask these questions **one at a time**. Wait for the answer before asking the next. Don't dump all 10 at once.

**Customers you have:**
1. "Name your 3 best customers. What do they have in common?"
2. "Why did each of them buy? What was the trigger — the specific moment they decided to look for a solution?"
3. "How long was their sales cycle? Did they need convincing, or were they already looking?"

**Customers you lost:**
4. "Who churned or didn't close? What pattern do you see in the ones that didn't work out?"
5. "What's an instant disqualifier — a trait that guarantees someone won't be a good customer?"

**Market position:**
6. "What alternatives do your customers consider before choosing you? What do you replace?"
7. "What's the one thing you do that no alternative handles well?"

**Buying signals:**
8. "What events or changes in a company make them suddenly need what you sell? (Hiring, fundraise, product launch, pain threshold, regulatory change...)"
9. "Where do your best customers hang out online? Where do they ask for advice?"

**Scoring intuition:**
10. "If you had to rank a lead 1-10 in 30 seconds, what 3 things would you check?"

### Step 3 — Analyze Patterns

After all answers are collected, analyze for:

- **Segments:** Group the answers into 2-3 distinct customer profiles (by company stage, size, industry, or use case)
- **Scoring dimensions:** Extract 4 scoring axes from their answers:
  - **Fit** — how well the prospect matches the profile (industry, size, stage, tech stack)
  - **Timing** — are they in a buying moment right now? (signals present)
  - **Access** — can you reach the decision maker? (title, company size, channels)
  - **Intent** — are they actively looking or passively aware? (behavior signals)
- **Signals:** List every buying trigger mentioned
- **Disqualifiers:** List every red flag mentioned
- **Channels:** Where to find these people

### Step 4 — Present the ICP

Present the ICP document to the user before saving. Format:

```markdown
# ICP — [Company/Product Name]

> Generated [date]. Refine by running the ICP Sharpener skill again.

## Segments

| Segment | Description | Size | Stage | Budget Signal | Priority |
|---------|-------------|------|-------|--------------|----------|
| [Name]  | [1-line]    | ...  | ...   | ...          | Primary/Secondary |

## Scoring Dimensions

### Fit (Does this company match?)
- [criteria 1]
- [criteria 2]
- [criteria 3]

### Timing (Are they in a buying moment?)
- [signal 1]
- [signal 2]

### Access (Can you reach the decision maker?)
- [criteria 1]
- [criteria 2]

### Intent (Are they actively looking?)
- [behavior 1]
- [behavior 2]

## Buying Signals
- [signal]: [what it looks like in practice]
- ...

## Disqualifiers
- [red flag]: [why this kills the deal]
- ...

## Where They Gather
- [channel/community]: [what they do there]
- ...

## Quick Scoring Rubric

| Dimension | Strong (3) | Medium (2) | Weak (1) |
|-----------|-----------|------------|----------|
| Fit       | [description] | [description] | [description] |
| Timing    | [description] | [description] | [description] |
| Access    | [description] | [description] | [description] |
| Intent    | [description] | [description] | [description] |

**Score 10-12:** Hot lead — act immediately
**Score 7-9:** Warm lead — nurture and watch for timing signals
**Score 4-6:** Cold lead — add to content audience, don't outreach yet
**Score <4:** Not ICP — pass
```

Ask the user: "Does this capture your ICP accurately? Anything to add or change?"

### Step 5 — Save

After user approves, save to `docs/icp.md` in the project root.

Create the `docs/` directory if it doesn't exist.

Tell the user: "Your ICP is saved at `docs/icp.md`. Other skills (Idea Sourcer, Outreach Packager) will reference this automatically."

## Key File Paths

| File | Path |
|------|------|
| ICP output | `docs/icp.md` |
