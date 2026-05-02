---
name: What Gets Benchmarked Per Competitor
domain: website-audit
source_skill: website-audit
entry_type: framework
length_target: 400-700
related: [corpus/website-audit/competitor-benchmarking/read-protocol.md, corpus/website-audit/databases/competitors-schema.md, corpus/website-audit/dimensions/categories/brand.md, corpus/website-audit/dimensions/categories/technical-qa.md]
---

# What Gets Benchmarked Per Competitor

## What it is
The five categories captured per competitor row for Direct and Aspirational tier benchmarks. One row of data per competitor per audit. The categories force evidence over vibes. Adjacent tier skips this entirely and gets a lightweight URL-alive check only.

| Category | What is captured | Source |
|---|---|---|
| 1. Performance | Lighthouse score, Core Web Vitals (LCP, INP, CLS), TTFB | Lighthouse CLI / web.dev |
| 2. Content ecosystem | Newsletter (yes/no, platform, cadence), now page, content cadence, latest publish date | Site fetch + visual inspection |
| 3. SEO/AIO foundations | Schema markup density (0–10), title/meta completeness, structured data types present | View-source on home + 1 article |
| 4. Distinctiveness | One-sentence thesis on home (yes/no), positioning crispness rating | Home page narrative inspection |
| 5. AI presence | AI Overviews / Perplexity / ChatGPT citations for competitor's name + a domain term, llms.txt or AI-friendly meta | `web_search` + view-source |

## Why it matters
Benchmarking without categories produces vibes-based observations: "their site feels nicer" or "they post a lot." Vibes don't compose into a time series and don't survive a comparison across 9 competitors. The five categories convert each competitor into a structured row that the audit can diff week to week.

The categories were chosen for what they can move on. Performance is moveable in a week (cache headers, image optimization). Content ecosystem moves on a quarterly cadence (launch a newsletter). Distinctiveness is the hardest to move and the most diagnostic; a generic home page is a tell about how the competitor positions themselves, regardless of their other metrics.

Five fits in working memory. Six does not. Adding a sixth category requires removing one. The temptation to add "social media presence" or "podcast appearances" is real but each addition halves the depth of the existing categories during the time-budgeted weekly review.

## How to apply

**Per-row benchmark, executed sequentially:**

1. **Performance.** Run Lighthouse against the home page. Capture the overall score (0–100), LCP (seconds), INP (ms), CLS (decimal), TTFB (ms). Use mobile profile.
2. **Content ecosystem.** Visit the home page. Look for newsletter signup (yes/no, capture platform from form action or URL). Check `/now` for a now page. Check the most recent blog/article date for content cadence (Daily / Weekly / Monthly / Quarterly / Dormant).
3. **SEO/AIO foundations.** View-source on the home page and one recent article. Count distinct JSON-LD `@type` values present (Article, Person, Organization, FAQPage, etc.). Score 0–10: 1 point per valid distinct type, capped at 10. Title length, meta description length, OG image presence checked.
4. **Distinctiveness.** Read the home page hero. Is there a one-sentence thesis above the fold? Is the positioning crisp (specific niche, audience, or claim) or generic (e.g., "thoughts on product and growth")? Note the verbatim hero copy in `Notes` for the row.
5. **AI presence.** Run `web_search` with two queries: the competitor's name plus a primary domain term, and the competitor's name plus "according to" (a citation phrasing). Score 0–10 based on appearance in AI Overviews snippets, presence in Perplexity citations (manual check), and presence in ChatGPT answers (sample-based). Check for llms.txt at the root.

**Output:** one row of data per competitor written back to the DB. Deltas surfaced in the run's Competitive Movements section.

## Examples
1. **Aspirational tier full benchmark. Lenny.** Performance: Lighthouse 89 mobile, LCP 2.1s, INP 180ms, CLS 0.02. Content ecosystem: Substack newsletter, Daily cadence. SEO/AIO: 6 schema types (Article, Person, Organization, BreadcrumbList, WebPage, ItemList). Distinctiveness: hero thesis present ("The #1 product newsletter"). AI presence: 8/10 (heavy Perplexity and ChatGPT citation density).
2. **Direct tier full benchmark. Aakash Gupta.** Performance: Lighthouse 92 mobile (up 4 from last week). Content ecosystem: Substack, Weekly. SEO/AIO: 4 schema types. Distinctiveness: thesis present, slightly generic. AI presence: 6/10. Delta logged: Lighthouse +4.
3. **Adjacent tier lightweight check. Vertical PM blog.** URL responds 200. Latest post is 6 weeks old. Last Audited reset to today. No full benchmark; row's other properties unchanged. If the gap reaches 8 weeks, audit auto-flags Content Update Frequency = Dormant.

## Related entries
- `corpus/website-audit/competitor-benchmarking/read-protocol.md`. The 6-step run that uses these categories
- `corpus/website-audit/databases/competitors-schema.md`. The DB columns the categories map to
- `corpus/website-audit/dimensions/categories/brand.md`. Distinctiveness feeds B-dimension scoring (B1 brand drift)
- `corpus/website-audit/dimensions/categories/technical-qa.md`. Performance feeds Q-dimension comparisons

## Anti-patterns
- Adding a sixth category without removing one. Five fits in working memory; six dilutes the benchmark.
- Capturing absolute numbers without diffs. The deltas are the value; absolute numbers without context produce noise.
- Skipping the Distinctiveness check because it's qualitative. It is the most diagnostic category; the verbatim hero copy in Notes is the proof.
