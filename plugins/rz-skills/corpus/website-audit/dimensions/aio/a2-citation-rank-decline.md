---
name: A2 — Citation Rank Decline
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/aio/a1-citation-absence.md, corpus/website-audit/dimensions/aio/a5-quotability-density.md, corpus/website-audit/methodology/severity-scoring.md]
---

# A2 — Citation Rank Decline

## What it is
A query where richezamor.com was cited by Claude, ChatGPT, or Perplexity last week is still cited this week — but the rank dropped. Was 1st citation, now 3rd. Was 2nd, now 4th. The site still appears, but in a less prominent position.

**Trigger:** cited last week, still cited but rank fell.

**Severity:** P1.

**Source:** Step 2c citation scan, comparing this week's results against last week's (stored in the previous audit page).

## Why it matters
Citation rank matters for visibility the same way Google search rank matters. The 1st citation in an LLM response is the answer the user pays attention to. The 5th citation is reference material the user mostly ignores. Slipping from 1st to 3rd loses most of the practical visibility, even though the site is still technically being cited.

Citation rank decline is usually an early warning before A1 (full citation absence). The pattern is: rank slips → rank slips further → eventually drops out of the citation list entirely. Catching it at the rank-decline stage gives a chance to refresh the page and recover the position before the citation disappears.

The cause is usually one of: a competitor published more recent content (recency signal), a competitor improved their schema or quotability, or the LLM's index updated and pulled in fresh sources. All three are recoverable.

## How to apply
- Compare this week's citation scan against last week's (stored in the previous audit's "Run notes → AIO query set").
- For each query where richezamor.com was cited both weeks, compute rank delta.
- Flag any query where rank dropped by 1 or more positions.
- Investigate the new top-ranked citation. What changed? Common findings:
  - A new article was published more recently than richezamor.com's article on the same topic
  - The new top result has stronger schema markup (FAQ, HowTo, Article)
  - The new top result has more quotable sentences (per `corpus/website-audit/dimensions/aio/a5-quotability-density.md`)
- Fix patterns:
  - **Refresh the cited article.** Add 200-400 words of new substance; update the publish date.
  - **Strengthen quotability.** Rewrite 3-5 key sentences to be self-contained, under 30 words, fact-dense.
  - **Improve schema.** If the competitor has FAQ or HowTo schema and you don't, add it.
  - **Build link authority.** New inbound links signal freshness — a recent backlink from a high-authority source can move citation rank.

## Examples
1. **"context layer architecture" — slipped from 1st to 3rd.** Investigation reveals a new academic paper on arxiv is now being cited in 1st position. Fix: refresh the corresponding /thinking article with a section that engages with the paper's framing; cite the paper directly. Recovers to 2nd position within 14 days.
2. **"agent memory systems" — slipped from 2nd to 4th.** Two new competitor blog posts published in the last 30 days are now ranked above. Fix: refresh the article with more recent examples (specific products, specific architectural decisions). Update publish date.
3. **"context engineering" — slipped from 1st to 2nd.** A documentation site is now in 1st position. Refresh isn't enough; the documentation is structurally better-fit for definitional queries. Strategic decision: accept the slip on this query, double down on differentiated angles (e.g., "context engineering anti-patterns") where richezamor.com can still claim 1st.

## Related entries
- `corpus/website-audit/dimensions/aio/a1-citation-absence.md` — full absence (the next stage of decline)
- `corpus/website-audit/dimensions/aio/a5-quotability-density.md` — quotability is a citation-rank input
- `corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md` — schema affects citation rank
- `corpus/website-audit/methodology/severity-scoring.md` — P1 threshold logic

## Anti-patterns
- Constantly refreshing pages every week to chase recency. The signal degrades when refreshes are cosmetic; LLMs eventually learn to ignore the date.
- Treating every rank drop as actionable. A drop from 1st to 2nd on a non-canonical query is acceptable; conserve effort for the canonical queries.
