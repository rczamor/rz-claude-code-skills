---
name: A/B Testing
domain: pm-frameworks
source_skill: research
entry_type: pattern
length_target: 300-800
related: [corpus/pm-frameworks/metrics/consumer-science.md, corpus/pm-frameworks/metrics/cohort-analysis.md, corpus/pm-frameworks/metrics/funnel-analysis.md, corpus/pm-frameworks/ai-product-pm/evals-framework.md]
---

# A/B Testing

## What it is
A randomized controlled experiment in which users are split into two (or more) groups — control (A) sees the existing product, treatment (B) sees a variant — and behavior is measured. Random assignment controls for confounding variables, so observed differences in the chosen metric are attributable to the variant. The output is a causal estimate of impact (with confidence intervals), not just correlational. Standard practice in tech since Google's first formal experiments in the early 2000s; widely deployed at Microsoft, Amazon, Booking.com, Meta.

## Why it matters
Most product changes feel like improvements but don't actually move metrics, and a non-trivial fraction make things worse. A/B testing is the only way to measure causal impact of a change at scale. Without it, teams ship "improvements" based on opinions and observe correlated metrics drift, but cannot tell which feature caused which change.

## How to apply
1. **State the hypothesis.** "Variant B will increase activation rate by ≥ X percentage points within 14 days."
2. **Pick a metric and guardrails.** Primary metric must be clearly defined; guardrail metrics (e.g., latency, churn proxy) catch unintended damage.
3. **Power-analyze before running.** Compute required sample size for the minimum-detectable effect. Underpowered tests produce noise.
4. **Randomize properly.** User-level randomization (cookie/account ID), not page-level. Avoid spillover (where treatment behavior leaks to control).
5. **Run for at least one full business cycle.** A weekend-only test misses weekday behavior. Most teams run 1–2 weeks minimum.
6. **Analyze with discipline.** Only the pre-declared primary metric matters. Post-hoc dredging produces false positives.

## How to apply in AI products
For AI products, A/B testing model versions or prompts is not enough — output quality is non-deterministic. Pair with eval frameworks (rubric-based scoring on a fixed test set) so you measure capability, not just behavior.

## Examples
1. **Booking.com famously runs ~25,000 A/B tests per year** — every change tested. Most fail to move metrics; the few that do compound into the company's growth advantage.
2. **Microsoft Bing's color experiments** — a single test on the shade of blue used for search-result links generated $80M in annual revenue lift. Demonstrated the discipline's leverage.
3. **Suzy A/B testing** — feature variants tested with a subset of 350+ enterprise customers can produce statistically meaningful lift estimates because the population is large enough to power the test.

## Related entries
- `corpus/pm-frameworks/metrics/consumer-science.md` — Biddle's framework includes A/B as one of four sources
- `corpus/pm-frameworks/metrics/cohort-analysis.md` — interpret A/B impact by cohort
- `corpus/pm-frameworks/metrics/funnel-analysis.md` — A/B often targets a specific funnel step
- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — AI-specific complement to A/B

## Anti-patterns
1. **Underpowered tests.** Running for 3 days on 1% of traffic, claiming "no effect." The test couldn't detect the effect.
2. **Peeking and stopping.** Watching p-values in real time and stopping when significance hits. Inflates false-positive rate dramatically. Use sequential-testing methods or commit to a sample size upfront.
