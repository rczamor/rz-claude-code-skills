---
name: S4 — Indexability Issues
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s7-internal-linking.md, corpus/website-audit/dimensions/seo/s5-metadata-completeness.md, corpus/website-audit/dimensions/categories/technical-qa.md]
---

# S4 — Indexability Issues

## What it is
A page that should be in Google's index is not — either flagged in GSC as "Discovered – currently not indexed" or "Crawled – currently not indexed", or it's an orphan page (zero internal inbound links, so Google has no path to discover it). This is the most damaging SEO finding because the page can't rank if Google doesn't have it.

**Trigger:**
- Page flagged in GSC as not indexed
- /thinking article with zero internal inbound links (orphan)

**Severity:**
- P0 if a /thinking article is not indexed (this is the canonical content)
- P1 if a marketing page is not indexed
- P1 for orphans (any page with zero inbound internal links)

**Source:** `Ahrefs:site-audit-issues` + internal link graph scan via code execution.

## Why it matters
SEO begins with indexability. Every other check (rankings, CTR, schema, internal links) presumes the page exists in Google's index. When a page is non-indexed, all downstream optimization is wasted — it could be the best article ever written, but Google can't surface it because Google doesn't know it exists.

Orphan pages are a related but distinct failure: Google can technically find them via sitemap, but pages without internal links from the rest of the site signal "low importance" to the algorithm. Orphans tend to fall out of the index over time even when they were initially crawled.

For richezamor.com specifically, every /thinking article should be indexed within 7 days of publish. If it isn't, something is wrong upstream — sitemap issues, robots.txt issues, canonical tag pointing elsewhere, or the article is being treated as duplicate of another page.

## How to apply
- Pull `Ahrefs:site-audit-issues` for the indexability category. Capture every URL flagged as "Discovered – not indexed" or "Crawled – not indexed."
- Cross-reference with the production sitemap. Pages in the sitemap but not in the index get P0 (or P1 per severity rule).
- For orphan detection: code execution that crawls richezamor.com starting from the homepage, builds a link graph, and identifies pages with zero inbound internal links.
- Fix patterns:
  - **Not indexed:** submit the URL to GSC for re-indexing. Investigate why: canonical pointing elsewhere, noindex meta tag, robots.txt block, soft 404 (page renders but content is too thin or duplicated).
  - **Orphan:** add internal links from the homepage, /thesis, or related /thinking articles. The "Related thinking" footer auto-populated by topic tags is the systematic fix.
- For systematic orphan prevention: every new /thinking article publication should add it to at least 3 inbound internal link locations as part of the publish workflow.

## Examples
1. **Newly-published /thinking article not indexed after 10 days.** Investigation reveals the canonical tag was generated incorrectly — pointing to a draft URL instead of the public URL. Fix the canonical, resubmit, indexed within 48 hours.
2. **Six /thinking articles flagged as orphans.** All published before the "Related thinking" footer was implemented. Fix: add the footer component and backfill internal links from /thesis to each of the six.
3. **Marketing page non-indexed.** /now page has been live for 3 weeks but isn't in the index. Investigation reveals robots.txt accidentally disallowed `/now*`. Fix: update robots.txt, resubmit.

## Related entries
- `corpus/website-audit/dimensions/seo/s7-internal-linking.md` — broader internal link health
- `corpus/website-audit/dimensions/seo/s5-metadata-completeness.md` — canonical tags overlap with this
- `corpus/website-audit/dimensions/categories/technical-qa.md` — technical issues that cause indexability failures
- `corpus/website-audit/methodology/severity-scoring.md` — P0 threshold logic

## Anti-patterns
- Assuming "submitted to GSC" means "indexed." Submission is a request, not a guarantee. Verify in the index status check.
- Adding internal links blindly to fix orphans without checking if the page deserves to be indexed at all. Some legacy pages should be deleted, not rescued.
