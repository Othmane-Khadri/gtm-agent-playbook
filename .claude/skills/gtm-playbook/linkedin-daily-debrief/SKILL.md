---
name: linkedin-daily-debrief
description: Use this skill when the user says "daily debrief", "what I learned today", "content debrief", "extract content from my day", "debrief me", or any variant indicating they want to capture today's insights as LinkedIn content seeds.
version: 1.0.0
---

# LinkedIn Daily Debrief

A 5-minute interview that extracts stories, insights, and hot takes from your day. Produces 2-3 raw content seeds with angles and hooks. Accumulates over time so you never run out of content ideas.

## When This Skill Applies

User says any variant of: "daily debrief", "content debrief", "what I learned today", "debrief me", "capture today's content", "extract content from my day", or any request to turn daily observations into content ideas.

## Workflow

### Step 1 — Load Voice (Optional)

Check if `docs/voice.md` exists.

- If yes, read it silently. Use it to match content seeds to the user's voice and preferred angles.
- If no, proceed without it. The skill works standalone — voice just makes the output better.

Don't mention this step to the user.

### Step 2 — The Interview

Ask these 3 questions **one at a time**. Keep the energy conversational — this should feel like a quick chat, not a survey.

**Question 1:** "What did you learn, ship, or notice today?"

Let them talk. Don't interrupt. Their raw thoughts are the source material.

**Question 2:** "What surprised you or challenged something you believed?"

This surfaces contrarian angles — the most engaging content.

**Question 3:** "What's something you'd tell a peer over coffee but wouldn't say on a stage?"

This surfaces authentic, vulnerable, or provocative takes — the content that actually performs.

### Step 3 — Extract Content Seeds

From the answers, extract 2-3 content seeds. Each seed is a potential LinkedIn post.

For each seed, provide:

```
### Seed [N]: [Working title]

**Core insight:** [The idea in one sentence]
**Angle:** [One of: contrarian, confession, proof, teach, hot-take, milestone]
**Hook suggestion:** [A specific opening line they could use]
**Target audience:** [Who would care about this — be specific]
**Why it works:** [One sentence on why this would resonate]
```

Rules for extracting seeds:
- Prioritize surprising or contrarian insights over generic observations
- If they mentioned a number, metric, or result — lead with that
- If they expressed frustration or excitement — that's emotional fuel, use it
- Don't polish their language — keep it raw. The voice doc handles tone later.
- Each seed should be distinct in angle (don't give 3 versions of the same take)

### Step 4 — Save to Content Seeds File

Append the seeds to `docs/content-seeds.md` with a date header.

Format:

```markdown
---

## [YYYY-MM-DD]

### Seed 1: [Title]
**Core insight:** ...
**Angle:** ...
**Hook suggestion:** ...
**Target audience:** ...

### Seed 2: [Title]
...
```

- Create the file if it doesn't exist (add a `# Content Seeds` header)
- Always append at the end — never overwrite previous entries
- Create the `docs/` directory if it doesn't exist

Tell the user: "Saved [N] seeds to `docs/content-seeds.md`. You now have [total] seeds banked. Run this daily and you'll never run out of content ideas."

### Step 5 — Offer Next Steps

After saving, offer:

"Want me to turn any of these into a full post? Just say which seed number."

If the user picks one and a voice doc exists, write the full post following the voice doc. If no voice doc exists, suggest: "Run the Voice Builder skill first to get posts in your style — or I can write a generic version now."

## Key File Paths

| File | Path |
|------|------|
| Content seeds output | `docs/content-seeds.md` |
| Voice doc (optional) | `docs/voice.md` |
