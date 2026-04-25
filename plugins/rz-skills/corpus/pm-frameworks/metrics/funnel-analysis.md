---
name: Funnel Analysis
domain: pm-frameworks
source_skill: research
entry_type: pattern
length_target: 300-800
related: [corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/metrics/cohort-analysis.md, corpus/pm-frameworks/metrics/feature-adoption.md]
---

# Funnel Analysis

## What it is
A pattern for analyzing a sequence of user actions where each step depends on the previous one — signup → activation → first paid event → retention. Each step has a conversion rate; the funnel reveals where users drop off. Most useful for identifying which step has the highest leverage for product investment. Distinct from AARRR (which is a specific funnel structure for the whole startup); funnel analysis can be applied to any multi-step user flow.

## Why it matters
Without an explicit funnel, teams optimize the step they can see (usually the first or last) and miss the step where most users actually drop off. Funnel analysis makes the highest-leverage intervention point visible — typically activation or first-value, not signup or final purchase. Most "growth at all costs" failures are funnel failures: the team poured spend into the top while the middle leaked.

## How to apply
1. **Define the funnel.** What is the sequence of user actions you care about? Be specific to the user journey.
2. **Instrument each step.** Event tracking for each action, with user IDs preserved across steps.
3. **Compute step-by-step conversion.** Step N+1 users ÷ Step N users.
4. **Find the biggest leak.** The step with the lowest conversion rate is usually the highest-leverage intervention.
5. **Cohort the funnel.** Funnel rates change cohort-over-cohort; report by cohort to see whether product changes are working.
6. **Pair with qualitative.** A/B tests fix conversion mechanics; qualitative interviews of drop-off users reveal *why* they drop off.

## Examples
1. **Slack's onboarding funnel** revealed the ~2,000-message activation threshold — teams that hit it retained at 93%, teams that didn't churned. The funnel pinpointed the leverage point: get teams to that threshold faster.
2. **E-commerce checkout funnel** typically: cart → checkout → payment → confirmation. Standard finding: payment-step abandonment dominates. Stripe and Shopify built businesses on reducing that one step's friction.
3. **Suzy Decision Engine onboarding funnel** — workspace creation → first insight query → insight reviewed → decision logged. Each step has a conversion rate; the lowest rate is the highest-leverage product investment.

## Related entries
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — startup-wide funnel
- `corpus/pm-frameworks/metrics/cohort-analysis.md` — funnel by cohort
- `corpus/pm-frameworks/metrics/feature-adoption.md` — sub-funnel for feature usage
- `corpus/pm-frameworks/metrics/ab-testing.md` — A/B against the leakiest step

## Anti-patterns
1. **Aggregate funnel only.** Reporting "70% conversion from step 2 to step 3" without cohort breakdown. Hides whether it's improving.
2. **Optimizing the loudest step.** Putting investment in signup because it's countable, when activation is leaking 4x more users.
