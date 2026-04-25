---
name: Price Sensitivity Testing
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/discovery/van-westendorp-price-sensitivity.md, corpus/pm-frameworks/monetization/value-based-pricing.md, corpus/pm-frameworks/monetization/tiered-packaging.md, corpus/pm-frameworks/metrics/ab-testing.md]
---

# Price Sensitivity Testing

## What it is
A set of methods for measuring how customer demand changes with price. The two most-used are **Van Westendorp's Price Sensitivity Meter** (a four-question survey: too cheap, cheap, expensive, too expensive) and **conjoint analysis** (presenting bundles of features at different prices and measuring choice). For mature products, **A/B price testing** can directly measure conversion at different price points — though must be handled carefully to avoid customer-trust damage.

## Why it matters
Pricing decisions made by gut feel leave money on the table or price out the market. Price sensitivity testing produces an evidence-based price point and reveals the elasticity of demand around it — knowing whether a 10% price increase costs 5% of customers or 30% changes the decision dramatically. For new products without historical data, Van Westendorp gives a directionally correct starting price; for mature products, A/B tests refine.

## How to apply
1. **Pick the method by product stage.**
   - Pre-launch / no data: Van Westendorp survey
   - Mid-stage with willingness-to-pay variation by feature bundle: conjoint
   - Mature with traffic: A/B price tests
2. **Survey method (Van Westendorp).** Ask the four questions, plot cumulative curves, identify the *Optimal Price Point* (where "too cheap" and "too expensive" intersect) and *Indifference Price Point* (where "cheap" and "expensive" intersect). Use the range as guidance.
3. **Conjoint method.** Present 8–12 bundle alternatives varying feature × price. Use software (Sawtooth, Conjointly) for analysis. Outputs willingness-to-pay per feature.
4. **A/B method.** Be careful — show different prices to similar users, observe conversion rates. Always honor original price for users who saw it (no bait-and-switch).
5. **Triangulate methods.** Survey says one number; conjoint another; A/B another. Use the agreement to inform a confident decision; investigate disagreement.

## Examples
1. **Riché's Van Westendorp work at Suzy** — likely runs price-sensitivity surveys for new pricing/packaging across the 350+ enterprise customer base. Standard pre-launch validation methodology.
2. **Spotify's family plan pricing** — conjoint-tested before launch. The plan's price point hit the willingness-to-pay sweet spot for households without cannibalizing single-user Premium.
3. **Slack's Plus → Business pricing tier increase** in 2018 — preceded by extensive testing across customer segments. Resulted in upgrade momentum without significant churn at the entry tier.

## Related entries
- `corpus/pm-frameworks/discovery/van-westendorp-price-sensitivity.md` — survey methodology detail
- `corpus/pm-frameworks/monetization/value-based-pricing.md` — testing supports value-based pricing
- `corpus/pm-frameworks/monetization/tiered-packaging.md` — testing each tier
- `corpus/pm-frameworks/metrics/ab-testing.md` — A/B method for mature products
- `corpus/pm-frameworks/metrics/consumer-science.md` — Biddle's four sources include surveys

## Anti-patterns
1. **Single-method pricing.** Relying only on Van Westendorp without behavioral validation. Stated WTP often differs from revealed WTP.
2. **A/B testing pricing without honoring quoted prices.** Charging different users different prices visibly destroys trust. Either grandfather or run on truly new traffic only.
