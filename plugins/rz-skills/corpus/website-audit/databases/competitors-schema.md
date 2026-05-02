---
name: Competitors Database Schema
domain: website-audit
source_skill: website-audit
entry_type: resource
length_target: 400-700
related: [corpus/website-audit/competitor-benchmarking/read-protocol.md, corpus/website-audit/competitor-benchmarking/what-gets-benchmarked.md, corpus/website-audit/dimensions/categories/brand.md]
---

# Competitors Database Schema

## What it is
The Notion database that holds every competitor the audit benchmarks against. Database ID `c99eaa6d2e7448f0859ce6feba22a3ac`, data source ID `596ee7d6-46d8-464a-adfc-489576de0052`. Seventeen properties, one row per competitor, with explicit Tier and Type classifications that drive how heavily each row is benchmarked.

| Property | Type | Notes |
|---|---|---|
| Name | title | Person or company |
| URL | url | Primary domain |
| Tier | select | Direct / Aspirational / Adjacent |
| Type | select | PM Thought Leader / AI Practitioner / Founder-Operator / Researcher |
| Lighthouse Score | number | 0-100, last benchmark |
| Has Newsletter | checkbox |  |
| Has Now Page | checkbox |  |
| Content Update Frequency | select | Daily / Weekly / Monthly / Quarterly / Dormant |
| Schema Markup Score | number | 0-10, audit-assigned |
| Last Audited | date | Reset on each benchmark |
| Twitter | url |  |
| LinkedIn | url |  |
| Newsletter Platform | select | Substack / Beehiiv / ConvertKit / Custom / None |
| Newsletter Cadence | select | Daily / Weekly / Biweekly / Monthly |
| Latest Publish Date | date | From last benchmark |
| AI Presence Score | number | 0-10; AI Overviews / Perplexity / ChatGPT |
| Notes | rich_text | Distinctiveness, positioning, qualitative observations |

## Why it matters
Without explicit tier definitions, competitor analysis becomes "look at random PM blogs," which produces no signal. Tiers force every comparison to be intentional. The audit benchmarks Direct and Aspirational tiers fully each week; Adjacent tier gets a lightweight check only. The cap on full benchmarks is what keeps the weekly review tractable.

The Type field separates apples from oranges. A PM Thought Leader (Lenny, Aakash) and an AI Practitioner (Simon Willison, Jerry Liu) belong on the same DB but get compared on different axes. Lighthouse score matters less for an AI Practitioner whose audience tolerates rough sites; it matters more for a PM Thought Leader whose audience evaluates polish.

## How to apply

**Tier definitions (strict):**

- **Direct**. Same audience and similar positioning. AI PM thought leaders building public brands at richezamor.com's stage. Roughly 4–6 entries.
- **Aspirational**. Where Riché wants to be in 18 months. Lenny, Shreyas, Aakash tier. Roughly 4–6 entries.
- **Adjacent**. Related domains worth watching but not directly competing. AI researchers, ops leaders, vertical PMs. Roughly 3–5 entries.

Total ceiling: 14 entries. Beyond that the weekly review breaks; archive Adjacent rows with low signal first.

**Audit read at start of competitor benchmarking step:** read all rows. Group by Tier. Direct + Aspirational get the full benchmark per `what-gets-benchmarked.md`. Adjacent gets a lightweight check (URL alive, ICP-relevant content shipped this week yes/no).

**Audit write back:**

- `Lighthouse Score`, `Has Newsletter`, `Has Now Page`, `Content Update Frequency`, `Schema Markup Score`, `Latest Publish Date`, `AI Presence Score`. Refreshed for Direct + Aspirational each week.
- `Last Audited`. Reset for every row touched, including the lightweight Adjacent checks.

The audit surfaces deltas from the previous benchmark in the run report under "Competitive Movements." A score drop or content cadence change is more interesting than the absolute number.

## Examples
1. **Direct tier benchmark.** Aakash Gupta's site refreshed: Lighthouse 92 (was 88), newsletter cadence Weekly (unchanged), schema score 8 (was 7), AI presence 6 (was 5). Audit logs the +4 Lighthouse and the schema improvement under Competitive Movements; updates the row.
2. **Adjacent lightweight check.** A vertical PM blog at Adjacent tier: URL alive, no new content in 4 weeks. Audit updates Last Audited only; flags Content Update Frequency = Dormant if the gap exceeds 8 weeks.
3. **Tier promotion.** A Researcher at Adjacent tier publishes a viral piece that rebrands them as a Founder-Operator launching a product. Riché manually re-tiers them to Direct. The audit picks up the new tier next run and starts running the full benchmark.

## Related entries
- `corpus/website-audit/competitor-benchmarking/read-protocol.md`. How the audit reads and writes this DB
- `corpus/website-audit/competitor-benchmarking/what-gets-benchmarked.md`. The five categories captured per row for full benchmarks
- `corpus/website-audit/dimensions/categories/brand.md`. How competitor positioning informs B-dimension scoring

## Anti-patterns
- Adding competitors faster than you can audit them. The 14-entry ceiling is a working-memory constraint, not a number to optimize. If a row hasn't been audited in 8 weeks, archive instead of keeping.
- Tier-promoting based on follower count. Tier is about audience overlap and positioning, not size. A 50K-follower account with no audience overlap stays Adjacent.
- Benchmarking on absolute scores instead of deltas. A Lighthouse 88 is not interesting on its own; an 88 down from 95 last month is.
