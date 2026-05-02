---
name: Bootstrap Step
domain: website-audit
source_skill: website-audit
entry_type: pattern
length_target: 300-800
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/website-audit/methodology/severity-scoring.md]
---

# Bootstrap Step

## What it is
The first step of every audit run. Gathers the prior context the rest of the audit needs: previous audit page (for WoW comparisons), recent Daily Briefings (for AIO query refresh), quarterly re-baseline flag, and run-level metadata. No data collection happens before bootstrap completes.

## Why it matters
Every other audit step assumes the previous run's data is loaded. WoW deltas need it. AIO query refresh needs the most recent briefings. The quarterly re-baseline flag determines whether the competitive landscape section runs at all. Skipping bootstrap and jumping to data collection means deltas can't be computed and the AIO query set falls back to the static starter bank — both degraded.

The bootstrap also handles the "first run" case explicitly. When there's no previous audit page in Notion, `first_run = true` is set and all delta-computation steps know to skip rather than error.

## How to apply
1. Fetch all five reference files via the file system (corpus/website-audit/dimensions/, methodology/, keyword-research/, databases/, competitor-benchmarking/).
2. Fetch the most recent page in the Weekly Website Audits Notion database (sort by Date descending, limit 1). If none exists, set `first_run = true` and skip all delta computations later.
3. Fetch the last 7 Daily Briefings from the Daily Briefings database. Extract the priority topics from each briefing's `Top Signal` and `Latest AI Research` sections — these feed the AIO query refresh.
4. Determine `is_quarterly_rebaseline = today is the first Sunday of January, April, July, or October`. If true, the audit will include the comparative competitive analysis section.
5. Capture run-level metadata: `run_date = today`, `run_id = ISO timestamp`, `previous_run_date = last audit page date`.

Bootstrap output is loaded into the run context for all subsequent steps. No data collection runs until bootstrap completes.

## Examples
1. **Standard weekly run.** Bootstrap fetches last week's audit (`previous_run_date = 2026-04-26`), pulls 7 Daily Briefings, sets `is_quarterly_rebaseline = false`, captures `run_date = 2026-05-03`. Step 2 begins with full context.
2. **First run.** No previous audit exists; `first_run = true` is set. Bootstrap continues but flags every subsequent step that depends on WoW deltas.
3. **Quarterly run.** Today is the first Sunday of April. `is_quarterly_rebaseline = true`. Step 2j (competitor re-baseline) will run; the audit will take ~60 minutes instead of the usual ~30.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — Step 2, runs after bootstrap
- `corpus/website-audit/methodology/severity-scoring.md` — Step 3, depends on data from Step 2
- `corpus/website-audit/competitor-benchmarking/read-protocol.md` — quarterly re-baseline scope

## Anti-patterns
- Caching the previous audit data across runs. Always fetch fresh — the previous audit may have been edited.
- Skipping bootstrap when "we know it's the first run." The flag-setting matters; downstream steps depend on `first_run` being explicitly set.
