---
name: Question Templates
domain: networking
source_skill: networking
entry_type: template
length_target: 400-500
related: [corpus/networking/conferences/before-event-prep.md, corpus/networking/conferences/during-event-posture.md, corpus/networking/philosophy/connect-around-shared-problems.md]
---

# Question Templates

## What it is
The 2-3 questions Riché prepares before any event — questions designed to demonstrate genuine curiosity about the recipient's work and to open conversation at substance level rather than surface level. Each question is specific to a target connect, written during before-event-prep, and deployed in the opening minute of the conversation.

## Why it matters
Generic questions ("what brought you here?", "what's your biggest challenge?") signal lazy preparation. They make every conversation feel like an interview and produce shallow responses. Specific questions, grounded in something the recipient has publicly built, written, or shipped, signal that Riché has done the homework — which immediately upgrades the conversation to peer-level exchange.

## How to apply
Question-design rules:

1. **Reference something specific they've built or written.** "I read your post on X..." or "the talk you gave on Y..." — anchor the question in their visible work.

2. **Ask about a structural problem, not a surface one.** Surface: "what's hard about your job?" Structural: "in the agent reliability work you posted about, where does context budgeting break first — at retrieval or at compression?"

3. **Make it a question they'd want to answer.** Test: would they say "good question, let me think" or would they say "uhh, depends"? The first means it's specific enough.

4. **Have 2-3 prepared per target connect.** Different angles on the same person — one about their public work, one about a shared problem, one about a frame.

Question pattern templates (fill in the specifics):

- "In your work on [specific thing they shipped], where does the failure mode show up first — at [specific layer] or at [specific layer]?"
- "Your post on [topic] — when you said [exact phrase they used], were you thinking about [specific case A] or [specific case B]?"
- "I've been wrestling with [shared problem]. Where on that has your team landed?"

## Examples
1. To a CPO who recently posted about agent reliability: "Your post on agent loop failures — when you said context windows are 'working memory under pressure,' is that pressure mostly from token-limit truncation, or from semantic drift across turns?" Specific, structural, anchored in their public work.

2. To a senior PM at a Forbes AI 50 company: "Your team's onboarding flow that shows model confidence percentages — was visible uncertainty a UX-driven decision or a trust-rebuilding decision after a quality incident?" Specific to the shipped feature, structural in framing.

3. To a fellow ProductTank speaker: "Your talk's framing on PM career arcs through the AI transition — do you think the discontinuity is bigger between IC and manager, or between manager and director? I've been seeing it differently than I expected."

## Related entries
- `corpus/networking/conferences/before-event-prep.md` — when these questions are prepared
- `corpus/networking/conferences/during-event-posture.md` — how they're deployed
- `corpus/networking/philosophy/connect-around-shared-problems.md` — the philosophy these questions enact

## Anti-patterns
- Generic prep ("what do you think about AI?"). Wastes the conversation.
- Questions that are really pitches in disguise. The recipient detects them instantly.
