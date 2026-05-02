---
name: Competitor Benchmarking Read Protocol
domain: website-audit
source_skill: website-audit
entry_type: pattern
length_target: 400-700
related: [corpus/website-audit/competitor-benchmarking/what-gets-benchmarked.md, corpus/website-audit/databases/competitors-schema.md, corpus/website-audit/methodology/report-assembly.md, corpus/website-audit/dimensions/categories/brand.md]
---

# Competitor Benchmarking Read Protocol

## What it is
The 6-step protocol the audit runs to benchmark competitors during each Sunday run. Reads the Competitors DB, groups rows by Tier, runs the full benchmark on Direct + Aspirational tiers, runs a lightweight check on Adjacent tier, writes results back, and surfaces deltas in the audit report. Sequenced after dimension scoring and before final report assembly.

| Step | Action | Output |
|---|---|---|
| 1 | Read all rows in the Competitors DB | List grouped by Tier |
| 2 | Group by Tier | Direct, Aspirational, Adjacent buckets |
| 3 | Full benchmark on Direct + Aspirational | Per-row metrics per `what-gets-benchmarked.md` |
| 4 | Lightweight check on Adjacent | URL alive + content shipped this week |
| 5 | Write back to each row | Lighthouse, schema, cadence, AI presence, Last Audited |
| 6 | Surface deltas in the report | Competitive Movements section |

## Why it matters
A read protocol that doesn't write back creates dead data. After 4 weeks the DB is stale and the comparisons no longer mean anything. The write-back step is what makes the DB a time series; without it, every audit is comparing against a frozen snapshot from whenever the row was last manually edited.

The Tier-driven split is what keeps the benchmarking step under its time budget. Full benchmarks on 14 competitors every week would take 30+ minutes; the Direct + Aspirational split (typically 8–10 rows) plus lightweight Adjacent (typically 3–5 rows) brings it under 12 minutes.

The deltas matter more than the absolute numbers. A Lighthouse 88 on Aakash's site is not interesting on its own; an 88 down from 95 last week is. The Competitive Movements section in the report only surfaces changes, never restates the full benchmark.

## How to apply

**Sequencing:** Competitor benchmarking runs after dimension scoring (Step 3 of the audit) but before final report assembly (Step 5). It informs the report but does not gate it. If benchmarking fails partway, the audit still ships with the dimensions complete and a note in Competitive Movements: "benchmarking partial; 3 of 9 rows refreshed."

**Tool selection:**

- Use Tavily for site fetches (faster than Chrome automation for static content). `tavily_extract` for the home page; `tavily_crawl` only when a competitor's home page is a SPA with rendered content.
- Use Lighthouse via CLI or web.dev API for the Performance score; do not eyeball it.
- Use `web_search` queries like `site:perplexity.ai "{competitor name}"` and `"{competitor name}" "according to"` to estimate AI Presence Score (0–10).

**Full benchmark per Direct + Aspirational row:** capture all five categories from `what-gets-benchmarked.md` (Performance, Content ecosystem, SEO/AIO foundations, Distinctiveness, AI presence). One row of data per competitor per audit.

**Lightweight Adjacent check:** URL alive (HEAD request); ICP-relevant content shipped in last 7 days (yes/no, based on the latest blog/newsletter date). Update Last Audited only.

**Write-back rule:** every Direct + Aspirational row has Lighthouse, Has Newsletter, Has Now Page, Content Update Frequency, Schema Markup Score, AI Presence Score, Latest Publish Date, Last Audited refreshed. Adjacent rows update Last Audited only.

**Delta surfacing:** before writing back, diff the new values against the row's prior values. Any change above the threshold (Lighthouse ±5, Schema ±2, cadence change, AI presence ±2) is logged in the run's Competitive Movements section.

## Examples
1. **Routine cycle.** 5 Direct rows, 4 Aspirational rows, 4 Adjacent rows. Direct + Aspirational benchmarks complete in 9 min; Adjacent lightweight checks in 2 min. Two deltas: Aakash Lighthouse +4, Lenny newsletter cadence Daily → Weekly. Both surface in Competitive Movements.
2. **Fetch failure on one row.** Tavily extract fails on one Direct row (Cloudflare block). Audit retries with `web_fetch`; also fails. Logs `fetch_failed = true` for that row, skips the benchmark, leaves the row's properties unchanged, surfaces the failure in the report.
3. **Tier change mid-cycle.** Riché manually re-tiered a row from Adjacent → Direct between audits. The audit picks up the new Tier and runs the full benchmark instead of the lightweight check. The Last Audited gap (4 weeks) is captured as context; no penalty.

## Related entries
- `corpus/website-audit/competitor-benchmarking/what-gets-benchmarked.md`. The five categories captured in the full benchmark
- `corpus/website-audit/databases/competitors-schema.md`. The DB structure this protocol reads and writes
- `corpus/website-audit/methodology/report-assembly.md`. How Competitive Movements is composed into the report
- `corpus/website-audit/dimensions/categories/brand.md`. How competitor positioning informs B-dimension scoring

## Anti-patterns
- Benchmarking every competitor every week. Tier discipline matters. The 14-row ceiling exists for a reason.
- Re-fetching when Tavily already cached the page within the same run. Idempotency saves time.
- Writing back without diffing. The deltas are the value; absolute numbers without context produce noise.
