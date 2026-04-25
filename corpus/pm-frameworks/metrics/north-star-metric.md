---
name: North Star Metric
domain: pm-frameworks
source_skill: research
entry_type: concept
length_target: 300-800
related: [corpus/pm-frameworks/metrics/okrs.md, corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/metrics/heart-framework.md, corpus/pm-frameworks/lifecycle/escape-the-build-trap.md]
---

# North Star Metric

## What it is
A single metric that best captures the core value a product delivers to its customers — popularized by Sean Ellis and Lenny Rachitsky (and earlier articulated by the Facebook Growth team). The NSM has three properties: it represents *customer* value (not revenue), it predicts long-term business success, and it's a leading indicator the team can move with product decisions. Behind the NSM sit 3–5 *input metrics* that decompose it into actionable levers.

## Why it matters
The NSM solves the "everyone optimizes their own metric" problem. When marketing chases acquisition, support chases CSAT, and engineering chases reliability, the product can lose direction. A shared NSM aligns the company on a single proxy for customer value — and the input metrics give different teams different levers without breaking alignment.

## How to apply
1. **Choose a metric that captures customer value, not revenue.** Revenue is a lagging indicator. Customer value (messages sent, songs played, nights booked) leads.
2. **Pass the three tests.** (a) Does it represent value to the customer? (b) Does it predict long-term success? (c) Can product moves change it?
3. **Decompose into input metrics.** If NSM = weekly active teams, inputs might be (signups × activation × W4 retention). Different teams own different inputs.
4. **Don't change it on a whim.** NSM stability is part of its alignment power. Update only when the underlying value model changes.
5. **Beware single-metric dictatorship.** The NSM is a primary, not an only. Pair with guardrail metrics (churn, support tickets, complaints) to catch perverse optimization.

## Examples
1. **Airbnb's NSM: "nights booked."** Captures supply-side and demand-side value in one number. Inputs: listings, search → booking conversion, repeat-booking rate.
2. **Spotify's NSM: "time spent listening."** Same logic — leading indicator for retention and revenue.
3. **Suzy's likely NSM around insights consumed (or insights → decisions ratio)** would directly tie product investment to value delivered to its 350+ enterprise customers.

## Related entries
- `corpus/pm-frameworks/metrics/okrs.md` — NSM often anchors the company-level Objective
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — funnel inputs to the NSM
- `corpus/pm-frameworks/metrics/heart-framework.md` — HEART categories often define inputs
- `corpus/pm-frameworks/lifecycle/escape-the-build-trap.md` — NSM is an outcome metric, not output
- `corpus/growth/` — growth-team metrics ladder up to NSM

## Anti-patterns
1. **Revenue as NSM.** Revenue is a lagging indicator and incentivizes short-term extraction over customer value. Use a value-capture metric instead.
2. **Vanity NSM.** "Total signups" or "monthly active users" without behavioral grounding. Goes up regardless of product quality.
