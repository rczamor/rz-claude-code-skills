---
name: CRM Data Model
domain: networking
source_skill: networking
entry_type: template
length_target: 500-600
related: [corpus/networking/crm/weekly-review-cadence.md, corpus/networking/crm/tier-movement-rules.md, corpus/networking/crm/lightweight-tooling.md, corpus/networking/tiers/tier-1-inner-circle.md]
---

# CRM Data Model

## What it is
A lightweight five-field row structure for tracking key relationships across all four tiers. Designed to be fast to update (under 60 seconds per row), useful at a glance during the weekly review, and resistant to the bloat that kills most personal CRM systems. Each row covers one person; the model is intentionally minimal.

## Why it matters
A heavy CRM (15 fields, multiple relationship types, custom statuses) becomes admin work that Riché skips, which makes the CRM useless. A minimal CRM stays usable, gets updated, and produces actual decisions in the weekly review. The five fields below are the smallest set that supports tier assignment, follow-up scheduling, and value-given tracking.

## How to apply

Five fields per row:

1. **Name, company, role** — combined in one field for compactness. "Sarah Chen, CPO at [company]."
2. **How you met / last interaction** — one line covering origin and most recent touch. "Met at ProductTank NYC March 2025; last DM May 2025 about RAG plateaus."
3. **What they care about** — their current focus, challenges, interests. "Scaling AI product team, RAG quality, model-vendor strategy."
4. **What value you can offer them** — specific insight, connection, or resource. "Context budgeting framework writeup; intro to [Helm Labs founder] on similar pivot."
5. **Next action** — concrete and specific. "Send writeup by Friday; follow up in 2 weeks if no response."

Plus one tier tag (T1 / T2 / T3 / T4) on each row.

### Sample row

| Field | Value |
|-------|-------|
| Name / Company / Role | Sarah Chen, CPO at NovaAI |
| How met / last interaction | Met at ProductTank NYC March 2025; last DM May 2025 about RAG plateaus |
| What they care about | Scaling AI product team, RAG quality, model-vendor strategy |
| Value to offer | Context budgeting writeup; intro to Helm Labs founder on similar pivot |
| Next action | Send writeup by Friday; follow up in 2 weeks if no response |
| Tier | T2 |

That's it. One row. 60 seconds to fill. Reviewable in 5 seconds during the weekly scan.

## How to use the rows in practice

1. New contact → create a row with what you know. Don't wait for "complete" data.
2. Weekly review (15 min) → scan all Tier 1 and Tier 2 rows; check for stale next-actions, queue this week's touches.
3. After every interaction → update "how met / last interaction" and "next action" fields, takes ~30 seconds.
4. Promote / demote → update the tier tag based on `corpus/networking/crm/tier-movement-rules.md`.

## Related entries
- `corpus/networking/crm/weekly-review-cadence.md` — when the model gets exercised
- `corpus/networking/crm/tier-movement-rules.md` — how the tier field gets updated
- `corpus/networking/crm/lightweight-tooling.md` — what to build the table in
- `corpus/networking/tiers/tier-1-inner-circle.md` — the tier definitions the rows reference

## Anti-patterns
- Adding fields. Every additional field is admin friction; resist.
- Letting the next-action field stay generic ("follow up"). Specific means dated, named, and bounded.
- Tracking everyone. Only Tier 1, Tier 2, and active Tier 3/Tier 4 belong in the CRM. The full Tier 3 lives in LinkedIn metrics, not the CRM.
