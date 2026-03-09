---
name: linkedin-post-repurposer
description: Use when taking someone else's content (post, article, tweet, newsletter) and rewriting it with a personal angle. Symptoms — found a great post but want to make it yours, want to riff on someone's idea without copying, need to remix content in your own voice.
---

# LinkedIn Post Repurposer

Take any post, article, or tweet — extract the core insight, find YOUR angle, and rewrite it in your voice. Not copying. Remixing with a point of view.

## When This Skill Applies

User shares a URL or pastes content and says: "repurpose this", "rewrite this post", "find my angle on this", "make this mine", "remix this", or any request to take external content and make it their own.

## Workflow

### Step 1 — Load Voice Doc

Read `docs/voice.md` from the project root.

- If it exists: load it. Use voice modes, hooks, substitutions, and platform rules.
- If it doesn't exist: **don't block.** Instead, ask 3 quick questions:
  1. "What's your tone — casual or polished?"
  2. "Who's your audience?"
  3. "Should the post feel like a story, a lesson, or a hot take?"
  Use these answers as inline voice context. After the rewrite, mention: "For more consistent posts, run the Voice Builder skill — just say 'build my LinkedIn voice'."

### Step 2 — Fetch the Source Content

**URL provided:** Fetch with WebFetch. Extract full text.
**Content pasted:** Use directly.
**Fetch fails:** Ask user to paste the content manually.

### Step 3 — Deconstruct the Source (Show the User)

Analyze and present the deconstruction — this teaches the user how to think about content:

```
**Source Deconstruction:**
- **Core insight:** [The one idea worth keeping — one sentence]
- **Original angle:** [How the author framed it]
- **What made it work:** [Why it got attention]
- **What's generic:** [Parts that are filler or could be said by anyone]
- **Freshness:** [Posted recently / [N] months ago — affects framing]
```

### Step 4 — Find the User's Angle

Ask 2-3 questions to get to the real insight:

1. "How does this relate to YOUR experience? What would you add or disagree with?"
2. "What's the consequence if this is wrong — or right? What happens next?"

If the source is older than 30 days, add: "This is from [N] months ago. Has anything changed since then in your experience?"

Wait for their answers.

If the user says "just write it" or doesn't have a specific angle:
- Find a structural pattern from the voice doc that fits
- Find a hook pattern that works
- Frame it as their perspective based on personality and tone

### Step 5 — Choose Format

Ask: "What format works best for this?"

- **Text post** (default — single narrative, 150-300 words)
- **Carousel** (multi-slide breakdown — produces slide-by-slide content)
- **Thread-style** (connected short posts — numbered or thematic)

If user doesn't care, default to text post.

### Step 6 — Rewrite

Write a complete LinkedIn post that:

1. **Keeps the core insight** — underlying idea preserved
2. **Changes the framing entirely** — different hook, structure, angle
3. **Adds the user's perspective** — incorporates their angle from Step 4
4. **Follows the voice doc** — voice mode, tone spectrum, hook patterns, word substitutions, platform rules
5. **Doesn't reference the original** — no "I saw a post about..." or "Inspired by..."
6. **Matches the chosen format** — text post, carousel slides, or thread segments
7. **If source is >30 days old** — frame as evergreen insight, not breaking news

Output as plain text (no code blocks), ready to copy-paste.

### Step 7 — Show Your Work

After the post, briefly explain:

```
**What I kept:** [the core insight]
**What I changed:** [angle, structure, hook]
**Voice applied:** [which mode, patterns, and rules used]
**Format:** [text / carousel / thread]
```

### Step 8 — Handle Corrections

If the user gives feedback:
- Fix the post immediately
- If correction reveals a voice rule (e.g., "I'd never open with a question"), suggest: "Want me to update your voice doc with this rule?"
- If yes, update `docs/voice.md` and save

### Step 9 — Feedback Loop (Post Performance)

This step triggers when the user says "how did the repurposed post do", "track this post", or returns with performance data.

1. Ask: "How did the post perform? Rough numbers are fine — impressions, comments, reposts."

2. Log the result in `docs/repurpose-log.md` (create if doesn't exist):

```markdown
# Repurpose Performance Log

## [YYYY-MM-DD] — [working title]
- Source: [original URL or topic]
- Angle used: [what was changed]
- Voice mode: [teaching / storytelling / provoking]
- Format: [text / carousel / thread]
- Performance: [impressions] impressions, [comments] comments
- Verdict: ★ Hit / ○ Average / ✗ Miss
```

3. If the post performed well:
   - Note which voice patterns and angle shifts drove engagement
   - Suggest: "This angle worked. Want me to find more sources to repurpose with a similar framing?"

4. If the post underperformed:
   - Analyze why: wrong angle? wrong audience? weak hook? bad timing? wrong format?
   - Ask: "What would you do differently?" — if the answer reveals a voice rule, offer to update `docs/voice.md`

5. After 5+ logged posts, surface patterns: "Your repurposed posts with [contrarian/confession] angles perform 2x better than [teach] posts. Your best hook pattern is [pattern name]. [Format] gets the most engagement."

## Common Mistakes

- **Paraphrasing instead of reframing.** The post should stand completely alone. If you deleted the original, this post should still make sense.
- **Keeping the original structure.** Same insight, completely different shape. If the original was a list, try a story. If it was a thesis, try a confession.
- **Hiding the deconstruction.** Show the user how you broke down the source — it teaches them to think about content.
- **Only asking one question about their angle.** Often the real insight takes 2-3 rounds of "why does that matter?"
- **Forgetting format.** A carousel and a text post are fundamentally different. Don't treat all output as paragraphs.
- **Referencing the source.** Never write "I saw this post..." — the rewrite is its own thing.
- **Blocking on missing voice doc.** Ask 3 quick questions and keep moving. Don't gate the experience.

## Key File Paths

| File | Path |
|------|------|
| Voice doc (enhances output) | `docs/voice.md` |
| Repurpose log (feedback) | `docs/repurpose-log.md` |
