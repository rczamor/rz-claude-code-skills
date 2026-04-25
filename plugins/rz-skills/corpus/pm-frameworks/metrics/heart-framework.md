---
name: HEART Framework
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/metrics/north-star-metric.md, corpus/pm-frameworks/metrics/engagement-metrics.md]
---

# HEART Framework

## What it is
A user-experience metrics framework developed by Kerry Rodden, Hilary Hutchinson, and Xin Fu at Google (2010, "Measuring the User Experience on a Large Scale"). Five categories: **Happiness** (subjective satisfaction — NPS, CSAT, surveys), **Engagement** (depth of interaction — sessions per user, frequency), **Adoption** (new users — signups, first-use rate), **Retention** (returning users — cohort retention curves), **Task Success** (efficiency and effectiveness — completion rate, time-on-task, error rate). Each category gets paired with **Goals → Signals → Metrics** to operationalize.

## Why it matters
HEART forces UX teams to instrument across five dimensions instead of optimizing only the one that's easiest to measure. Adoption metrics are loud and lagging; engagement and retention metrics are quieter and leading; happiness and task success surface friction adoption metrics hide. The framework's value is structural: it tells you which dimension your product is weakest on.

## How to apply
1. **Pick the categories that matter for your product.** Not every product needs all five — a one-time-use app cares less about retention; a trust product cares more about happiness.
2. **For each chosen category, define Goals → Signals → Metrics.** Goal: what user behavior matters. Signal: observable user action. Metric: numerical measurement.
3. **Instrument the five with a single dashboard.** Don't let one team own happiness while another owns engagement — the cross-view is where the insights live.
4. **Watch the gradient.** Adoption rising while retention falls = leaky bucket. Engagement rising while happiness falls = dark patterns. Task success high but engagement low = users finish and leave.
5. **Pair with cohort analysis.** Retention is a cohort metric, not a snapshot.

## Examples
1. **Gmail's classic HEART instrumentation** at Google used HEART to balance feature investment — adding new features risked degrading task success (more clutter) even as adoption rose.
2. **YouTube's "watch time over views" pivot in 2012** was a HEART move — engagement (watch time) replaced a vanity adoption metric (views) as the core target.
3. **Suzy Decision Engine** likely instruments HEART across 350+ enterprise customers — happiness via in-product feedback and CSAT, engagement and retention via insights-cycle frequency, task success via time-to-decision metrics.

## Related entries
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — McClure's funnel-shaped alternative
- `corpus/pm-frameworks/metrics/north-star-metric.md` — NSM is often a HEART-category aggregation
- `corpus/pm-frameworks/metrics/engagement-metrics.md` — the E in HEART
- `corpus/pm-frameworks/metrics/churn-retention.md` — the R in HEART
- `corpus/pm-frameworks/metrics/feature-adoption.md` — the A in HEART

## Anti-patterns
1. **Adoption-only HEART.** Reporting only signups because they're loud. Misses leaky bucket and friction.
2. **Goals-Signals-Metrics with no goals.** Skipping the goal articulation and going straight to metrics. The dashboard fills with numbers nobody can interpret.
