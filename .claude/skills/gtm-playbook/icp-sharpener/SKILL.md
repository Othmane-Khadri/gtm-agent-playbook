---
name: icp-sharpener
description: Use when defining, validating, or pressure-testing an Ideal Customer Profile. Symptoms — selling to everyone, unclear disqualifiers, no scoring rubric, inconsistent lead quality, wasted outreach on bad-fit prospects.
---

# ICP Sharpener

Pressure-test your Ideal Customer Profile through a structured interview. Produces a scored, machine-readable ICP document at `docs/icp.md` that other skills reference automatically.

## When This Skill Applies

User says: "sharpen my ICP", "define my ICP", "who should I sell to", "refine my ideal customer", "ICP workshop", "target customer profile", or any request to define/validate who they should be selling to.

## Workflow

### Step 1 — Check for Existing ICP

Look for `docs/icp.md` in the project root.

- If it exists, read it and ask: "I found your existing ICP doc. Want to refine it, or start fresh?"
- If starting fresh, proceed to Step 2.
- If refining, skip to Step 3 with the existing data as context.

### Step 2 — Choose Mode

Ask: "How many paying customers do you have right now?"

- **5+ customers → Evidence Mode** (proceed to Step 3A — questions grounded in real data)
- **<5 customers → Hypothesis Mode** (proceed to Step 3B — uses web research to fill gaps)

### Step 3A — Evidence Mode Interview (7 Questions)

Ask these questions **one at a time**. Wait for the answer before asking the next.

**Customers you have:**
1. "Name your 3 best customers. What do they have in common — industry, size, stage, tech stack?"
2. "Why did each of them buy? What was the trigger — the specific moment they decided to look for a solution?"
3. "What's your average deal size and sales cycle length? Did they need convincing, or were they already looking?"

**Customers you lost:**
4. "Who churned or didn't close? What pattern do you see — and what's an instant disqualifier?"

**Market position:**
5. "What alternatives do your customers consider before choosing you? What's the one thing you do that no alternative handles well?"

**Buying signals:**
6. "What events or changes in a company make them suddenly need what you sell? (Hiring, fundraise, product launch, pain threshold, regulatory change...)"

**Scoring intuition:**
7. "If you had to rank a lead 1-10 in 30 seconds, what 3 things would you check? And where do your best customers hang out online?"

### Step 3B — Hypothesis Mode Interview (5 Questions + Web Research)

For founders with fewer than 5 customers. Mix questions with web research to fill gaps.

**Questions (one at a time):**
1. "Describe the person who'd get the most value from your product. What's their role, company size, and what are they struggling with today?"
2. "Why did you build this? What frustrated you — or what did you see someone else struggling with?"
3. "Who have you talked to about this? What resonated — and what fell flat?"
4. "What would you charge, and what's the ROI for the buyer? (Saves time, saves money, unlocks revenue — be specific)"
5. "Who else solves this problem today? What do they get wrong?"

**Then run 3 web searches (silently):**
1. `"[problem space] struggling OR frustrating OR broken [current year]"` — validate the pain
2. `"[competitor/alternative] vs OR alternative OR review"` — map the landscape
3. `"[target role] hiring OR looking for [solution category]"` — check for active demand

Use search results to validate or challenge the user's assumptions. Present: "Based on your answers and what I found online, here's what holds up and what I'd question..."

### Step 4 — Analyze Patterns

After all answers, analyze for:

- **One-line ICP statement:** "We sell [what] to [who] when [trigger]"
- **Segments:** 2-3 distinct customer profiles (by company stage, size, industry, or use case)
- **Deal economics:** Average deal size, expected sales cycle, payback period (from user answers or estimation)
- **Scoring dimensions:** 4 axes extracted from their answers:
  - **Fit** — how well the prospect matches (industry, size, stage, tech stack)
  - **Timing** — are they in a buying moment? (signals present)
  - **Access** — can you reach the decision maker? (title, company size, channels)
  - **Intent** — actively looking or passively aware? (behavior signals)
