---
name: linkedin-voice-builder
description: Use when codifying a personal writing style for LinkedIn. Symptoms — posts sound generic, inconsistent tone across posts, can't articulate what makes your writing yours, new to LinkedIn writing and need a style guide.
---

# LinkedIn Voice Builder

Analyze your best writing + run a voice discovery interview. Produces a structured voice document at `docs/voice.md` that other skills reference when writing for you.

## When This Skill Applies

User says: "build my LinkedIn voice", "define my writing style", "create my voice doc", "LinkedIn voice", "how should I write on LinkedIn", or any request to codify their personal writing style.

## Workflow

### Step 1 — Check for Existing Voice Doc

Look for `docs/voice.md` in the project root.

- If it exists, read it and ask: "I found your existing voice doc. Want to refine it, or start fresh?"
- If refining, load it as context and focus on gaps.
- If starting fresh, proceed to Step 2.

### Step 2 — Collect Writing Samples

Ask: "Share 3-5 LinkedIn posts you've written. Include at least one that got unexpectedly good engagement. Paste them here or share URLs."

Wait for the samples. If URLs are provided, fetch them with WebFetch.

If user has fewer than 3 posts: "No worries — paste whatever you have, even draft messages or emails that feel like 'you'. We can build from less."

### Step 3 — Analyze Patterns (Silent)

Analyze the samples across these dimensions:

- **Sentence length:** Average, range, and rhythm (short-short-long? staccato? flowing?)
- **Vocabulary:** Simple/complex ratio, jargon level, signature words
- **Hook patterns:** How do they open? (question, statement, number, story, contrarian)
- **Structure:** How do they organize? (thesis-proof, story-lesson, list, problem-solution)
- **Tone spectrum:** casual-formal, concrete-abstract, personal-analytical
- **Closing style:** conviction, question, callback, mic drop
- **Formatting:** Line breaks, spacing, bold/italic, emojis or not

### Step 4 — Voice Discovery Interview

Ask these 5 questions **one at a time**:

1. "Paste the post that got you the most engagement. Why do you think it hit?"
2. "Who are you writing FOR? What do they believe, and what would make them stop scrolling?"
3. "Which writers or creators influence your style? What do you admire about their writing?"
4. "What words or phrases do you NEVER want to use — and what would you say instead?"
5. "When someone reads your post, what should it FEEL like? (A conversation? A confession? A manifesto? A backstage pass?)"

### Step 5 — Present the Voice Doc

Synthesize analysis + interview into this format. Present before saving:

```markdown
# LinkedIn Voice — [Name]

> Generated [date]. Refine by running the Voice Builder skill again.

## Identity

**Audience:** [who they're writing for — specific]
**What the audience believes:** [their worldview]
**Scroll-stopper:** [what makes this audience pause]
**Influences:** [writers/creators they named]

## Voice Modes

Three writing modes. Each post should lean into ONE — mixing modes weakens the voice.

### Teaching Mode
- **When to use:** Sharing a framework, process, or lesson
- **Tone:** [calibrated from samples — e.g., "direct, specific, no hedging"]
- **Pattern:** [structure from samples]

### Storytelling Mode
- **When to use:** Personal experience, case study, behind-the-scenes
- **Tone:** [e.g., "conversational, vulnerable, builds to a single punch"]
- **Pattern:** [structure from samples]

### Provoking Mode
- **When to use:** Contrarian take, hot take, challenging conventional wisdom
- **Tone:** [e.g., "confident, short sentences, mic-drop close"]
- **Pattern:** [structure from samples]

## Tone Spectrum

| Dimension | Position | Evidence |
|-----------|----------|---------|
| Casual - Formal | [X]% casual | [from samples] |
| Concrete - Abstract | [X]% concrete | [from samples] |
| Personal - Analytical | [X]% personal | [from samples] |

## Hook Patterns

1. **[Pattern name]** — [description + example from their posts]
2. **[Pattern name]** — [description + example]
3. **[Pattern name]** — [description + example]

## Structure Templates

### [Template 1 name]
- Line 1: [role]
- Lines 2-3: [role]
- Closing: [role]

### [Template 2 name]
[same structure]

## Word Substitutions

| Never say | Say instead |
|-----------|-------------|
| [banned word] | [preferred alternative] |
| [banned word] | [preferred alternative] |

## Signature Phrases

- "[phrase]" — used in [context]

## Example: Good vs. Bad

**Sounds like you:**
> [example line in their voice]

**Doesn't sound like you:**
> [same idea written generically]

## Platform Rules (LinkedIn-specific)

- Hook must land in 2 lines (that's all the preview shows)
- Short paragraphs (1-3 sentences max)
- No bold text in posts (LinkedIn renders it poorly on mobile)
- [Emoji usage from samples]
- [Hashtag usage from samples]
- Word count sweet spot: ~[avg from samples] words

## Word Count Range

Based on your samples: [min]-[max] words. Sweet spot: ~[avg] words.
```

