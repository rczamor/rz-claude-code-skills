---
name: Usage-Based Pricing
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/monetization/value-based-pricing.md, corpus/pm-frameworks/monetization/expansion-revenue.md, corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md, corpus/pm-frameworks/monetization/dhm-margin-lens.md]
---

# Usage-Based Pricing

## What it is
A pricing model in which the customer pays as a function of consumption — API calls, queries, storage, compute hours, transactions, messages, tokens. Distinct from seat-based pricing (pay per user) and flat-rate pricing (pay one fee for unlimited use). Often deployed as pure usage (Snowflake, AWS), tiered usage with overage (Twilio, Stripe), or hybrid (base subscription + usage overage). Increasingly common in modern SaaS and especially AI products where backend costs scale with usage.

## Why it matters
Usage-based pricing aligns vendor and customer incentives: the customer pays more when they get more value, less when they don't. Snowflake's 169% NRR (2020 IPO) was the canonical proof point — usage-based pricing produces structurally higher NRR than seat-based because expansion happens silently as customers use more. But usage-based pricing introduces revenue volatility (down quarters when customers use less), forecasting difficulty, and customer-budgeting friction. PMs must own the trade-offs.

## How to apply
1. **Pick the right consumption unit.** It must (a) correlate with customer value, (b) scale with customer success, (c) be measurable, (d) be predictable enough to budget against.
2. **Set the unit price by ROI math.** What is one consumption unit worth to the customer? Price at 10–20% of that.
3. **Add tiers / commit discounts.** Customers want predictability; usage-based with annual commits + overage is the most common enterprise structure.
4. **Instrument the consumption funnel.** Onboarding → first usage → growth in usage → renewal at higher tier.
5. **Watch the gross margin.** AI products especially: per-token cost vs. per-token price determines whether usage-based is margin-enhancing or margin-destroying.

## Examples
1. **Snowflake's compute-credit model** — pay per compute time, scaled by warehouse size. Drove 158%–169% NRR at IPO and beyond.
2. **Twilio's per-message pricing** — pay per SMS, voice minute, video minute. Classic usage-based model with overage tiers and committed-spend discounts.
3. **OpenAI API per-token pricing** — pay per input/output token. Becoming the canonical model for AI infrastructure. Margin economics depend heavily on model serving cost vs. price.

## Related entries
- `corpus/pm-frameworks/monetization/value-based-pricing.md` — usage often delivers value-based pricing in practice
- `corpus/pm-frameworks/monetization/expansion-revenue.md` — usage-based produces silent expansion
- `corpus/pm-frameworks/monetization/dhm-margin-lens.md` — usage-based decisions are margin decisions
- `corpus/pm-frameworks/metrics/nrr-ltv-cac-triangle.md` — usage-based produces best-in-class NRR
- `corpus/pm-frameworks/ai-product-pm/` — AI products especially use usage-based

## Anti-patterns
1. **Wrong consumption unit.** Pricing on a unit (e.g., API calls) when value scales with a different unit (e.g., outcomes delivered). Customer feels nickel-and-dimed; churn rises.
2. **No commit / no predictability.** Pure pay-as-you-go for enterprise customers who need budget predictability. Forces them to rebuild the model with annual commits anyway.
