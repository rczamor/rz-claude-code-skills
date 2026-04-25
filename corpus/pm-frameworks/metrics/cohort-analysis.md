---
name: Cohort Analysis
domain: pm-frameworks
source_skill: research
entry_type: pattern
length_target: 300-800
related: [corpus/pm-frameworks/metrics/churn-retention.md, corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/metrics/funnel-analysis.md, corpus/pm-frameworks/metrics/engagement-metrics.md]
---

# Cohort Analysis

## What it is
A pattern for measuring user behavior over time, by grouping users into **cohorts** based on a shared attribute — typically signup week or month — and tracking their behavior across subsequent periods. The output is a cohort matrix: rows are cohorts, columns are weeks/months since signup, cells are retention or revenue or engagement at that period for that cohort. Reveals trends that aggregate metrics hide.

## Why it matters
Aggregate metrics ("total users," "average session length") mix users at different stages of the lifecycle and miss whether the product is *getting better*. Cohort analysis answers a sharper question: "Is the cohort signing up *this* month behaving better than the cohort signing up *last* month?" If new cohorts retain better than old ones, the product is improving even if aggregates look flat.

## How to apply
1. **Pick a cohort axis.** Most common: signup week or month. Can also cohort by acquisition channel, plan tier, or first-feature-used.
2. **Pick a behavior to track.** Retention (% returning by week), revenue, feature adoption, engagement.
3. **Build the matrix.** Each row a cohort, each column a period after the cohort joined. Cell = behavior metric for that cohort at that period.
4. **Look down columns for cohort drift.** Are recent cohorts performing better than older ones at the same age?
5. **Look across rows for retention curves.** Does the cohort flatten (sustained engagement) or asymptote to zero (churn)?
6. **Flatness > height.** A retention curve that flattens at 30% is healthier than one that starts at 60% and trends to 5%.

## Examples
1. **Facebook's classic cohort retention** showed flat ~80% retention curves for college cohorts, signaling product-market fit when most consumer products had downward-sloping curves.
2. **Slack cohort analysis** revealed the ~2,000-message activation threshold by tracking which cohort behaviors at week 1 predicted long-term retention.
3. **Suzy at 350+ enterprise customers** — cohort analysis by enterprise-signup-quarter would reveal whether the Decision Engine's improvements are showing up in retention/expansion of newer cohorts faster than older ones.

## Related entries
- `corpus/pm-frameworks/metrics/churn-retention.md` — retention is the canonical cohort metric
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — funnel by cohort beats funnel by snapshot
- `corpus/pm-frameworks/metrics/funnel-analysis.md` — adjacent pattern
- `corpus/pm-frameworks/metrics/engagement-metrics.md` — engagement should also be cohort-tracked

## Anti-patterns
1. **Snapshot retention.** Reporting "30% of users retained" without saying which cohort. Hides whether the product is improving.
2. **Cohort matrix with no trend.** Showing cells with no comparison. Cohorts only matter when you read columns top-to-bottom.
