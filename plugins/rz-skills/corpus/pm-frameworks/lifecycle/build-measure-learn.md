---
name: Build-Measure-Learn
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/lifecycle/lean-startup.md, corpus/pm-frameworks/lifecycle/pivot-vs-persevere.md, corpus/pm-frameworks/ai-product-pm/compressed-planning-cycles.md]
---

# Build-Measure-Learn

## What it is
The operational loop inside Lean Startup, from Eric Ries (2011). Three steps cycled tightly: **Build** the smallest experiment that can falsify a hypothesis (an MVP, a prototype, a landing page); **Measure** with actionable metrics (cohort retention, conversion, behavior — not vanity); **Learn** what the data tells you about the hypothesis, and decide pivot vs. persevere. The unit of progress is *validated learning per unit time*.

## Why it matters
From Ries, *The Lean Startup* (2011). Most teams optimize the Build step (engineering velocity) and starve Measure and Learn. Build-Measure-Learn re-balances: a tighter loop with a smaller build is worth more than a longer loop with a bigger build. In AI products the loop compresses further — see Riché's compressed-planning-cycles entry — because models change underneath the team monthly.

## How to apply
1. **Start from the question, not the feature.** "What hypothesis are we testing?" is the right entry. "What feature are we shipping?" is build-first.
2. **Build the smallest test.** Fake-doors, concierge MVPs, Wizard-of-Oz, single-customer pilots all count. Code is often not the smallest test.
3. **Measure cohort behavior.** Sign-ups don't count. Cohort retention, activation, conversion, referral — the metrics that change as the product changes.
4. **Learn explicitly.** Write down: hypothesis, evidence, decision (pivot/persevere), next experiment.
5. **Compress the loop.** Time to learn matters more than scale of test. A one-day fake-door beats a two-month MVP.

## Examples
1. **Dropbox's MVP video** — Build was a 3-minute screen recording. Measure was beta waitlist signups (5K → 75K). Learn: latent demand validated.
2. **Zappos' fake-door MVP** — Nick Swinmurn photographed shoes in local stores, listed them online, bought from the store after each order. Built no inventory system. Validated the "people will buy shoes online" hypothesis in weeks.
3. **Riché's Helm Labs $3.25M pre-launch pipeline** is a Build-Measure-Learn outcome — buyer commitment was the measurement that let the next build-step be funded with confidence.

## Related entries
- `corpus/pm-frameworks/lifecycle/lean-startup.md` — parent methodology
- `corpus/pm-frameworks/lifecycle/pivot-vs-persevere.md` — terminal decision of each loop
- `corpus/pm-frameworks/lifecycle/mvp-to-mlp.md` — MVP is the artifact in step 1
- `corpus/pm-frameworks/ai-product-pm/compressed-planning-cycles.md` — AI compresses the loop

## Anti-patterns
1. **Build-only.** Skipping Measure and Learn because the build was successful. "We shipped it" is not a learning outcome.
2. **Vanity measurement.** Measuring sign-ups, downloads, page views — numbers that go up regardless of product quality. Use cohort behavior instead.
