---
name: Advisory Inquiry Response
domain: networking
source_skill: networking
entry_type: template
length_target: 600-700
related: [corpus/pm-frameworks/, corpus/networking/philosophy/connect-around-shared-problems.md, corpus/voice/]
---

# Advisory Inquiry Response

## What it is
The response Riché sends when a founder, product leader, or peer reaches out for architecture advice — typically a "can I pick your brain about X?" or "would love your take on our AI product approach" message. The response is generous-first: deliver one concrete actionable insight in the message itself, ask a clarifying question, and only then explore deeper engagement.

## Why it matters
Advisory inquiries are the front door to consulting, advisory equity, and high-trust referrals. The default move — answer with calendar bookings or rate cards — fails because it converts a curiosity gesture into a transaction before trust is established. The generous-first response builds enough credibility in the message itself that the recipient pulls the deeper engagement forward, on their initiative.

## How to apply
1. **Be generous first**. Give one concrete, actionable insight inside the response message — something they can use the same day even if the relationship goes nowhere.
2. **Ask a clarifying question** that shows you understand their problem at a structural level, not a surface level.
3. **Explore whether there's a deeper engagement** — advisory, consulting, collaboration. Frame it as exploring fit, not closing.
4. **Never lead with what you can sell.** Lead with what you can teach. The sale follows when the teaching lands.

Length: 200-280 words. Long enough to deliver real substance, short enough that it reads as a generous reply, not a sales pitch.

## Examples

Example response — to a founder who DM'd asking "we're hitting a wall on RAG quality, would love your take":

> Thanks for reaching out — happy to share what I've been seeing.
>
> The fastest insight I can give: most teams hitting a RAG quality wall are optimizing the wrong layer. Retrieval quality plateaus around 70% accuracy, and squeezing the last 30% out of better embeddings or chunking strategies has diminishing returns. The unlock is usually in context shaping — what you do between retrieval and the model — not in retrieval itself. Specifically: rerank for task-relevance not just similarity, compress aggressively before context-window injection, and instrument what gets dropped on the floor when you hit token limits. Most teams have no visibility into the third one.
>
> The clarifying question: when you say "hitting a wall," is the failure mode hallucination on edge cases, inconsistency on similar queries, or quality degradation as conversations get longer? Each one points to a different fix.
>
> If it's useful, I've been working on this exact set of problems with a few teams as an advisor. Happy to do a 30-minute working session to dig into yours specifically — and if there's a fit for a deeper engagement, we can talk about it then. No pressure either way.
>
> Riché

Word count: 230. Generous-first (3-part insight in the message itself), structural clarifying question, soft exploration of advisory engagement, no sales lead.

## Related entries
- `corpus/pm-frameworks/` — the substance behind advisory responses
- `corpus/networking/philosophy/connect-around-shared-problems.md` — the philosophy this template enacts
- `corpus/voice/` — voice rules

## Anti-patterns
- Leading with rates, calendar links, or "happy to discuss in a call." Converts curiosity to friction.
- Generic advice ("you should think about your data quality"). The insight must be specific enough that they'd say "huh, I hadn't thought about it that way."
- Skipping the clarifying question. Without it, the next exchange will likely be wasted on context Riché should already have asked for.
