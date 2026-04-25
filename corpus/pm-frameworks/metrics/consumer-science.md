---
name: Consumer Science
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/metrics/ab-testing.md, corpus/pm-frameworks/metrics/mcnamara-fallacy.md, corpus/pm-frameworks/strategy/dhm-model.md, corpus/pm-frameworks/thinkers/biddle-gibson.md]
---

# Consumer Science

## What it is
Gibson Biddle's measurement framework, developed at Netflix and Chegg. Stated verbatim from the product-management skill: "Hypothesis, experiment, data, conclusion. Four data sources: qualitative, survey, existing data, A/B tests." The mechanic: every product hypothesis is investigated through *all four* data sources in parallel, because each surfaces different evidence. Qualitative reveals the "why," survey reveals the "how many," existing data reveals "what's happening now," A/B tests reveal "what causes what."

## Why it matters
Consumer Science is the structural antidote to single-method blindness. Teams that rely only on A/B tests miss why users behave that way (qualitative) and whether the behavior generalizes (survey). Teams that rely only on qualitative interviews can't quantify the size of the opportunity. Biddle's insight: the four sources together produce a triangulated view that any one method on its own cannot reach. The framework also disciplines the team into stating a clear hypothesis upfront, before data is gathered.

## How to apply
1. **State the hypothesis crisply.** "If we add X, conversion rate Y will rise from N% to N+M%." Falsifiable.
2. **Choose the experiment.** What change do we make? What population sees it? For how long?
3. **Gather data from all four sources where possible.**
   - Qualitative: 5–10 user interviews about the change
   - Survey: scaled feedback (Net Promoter, willingness to pay, satisfaction with feature)
   - Existing data: historical behavior of users in similar conditions
   - A/B test: causal measurement against a control
4. **Conclude.** Did the hypothesis hold? What did each source contribute? Where do they disagree, and what does the disagreement reveal?
5. **Iterate.** A clean conclusion seeds the next hypothesis.

## Examples
1. **Netflix's "Skip Intro" feature** — qualitative interviews surfaced the friction; survey quantified the demand; existing data showed binge-watching patterns; A/B test confirmed the lift in completion rate.
2. **Chegg's textbook-rental pricing experiments** under Biddle — multi-source measurement of willingness-to-pay, behavioral conversion, and retention impact, none of which a single method could deliver.
3. **Riché's Suzy Decision Engine** — moves toward Intelligence/Insights/Impact pillar performance can be Consumer-Science instrumented across 350+ enterprise customers: qualitative from CSM calls, survey from product-feedback NPS, existing data from usage analytics, A/B from feature flags.

## Related entries
- `corpus/pm-frameworks/metrics/ab-testing.md` — one of the four sources
- `corpus/pm-frameworks/metrics/mcnamara-fallacy.md` — Consumer Science directly counters single-method bias
- `corpus/pm-frameworks/strategy/dhm-model.md` — Biddle's strategy framework, paired
- `corpus/pm-frameworks/discovery/jobs-to-be-done.md` — JTBD-style interviews supply the qualitative leg
- `corpus/pm-frameworks/thinkers/biddle-gibson.md` — author profile

## Anti-patterns
1. **A/B-only.** Treating A/B tests as the sole source of truth. Loses the "why" and overweights statistical noise on small sample sizes.
2. **Hypothesis-after-data.** Running an experiment, then back-fitting a hypothesis to the result. Defeats the framework — the discipline is stating the hypothesis first.
