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

- If yes, read it silently. Use it to match seeds to the user's preferred angles, voice modes, and audience.
- If no, proceed without it. The skill works standalone.

Don't mention this step to the user.

### Step 2 — Pick the Question Set

Rotate between 3 question sets based on the day of the week to prevent fatigue. Check which set was last used in `docs/content-seeds.md` (look at the most recent `**Set:**` tag). If no history, start with Set A.

**Set A — What happened (Mon/Thu):**
1. "What did you learn, ship, or notice today?"
2. "What surprised you or challenged something you believed?"
3. "What's something you'd tell a peer over coffee but wouldn't say on a stage?"

**Set B — Relationships & deals (Tue/Fri):**
1. "Who did you talk to today that made you think? What did they say?"
2. "Did you win or lose anything this week — a deal, an argument, a bet? What did it teach you?"
3. "What advice did you give someone today that you should take yourself?"

**Set C — Industry & opinions (Wed/Weekend):**
1. "What's a trend or take in your industry that you think is wrong? Why?"
2. "What tool, tactic, or process did you use today that most people in your space don't know about?"
3. "If you could send one message to everyone in your industry, what would it be?"

Ask the 3 questions **one at a time**. Keep it conversational.

### Step 3 — Extract Content Seeds

From the answers, extract 2-3 seeds. Each is a potential LinkedIn post.

For each seed:

```
### Seed [N]: [Working title]

**Core insight:** [The idea in one sentence]
**Angle:** [One of: contrarian, confession, proof, teach, hot-take, milestone, behind-the-scenes]
**Hook suggestion:** [A specific opening line]
**Target audience:** [Who would care — be specific]
**Why it works:** [Why this would resonate — 1 sentence]
**Urgency:** 🔴 Post within 48h (timely) / 🟡 This week / 🟢 Evergreen
**Tags:** #[topic] #[topic]
```

Extraction rules:
- Prioritize surprising or contrarian insights over generic observations
- If they mentioned a number or metric — lead with that
- If they expressed frustration or excitement — that's emotional fuel, use it
- Don't polish their language — keep it raw. The voice doc handles tone later.
- Each seed must be distinct in angle (not 3 versions of the same take)
- At least one seed should come from the most uncomfortable or authentic answer

### Step 4 — Save to Content Seeds File

Append the seeds to `docs/content-seeds.md` with a date header:

```markdown
---

## [YYYY-MM-DD]

**Set:** [A/B/C]

### Seed 1: [Title]
**Core insight:** ...
**Angle:** ...
**Hook suggestion:** ...
**Target audience:** ...
**Why it works:** ...
**Urgency:** ...
**Tags:** ...

### Seed 2: [Title]
...
```

- Create the file with a `# Content Seeds` header if it doesn't exist
- Always append — never overwrite previous entries
- Create `docs/` if needed

Tell the user: "Saved [N] seeds to `docs/content-seeds.md`. You now have [total] seeds banked. [N with 🔴 urgency] should be written this week."

### Step 5 — Auto-Review Trigger

After saving, check the total seed count in the file.

**If 7+ seeds banked:** Automatically surface the top 3 to write first (ranked by: 🔴 urgency first, then contrarian/surprising angle, then emotional charge). Present: "You have [N] seeds banked. Here are the 3 I'd write first: [brief list]. Want me to write any of them now?"

**If <7 seeds:** Just offer: "Want me to turn any of these into a full post? Just say which seed number."

If they pick one and `docs/voice.md` exists, write the full post in their voice. If no voice doc, suggest: "Run the Voice Builder first for posts in your style — or I can write a generic version now."

### Step 6 — Feedback Loop (Seed Review)

This step triggers when the user says "review my seeds", "which seeds should I write", "prioritize my content", or when `docs/content-seeds.md` has 15+ seeds.

1. Read all seeds from `docs/content-seeds.md`
2. Analyze the full backlog:

**Prioritize — surface the top 5:**
- Rank by: 🔴 urgency first, contrarian/surprising angle (highest), emotional charge (frustration/excitement beats neutral)
- Present: "You have [N] seeds banked. Here are the 5 I'd write first:"

**Cluster — find recurring themes:**
- Group seeds by tags and topics
- Present: "You keep coming back to #[tag]. This could become a series or a signature topic."

**Prune — flag stale seeds:**
- Any 🔴 seed older than 7 days: "This was urgent [N] days ago. Still relevant, or should I downgrade?"
- Any seed older than 60 days about a timely topic: archive it

3. If user picks a seed to write, write it directly using the voice doc
4. After a seed becomes a published post, ask: "How did it perform? [impressions, comments, reposts]" — log the result next to the seed:

```markdown
### Seed 3: [Title] ✓ PUBLISHED
**Published:** [date] | **Impressions:** [N] | **Comments:** [N]
**What worked:** [1 sentence]
```

This data improves future seed scoring — seeds with angles similar to high-performers get ranked higher.

## Common Mistakes

- **Asking all 3 questions at once.** Kills the conversational flow. One at a time.
- **Using the same question set every day.** Rotate sets. Same questions = same answers = stale seeds.
- **Over-polishing seeds.** Seeds are raw material, not finished posts. Don't wordsmith them.
- **Extracting only safe, obvious insights.** The best content comes from uncomfortable answers. Push for those angles.
- **Generating duplicate angles.** If all 3 seeds are "teach" angle, the batch is weak. Force variety.
- **Letting seeds pile up without reviewing.** Run the seed review when you hit 15+ unwritten seeds.
- **Ignoring urgency.** A timely seed that sits for 2 weeks becomes a mediocre evergreen post.

## Key File Paths

| File | Path |
|------|------|
| Content seeds output | `docs/content-seeds.md` |
| Voice doc (optional) | `docs/voice.md` |
