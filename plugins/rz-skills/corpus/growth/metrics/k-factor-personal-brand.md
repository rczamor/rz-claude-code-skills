---
name: K-Factor (Viral Coefficient) Adapted to Personal Brand
domain: growth
source_skill: research
entry_type: metric
length_target: 300-800
related: [corpus/growth/metrics/growth-loops-personal-brand.md, corpus/growth/flywheel/peer-reshare-mechanics.md, corpus/growth/segments/segment-2-metrics.md]
---

# K-Factor (Viral Coefficient) Adapted to Personal Brand

## What it is
The viral coefficient (K-factor) — popularized by Sean Ellis and the early growth-hacking canon — measures how many new users each existing user brings in. K = (invitations sent per user) × (conversion rate). K > 1 means viral exponential growth; K < 1 means decline; K = 1 means steady-state.

Adapted to personal brand: K-factor = (reshares per follower per cycle) × (new followers per reshare). Roughly: how many new followers does each strong reshare bring?

## Why it matters
The K-factor frame answers a specific question that segment-proxy metrics don't: "Is the audience compounding?" An audience that grows linearly (K < 1) needs constant new acquisition. An audience that compounds (K ≥ 1) grows from within. The personal-brand version helps Riché distinguish which posts produce reshares that bring new followers vs. which posts produce reshares that just circulate among existing followers.

## How to apply
- **Track per-post K:** for each strong post (reshares from 1K+ accounts), measure new followers in the 7 days post-reshare. K = (new followers from that post) / (reshares received).
- **Aim for K ≥ 0.5 on Wednesday deep dives.** This means each reshare brings ~0.5 new followers — sustainable compounding when paired with consistent posting.
- **Don't over-engineer.** K-factor is heuristic for personal brand; the segment proxies remain primary. K-factor is the diagnostic for "is the loop compounding?"
- **Cite the canonical source:** Sean Ellis (formal coining at Dropbox/Eventbrite), and the Andreessen Horowitz / startup canon for application.
- **Pair with growth-loop framing** — see `corpus/growth/metrics/growth-loops-personal-brand.md`.

## Examples
- A Wednesday deep dive on context architecture is reshared 7 times by 1K+ accounts. New followers in 7 days: 38. K = 38/7 ≈ 5.4 new followers per reshare. Strong compounding.
- A Tuesday signal post is reshared 3 times by 1K+ accounts. New followers in 7 days: 4. K = 4/3 ≈ 1.3. Mild compounding; the post stayed inside the existing peer audience.
- A bad post (engagement-bait): reshared by 0 accounts above 1K; new followers ~0. K-factor undefined; loop didn't run.
- Quarterly: average K across Wednesday deep dives is 3.2. Healthy. Quarter-over-quarter trend: K rising means audience compounding accelerates; K falling means saturation among the peer audience and diminishing returns from existing resharers.

## Related entries
- `corpus/growth/metrics/growth-loops-personal-brand.md` — loop frame
- `corpus/growth/flywheel/peer-reshare-mechanics.md` — what makes peers reshare
- `corpus/growth/segments/segment-2-metrics.md` — Segment 2 reshare metric
- `corpus/growth/metrics/aarrr-personal-brand.md` — Referral stage
- `corpus/growth/flywheel/echo-chamber-failure-mode.md` — K < 1 = echo chamber

## Anti-patterns
- Optimizing for K-factor alone. K-factor without quality (Segment 2 proxies) means viral growth among the wrong audience.
- Treating K as a strict KPI. It's a diagnostic for compounding, not a number to game.
