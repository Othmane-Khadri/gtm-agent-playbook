---
name: linkedin-idea-sourcer
description: Use when searching for LinkedIn content ideas, trending topics, or what to write about. Symptoms — blank page syndrome, out of content ideas, want to know what's getting traction in a niche, need inspiration for posts.
---

# LinkedIn Idea Sourcer

Search what's trending in your niche, analyze what's getting traction, and suggest 5 angles personalized to your voice. Requires web search (Claude Pro/Team plan or configured MCP).

## When This Skill Applies

User says: "source ideas", "find content ideas", "what should I write about", "LinkedIn ideas", "trending topics", "content inspiration", or any request for LinkedIn post ideas.

## Workflow

### Step 1 — Load Context (Silent)

Check for these files without mentioning them:

1. `docs/icp.md` — niche, audience, industry context
2. `docs/voice.md` — angle matching to user's style

- Both exist: personalize searches and angle selection
- Only ICP: search with niche context, present angles generically
- Only voice: search broadly, match angles to voice
- Neither: ask one question in Step 2

### Step 2 — Establish Niche

If `docs/icp.md` exists, extract the niche and audience. Skip this step.

If not, ask: "What's your niche and who's your audience? (e.g., 'B2B SaaS founders doing outbound' or 'DevTools marketing for engineering leaders')"

### Step 3 — Search for Trending Content

Run 4-5 web searches targeting different content surfaces:

1. **LinkedIn trending:** `"[niche] site:linkedin.com" [current month] [current year]`
2. **Industry discourse:** `"[niche] trends [current year]"`
3. **Contrarian takes:** `"[niche] overrated OR unpopular opinion OR hot take"`
4. **Recent shifts:** `"[niche] changed OR new OR launched [current month]"`
5. **Problems:** `"[niche] struggling OR broken OR frustrating"`

For each, scan the top 3-5 results. Note: what's discussed, what's getting engagement, what gaps exist.

### Step 4 — Analyze and Filter

From all results, identify 5-8 raw themes. Filter through:

- **Relevance:** Does this matter to the user's audience?
- **Timeliness:** Happening NOW, or evergreen? Prefer timely.
- **Tension:** Is there a debate, misconception, or contrarian angle? Tension drives engagement.
- **Uniqueness:** Is everyone already saying this, or is there a gap?

Keep the top 5.

### Step 5 — Generate Ideas

For each of the 5 themes, produce an idea card:

```
### Idea [N]: [Working title]

**Trending topic:** [What's happening — 1 sentence + source link if available]
**Why it's hot:** [Why people care right now — 1 sentence]
**Your angle:** [How YOU should talk about this — 1-2 sentences]
**Hook:** "[A specific opening line]"
**Structure:** [thesis, story+lesson, list, comparison, etc.]
**Resonance:** High / Medium / Low
```

Idea generation rules:
- **"Your angle" is the key differentiator.** Don't suggest the same take everyone has. Find the contrarian, personal, or practitioner angle.
- If voice doc exists, match hook style to their patterns
- If ICP exists, tie "why it's hot" to the audience's pain points
- At least 2 out of 5 must have a contrarian or surprising angle
- No generic advice posts ("5 tips for X"). Every idea needs a specific point of view.

### Step 6 — Offer Next Steps

Present all 5 ideas, then ask: "Want me to write any of these as a full post? Just say the number."

If user picks one:
- `docs/voice.md` exists: write in their voice
- No voice doc: suggest Voice Builder first, or write a generic version

## Common Mistakes

- **Searching too broadly.** "marketing trends" returns noise. Use the user's specific niche.
- **Suggesting what everyone's already saying.** The value is in the gap — topics no one has covered well yet.
- **All ideas same angle.** Mix contrarian, teach, proof, and confession angles across the 5 ideas.
- **Ignoring timeliness.** Evergreen ideas are weaker than timely ones. Prioritize what's happening now.

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
| Voice doc (optional) | `docs/voice.md` |
