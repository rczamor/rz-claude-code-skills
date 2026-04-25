---
name: McNamara Fallacy
domain: pm-frameworks
source_skill: product-management
entry_type: concept
length_target: 300-800
related: [corpus/pm-frameworks/metrics/north-star-metric.md, corpus/pm-frameworks/metrics/consumer-science.md, corpus/pm-frameworks/lifecycle/escape-the-build-trap.md, corpus/pm-frameworks/thinkers/doshi-shreyas.md]
---

# McNamara Fallacy

## What it is
**Measuring only what's easy to measure — and biasing decisions toward those measurements.** Named after Robert McNamara, US Secretary of Defense during the Vietnam War, who optimized for body counts because they were countable while ignoring harder-to-measure variables (popular support, political legitimacy) that ultimately determined the war's outcome. In product management, Shreyas Doshi names it as one of his Seven Biases — the cognitive trap that leads teams to vanity metrics and feature-count dashboards.

## Why it matters
The fallacy describes a structural failure of measurement, not a misjudgment. The data is real; the decisions made from it are wrong because the *unmeasured* factors dominate the outcome. In Doshi's seven biases, McNamara is paired with execution-orientation fallacy and bias-for-building — the three cognitive forces that produce feature factories. PMs who don't name McNamara explicitly will fall into it by default, because hard-to-measure variables (trust, taste, customer-voice quality) are exactly the ones that matter most for AI products.

## How to apply
1. **List what you measure.** Be honest. Sign-ups, sessions, feature-shipped count — typical.
2. **List what matters but you don't measure.** Customer trust, sentiment, decision quality, time-to-insight, product cohesion.
3. **Find proxies for the hard things.** NPS for trust. Cohort retention for satisfaction. Time-on-task for cohesion. None are perfect; together they're directionally correct.
4. **Triangulate.** Use Biddle's Consumer Science framework — qualitative + survey + existing data + A/B test — to cover what one method misses.
5. **In AI products especially.** Output quality is hard to measure; latency is easy. McNamara fallacy + AI = optimizing for fast-but-wrong responses. Eval rubrics directly counter this.

## Examples
1. **Pre-2012 YouTube** optimized for clicks and views — easy to measure. Watch-time-per-session was harder. The 2012 pivot to watch time corrected a McNamara-fallacy era and dramatically improved the product.
2. **Riché's Suzy Decision Engine** — easy metrics: insights generated, queries run. Hard metrics that matter: did the insight change a decision? Decision-conversion as a metric attempts to measure the harder, real outcome.
3. **Most AI product dashboards in 2024–2025** report tokens, latency, error rate. They don't report whether the output was *useful*. McNamara at scale.

## Related entries
- `corpus/pm-frameworks/metrics/north-star-metric.md` — NSM forces a value-based measure, fighting McNamara
- `corpus/pm-frameworks/metrics/consumer-science.md` — Biddle's antidote: triangulate sources
- `corpus/pm-frameworks/lifecycle/escape-the-build-trap.md` — Perri's structural counter
- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — evals are the AI-specific antidote
- `corpus/pm-frameworks/thinkers/doshi-shreyas.md` — author of the seven-bias framing

## Anti-patterns
1. **Adding metrics to dashboards instead of changing what gets reviewed.** McNamara persists because the easy metrics still drive the decisions, even after better metrics are added.
2. **"You can't measure that" as an excuse.** Hard-to-measure isn't unmeasurable. Proxies, surveys, cohort behavior, qualitative themes all triangulate.
