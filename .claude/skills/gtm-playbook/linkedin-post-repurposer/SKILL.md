---
name: linkedin-post-repurposer
description: Use when taking someone else's content (post, article, tweet, newsletter) and rewriting it with a personal angle. Symptoms — found a great post but want to make it yours, want to riff on someone's idea without copying, need to remix content in your own voice.
---

# LinkedIn Post Repurposer

Take any post, article, or tweet — extract the core insight, find YOUR angle, and rewrite it in your voice. Not copying. Remixing with a point of view. Requires `docs/voice.md` from the Voice Builder skill.

## When This Skill Applies

User shares a URL or pastes content and says: "repurpose this", "rewrite this post", "find my angle on this", "make this mine", "remix this", or any request to take external content and make it their own.

## Workflow

### Step 1 — Load Voice Doc (Required)

Read `docs/voice.md` from the project root.

- If it exists: load it.
- If it doesn't exist: **stop.** Tell the user: "I need your voice doc to rewrite in your style. Run the Voice Builder skill first: just say 'build my LinkedIn voice'."

Do NOT proceed without a voice doc. Generic rewrites aren't the point.

### Step 2 — Fetch the Source Content

**URL provided:** Fetch with WebFetch. Extract full text.
**Content pasted:** Use directly.
**Fetch fails:** Ask user to paste the content manually.

### Step 3 — Deconstruct the Source

Analyze silently:

- **Core insight:** The one idea worth keeping — in one sentence
- **Original angle:** How the author framed it (teaching, storytelling, contrarian, proof-based)
- **Original structure:** How is it organized?
- **What made it work:** Why did it get attention? (emotion, specificity, timeliness, controversy)
- **What's generic:** Parts that are filler or could be said by anyone

### Step 4 — Find the User's Angle

Ask one question: "How does this relate to YOUR experience? What would you add, disagree with, or say differently?"

Wait for their answer.

If the user says "just write it" or doesn't have a specific angle:
- Find a structural pattern from the voice doc that fits
- Find a hook pattern that works
- Frame it as their perspective based on personality and tone

### Step 5 — Rewrite

Write a complete LinkedIn post that:

1. **Keeps the core insight** — underlying idea preserved
2. **Changes the framing entirely** — different hook, structure, angle
3. **Adds the user's perspective** — incorporates their angle from Step 4
4. **Follows the voice doc** — tone spectrum, hook patterns, banned words, word count range
5. **Doesn't reference the original** — no "I saw a post about..." or "Inspired by..."

Output as plain text (no code blocks), ready to copy-paste.

### Step 6 — Show Your Work

After the post, briefly explain:

```
**What I kept:** [the core insight]
**What I changed:** [angle, structure, hook]
**Voice doc applied:** [which patterns/templates used]
```

### Step 7 — Handle Corrections

If the user gives feedback:
- Fix the post immediately
- If correction reveals a voice rule (e.g., "I'd never open with a question"), suggest: "Want me to update your voice doc with this rule?"
- If yes, update `docs/voice.md` and save

### Step 8 — Feedback Loop (Post Performance)

This step triggers when the user says "how did the repurposed post do", "track this post", or returns with performance data.

1. Ask: "How did the post perform? Rough numbers are fine — impressions, comments, reposts."

2. Log the result in `docs/repurpose-log.md` (create if doesn't exist):

```markdown
# Repurpose Performance Log

## [YYYY-MM-DD] — [working title]
- Source: [original URL or topic]
- Angle used: [what was changed]
- Voice patterns: [which templates/hooks applied]
- Performance: [impressions] impressions, [comments] comments
- Verdict: ★ Hit / ○ Average / ✗ Miss
```

3. If the post performed well:
   - Note which voice patterns and angle shifts drove engagement
   - Suggest: "This angle worked. Want me to find more sources to repurpose with a similar framing?"

4. If the post underperformed:
   - Analyze why: wrong angle? wrong audience? weak hook? bad timing?
   - Ask: "What would you do differently?" — if the answer reveals a voice rule, offer to update `docs/voice.md`

5. After 5+ logged posts, surface patterns: "Your repurposed posts with [contrarian/confession] angles perform 2x better than [teach] posts. Your best hook pattern is [pattern name]."

## Common Mistakes

- **Paraphrasing instead of reframing.** The post should stand completely alone. If you deleted the original, this post should still make sense.
- **Keeping the original structure.** Same insight, completely different shape. If the original was a list, try a story. If it was a thesis, try a confession.
- **Forgetting the voice doc.** Every rewrite must go through the voice doc. Don't default to generic LinkedIn tone.
- **Referencing the source.** Never write "I saw this post..." — the rewrite is its own thing.
- **Repurposing without tracking.** If you don't track what performed, you repurpose blindly. Log results to sharpen your instinct.

## Key File Paths

| File | Path |
|------|------|
| Voice doc (required) | `docs/voice.md` |
| Repurpose log (feedback) | `docs/repurpose-log.md` |
