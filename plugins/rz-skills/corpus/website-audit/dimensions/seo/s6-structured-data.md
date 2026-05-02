---
name: S6 — Structured Data Presence
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md, corpus/website-audit/dimensions/seo/s5-metadata-completeness.md, corpus/website-audit/dimensions/aio/a6-entity-consistency.md]
---

# S6 — Structured Data Presence

## What it is
JSON-LD structured data tells search engines and AI systems exactly what a page is about and who or what is on it. Missing or incomplete schema means search engines have to infer everything from the prose — and so do LLMs when deciding whether to cite the page. The audit checks for the required schema types per page type.

**Trigger:** missing JSON-LD on any of these required pages and types:
- `Person` schema on /about
- `Article` schema on every /thinking page
- `Organization` schema on home
- `FAQPage` schema on /thesis
- `HowTo` schema on the five-step pipeline page

**Severity:** P1.

**Source:** Code execution that parses all `<script type="application/ld+json">` blocks per page.

## Why it matters
Structured data is the difference between Google guessing what your page is about and Google knowing. For SEO, schema enables rich results — an article snippet with author photo and publish date gets more clicks than a plain blue link. For AIO, schema is even more important: LLMs preferentially extract content from pages with explicit structured data because the parsing is unambiguous. A page with FAQ schema gets cited 2-3x more often for question-style queries than the same content without schema.

For Riché's positioning, schema is also an entity-association signal. `Person` schema on /about with a `worksFor` reference to Suzy and a `sameAs` array of LinkedIn/X/GitHub URLs builds the entity graph that LLMs use to decide who to cite when someone asks "who writes about context layers?"

## How to apply
- Code execution: fetch each required page, parse all `<script type="application/ld+json">` blocks, validate against the required schema type for that page.
- Validation criteria per type:
  - **Person (/about):** `@type: Person`, `name`, `jobTitle`, `worksFor`, `sameAs` array, `image`, `url`
  - **Article (/thinking):** `@type: Article`, `headline`, `author` (referencing the Person schema), `datePublished`, `dateModified`, `image`, `description`
  - **Organization (home):** `@type: Organization` or `WebSite`, `name`, `url`, `logo`
  - **FAQPage (/thesis):** `@type: FAQPage` with `mainEntity` array of `Question`/`Answer` pairs covering the canonical thesis questions
  - **HowTo (five-step page):** `@type: HowTo`, `name`, `step` array with each step's `name` and `text`
- For each missing schema, file a Linear task with the exact JSON-LD block to add. Don't make Riché generate it from scratch — provide the block ready to paste.
- After fix, validate via Google's Rich Results Test and Schema.org validator.

## Examples
1. **Missing Article schema on /thinking pages.** Code scan finds zero of 14 /thinking articles have Article JSON-LD. Fix: update the /thinking dynamic route to inject Article schema with author referencing /about's Person schema. Each article now eligible for rich results.
2. **Missing FAQ schema on /thesis.** /thesis page has 8 question-form H2s but no FAQPage schema. Fix: add FAQPage JSON-LD with the 8 H2s as `mainEntity`. Within 30 days, /thesis appears in Google's "People also ask" surface for context-layer queries.
3. **Person schema with weak sameAs.** /about has Person schema but `sameAs` only includes LinkedIn. Fix: add X, GitHub, and the canonical Suzy team page. The cross-platform entity graph strengthens.

## Related entries
- `corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md` — AIO-specific schema patterns and pickup
- `corpus/website-audit/dimensions/seo/s5-metadata-completeness.md` — sibling check for OG/canonical/Twitter
- `corpus/website-audit/dimensions/aio/a6-entity-consistency.md` — entity references depend on schema correctness
- `corpus/website-audit/dimensions/aio/a1-citation-absence.md` — schema-rich pages get cited more

## Anti-patterns
- Copy-pasting schema from a generator without validating field accuracy. Schema with wrong values is worse than no schema — search engines learn to distrust the page.
- Adding schema for every type the page could plausibly support. Stick to the minimum required for the page's actual purpose. Schema spam can trigger manual penalties.
