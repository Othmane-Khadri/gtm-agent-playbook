---
name: linkedin-voice-builder
description: Use this skill when the user says "build my LinkedIn voice", "define my writing style", "create my voice doc", "how should I write on LinkedIn", "LinkedIn voice", or any variant indicating they want to define their personal writing style for LinkedIn.
version: 1.0.0
---

# LinkedIn Voice Builder

Define your LinkedIn writing voice through analysis of your best posts + a voice discovery interview. Produces a structured voice document that other skills reference when writing for you.

## When This Skill Applies

User says any variant of: "build my LinkedIn voice", "define my writing style", "create my voice doc", "LinkedIn voice", "how should I write", or any request to codify their personal writing style.

## Workflow

### Step 1 — Check for Existing Voice Doc

Look for `docs/voice.md` in the project root.

- If it exists, read it and ask: "I found your existing voice doc. Want to refine it, or start fresh?"
- If refining, load it as context and focus on gaps.
- If starting fresh, proceed to Step 2.

### Step 2 — Collect Writing Samples

Ask: "Share 3-5 LinkedIn posts you've written that you're proud of. Paste them here or share URLs."

Wait for the samples. If URLs are provided, fetch them with WebFetch.

### Step 3 — Analyze Patterns

Silently analyze the samples across these dimensions:

- **Sentence length:** Average, range, and rhythm (short-short-long? staccato? flowing?)
- **Vocabulary:** Simple/complex ratio, industry jargon level, signature words
- **Hook patterns:** How do they open? (question, statement, number, story, contrarian)
- **Structure:** How do they organize? (thesis→proof, story→lesson, list, problem→solution)
- **Tone spectrum:** Where do they fall on casual↔formal and concrete↔abstract
- **Closing style:** How do they end? (conviction, question, callback, mic drop)
- **Formatting:** Line breaks, spacing, use of bold/italic, emojis or not

### Step 4 — Voice Discovery Interview

Ask these 5 questions **one at a time**:

1. "Describe your writing personality in 3 words."
2. "Which writers or creators influence your style? What do you admire about their writing?"
3. "What words or phrases do you NEVER want to use? (Corporate speak, buzzwords, anything that makes you cringe)"
4. "Do you prefer short punchy sentences or longer flowing ones? Or a mix?"
5. "When someone reads your post, what should it FEEL like? (A conversation? A lecture? A confession? A manifesto?)"

### Step 5 — Present the Voice Doc

Synthesize the analysis + interview into a voice document. Present it to the user before saving:

```markdown
# LinkedIn Voice — [Name]

> Generated [date]. Refine by running the Voice Builder skill again.

## Identity

**Writing personality:** [their 3 words]
**Feels like:** [the reading experience they described]
**Influences:** [writers/creators they named]

## Tone Spectrum

| Dimension | Position | Notes |
|-----------|----------|-------|
| Casual ↔ Formal | [X]% casual | [evidence from samples] |
| Concrete ↔ Abstract | [X]% concrete | [evidence from samples] |
| Personal ↔ Analytical | [X]% personal | [evidence from samples] |

## Hook Patterns

Use these opener styles, derived from your best posts:

1. **[Pattern name]** — [description + example from their posts]
2. **[Pattern name]** — [description + example]
3. **[Pattern name]** — [description + example]

## Structure Templates

### [Template 1 name]
- Line 1: [role]
- Lines 2-3: [role]
- ...
- Closing: [role]

### [Template 2 name]
[same structure]

## Banned Words & Phrases

Never use: [their list + any patterns from samples that feel generic]

## Signature Phrases

Words and turns of phrase that are distinctly yours:
- "[phrase]" — used in [context]
- ...

## Example: Good vs. Bad

**Sounds like you:**
> [example line in their voice]

**Doesn't sound like you:**
> [same idea written generically]

## Word Count Range

Based on your samples: [min]-[max] words. Sweet spot: ~[avg] words.

## Formatting Rules

- Line breaks: [their pattern]
- Bold/italic: [their usage]
- Emojis: [yes/no/sparingly]
- Hashtags: [yes/no]
```

Ask: "Does this capture your voice? Anything feel off?"

### Step 6 — Handle Corrections

If the user corrects something:
- Fix the voice doc immediately
- If the correction reveals a general rule (e.g., "I never use em dashes"), add it to the Banned Words section

### Step 7 — Save

After user approves, save to `docs/voice.md` in the project root.

Create the `docs/` directory if it doesn't exist.

Tell the user: "Your voice doc is saved at `docs/voice.md`. The Daily Debrief, Idea Sourcer, and Post Repurposer skills will reference this automatically when writing for you."

## Key File Paths

| File | Path |
|------|------|
| Voice output | `docs/voice.md` |
