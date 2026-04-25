---
name: K-Factor
domain: pm-frameworks
source_skill: research
entry_type: metric
length_target: 300-800
related: [corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/monetization/growth-loops.md, corpus/pm-frameworks/monetization/cold-start-problem.md, corpus/pm-frameworks/thinkers/ellis-sean.md]
---

# K-Factor

## What it is
The **viral coefficient.** K = (invitations sent per user) × (conversion rate of invitations to new users). If K > 1, each user generates more than one new user, producing exponential growth. If K < 1, virality alone cannot sustain growth — acquisition must come from other channels. The metric is borrowed from epidemiology (basic reproduction number) and was popularized in growth practice by Sean Ellis and the early Facebook/Hotmail growth communities.

## Why it matters
K-factor is the single number that tells you whether a product has a viral growth loop. Most consumer products have K between 0.1 and 0.5 — meaning paid acquisition or other channels still dominate. Truly viral products (Hotmail's "PS: I love you. Get your free email at Hotmail" footer, Dropbox's referral, early WhatsApp's contact-list import) sustain K close to or above 1, producing the kind of growth that doesn't require CAC spend.

## How to apply
1. **Formula:** K = i × c, where *i* = average invites per user per period, *c* = conversion rate from invite to new user.
2. **Define the period.** K is meaningless without a time window — invites per user *per day* vs. *per month* are different metrics. Most teams use cohort lifetime.
3. **Compute by cohort.** New cohorts often have higher *i* (early users invite more) than older cohorts.
4. **Drive each lever separately.** Increase *i* via prompts, defaults, in-product moments. Increase *c* via better landing pages, lower friction signup, social proof.
5. **K is not the only growth loop.** Content loops, paid loops, sales loops all matter. Don't optimize for K alone — optimize for whichever loop is dominant or most leverageable.

## Examples
1. **Hotmail's footer** — adding "PS: I love you. Get your free email at Hotmail" to outbound emails drove K from <0.5 to viral. Hotmail hit 12M users in 18 months on near-zero spend.
2. **Dropbox's referral program** — 500MB free for inviting a friend. K rose sharply; signups went from 100K/month to ~4M/month.
3. **Riché's Grandstage 300% growth at $0 CAC** is a K-aware result — referral mechanics and cohort-driven sharing supplied growth that paid spend would otherwise have provided.

## Related entries
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — K-factor measures the Referral stage
- `corpus/pm-frameworks/monetization/growth-loops.md` — viral loop is one of several loop types
- `corpus/pm-frameworks/monetization/cold-start-problem.md` — early K is hard pre-network
- `corpus/pm-frameworks/thinkers/ellis-sean.md` — coined K-factor in modern growth practice
- `corpus/growth/` — direct overlap with growth-domain mechanics

## Anti-patterns
1. **K without cohort.** Reporting "K = 0.7" without specifying period and cohort. The number drifts; the team can't act on it.
2. **K-only obsession.** Optimizing virality at the expense of retention. A viral product nobody returns to dies — see the early-2010s social-app graveyard.
