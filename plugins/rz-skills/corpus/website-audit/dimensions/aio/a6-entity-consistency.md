---
name: A6 — Entity Consistency
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s6-structured-data.md, corpus/website-audit/dimensions/categories/brand.md, corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md]
---

# A6 — Entity Consistency

## What it is
LLMs build entity graphs by cross-referencing mentions of the same entity across pages. When Riché's title, current company, or top-line proof-point metric is stated differently on different pages of the site, LLMs see two (or three) possibly-related entities instead of one definitive entity. The audit checks that core entity attributes are consistent everywhere they appear.

**Trigger:** Riché's title, current company, or top-line metric stated differently across pages.

**Severity:** P1.

**Source:** LLM-as-judge cross-page scan.

## Why it matters
Entity disambiguation is foundational to citation. When an LLM is asked "who writes about context layers?", it pattern-matches against entities in its index. If the entity graph for "Riché Zamor" has conflicting attributes ("VP of Product at Suzy" on one page, "VP Product, Suzy" on another, "Senior PM at Suzy" on a third), the LLM has lower confidence about which entity to cite.

Entity consistency also matters for the inverse query: "what does Riché Zamor do?" An LLM building an answer will pull from multiple pages on richezamor.com. If the pages disagree about basic facts, the LLM either picks one arbitrarily (50/50 odds of being right) or hedges with vague language ("appears to be a senior product leader at Suzy or similar"). Both outcomes are bad.

The fix is centralization: every page references a single source of truth for entity attributes, and that source is itself the canonical Person schema on /about. Bio variants for different audiences (speaker bio, byline, footer) all derive from the canonical bio rather than diverging.

## How to apply
- Cross-page scan: for /about, /thesis, every /thinking article author byline, /work, /contact, and the homepage hero, extract entity-relevant strings:
  - Riché's title (current job role)
  - Current company name and exact spelling
  - Top-line proof-point metric (e.g., "$3.25M pipeline", "350+ enterprise customers")
  - Bio sentence (the one-line "I am..." statement)
- LLM-as-judge: compare across pages, flag inconsistencies.
- Categorize each inconsistency:
  - **Title drift.** "VP Product" vs "VP of Product" vs "Senior PM."
  - **Company drift.** "Suzy" vs "Suzy Inc" vs "Suzy.io."
  - **Metric drift.** Different numbers for the same achievement, or different rounding.
  - **Bio sentence drift.** Different framings of the core thesis ("I write about context architecture" vs "I think about AI product strategy").
- Fix pattern: centralize entity attributes in a single content data file (e.g., `src/content/identity.ts`). Reference from all pages. Update once; everything syncs.

## Examples
1. **Title drift caught.** /about says "VP of Product at Suzy." Footer on /thesis says "VP, Product." Author byline on /thinking articles says "Senior Product Manager at Suzy" (stale from before the title change). Fix: centralize title in identity.ts, update all references.
2. **Metric drift caught.** /work case study says "$3.25M in pre-launch pipeline." /about says "$3M+ pipeline." Newsletter footer says "$3.25M ARR pipeline." Fix: standardize on "$3.25M pre-launch pipeline" everywhere; centralize in proof-points data file.
3. **Bio sentence drift caught.** /thesis hero: "I build context-aware AI products." /about: "I write about AI product strategy and context architecture." Author bio on /thinking: "Product leader thinking about how AI changes products." Fix: pick the canonical version (per `corpus/voice/`), centralize, sync all references.

## Related entries
- `corpus/website-audit/dimensions/seo/s6-structured-data.md` — Person schema is the canonical entity reference
- `corpus/website-audit/dimensions/categories/brand.md` — voice consistency overlaps with entity consistency
- `corpus/website-audit/dimensions/aio/a7-ai-friendly-schema.md` — schema enforces entity consistency programmatically
- `corpus/voice/proof-grandstage.md` — proof-point usage rules

## Anti-patterns
- Updating entity attributes manually on each page when something changes. The decentralized approach inevitably drifts. Centralize.
- Treating minor title variations ("VP of Product" vs "VP, Product") as unimportant. LLMs read these as different entities. Pick one and hold.
