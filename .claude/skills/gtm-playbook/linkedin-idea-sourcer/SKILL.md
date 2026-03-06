---
name: linkedin-idea-sourcer
description: Use this skill when the user says "source ideas", "find content ideas", "what should I write about", "content ideas for LinkedIn", "trending topics in my niche", or any variant indicating they want LinkedIn post ideas based on what's trending.
version: 1.0.0
---

# LinkedIn Idea Sourcer

Find what's trending in your niche, analyze what's getting traction, and suggest 3-5 angles personalized to your voice. Never stare at a blank page again.

## When This Skill Applies

User says any variant of: "source ideas", "find content ideas", "what should I write about", "LinkedIn ideas", "trending topics", "content inspiration", or any request for LinkedIn post ideas.

## Workflow

### Step 1 — Load Context (Silent)

Check for these files without mentioning them:

1. `docs/icp.md` — for niche, audience, and industry context
2. `docs/voice.md` — for matching angles to the user's style

- If both exist: use them to personalize searches and angle selection.
- If only ICP exists: search with niche context, present angles generically.
- If only voice exists: search broadly, match angles to voice.
- If neither exists: ask one question in Step 2.

### Step 2 — Establish Niche

If `docs/icp.md` exists, extract the niche and audience from it. Skip this step.

If not, ask: "What's your niche and who's your audience? (e.g., 'B2B SaaS founders doing outbound' or 'DevTools marketing for engineering leaders')"

### Step 3 — Search for Trending Content

Run 4-5 web searches targeting different content surfaces:

1. **LinkedIn trending:** Search for `"[niche] site:linkedin.com" [current month] [current year]` — find posts getting traction
2. **Industry discourse:** Search for `"[niche] trends [current year]"` — find what practitioners are debating
3. **Contrarian takes:** Search for `"[niche] overrated OR unpopular opinion OR hot take"` — find angles with tension
4. **Recent shifts:** Search for `"[niche] changed OR new OR launched [current month]"` — find news hooks
5. **Problems:** Search for `"[niche] struggling OR broken OR frustrating"` — find pain-point content

For each search, scan the top 3-5 results. Note: what's being discussed, what's getting engagement, what gaps exist (topics people ask about but no one answers well).

### Step 4 — Analyze and Filter

From all search results, identify 5-8 raw themes. Filter them through:

- **Relevance:** Does this matter to the user's audience?
- **Timeliness:** Is this happening NOW or is it evergreen? Prefer timely.
- **Tension:** Does this topic have a debate, a misconception, or a contrarian angle? Tension drives engagement.
- **Uniqueness:** Is everyone already saying this, or is there a gap?

Keep the top 5 that score highest on these criteria.

### Step 5 — Generate Ideas

For each of the 5 themes, produce an idea card:

```
### Idea [N]: [Working title]

**Trending topic:** [What's happening — 1 sentence + source link if available]
**Why it's hot:** [Why people care right now — 1 sentence]
**Your angle:** [How YOU should talk about this, given your experience — 1-2 sentences]
**Hook:** "[A specific opening line they could use]"
**Structure:** [Suggested post structure: thesis, story+lesson, list, comparison, etc.]
**Resonance:** High / Medium / Low
```

Rules for generating ideas:
- **"Your angle" is the key differentiator.** Don't suggest the same take everyone else has. Find the contrarian, personal, or practitioner angle.
- If a voice doc exists, match the hook style to their patterns (e.g., if they favor questions, suggest a question hook)
- If an ICP doc exists, tie the "why it's hot" to the audience's specific pain points
- At least 2 out of 5 ideas should have a contrarian or surprising angle
- No generic advice posts ("5 tips for X"). Every idea should have a specific point of view.

### Step 6 — Offer Next Steps

Present all 5 ideas, then ask:

"Want me to write any of these as a full post? Just say the number."

If user picks one:
- If `docs/voice.md` exists: write the post in their voice
- If not: suggest running the Voice Builder skill first, or offer to write a generic version

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
| Voice doc (optional) | `docs/voice.md` |
