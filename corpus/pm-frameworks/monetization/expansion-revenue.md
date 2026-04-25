---
name: Expansion Revenue
domain: pm-frameworks
source_skill: research
entry_type: concept
length_target: 300-800
related: [corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md, corpus/pm-frameworks/monetization/usage-based-pricing.md, corpus/pm-frameworks/monetization/tiered-packaging.md, corpus/pm-frameworks/monetization/churn-economics.md]
---

# Expansion Revenue

## What it is
Revenue earned from existing customers beyond their initial contract — through seat additions, tier upgrades, additional product attach, usage growth, or feature add-ons. The mechanism that drives Net Revenue Retention (NRR) above 100%: when expansion revenue exceeds churn + contraction, the cohort grows in revenue without any new acquisition. Categories include cross-sell (additional products), upsell (higher tier), seat expansion (more users), and consumption growth (more usage on usage-based pricing).

## Why it matters
For SaaS at scale, expansion is the dominant lever. New-logo acquisition is expensive (high CAC, long payback periods); expansion is cheap (existing relationship, low marginal cost). NRR > 120% means the company can grow indefinitely on expansion alone — Snowflake (169%), Datadog (130%+), Atlassian, Twilio at peak all demonstrate the compounding power of expansion-led growth. PMs who own expansion levers (in-product upgrade flows, attach features, capacity-based triggers) own the most leveraged growth lever in modern SaaS.

## How to apply
1. **Identify expansion vectors.** Seats, tiers, products, usage, features. List them. Know which are biggest.
2. **Instrument expansion triggers.** What customer behavior signals readiness to expand? Hit a capacity threshold? New use case? Cross-functional teammate adoption?
3. **Build in-product expansion flows.** Self-serve upgrade beats sales-led upgrade for time-to-decision. In-product paywall, in-product seat addition, in-product tier upgrade.
4. **Pair with CSM.** Customer success teams own expansion in enterprise. CSM's KPI is often NRR, not retention alone.
5. **Watch contraction.** Negative expansion (downsells, seat reductions) erodes NRR. Track separately and intervene.

## Examples
1. **Snowflake's 169% NRR** — usage-based pricing means consumption growth is the dominant expansion vector. Customers expand silently as they use more.
2. **Slack's seat expansion** — bottom-up adoption inside enterprises means seats grow as more teams adopt. Sales engages for enterprise pricing only after expansion has occurred.
3. **Suzy with 350+ enterprise customers** — expansion likely flows through pillar adoption (Intelligence/Insights/Impact), seat growth across business units, and use-case expansion within accounts.

## Related entries
- `corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md` — expansion is core to NRR
- `corpus/pm-frameworks/monetization/usage-based-pricing.md` — usage-based produces silent expansion
- `corpus/pm-frameworks/monetization/tiered-packaging.md` — tier upgrades drive expansion
- `corpus/pm-frameworks/monetization/churn-economics.md` — expansion offsets churn
- `corpus/pm-frameworks/monetization/dhm-margin-lens.md` — expansion is margin-enhancing

## Anti-patterns
1. **No in-product upgrade.** Forcing every expansion through sales — slow, expensive, leaves money on the table.
2. **Expansion without earning it.** Pushing upsells before the customer has hit value. Drives premature churn — the opposite of expansion.
