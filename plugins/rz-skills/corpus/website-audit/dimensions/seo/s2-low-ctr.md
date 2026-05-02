---
name: S2 — High-Impression Low-CTR Pages
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s1-ranking-regression.md, corpus/website-audit/dimensions/seo/s5-metadata-completeness.md, corpus/website-audit/methodology/severity-scoring.md]
---

# S2 — High-Impression Low-CTR Pages

## What it is
A page is showing up in Google search results often (≥500 impressions per week) but almost no one is clicking through (CTR <2%). The audit flags this as a P1 because the ranking exists — the conversion to click is broken.

**Trigger:** page has ≥500 impressions per week AND CTR <2%.

**Severity:** P1.

**Source:** `Ahrefs:gsc-pages` filtered to the last 7 days.

## Why it matters
Impressions without clicks is the single most actionable SEO finding. Unlike ranking regressions (which require content investment to fix), low-CTR fixes are usually a 30-minute job: rewrite the title and meta description. The page is already ranking; the problem is that what's showing up in the search results doesn't earn the click.

Common causes: the title is generic, the title doesn't match search intent, the meta description is missing or auto-generated, the title is too long and gets truncated, the displayed URL looks unrelated to the query, the snippet pulls from a low-context part of the page.

The math is also compelling. A page with 1,000 weekly impressions at 1% CTR earns 10 clicks. The same page at 5% CTR earns 50 clicks. The traffic gain is 5x with no ranking change.

## How to apply
- Pull GSC pages data for the last 7 days. Filter to pages with impressions ≥500 AND CTR <2%.
- For each flagged page, capture: page URL, primary query (the query bringing the impressions), current title, current meta description, impression count, CTR.
- Inspect the SERP for the primary query. What do the top 3 results' titles look like? What pattern do they share?
- Rewrite the title: under 60 characters, leads with the key phrase, makes a specific claim or value proposition.
- Rewrite the meta description: under 160 characters, includes the primary keyword, ends with an implicit or explicit CTA.
- Avoid keyword stuffing. The title still has to work as a sentence.

## Examples
1. **/thinking article with weak title.** Page ranks at position 6 for "context layer vs RAG" with 800 weekly impressions and 0.8% CTR. Current title: "Some Thoughts on Context Architecture." Rewrite: "Context Layer vs RAG: Why Retrieval Isn't Enough." CTR climbs to 4.2% over the next 14 days.
2. **Missing meta description.** /thesis page has 1,500 impressions weekly at 1.1% CTR. Page has no meta description; Google is auto-generating from the first paragraph. Add a meta description that names the thesis explicitly. CTR climbs to 3.5%.
3. **Title-search mismatch.** /work case study ranking for "Suzy Decision Engine launch" has 600 impressions at 0.6% CTR. Current title is the case-study slug ("Helm Labs Architecture Notes"). The title is for a different page entirely — investigate why this page is matching that query, and fix the canonical.

## Related entries
- `corpus/website-audit/dimensions/seo/s1-ranking-regression.md` — sibling check for ranking changes
- `corpus/website-audit/dimensions/seo/s5-metadata-completeness.md` — overlapping check for missing OG/canonical/Twitter card
- `corpus/website-audit/methodology/severity-scoring.md` — how P1 threshold works

## Anti-patterns
- Optimizing CTR by misrepresenting the page. A clickbait title earns the click but tanks engagement metrics, which Google watches. Honesty wins long-term.
- Ignoring high-impression queries that are off-topic. A page ranking for a query it doesn't actually answer will never earn high CTR — fix the page, or change the canonical.
