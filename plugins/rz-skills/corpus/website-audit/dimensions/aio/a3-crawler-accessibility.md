---
name: A3 — AI Crawler Accessibility
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/aio/a4-js-only-content.md, corpus/website-audit/dimensions/categories/technical-qa.md, corpus/website-audit/methodology/severity-scoring.md]
---

# A3 — AI Crawler Accessibility

## What it is
The robots.txt file at richezamor.com/robots.txt must explicitly allow the major AI crawlers: GPTBot (OpenAI), ClaudeBot (Anthropic), PerplexityBot (Perplexity), and Google-Extended (Google's AI training crawler). When any of these is blocked, the corresponding LLM cannot index the site, and citations from that LLM become impossible.

**Trigger:** robots.txt blocks GPTBot, ClaudeBot, PerplexityBot, or Google-Extended.

**Severity:** P0.

**Source:** HTTP fetch of `https://richezamor.com/robots.txt`.

## Why it matters
This is the single highest-leverage AIO check because it's binary and foundational. Every other AIO optimization (schema, quotability, entity consistency) is wasted effort if the crawler can't access the site. The audit treats this as P0 not because fixes are urgent on a content-quality basis, but because a single misconfiguration silently zeros out the entire AIO surface.

The default behavior of many static-site frameworks and CMS platforms is to ship with a permissive robots.txt that allows all crawlers — but defaults change, deployments rewrite robots.txt, and a single wrong line can lock out months of work. Catching this in a weekly audit is cheap insurance.

Worth noting: Google-Extended is distinct from Googlebot. Allowing Googlebot does not automatically allow Google-Extended. Each AI crawler has its own user-agent string, and each must be explicitly allowed.

## How to apply
- HTTP HEAD or GET on `https://richezamor.com/robots.txt`.
- Parse the returned text. Verify each of the following crawlers has explicit `Allow: /` (or no `Disallow: /`):
  - `GPTBot`
  - `ClaudeBot`
  - `PerplexityBot`
  - `Google-Extended`
- If any crawler has `Disallow: /` or is implicitly disallowed (e.g., by a wildcard `User-agent: *` with `Disallow: /`), flag P0.
- Fix pattern: update robots.txt to include explicit allow entries for each AI crawler:

```
User-agent: GPTBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Google-Extended
Allow: /
```

- Verify after fix: re-fetch robots.txt, confirm changes are live.

## Examples
1. **Wildcard disallow during a deployment.** A Next.js config change accidentally generated a robots.txt with `User-agent: * \n Disallow: /`. Caught by the audit. Fix: update the Next.js robots.ts route to emit explicit allows. P0 with same-day fix target.
2. **Google-Extended missing while Googlebot allowed.** robots.txt allows Googlebot (the search crawler) but doesn't mention Google-Extended (the AI training crawler). Default behavior for Google-Extended is "no specific entry → permissive," but explicit is better. Fix: add explicit `User-agent: Google-Extended \n Allow: /`.
3. **Old robots.txt with no AI crawler entries at all.** robots.txt only mentions Googlebot and a generic wildcard. AI crawlers are not blocked but also not explicitly welcomed. Add explicit entries for the four AI crawlers. P0 because explicitness matters for AIO consistency.

## Related entries
- `corpus/website-audit/dimensions/aio/a4-js-only-content.md` — sibling check for crawler-rendering issues
- `corpus/website-audit/dimensions/categories/technical-qa.md` — broader technical hygiene
- `corpus/website-audit/methodology/severity-scoring.md` — P0 threshold logic

## Anti-patterns
- Blocking AI crawlers because of "data sovereignty" or "I don't want my content used for training" without realizing it also blocks AI citations. The two are bundled — block the crawler and you lose citation eligibility too.
- Setting up a permissive default ("User-agent: * \n Allow: /") and assuming it covers AI crawlers. Some AI crawlers respect specific user-agents only; explicit beats implicit.
