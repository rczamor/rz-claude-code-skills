---
name: Churn and Retention
domain: pm-frameworks
source_skill: research
entry_type: metric
length_target: 300-800
related: [corpus/pm-frameworks/metrics/cohort-analysis.md, corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md, corpus/pm-frameworks/monetization/churn-economics.md, corpus/pm-frameworks/metrics/heart-framework.md]
---

# Churn and Retention

## What it is
Mirror metrics. **Churn** = (% of users or revenue lost in a period). **Retention** = 1 − churn = (% remaining). Retention can be measured at the user level (logo retention) or at the dollar level (gross revenue retention). Most useful when measured cohort-over-cohort, producing a retention curve that shows what fraction of a cohort still uses the product N weeks/months after signup. Healthy retention curves *flatten* (asymptote at a non-zero level); unhealthy curves trend toward zero.

## Why it matters
Retention is the single best predictor of long-term product viability. A product with mediocre acquisition and excellent retention will eventually compound into a business; a product with great acquisition and poor retention won't. Industry benchmarks: B2B SaaS gross logo retention >90% (>95% for enterprise), monthly logo churn for healthy SaaS <5%. Consumer apps have wider variance — Facebook's 80%-flat retention curves were exceptional; most consumer products see 10–20% three-month retention.

## How to apply
1. **Define the unit.** Logo retention (account level) vs. dollar retention (revenue level) vs. user retention (seat or individual). They tell different stories.
2. **Cohort the curve.** Group by signup week/month. Plot percentage retained at week 1, 4, 8, 12, etc.
3. **Look for the smile.** A healthy curve drops, then flattens, sometimes rises (reactivation). A bad curve drops without flattening.
4. **Decompose churn drivers.** Voluntary (canceled), involuntary (payment failure), competitive (switched to alternative), value-fit (use case ended).
5. **Pair with NPS / qualitative for the why.** Quantitative tells you the rate; qualitative tells you the cause.

## Examples
1. **Netflix's monthly churn** historically hovered around 2% — exceptional for consumer subscription. Driven by content investment that maintained engagement.
2. **Suzy at 350+ enterprise customers** — enterprise gross logo retention is the lifeblood metric; expansion drives NRR but only when the floor (logo retention) is high.
3. **Facebook's flat retention curves** for college cohorts in 2005–2007 signaled product-market fit when most consumer products had asymptote-to-zero curves.

## Related entries
- `corpus/pm-frameworks/metrics/cohort-analysis.md` — retention is the canonical cohort metric
- `corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md` — churn drives LTV
- `corpus/pm-frameworks/monetization/churn-economics.md` — dollar churn drives unit economics
- `corpus/pm-frameworks/metrics/heart-framework.md` — R in HEART
- `corpus/pm-frameworks/metrics/engagement-metrics.md` — engagement leads retention

## Anti-patterns
1. **Aggregate churn rate.** Reporting "5% monthly churn" without cohort breakdown. Hides whether it's improving and which cohort is leaving.
2. **Conflating user and dollar churn.** Logo retention can be 95% while dollar retention is 80% (downsells, contractions). Both matter; reporting only one misleads.
