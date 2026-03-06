---
name: linkedin-post-repurposer
description: Use this skill when the user shares a URL (post, article, tweet, newsletter) and says "repurpose this", "rewrite this", "find my angle on this", "make this mine", or any variant indicating they want to take someone else's content and rewrite it in their own voice.
version: 1.0.0
---

# LinkedIn Post Repurposer

Take any post, article, or tweet — extract the core insight, find YOUR angle, and rewrite it in your voice. Not copying. Remixing with a point of view.

## When This Skill Applies

User shares a URL and says any variant of: "repurpose this", "rewrite this post", "find my angle on this", "make this mine", "LinkedIn version of this", "remix this", or any request to take external content and make it their own.

Also triggers when user pastes content directly (not a URL) with a request to rewrite it.

## Workflow

### Step 1 — Load Voice Doc (Required)

Read `docs/voice.md` from the project root.

- If it exists: load it. This is the foundation for the rewrite.
- If it doesn't exist: **stop.** Tell the user: "I need your voice doc to rewrite in your style. Run the Voice Builder skill first: just say 'build my LinkedIn voice'."

Do NOT proceed without a voice doc. Generic rewrites aren't the point — the value is rewriting in YOUR voice.

### Step 2 — Fetch the Source Content

**If user shared a URL:** Fetch it with WebFetch. Extract the full text content.

**If user pasted content:** Use that directly.

If the fetch fails (paywall, login required), ask the user to paste the content manually.

### Step 3 — Deconstruct the Source

Analyze the original content silently. Identify:

- **Core insight:** The one idea worth keeping — in one sentence
- **Original angle:** How did the author frame it? (teaching, storytelling, contrarian, proof-based)
- **Original structure:** How is it organized?
- **What made it work:** Why did this content get attention? (emotion, specificity, timeliness, controversy)
- **What's generic about it:** What parts are filler or could be said by anyone?

### Step 4 — Find the User's Angle

Ask one question: "How does this relate to YOUR experience? What would you add, disagree with, or say differently?"

Wait for their answer. This is the raw material for the rewrite.

If the user says "just write it" or doesn't have a specific angle, derive one from their voice doc:
- Find a structural pattern from their voice doc that fits the insight
- Find a hook pattern that would work
- Frame it as their perspective based on their personality and tone

### Step 5 — Rewrite

Write a complete LinkedIn post that:

1. **Keeps the core insight** — the underlying idea is preserved
2. **Changes the framing entirely** — different hook, different structure, different angle
3. **Adds the user's perspective** — incorporates their angle from Step 4
4. **Follows the voice doc** — matches their tone spectrum, uses their hook patterns, respects their banned words, stays within their word count range
5. **Doesn't reference the original** — the post should stand alone. No "I saw a post about..." or "Inspired by..."

Output the post as plain text (no code blocks), ready to copy-paste.

### Step 6 — Show Your Work

After the post, briefly explain:

```
**What I kept:** [the core insight]
**What I changed:** [angle, structure, hook]
**Voice doc applied:** [which patterns/templates you used]
```

This helps the user understand the transformation and builds trust in the process.

### Step 7 — Handle Corrections

If the user edits or gives feedback:
- Fix the post immediately
- If the correction reveals a voice rule (e.g., "I'd never open with a question"), suggest: "Want me to update your voice doc with this rule?"
- If yes, read `docs/voice.md`, add the rule to the appropriate section, and save.

## Key File Paths

| File | Path |
|------|------|
| Voice doc (required) | `docs/voice.md` |
