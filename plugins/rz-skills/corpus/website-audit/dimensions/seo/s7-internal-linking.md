---
name: S7 — Internal Link Graph Health
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s4-indexability.md, corpus/website-audit/dimensions/seo/s3-quick-wins.md, corpus/website-audit/dimensions/seo/s8-backlink-loss.md]
---

# S7 — Internal Link Graph Health

## What it is
Each /thinking article should have at least 3 inbound internal links (from other pages on the site pointing to it) and 3 outbound internal links (links from the article to other pages). When an article has fewer than 3 of either, it's a weak node in the internal link graph — Google sees it as low-importance, and visitors can't easily navigate to or from it.

**Trigger:** /thinking article has <3 inbound or <3 outbound internal links.

**Severity:**
- P2 individually (one weak article)
- Aggregates to P1 if more than 5 articles are affected (signals systematic issue)

**Source:** Code execution that crawls richezamor.com and counts links per page.

## Why it matters
Internal links do three jobs: distribute PageRank-equivalent authority across the site, signal topical relationships to search engines, and give visitors navigation paths between related content. A /thinking article with no inbound links is an orphan in disguise — technically indexable but practically invisible. A /thinking article with no outbound links is a dead-end — visitors finish reading and leave the site instead of going deeper.

The "3 in / 3 out" threshold isn't arbitrary. It's the minimum density at which Google reads a page as part of a topical cluster rather than a one-off. For a site Riché's size (~30 /thinking articles + supporting marketing pages), maintaining this density is what makes the cluster strategy work.

When more than 5 articles fail this check simultaneously, the cause is usually structural: the "Related thinking" component isn't rendering, the topic-tag-based linking isn't connecting articles to each other, or articles are being published without internal-link backfill as part of the workflow.

## How to apply
- Code execution: crawl every URL in the sitemap. For each, parse the rendered HTML and count `<a href="..." >` links pointing to other internal URLs. Build adjacency lists for inbound and outbound.
- Filter to /thinking articles. Flag any with `inbound < 3` or `outbound < 3`.
- For individual weak nodes (P2): file a single Linear task to add the missing links. Suggest specific source articles based on topic-tag overlap.
- For systematic failures (P1, 5+ affected): investigate the root cause. Usually one of:
  - "Related thinking" component is broken or not rendering
  - Topic-tag-based auto-linking has stopped matching
  - Publishing workflow doesn't include the "add 3 inbound links" step
- Fix patterns: implement or repair the "Related thinking" footer component on /thinking articles, auto-populated by topic tag overlap. Long-term, this is the systematic fix that prevents the issue from recurring.

## Examples
1. **Single orphan-ish article.** A /thinking article on context evaluation has 1 inbound link and 5 outbound. Fix: add 2 inbound links from /thesis and a related deep dive.
2. **Cluster of 7 affected articles.** All articles published in the last 60 days have weak inbound link counts. Investigation reveals the "Related thinking" component was simplified during a refactor and stopped including articles outside the most recent 5. Fix: restore the topic-tag-based selection logic.
3. **Outbound link drought.** A /thinking article has 4 inbound links but 0 outbound. The article is a strong node but visitors can't navigate further. Fix: add 3 contextual outbound links to other /thinking articles where the same concepts appear.

## Related entries
- `corpus/website-audit/dimensions/seo/s4-indexability.md` — orphan detection (zero inbound) overlaps with this check
- `corpus/website-audit/dimensions/seo/s3-quick-wins.md` — internal links from authority pages move quick-win queries
- `corpus/website-audit/dimensions/seo/s8-backlink-loss.md` — internal links partially compensate for external link loss
- `corpus/website-audit/methodology/severity-scoring.md` — P2-aggregating-to-P1 logic

## Anti-patterns
- Adding internal links that don't make sense in context. A forced link reads as keyword stuffing; Google's algorithm catches the pattern.
- Treating the "Related thinking" footer as the only internal-link surface. Inline contextual links (in the prose itself) are stronger SEO signals than footer links because they're surrounded by relevant context.
