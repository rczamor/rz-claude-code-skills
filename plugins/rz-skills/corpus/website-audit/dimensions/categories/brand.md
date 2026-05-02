---
name: Brand & Voice Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/voice/, corpus/website-audit/dimensions/aio/a6-entity-consistency.md]
---

# Brand & Voice Category

## What it is
Five Brand & Voice checks (B1–B5) that defend Riché's voice and positioning across the site. Together they detect: AI tells in newly-published content, content domain balance drift, cross-platform inconsistency, forbidden terminology, and currency drift between site and other channels.

**The five checks:**

- **B1 AI tells in published /thinking.** Any article published in the past 7 days containing AI-writing tells (em dashes as connectors, "First/Second/Third" enumeration, "navigate" used metaphorically, "leverage" without object, "In today's [X] landscape", "Moreover/Furthermore/Additionally", filler transitions, performative rhetorical questions, symmetrical triples, empty superlatives, "I'm thrilled to announce", "Key Takeaway" summary blocks, or multi-phrase paragraph bolding). Severity: P0 if 3+ violations in one article; P1 if 1–2 violations.
- **B2 Domain balance drift.** Trailing 30-day content split on Context Layer / PM / Leadership outside ±10% of 50/30/20. Severity: P1.
- **B3 Cross-platform inconsistency.** richezamor.com bio, LinkedIn headline, or X bio diverge on title, current company, or top-line proof point. Severity: P1.
- **B4 Forbidden terminology.** "Context Layer Engine" appears anywhere on the site (deprecated; should be "context management system" for the personal project). Or "Context Layer" used in a way that conflates with the personal project (the layer is the architectural concept, the system manages context). Severity: P1.
- **B5 Currency.** Current role, employer, or top-line metric on the site doesn't match what's on LinkedIn this week. Severity: P1.

**Sources:** Regex pass + LLM-as-judge for B1; Content Topics database query for B2; multi-platform scrape + LLM-as-judge for B3 and B5; full-text site scan for B4.

## Why it matters
Brand and voice are where AIO, design, and SEO all collapse if neglected. Every check in this category exists because Riché's positioning is the product — drift in any direction (voice that sounds like AI, content that loses domain balance, terminology that conflates concepts) erodes the differentiation that the rest of the system is doing work to establish.

B1 is especially important because Riché publishes content that frequently passes through AI assistance during drafting. The fatal-fifteen list (per `corpus/voice/`) catalogs the specific tells that signal "this was generated, not written." When 3+ tells appear in a single article, the article reads as machine output regardless of substance. Catching this before publish-week ends gives time to edit.

B4 (forbidden terminology) is a precise check protecting the conceptual distinction Riché has spent significant effort establishing: "Context Layer" is the architectural concept; "context management system" is his personal project. Conflating them undermines the thesis.

## How to apply
- B1: regex pass on every /thinking article published in the past 7 days, looking for the fatal-fifteen patterns. Then LLM-as-judge pass for the patterns that don't reduce to regex (e.g., performative rhetorical questions, empty superlatives in context). Output is a per-article violation count and surfaced lines.
- B2: query the Content Topics database for posts published in trailing 30 days. Count words and posts by Context Layer / PM / Leadership tags. Compare to 50/30/20 target with ±10% tolerance.
- B3: scrape /about bio from richezamor.com, fetch LinkedIn profile, fetch X bio, GitHub bio. LLM-as-judge for inconsistency in title, company, top-line metric.
- B4: full-text site scan for the forbidden terms. Fast; just grep.
- B5: cross-platform scrape (similar to B3) checking against current LinkedIn snapshot.
- Fix patterns:
  - **B1:** edit the article inline, surfacing the specific lines. Pair with the corresponding `corpus/voice/` entries for context.
  - **B2:** adjust next week's content queue to rebalance toward the under-represented domain.
  - **B3 / B5:** update richezamor.com to match the canonical version (richezamor.com is canonical; LinkedIn syncs from it, not vice versa).
  - **B4:** find and replace; verify substitution doesn't break a legitimate Context Layer reference.

## Examples
1. **B1 fires with P0.** A Wednesday deep dive published Tuesday contains 4 violations: an em dash in paragraph 2, "Moreover" in paragraph 4, "navigate the complexities of" in paragraph 6, and a "Key Takeaway" summary block at the end. Fix: surface all 4 lines; rewrite. The article is still substantively strong; the voice fix is mechanical.
2. **B2 fires with P1.** Trailing 30 days: 70% Context Layer, 20% PM, 10% Leadership. Context Layer is over by 20 points. Fix: queue 2 PM-domain posts next week to rebalance.
3. **B4 fires with P1.** A /thinking article footer references "the Context Layer Engine demo." Should be "context management system demo." Fix: find-and-replace across the site.
4. **B5 fires with P1.** /about says "VP of Product at Suzy"; LinkedIn now says "VP, Product & Strategy at Suzy" (recent title expansion). Fix: update /about and the centralized identity.ts file.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how the brand scans run
- `corpus/voice/fatal-fifteen-01-in-todays-openers.md` — and the rest of the fatal-fifteen series
- `corpus/voice/anti-pattern-em-dashes.md` — and other voice anti-patterns
- `corpus/voice/three-domain-balance-overview.md` — the 50/30/20 frame
- `corpus/website-audit/dimensions/aio/a6-entity-consistency.md` — overlapping check on entity attributes

## Anti-patterns
- Treating B1 violations as stylistic preferences. Every fatal-fifteen entry exists because the pattern is a strong AI tell; "I like em dashes" doesn't override the audit's purpose.
- Letting B2 drift accumulate over months. The ±10% tolerance is generous; sustained imbalance becomes a positioning shift.
