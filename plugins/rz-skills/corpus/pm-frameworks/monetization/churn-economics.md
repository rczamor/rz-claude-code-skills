---
name: Churn Economics
domain: pm-frameworks
source_skill: research
entry_type: concept
length_target: 300-800
related: [corpus/pm-frameworks/metrics/churn-retention.md, corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md, corpus/pm-frameworks/monetization/expansion-revenue.md, corpus/pm-frameworks/metrics/cohort-analysis.md]
---

# Churn Economics

## What it is
The unit-economics consequences of churn rate. **Naive LTV** = ARPA / monthly churn rate (an asymptotic computation assuming constant churn). At 5% monthly churn, LTV = 20× ARPA; at 10%, LTV = 10× ARPA. The relationship is non-linear: a 1% reduction in churn produces a much larger LTV improvement at low churn rates than at high churn rates. Churn comes in flavors — voluntary (canceled), involuntary (payment failure), competitive (switched), value-fit (use case ended), expansion-driven (downsell). Each has different economics and different product interventions.

## Why it matters
Healthy SaaS benchmarks: B2C monthly churn <5%, B2B SMB <2%, B2B enterprise <1% (annual ~5-10%). Above those thresholds, the business cannot scale economically — every dollar of CAC is consumed faster than it's recovered. Below those thresholds, the business compounds. The economics are unforgiving: a product with 8% monthly churn cannot be saved by acquisition spend alone. Churn must be solved at the product level — onboarding, activation, value moments, retention loops.

## How to apply
1. **Decompose churn by type.** Voluntary, involuntary, competitive, value-fit. Each has different intervention.
2. **Compute LTV by cohort, not aggregate.** Cohort LTV captures the trend; aggregate LTV averages over time.
3. **Fix involuntary churn first — it's free money.** Failed-payment dunning, card-update flows, billing retries can recover 30–50% of involuntary churn.
4. **Address voluntary churn in onboarding.** Most voluntary churn happens early; users never reached value. Activation > retention intervention.
5. **Build switching costs (per Helmer's 7 Powers).** Data, integrations, learned workflows all increase friction to leave.

## Examples
1. **Netflix's <2% monthly churn** is exceptional for consumer subscription. Driven by content investment + lack of viable substitutes, switching costs are habit and content discovery.
2. **B2B SaaS bottom decile** — monthly churn 8–15%. Cannot scale; companies in this range usually pivot or fail.
3. **Suzy at 350+ enterprise customers** — enterprise gross logo retention is the lifeblood metric. A single lost enterprise customer at $200K ACV requires multiple new logos to replace — churn economics dominate.

## Related entries
- `corpus/pm-frameworks/metrics/churn-retention.md` — the metric definitions
- `corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md` — churn drives LTV
- `corpus/pm-frameworks/monetization/expansion-revenue.md` — expansion offsets churn
- `corpus/pm-frameworks/metrics/cohort-analysis.md` — churn must be cohort-tracked
- `corpus/pm-frameworks/strategy/seven-powers.md` — switching costs reduce churn

## Anti-patterns
1. **Aggregate churn rate as headline.** "5% monthly churn" without cohort or segment breakdown. Hides whether it's improving and which segment is leaving.
2. **Acquisition spend to outpace churn.** Pouring CAC dollars into a leaky bucket. Mathematically impossible to scale; only buys time.
