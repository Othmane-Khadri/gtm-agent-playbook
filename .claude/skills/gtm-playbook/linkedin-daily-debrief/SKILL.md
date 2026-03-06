---
name: linkedin-daily-debrief
description: Use when capturing daily insights, stories, or observations as LinkedIn content seeds. Symptoms — staring at a blank page, running out of content ideas, having thoughts but not turning them into posts.
---

# LinkedIn Daily Debrief

5-minute interview that extracts stories, insights, and hot takes from your day. Produces 2-3 content seeds that accumulate in `docs/content-seeds.md` over time. Run daily and you'll never run out of post ideas.

## When This Skill Applies

User says: "daily debrief", "content debrief", "what I learned today", "debrief me", "capture today's content", "extract content from my day", or any request to turn daily observations into content ideas.

## Workflow

### Step 1 — Load Voice (Silent)

Check if `docs/voice.md` exists.

- If yes, read it silently. Use it to match seeds to the user's preferred angles and voice.
- If no, proceed without it. The skill works standalone.

Don't mention this step to the user.

### Step 2 — The Interview

Ask these 3 questions **one at a time**. Keep it conversational — quick chat, not a survey.

**Question 1:** "What did you learn, ship, or notice today?"

Let them talk. Don't interrupt. Raw thoughts are the source material.

**Question 2:** "What surprised you or challenged something you believed?"

Surfaces contrarian angles — the most engaging content.

**Question 3:** "What's something you'd tell a peer over coffee but wouldn't say on a stage?"

Surfaces authentic, vulnerable, or provocative takes — the content that actually performs.

### Step 3 — Extract Content Seeds

From the answers, extract 2-3 seeds. Each is a potential LinkedIn post.

For each seed:

```
### Seed [N]: [Working title]

**Core insight:** [The idea in one sentence]
**Angle:** [One of: contrarian, confession, proof, teach, hot-take, milestone]
**Hook suggestion:** [A specific opening line]
**Target audience:** [Who would care — be specific]
**Why it works:** [Why this would resonate — 1 sentence]
```

Extraction rules:
- Prioritize surprising or contrarian insights over generic observations
- If they mentioned a number or metric — lead with that
- If they expressed frustration or excitement — that's emotional fuel, use it
- Don't polish their language — keep it raw. The voice doc handles tone later.
- Each seed must be distinct in angle (not 3 versions of the same take)

### Step 4 — Save to Content Seeds File

Append the seeds to `docs/content-seeds.md` with a date header:

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

- Create the file with a `# Content Seeds` header if it doesn't exist
- Always append — never overwrite previous entries
- Create `docs/` if needed

Tell the user: "Saved [N] seeds to `docs/content-seeds.md`. You now have [total] seeds banked."

### Step 5 — Offer Next Steps

After saving, offer: "Want me to turn any of these into a full post? Just say which seed number."

If they pick one and `docs/voice.md` exists, write the full post in their voice. If no voice doc, suggest: "Run the Voice Builder first for posts in your style — or I can write a generic version now."

## Common Mistakes

- **Asking all 3 questions at once.** Kills the conversational flow. One at a time.
- **Over-polishing seeds.** Seeds are raw material, not finished posts. Don't wordsmith them.
- **Extracting only safe, obvious insights.** The best content comes from Question 3 — the uncomfortable stuff. Push for those angles.
- **Generating duplicate angles.** If all 3 seeds are "teach" angle, the batch is weak. Force variety.

## Key File Paths

| File | Path |
|------|------|
| Content seeds output | `docs/content-seeds.md` |
| Voice doc (optional) | `docs/voice.md` |
