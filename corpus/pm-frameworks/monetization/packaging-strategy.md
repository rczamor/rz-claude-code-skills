---
name: Packaging Strategy
domain: pm-frameworks
source_skill: research
entry_type: pattern
length_target: 300-800
related: [corpus/pm-frameworks/monetization/tiered-packaging.md, corpus/pm-frameworks/monetization/freemium.md, corpus/pm-frameworks/monetization/value-based-pricing.md, corpus/pm-frameworks/monetization/expansion-revenue.md]
---

# Packaging Strategy

## What it is
The decision about *which features go into which tier* — the design problem inside tiered pricing. Packaging strategy answers: which feature is the entry-tier hook, which is the upgrade trigger, which differentiates Pro from Enterprise, which is "Contact us" gated? Done well, packaging produces clear upgrade ladders, healthy ARPA distribution, and minimal cannibalization between tiers. Done poorly, it confuses customers, depresses conversion, and limits expansion.

## Why it matters
A product with the right tiers (three-tier structure) but wrong packaging (admin features in entry, basic features in enterprise) under-monetizes badly. Packaging is where the company's pricing power gets operationalized. The best PMs treat packaging as a product decision, not a pricing-team decision — because feature placement directly shapes the customer journey from entry to enterprise.

## How to apply
1. **Map features to value drivers per segment.** Which feature delivers most value to SMB? To mid-market? To enterprise? Place at the matching tier.
2. **Anchor on upgrade triggers.** What feature, when missing, drives upgrade? That feature lives in the next tier up.
3. **Reserve "table-stakes" for entry tier.** Anything required to use the product belongs in the lowest tier, including a minimal feature set.
4. **Place admin / governance / security in higher tiers.** SSO, audit log, role-based access, custom contracts — enterprise.
5. **Test packaging changes carefully.** Repackaging existing customers can produce backlash; grandfather and run new packaging on new customers.

## Examples
1. **HubSpot's packaging.** Marketing Hub's tier ladder maps to company growth stage — the features needed at each stage live in the matching tier. The ladder itself is the upgrade path.
2. **Notion's enterprise tier** — SCIM, advanced security, audit log, SAML SSO. Each is a feature business buyers need that team users don't, cleanly justifying enterprise pricing.
3. **Suzy's enterprise packaging** for 350+ customers likely separates self-serve insights features (entry/mid) from custom panels, advanced analytics, SLA, and dedicated support (enterprise) — clean upgrade ladder.

## Related entries
- `corpus/pm-frameworks/monetization/tiered-packaging.md` — parent framework
- `corpus/pm-frameworks/monetization/freemium.md` — packaging the free tier
- `corpus/pm-frameworks/monetization/value-based-pricing.md` — packaging matches value to price
- `corpus/pm-frameworks/monetization/expansion-revenue.md` — packaging drives upgrade-based expansion
- `corpus/pm-frameworks/monetization/paywall-strategy.md` — paywalls separate tiers in the UX

## Anti-patterns
1. **Random feature distribution.** Features placed in tiers based on shipping order, not value-driver mapping. Customers can't tell why they should upgrade.
2. **Stripping the entry tier of basic functionality.** Pushes potential customers to competitors and depresses top-of-funnel without producing meaningful upgrade.
