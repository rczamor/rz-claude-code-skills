---
name: Freemium
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/monetization/product-led-growth.md, corpus/pm-frameworks/monetization/paywall-strategy.md, corpus/pm-frameworks/monetization/tiered-packaging.md, corpus/pm-frameworks/monetization/cold-start-problem.md]
---

# Freemium

## What it is
A monetization model in which the product offers a free tier with meaningful value, alongside a paid tier (or multiple paid tiers) that unlock additional features, capacity, or capabilities. Coined by Fred Wilson and Jarid Lukin in 2006. Distinct from a free trial (time-limited free) — freemium is permanent free for users who never upgrade. Works best when the marginal cost of serving a free user is low and the free tier acts as a marketing/network-effect engine for paid conversion.

## Why it matters
Freemium can drive massive top-of-funnel acquisition at near-zero CAC, but it depends on a working free → paid conversion mechanism. Conversion rates of 2–5% are typical; the best freemium products hit 5–10%. The model only works if (a) marginal cost of the free user is genuinely low, (b) the free tier creates retention and habit, (c) there's a clear upgrade trigger that fires for the right users at the right moment. Without all three, freemium is a discount program disguised as a business model.

## How to apply
1. **Define the upgrade trigger.** What changes for a user that makes them want to pay? Capacity hit? New use case? Team-collaboration need? Without a clear trigger, free users stay free forever.
2. **Calibrate the free tier.** Generous enough to demonstrate value and create habit; constrained enough that power users hit the ceiling. The tension is the entire design problem.
3. **Instrument conversion funnel.** Free signup → activation → upgrade trigger → conversion. Each step has a rate; optimize the leakiest.
4. **Watch the unit economics of free.** Servicing free costs (storage, compute, support). If LTV of paid users doesn't cover the support cost of all the free users they attracted, the model breaks.
5. **Pair with PLG mechanics.** Self-serve onboarding, in-product upgrade flow, no friction to upgrade.

## Examples
1. **Notion freemium** — free for personal use, paid for teams. The team-upgrade trigger is shared workspace + member count. Powered Notion's 2020–2023 growth.
2. **Dropbox 2GB free → paid plans.** Capacity-based upgrade trigger. The reference example in modern freemium.
3. **Spotify Free → Premium.** Ad-supported free tier; ad-removal + offline + better quality on Premium. ~46% paid conversion rate (best-in-class).

## Related entries
- `corpus/pm-frameworks/monetization/product-led-growth.md` — freemium is the most common PLG packaging
- `corpus/pm-frameworks/monetization/paywall-strategy.md` — where the upgrade trigger lives
- `corpus/pm-frameworks/monetization/tiered-packaging.md` — adjacent packaging design
- `corpus/pm-frameworks/monetization/cold-start-problem.md` — free tier helps solve cold start
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — Revenue stage in AARRR

## Anti-patterns
1. **Generous free with no upgrade trigger.** Users get all the value for free, never convert. Free becomes the entire business.
2. **Stingy free that doesn't demonstrate value.** Conversion rates collapse because the free experience never created real usage or habit.
