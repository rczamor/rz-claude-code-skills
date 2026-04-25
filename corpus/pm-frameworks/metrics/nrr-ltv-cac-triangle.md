---
name: NRR / LTV / CAC Triangle
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/metrics/churn-retention.md, corpus/pm-frameworks/monetization/expansion-revenue.md, corpus/pm-frameworks/monetization/churn-economics.md, corpus/pm-frameworks/monetization/usage-based-pricing.md]
---

# NRR / LTV / CAC Triangle

## What it is
The three metrics that together determine SaaS unit economics. **NRR (Net Revenue Retention)** = (starting MRR + expansion − churn − contraction) ÷ starting MRR, measured cohort-over-cohort, usually annualized. NRR > 100% means existing customers are growing in revenue *before* counting new acquisition. **LTV (Lifetime Value)** = average revenue per account × gross margin × (1 ÷ churn rate), or with NRR-aware models, ARPA × gross-margin × duration. **CAC (Customer Acquisition Cost)** = total sales + marketing spend ÷ new customers acquired in period.

## Why it matters
The three numbers triangulate every SaaS business decision. NRR > 120% means the business compounds; NRR < 100% means new acquisition just replaces churn. LTV/CAC > 3 is the rule-of-thumb threshold for healthy unit economics; LTV/CAC < 1 means the business loses money per customer. CAC payback period (CAC ÷ monthly gross profit per customer) under 12 months is the venture-grade target. PMs must understand all three because product decisions move all three — onboarding affects activation, which affects churn, which affects LTV.

## How to apply
1. **Measure NRR by cohort.** Snapshot NRR at a point in time hides timing. Track cohort-by-quarter to see expansion/contraction trends.
2. **Decompose NRR.** Expansion + retention − churn − downsell. Each is a separate product/sales/CS lever.
3. **Compute LTV with caution.** Naive LTV = ARPA / churn rate overstates by ignoring discount rate and contracts. Use NRR-aware models for SaaS with expansion.
4. **Track CAC by channel.** Blended CAC hides the unit economics of paid acquisition vs. PLG vs. referral. Channel-level CAC is what makes investment decisions actionable.
5. **Watch the ratios.** LTV/CAC > 3, CAC payback < 12 months, NRR > 110% are baseline venture-grade benchmarks.

## Examples
1. **Snowflake's 169% NRR (2020 IPO disclosure)** is the canonical example — usage-based pricing means existing customers grow consumption naturally, producing best-in-class expansion.
2. **Datadog 130%+ NRR** consistently — expansion driven by new product attach (logs, APM, security) and seat/host growth across existing accounts.
3. **Riché's Suzy with 350+ enterprise customers** — NRR is likely a top-three KPI for the leadership team; the Decision Engine's role in expansion (new use cases, more seats per account) directly shapes that triangle.

## Related entries
- `corpus/pm-frameworks/metrics/churn-retention.md` — feeds the triangle
- `corpus/pm-frameworks/monetization/expansion-revenue.md` — the expansion leg of NRR
- `corpus/pm-frameworks/monetization/churn-economics.md` — churn drives LTV
- `corpus/pm-frameworks/monetization/usage-based-pricing.md` — best-NRR business model
- `corpus/pm-frameworks/monetization/product-led-growth.md` — affects CAC profile
- `corpus/growth/` — growth-loop economics

## Anti-patterns
1. **Naive LTV.** Computing LTV with no discount rate, no gross margin, and snapshot churn. Overstates by 2–5x.
2. **Blended CAC.** Reporting one CAC number without channel breakdown. Hides which acquisition motion is healthy.
3. **NRR without cohorts.** A single NRR number doesn't show whether trend is improving. Cohort tracking does.