Ask: "Does this capture your voice? Anything feel off?"

### Step 6 — Handle Corrections

If the user corrects something:
- Fix the voice doc immediately
- If the correction reveals a general rule (e.g., "I never use em dashes"), add it to Word Substitutions
- If it reveals a new preference, add it to the right Voice Mode

### Step 7 — Save

After user approves, save to `docs/voice.md`. Create `docs/` if it doesn't exist.

Tell the user: "Your voice doc is saved at `docs/voice.md`. The Daily Debrief, Idea Sourcer, and Post Repurposer reference this automatically."

### Step 8 — Feedback Loop (Consistency Check)

This step triggers when the user says "check my voice", "voice consistency", "am I drifting", or has written 5+ posts since creating the voice doc.

1. Read the existing `docs/voice.md`
2. Ask: "Paste your last 3-5 LinkedIn posts (the ones you actually published)."
3. Analyze each post against the voice doc:
   - **Voice mode:** Which mode did they use? Was it consistent within the post?
   - **Tone match:** Does the casual-formal ratio hold?
   - **Hook compliance:** Did they use one of their documented hook patterns?
   - **Word substitutions:** Any violations?
   - **Structure:** Did they follow a documented template?
   - **Word count:** Within their range?
4. Score each post as a percentage match (e.g., "Post 3: 72% — hook was on-brand, but tone drifted formal")
5. Present a summary:

```
**Voice Consistency Report**
- Post 1: [X]% match — [1-line note]
- Post 2: [X]% match — [1-line note]
- Post 3: [X]% match — [1-line note]

**Patterns:** [What's consistent across all posts]
**Drift:** [What's changed since the voice doc was created]
**Recommendation:** [Update voice doc? Or course-correct posts?]
```

6. If drift is intentional (their voice evolved), offer to update `docs/voice.md` with the new patterns
7. If drift is accidental, flag the specific violations to watch for

## Common Mistakes

- **Analyzing too few samples.** 1-2 posts isn't enough to find patterns. Push for 3-5. But if they only have 1-2, work with it — don't block.
- **Projecting a voice instead of extracting one.** The voice doc should match what they already write, not what sounds good.
- **Ignoring the audience.** A voice doc without audience context produces posts that sound good to the writer but don't resonate with readers.
- **One-mode voice.** People write differently when teaching vs storytelling vs provoking. Capture all three modes.
- **Ignoring platform constraints.** LinkedIn truncates after 2 lines. Mobile renders bold weirdly. These aren't style choices — they're constraints.
- **Making the doc too long.** A voice doc someone won't re-read is useless. Keep each section concise.
- **Never checking consistency.** A voice doc is worthless if nobody checks whether posts actually match it. Run the consistency check monthly.

## Key File Paths

| File | Path |
|------|------|
| Voice output | `docs/voice.md` |
