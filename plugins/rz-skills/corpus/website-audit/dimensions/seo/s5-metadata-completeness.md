---
name: S5 — Metadata Completeness
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s2-low-ctr.md, corpus/website-audit/dimensions/seo/s6-structured-data.md, corpus/website-audit/dimensions/categories/design.md]
---

# S5 — Metadata Completeness

## What it is
Every public page should ship with complete metadata: page title (under 60 characters), meta description (under 160 characters), canonical URL, OG image, OG title, OG description, and Twitter card tags. Missing or malformed metadata hurts SEO ranking, social sharing, and AI-platform parsing.

**Trigger:** any page missing one or more of: OG image, OG title, OG description, canonical, Twitter card. Or: title ≥60 chars, description ≥160 chars.

**Severity:**
- P1 for marketing pages (home, /thesis, /work, /about, /contact)
- P2 for /thinking articles

**Source:** Code execution scan of all rendered pages.

## Why it matters
Metadata is the page's compressed representation everywhere it's referenced — search results, social shares, AI summaries, link previews. A missing OG image means the page shows up in LinkedIn shares as a blank rectangle. A missing canonical means duplicate-content risk. A title over 60 characters gets truncated mid-sentence in Google results. A meta description over 160 gets cut off similarly.

These aren't aesthetic issues. The metadata is the marketing surface. A LinkedIn share without an OG image gets ~40% fewer click-throughs. A truncated title in search results reads as low-effort. Missing Twitter card tags mean tweets show plain URLs instead of rich previews.

For richezamor.com, the metadata standards are also an AI-citation signal. LLMs preferentially cite pages with explicit canonical URLs, structured social previews, and self-describing titles — the same hygiene that rewards SEO rewards AIO.

## How to apply
- Run a code-execution scan against every page in the sitemap. For each page, parse the rendered HTML and check:
  - `<title>` exists and is under 60 chars
  - `<meta name="description">` exists and is under 160 chars
  - `<link rel="canonical">` exists and points to the page's public URL
  - OG tags: `og:title`, `og:description`, `og:image`, `og:url`, `og:type`
  - Twitter tags: `twitter:card`, `twitter:title`, `twitter:description`, `twitter:image`
- Group findings by page, not by missing tag. A page missing four metadata tags is one Linear task, not four.
- Fix patterns: update Next.js `generateMetadata` exports for the affected route. For /thinking articles, ensure canonical is set to `https://richezamor.com/thinking/{slug}`.
- Verify after fix: re-run the scan, plus manual share preview check (LinkedIn Post Inspector, X Card Validator).

## Examples
1. **/thinking article missing OG image.** Article has been live for 2 weeks; LinkedIn shares display a blank preview. Fix: add `og:image` pointing to the article's social card asset (1200x630). Re-share gets 3x click-through vs. the original.
2. **Title over 60 chars on /thesis.** Title is "The Context Layer Thesis: Why Architecture Beats Models in the AI Stack." Google truncates after "...Architecture B" in results. Fix: shorten to "Context Layers: Why Architecture Beats Models" (44 chars).
3. **Multiple /thinking articles missing canonicals.** Code scan finds 8 articles without canonical tags — all from a content sync that didn't include canonical generation. Fix: update the route's metadata export to include canonical for all dynamically-generated /thinking pages.

## Related entries
- `corpus/website-audit/dimensions/seo/s2-low-ctr.md` — title/description directly affect CTR
- `corpus/website-audit/dimensions/seo/s6-structured-data.md` — schema markup is a related metadata layer
- `corpus/website-audit/dimensions/categories/design.md` — OG image quality is also a design check
- `corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md` — AIO-specific metadata patterns

## Anti-patterns
- Setting all OG images to a single fallback. The fallback is acceptable on /thinking articles as a default, but custom per-page OG images outperform fallbacks consistently. Treat custom OG as the goal, not the bonus.
- Stuffing the meta description with keywords. Google rewrites stuffed descriptions on the fly, often with worse results than what you wrote.
