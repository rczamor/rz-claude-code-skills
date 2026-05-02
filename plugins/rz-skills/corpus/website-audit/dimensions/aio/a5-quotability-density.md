---
name: A5 — Quotability Density
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/aio/a1-citation-absence.md, corpus/website-audit/dimensions/aio/a2-citation-rank-decline.md, corpus/voice/]
---

# A5 — Quotability Density

## What it is
Each /thinking article should contain at least 5 "quotable sentences" — sentences that LLMs can pull as standalone citations. A quotable sentence is under 30 words, declarative, fact-dense, self-contained (makes sense out of context), and explicitly names its subject (no pronouns referring back to earlier text).

**Trigger:** /thinking article has fewer than 5 quotable sentences.

**Severity:** P2 (slow optimization — affects citation likelihood over time, not immediate rankings).

**Source:** LLM-as-judge scan against each /thinking article.

## Why it matters
LLMs generate responses by retrieving text fragments and stitching them into coherent answers. The fragments they prefer are sentences that can be lifted verbatim and dropped into a new context without breaking. A long, narrative paragraph is hard to lift; a tight declarative sentence is easy.

The math compounds. An article with 5 quotable sentences gives the LLM 5 opportunities to cite it. An article with 0 quotable sentences gives 0. Across many topics and many user questions, the article with higher quotability density gets cited more — even if both articles cover the same ground with equal accuracy.

Quotability also reinforces voice. The constraint to write self-contained, fact-dense sentences is the same constraint that makes prose punchier and more authoritative. Riché's published voice (per `corpus/voice/`) already favors short declarative sentences; quotability is the AIO-aware version of that same discipline.

## How to apply
- For each /thinking article published in the past 7 days (or as part of a periodic full-site sweep), run an LLM-as-judge scan.
- The judge prompt asks: "How many sentences in this article meet ALL of the following criteria? (a) under 30 words, (b) declarative (not a question or rhetorical), (c) makes a specific factual claim or definition, (d) self-contained (could be quoted out of context), (e) explicitly names its subject (no 'it' or 'this' referring back)."
- For articles with fewer than 5 quotable sentences, identify candidate sentences that almost qualify but fall short on one criterion. Recommend specific rewrites.
- Fix pattern: edit the article to add or rewrite 3-5 sentences for quotability. Often the existing prose has the substance; the sentences just need restructuring.
- File one Linear task per article, not per missing sentence.

## Examples
1. **Article on context architecture has 2 quotable sentences.** Most claims are wrapped in narrative ("As we discussed earlier, the team realized that..."). Fix: rewrite 5 specific sentences. Example before/after:
   - Before: "What we found was that the issue wasn't really about retrieval, it was about something deeper — the system couldn't tell which parts of what it retrieved actually mattered."
   - After: "Retrieval works fine. Consolidation is the missing layer. Most teams can find the right documents but can't tell the system which sentences inside those documents matter."
2. **Article on agent memory has 7 quotable sentences.** Already passing. Note in audit, no task.
3. **Article on PM frameworks has 4 quotable sentences.** One short of threshold. Add one quotable summary line at the end of each major section. Now 7.

## Related entries
- `corpus/website-audit/dimensions/aio/a1-citation-absence.md` — quotability is a primary citation-decision input
- `corpus/website-audit/dimensions/aio/a2-citation-rank-decline.md` — quotability improvements can recover rank
- `corpus/voice/` — Riché's voice already favors quotable construction
- `corpus/voice/principle-no-generic-ai-voice.md` — quotable doesn't mean generic

## Anti-patterns
- Adding "quotable" sentences that are actually buzzword strings. "Context architecture is the future of AI products" is a bad quotable — too vague, too generic. Quotables make specific claims.
- Optimizing every sentence in the article for quotability. The variation between long explanatory sentences and short quotable ones is what makes the prose work. Aim for density, not uniformity.
