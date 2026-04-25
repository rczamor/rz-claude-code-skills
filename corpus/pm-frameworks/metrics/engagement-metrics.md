---
name: Engagement Metrics
domain: pm-frameworks
source_skill: research
entry_type: metric
length_target: 300-800
related: [corpus/pm-frameworks/metrics/heart-framework.md, corpus/pm-frameworks/metrics/churn-retention.md, corpus/pm-frameworks/metrics/feature-adoption.md, corpus/pm-frameworks/metrics/north-star-metric.md]
---

# Engagement Metrics

## What it is
Measurements of how deeply, frequently, and persistently users interact with a product. Common engagement metrics: **DAU/MAU ratio** (proxy for habit formation; Facebook's classic was ~50%), **session frequency** (sessions per user per period), **session duration** (time per session), **action depth** (events per session), **L7/L28 retention** (% of users active in 7 of last 7 days, or 28 of last 28). Engagement metrics typically lead retention and revenue — high engagement now predicts retention later.

## Why it matters
Engagement is the leading indicator that retention and revenue lag behind. A product can have flat acquisition and rising engagement, and you'd predict revenue growth from that signal alone. Conversely, falling engagement is the early-warning signal of churn six months out. PMs who track only retention or revenue see problems too late to fix them; engagement tracking buys runway.

## How to apply
1. **Pick the engagement metric that matches your product's value model.** Daily-use products: DAU/MAU. Episodic products: session frequency. Deep-work products: session duration and depth.
2. **Beware the average.** Engagement distributions are highly skewed — a few power users drive averages. Look at distributions, percentiles, and L7/L28 power-user counts.
3. **Pair with cohort retention.** Engagement that rises while cohort retention falls is dark-pattern engagement (notification spam, addictive loops). The pair detects health.
4. **Define a "qualified active" event.** Not every login counts. Slack used "messages sent"; Spotify uses "tracks played > 30 seconds." The qualified event filters noise.
5. **Track power-user creation rate.** New users who become power users (top decile of engagement) is a healthier metric than total active users.

## Examples
1. **Facebook's DAU/MAU ~50%** in early years was the canonical "habit-formed product" benchmark.
2. **Slack's ~2,000 messages exchanged per team** as activation threshold — engagement at week 1 predicted long-term retention with high accuracy.
3. **Suzy Decision Engine engagement** likely tracks insights queries per week per workspace, decision-conversion events, and the L7/L28 of insights leaders — the team's behavioral pattern that predicts NRR.

## Related entries
- `corpus/pm-frameworks/metrics/heart-framework.md` — E in HEART
- `corpus/pm-frameworks/metrics/churn-retention.md` — engagement leads retention
- `corpus/pm-frameworks/metrics/feature-adoption.md` — feature-level engagement
- `corpus/pm-frameworks/metrics/north-star-metric.md` — engagement often the NSM

## Anti-patterns
1. **MAU as headline metric.** Loud, lagging, and easy to game. Use DAU/MAU ratio or qualified active events instead.
2. **Engagement at any cost.** Optimizing engagement via dark patterns (push spam, infinite scroll) — engagement rises, but lifetime value and brand health collapse. Pair with NPS and retention guardrails.
