---
name: linkedin-idea-sourcer
description: Use when searching for LinkedIn content ideas, trending topics, or what to write about. Symptoms — blank page syndrome, out of content ideas, want to know what's getting traction in a niche, need inspiration for posts.
---

# LinkedIn Idea Sourcer

Search what's getting traction in your niche across Reddit, Hacker News, newsletters, and industry discourse. Suggest 5 angles personalized to your voice. Requires web search.

## When This Skill Applies

User says: "source ideas", "find content ideas", "what should I write about", "LinkedIn ideas", "trending topics", "content inspiration", or any request for LinkedIn post ideas.

## Workflow

### Step 1 — Load Context (Silent)

Check for these files without mentioning them:

1. `docs/icp.md` — niche, audience, industry context
2. `docs/voice.md` — angle matching to user's style
3. `docs/content-seeds.md` — existing seeds to avoid duplicates

- All exist: personalize searches, match angles, dedupe against seeds
- Only ICP: search with niche context, present angles generically
- Only voice: search broadly, match angles to voice
- Neither: ask one question in Step 2

### Step 2 — Establish Niche

If `docs/icp.md` exists, extract the niche and audience. Skip this step.

If not, ask: "What's your niche and who's your audience? (e.g., 'B2B SaaS founders doing outbound' or 'DevTools marketing for engineering leaders')"

### Step 3 — Search for Trending Content

Run 5-6 web searches targeting platforms that are actually crawlable:

1. **Reddit discourse:** `"[niche] site:reddit.com" [current month] [current year]`
2. **Hacker News / Twitter discourse:** `"[niche] site:news.ycombinator.com OR site:x.com" [current year]`
3. **Industry trends:** `"[niche] trends [current year]"`
4. **Contrarian takes:** `"[niche] overrated OR unpopular opinion OR hot take [current year]"`
5. **Problems & frustration:** `"[niche] struggling OR broken OR frustrating [current year]"`
6. **Peer analysis (if user named creators in voice doc):** `"[creator name] LinkedIn" [current month]`

For each, scan the top 3-5 results. Note: what's discussed, what angles are taken, what gaps exist (topics no one is covering well).

### Step 4 — Analyze and Filter

From all results, identify 5-8 raw themes. Filter through:

- **Relevance:** Does this matter to the user's audience?
- **Timeliness:** Happening NOW, or evergreen? Prefer timely.
- **Tension:** Is there a debate, misconception, or contrarian angle? Tension drives engagement.
- **Gap:** Is everyone already saying this? If yes, find what nobody's said yet.
- **Overlap check:** Compare against `docs/content-seeds.md` — skip topics already captured.

Keep the top 5.

### Step 5 — Generate Ideas

For each of the 5 themes, produce an idea card:

```
### Idea [N]: [Working title]

**Trending topic:** [What's happening — 1 sentence + source link if available]
**Why it's hot:** [Why people care right now — 1 sentence]
**Your angle:** [How YOU should talk about this — 1-2 sentences. The contrarian, personal, or practitioner angle nobody else is taking.]
**Hook:** "[A specific opening line]"
**Post outline:**
- [Line 1: hook]
- [Lines 2-4: the tension/setup]
- [Lines 5-8: your take with evidence]
- [Close: conviction statement or question]
**Voice mode:** [Teaching / Storytelling / Provoking — if voice doc exists]
**Resonance:** High / Medium / Low — [1-line why]
```

Idea generation rules:
- **"Your angle" is the key differentiator.** Don't suggest the same take everyone has. Find the gap.
- If voice doc exists, match hook style and voice mode to their patterns
- If ICP exists, tie "why it's hot" to the audience's pain points
- At least 2 out of 5 must have a contrarian or surprising angle
- No generic advice posts ("5 tips for X"). Every idea needs a specific point of view.
- The post outline should be specific enough to write from — not just "story + lesson"

### Step 6 — Offer Next Steps

Present all 5 ideas, then ask: "Want me to write any of these as a full post? Just say the number."

If user picks one:
- `docs/voice.md` exists: write in their voice using the specified voice mode
- No voice doc: suggest Voice Builder first, or write a generic version

Also offer: "Want me to save the unused ideas as seeds in your content-seeds file?"

### Step 7 — Feedback Loop (Performance Tracking)

This step triggers when the user says "which ideas worked", "track my ideas", "what performed", or returns after writing posts from previous ideas.

1. Ask: "Which ideas from last time did you actually write? And how did they perform?"
   - User provides: idea number + impressions/comments/reposts (rough is fine)

2. Log performance in `docs/idea-performance.md` (create if doesn't exist):

```markdown
# Idea Performance Log

## [YYYY-MM-DD] — Batch [N]
- Idea 2: "Why your ICP is lying to you" — 4,200 impressions, 47 comments ★ HIT
- Idea 4: "The hiring signal nobody watches" — 890 impressions, 8 comments

**What worked:** Contrarian angle on familiar topic
**What flopped:** Too niche, audience didn't relate
```

3. Analyze patterns across all logged ideas:
   - Which angles consistently perform? (contrarian? proof? confession?)
   - Which topics resonate with their audience?
   - Which sources surfaced the best ideas? (Reddit? HN? Industry newsletters?)

4. Apply learnings to next idea generation:
   - Weight future searches toward topic areas and sources that performed
   - Prioritize the angle types that got engagement
   - Tell the user: "Based on your last [N] posts, contrarian takes on [topic] perform 3x better than teach posts. I'll weight this batch accordingly."

## Common Mistakes

- **Searching LinkedIn directly.** LinkedIn blocks crawling. Search Reddit, HN, Twitter, and newsletters instead — that's where discourse actually happens.
- **Suggesting what everyone's already saying.** The value is in the gap — topics no one has covered well yet.
- **All ideas same angle.** Mix contrarian, teach, proof, and confession angles across the 5 ideas.
- **Vague post outlines.** "Structure: list" tells you nothing. Give a 4-line outline they can actually write from.
- **Ignoring existing seeds.** Always check content-seeds.md before suggesting — don't duplicate what's already captured.
- **Never tracking what worked.** Sourcing ideas without tracking performance means you never learn what resonates. Log results after publishing.

## Key File Paths

| File | Path |
|------|------|
| ICP context (optional) | `docs/icp.md` |
| Voice doc (optional) | `docs/voice.md` |
| Content seeds (overlap check) | `docs/content-seeds.md` |
| Idea performance log (feedback) | `docs/idea-performance.md` |
