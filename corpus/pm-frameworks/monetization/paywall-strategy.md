---
name: Paywall Strategy
domain: pm-frameworks
source_skill: research
entry_type: pattern
length_target: 300-800
related: [corpus/pm-frameworks/monetization/freemium.md, corpus/pm-frameworks/monetization/tiered-packaging.md, corpus/pm-frameworks/monetization/packaging-strategy.md, corpus/pm-frameworks/metrics/aarrr-funnel.md]
---

# Paywall Strategy

## What it is
The set of decisions about *when, where, and how* to restrict access to paid features in a product with a free tier. Paywall types: **hard paywall** (no access without payment — most newspapers), **metered paywall** (free until N uses, then paid — NYT until ~2020), **soft paywall** (some content free, premium features paid), **freemium paywall** (functional product free, advanced features paid — Notion, Slack), **time-limited trial** (free for N days, then paid — Adobe). Each has different conversion mechanics and unit economics.

## Why it matters
Paywall placement is the single most consequential monetization decision in a freemium or trial product. Place it too early and free users churn before reaching value (low conversion, low LTV). Place it too late and users get all the value for free (low conversion). The optimal paywall sits exactly where users have experienced enough value to want more, but haven't extracted everything they came for. That sweet spot is what well-instrumented teams test for.

## How to apply
1. **Identify the value moment.** When do free users typically experience the "aha"? That's the floor for paywall placement.
2. **Identify the upgrade trigger.** What capability or capacity, once removed, makes users want to pay? That's where the paywall lives.
3. **Test paywall placement.** A/B different paywall positions (e.g., feature gate vs. capacity gate vs. session gate). Conversion rates vary 3-10x.
4. **Soft paywalls beat hard for activation.** A free trial of premium features inside the free tier creates desire, then walls it off. Better than blocking access entirely.
5. **Pair with onboarding.** Free users who never activate never hit the paywall. Onboarding investment improves paywall conversion downstream.

## Examples
1. **NYT's metered paywall** — 5 free articles per month for years. Optimized the threshold via testing. The model became the reference for digital journalism monetization.
2. **Notion's free tier blocks team collaboration above a member count.** The capacity-based paywall fires at the moment the user *needs* team functionality.
3. **Spotify Free → Premium conversion** — paywall is on ad-removal, offline play, audio quality. Hits at the moments of friction Spotify Free has built into the experience.

## Related entries
- `corpus/pm-frameworks/monetization/freemium.md` — paywall design is core to freemium
- `corpus/pm-frameworks/monetization/tiered-packaging.md` — paywalls separate tiers
- `corpus/pm-frameworks/monetization/packaging-strategy.md` — which features sit behind which paywall
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — paywall is the Revenue stage trigger
- `corpus/pm-frameworks/monetization/expansion-revenue.md` — paywall placement affects expansion

## Anti-patterns
1. **Paywall before activation.** Forcing users to pay before they've experienced value. Conversion rates collapse.
2. **No paywall ever.** Free users get full value; conversion to paid is essentially zero. Free becomes the entire business.