- **Signals:** Every buying trigger mentioned
- **Disqualifiers:** Every red flag mentioned
- **Competitive landscape:** What alternatives exist, where you win, where you lose
- **Channels:** Where to find these people

**Present segment analysis to the user before finalizing.** Ask: "I see [N] segments in your answers. Here's how I'd split them — does this match your reality, or would you merge/split differently?"

### Step 5 — Present the ICP

Present the document before saving:

```markdown
# ICP — [Company/Product Name]

> Generated [date]. Refine by running the ICP Sharpener skill again.
> Mode: [Evidence / Hypothesis]

## One-Line ICP

We sell [what] to [who] when [trigger].

## Deal Economics

| Metric | Value |
|--------|-------|
| Average deal size | $[X]/[period] |
| Sales cycle | [N] weeks/months |
| Estimated payback | [N] months |

## Segments

| Segment | Description | Size | Stage | Budget Signal | Priority |
|---------|-------------|------|-------|--------------|----------|
| [Name]  | [1-line]    | ...  | ...   | ...          | Primary/Secondary |

## Scoring Dimensions

### Fit (Does this company match?)
- [criteria 1]
- [criteria 2]

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

## Disqualifiers
- [red flag]: [why this kills the deal]

## Competitive Landscape
- [Alternative]: [Where they win] / [Where you win]

## Where They Gather
- [channel/community]: [what they do there]

## Quick Scoring Rubric

| Dimension | Strong (3) | Medium (2) | Weak (1) |
|-----------|-----------|------------|----------|
| Fit       | ... | ... | ... |
| Timing    | ... | ... | ... |
| Access    | ... | ... | ... |
| Intent    | ... | ... | ... |

**10-12:** Hot — act immediately
**7-9:** Warm — nurture, watch for timing signals
**4-6:** Cold — content audience only
**<4:** Not ICP — pass
```

Ask: "Does this capture your ICP accurately? Anything to add or change?"

### Step 6 — Save

After user approves, save to `docs/icp.md`. Create `docs/` if it doesn't exist.

Tell the user: "Your ICP is saved at `docs/icp.md`. The Idea Sourcer and Outreach Packager skills reference this automatically."

### Step 7 — Feedback Loop (Revisit)

This step triggers when the user says "review my ICP", "recalibrate my ICP", or has been using the ICP for 3+ months.

1. Read the existing `docs/icp.md`
2. Ask these 3 questions (one at a time):
   - "Which segments actually converted into paying customers? Any surprises?"
   - "Which disqualifiers held up? Any deals you passed on that you shouldn't have — or took that you shouldn't have?"
   - "What buying signals actually predicted closed deals? Any new signals you've noticed?"
3. Compare their answers to the current ICP doc. Highlight what changed.
4. Update the scoring rubric — re-weight dimensions based on real conversion data
5. If originally in Hypothesis Mode and now has 5+ customers, offer: "You have real data now. Want to upgrade to Evidence Mode?"
6. Save the updated `docs/icp.md` with a changelog entry at the bottom:

```markdown
## Changelog
- [date]: Recalibrated after [N] months. [1-line summary of what changed]
```

Tell the user: "ICP updated with real conversion data. Your scoring rubric is now calibrated to actual results, not assumptions."

## Common Mistakes

- **Asking all questions at once.** Users get overwhelmed and give shallow answers. One at a time.
- **Accepting vague answers.** "SMBs" is not a segment. Push for specifics: "What size? What industry? What stage?"
- **Skipping disqualifiers.** Knowing who NOT to sell to is as valuable as knowing who to target.
- **Making the rubric too complex.** 4 dimensions, 3 levels each. That's it. Don't add more.
- **Never revisiting.** An ICP from 6 months ago is stale. Run the feedback loop quarterly.
- **Ignoring deal economics.** An ICP without revenue data is a persona, not an ICP.
- **Treating Hypothesis Mode as permanent.** Once they have data, push them to Evidence Mode.

## Key File Paths

| File | Path |
|------|------|
| ICP output | `docs/icp.md` |
