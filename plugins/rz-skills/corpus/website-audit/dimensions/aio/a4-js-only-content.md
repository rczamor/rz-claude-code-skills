---
name: A4 — JS-Only Content
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/aio/a3-crawler-accessibility.md, corpus/website-audit/dimensions/categories/technical-qa.md, corpus/website-audit/methodology/severity-scoring.md]
---

# A4 — JS-Only Content

## What it is
Critical content (the thesis on /thesis, work case studies on /work, /thinking article bodies) must be present in the initial HTML response, not added to the DOM only after JavaScript hydration. Most AI crawlers don't execute JavaScript or do so unreliably. Content that only appears post-hydration is invisible to those crawlers — and therefore invisible to LLMs.

**Trigger:** critical content not present in initial HTML, only after JS hydration.

**Severity:** P0.

**Source:** Code execution that fetches raw HTML (no JS) and compares to the rendered DOM.

## Why it matters
This is the AIO equivalent of having the page exist but be locked behind a paywall — the crawler arrives, sees an empty shell, leaves with nothing useful. The site can have perfect schema, beautiful content, and ideal robots.txt configuration, and still get zero AI citations because the crawler couldn't see the actual content.

GPTBot and PerplexityBot don't execute JavaScript at all (as of current public documentation). ClaudeBot and Google-Extended have partial JS execution but with strict timeouts and no guarantee of success. The safe assumption is that any AI crawler treats your site as a static HTML responder.

For richezamor.com built on Next.js 15, server-side rendering (SSR) or static site generation (SSG) is the default. The risk is when components use `'use client'` for interactivity, and those client components contain content that isn't rendered server-side. A common pattern: a "loading skeleton" shows server-side, the actual content fetches client-side.

## How to apply
- Code execution: for each critical page (home, /thesis, /work, /about, /contact, top 5 /thinking articles by traffic):
  - Fetch raw HTML with `curl` or equivalent (no JS execution)
  - Parse with a lightweight HTML parser
  - Extract visible text content
  - Compare to the post-hydration text content (rendered via headless Chrome)
  - Flag any page where the post-hydration text differs significantly from the pre-hydration text in the critical content area
- For each flagged page, identify which component is rendering client-only.
- Fix patterns:
  - **Convert client components to server components** where possible
  - **Use Next.js streaming** (Suspense boundaries) so content streams progressively
  - **Pre-render content as a fallback** when interactivity requires `'use client'`. The interactive parts can hydrate; the content shouldn't depend on hydration to appear.

## Examples
1. **/thesis hero section JS-only.** The hero copy is fetched from a CMS via a client-side hook. Raw HTML shows only "Loading..." Fix: refactor to server component, fetch CMS data at build time or with server-side fetch in a server component. Critical content appears in initial HTML.
2. **/thinking article body JS-only.** Article body is rendered via a `'use client'` MDX component for interactivity. Raw HTML shows only the title. Fix: separate the static content (article body) from the interactive elements (collapsible sections, copy buttons). The body renders server-side; only the interactive controls hydrate.
3. **Caught false positive.** A page differs slightly between pre- and post-hydration because the rendered version includes the user's theme preference (dark/light). Not a content issue. Adjust the check to ignore presentation-layer differences.

## Related entries
- `corpus/website-audit/dimensions/aio/a3-crawler-accessibility.md` — sibling foundational AIO check
- `corpus/website-audit/dimensions/categories/technical-qa.md` — overlapping technical hygiene
- `corpus/website-audit/methodology/severity-scoring.md` — P0 threshold logic

## Anti-patterns
- Assuming "Next.js handles this." Next.js can render server-side, but only if the component tree allows. A single misplaced `'use client'` can cascade into server-rendering failure.
- Testing rendering with Chrome DevTools and assuming what you see is what crawlers see. Crawlers see the raw HTML response, not the rendered DOM.
