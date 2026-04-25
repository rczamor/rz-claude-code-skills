---
name: AARRR Pirate Funnel
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/metrics/heart-framework.md, corpus/pm-frameworks/metrics/funnel-analysis.md, corpus/pm-frameworks/metrics/k-factor.md, corpus/pm-frameworks/monetization/growth-loops.md, corpus/pm-frameworks/thinkers/mcclure-dave.md]
---

# AARRR Pirate Funnel

## What it is
Dave McClure's startup-metrics framework (500 Startups, ~2007), nicknamed "Pirate Metrics" because the five stages spell AARRR. The five stages: **Acquisition** (how users find you), **Activation** (first happy experience — the aha moment), **Retention** (do they come back), **Revenue** (do they pay), **Referral** (do they tell others). Each stage gets a conversion rate; the funnel reveals where users drop off and where investment yields the highest leverage.

## Why it matters
From McClure's "Startup Metrics for Pirates" (2007). AARRR replaced two failure modes simultaneously: (1) tracking only top-of-funnel signups (vanity), and (2) drowning in dashboards with no organizing principle. The funnel orders the customer journey end-to-end, makes drop-off visible, and forces the team to fix the *biggest leak first* — usually activation, not acquisition.

## How to apply
1. **Define each stage in your context.** Acquisition = first touch with marketing. Activation = first value moment ("aha"). Retention = return visit within N days. Revenue = paid event. Referral = invite/share/recommend event.
2. **Instrument conversion rates between stages.** Visit → signup, signup → activation, activation → week-1 retention, retention → revenue, revenue → referral.
3. **Find the biggest leak.** Usually activation. Most teams overinvest in acquisition because it's measurable; the highest leverage is fixing the next stage.
4. **Reframe acquisition once retention works.** Until retention is healthy, acquisition spend pours water into a leaky bucket.
5. **Pair with cohort analysis.** Funnel rates change cohort-over-cohort as the product evolves.

## Examples
1. **Slack's classic AARRR** showed 93% of teams that hit ~2,000 messages exchanged retained long-term. That activation threshold (the "aha moment") drove product investment for years.
2. **Dropbox's referral program** explicitly optimized the last R — give 500MB for inviting a friend. K-factor went from <1 to viral, and the rest of the funnel scaled.
3. **Riché's Grandstage 300% growth at $0 CAC** is an AARRR-aware result — acquisition was free because referral and retention were strong; investment focused on activation, not paid spend.

## Related entries
- `corpus/pm-frameworks/metrics/heart-framework.md` — UX-focused alternative
- `corpus/pm-frameworks/metrics/funnel-analysis.md` — the analysis pattern AARRR uses
- `corpus/pm-frameworks/metrics/k-factor.md` — quantifies the Referral stage
- `corpus/pm-frameworks/metrics/cohort-analysis.md` — pair with AARRR to track cohort drift
- `corpus/pm-frameworks/monetization/growth-loops.md` — loops integrate AARRR into self-reinforcing systems
- `corpus/pm-frameworks/thinkers/mcclure-dave.md` — author profile
- `corpus/growth/` — growth-loop overlap

## Anti-patterns
1. **Acquisition-only optimization.** Pouring spend into top-of-funnel before activation is fixed. The leaky bucket gets bigger.
2. **Single-cohort snapshot.** Looking at AARRR rates for "all users ever." Hides cohort-over-cohort improvements/regressions.
