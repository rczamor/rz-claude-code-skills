---
name: Feature Adoption
domain: pm-frameworks
source_skill: research
entry_type: metric
length_target: 300-800
related: [corpus/pm-frameworks/metrics/heart-framework.md, corpus/pm-frameworks/metrics/funnel-analysis.md, corpus/pm-frameworks/metrics/engagement-metrics.md, corpus/pm-frameworks/lifecycle/escape-the-build-trap.md]
---

# Feature Adoption

## What it is
The percentage of users (or accounts, or sessions) that use a specific feature within a defined time window. Common formulations: **breadth** (% of users who ever used the feature), **depth** (events per user among those who use it), **stickiness** (% who use it in 7 of last 7 days, or 28 of last 28). Useful for measuring whether a shipped feature is actually being used and whether investment in it is paying off.

## Why it matters
Most shipped features are barely used. The Pareto distribution applies: ~80% of usage concentrates in ~20% of features. Feature adoption metrics surface this honestly and make resource-allocation decisions explicit — should we invest more in the feature, kill it, or rebuild its discoverability? Without adoption tracking, teams ship features into the void and never learn which actually create value.

## How to apply
1. **Instrument adoption from launch.** Wait-and-see produces missing data; instrument the metric on day one.
2. **Define qualified usage.** Not every click counts. "User opened the new report builder, ran a query, exported the result" is qualified; "user clicked the button accidentally" is not.
3. **Compare to the target.** Did the feature meet the adoption hypothesis stated in the PRD? If you didn't state one, retrofit one and use it next time.
4. **Look at adoption by user segment.** Feature might be 5% adoption overall but 40% adoption among the target persona — that's a different story than a flop.
5. **Decide: invest, fix, or kill.** Low adoption + high target persona usage = fix discoverability. Low across the board = kill or pivot.

## Examples
1. **Microsoft Office's "kill features" reviews** historically used adoption metrics to decide which features made it into the next version — features below an adoption threshold got removed, simplifying the product.
2. **Slack channel-creation rate** is a feature-adoption metric tied to team activation — first channel created is part of the activation funnel.
3. **Suzy Decision Engine new pillar features** (Intelligence/Insights/Impact) — feature adoption per pillar across 350+ enterprise customers tells the team whether each pillar is delivering value or whether one is dragging.

## Related entries
- `corpus/pm-frameworks/metrics/heart-framework.md` — A in HEART
- `corpus/pm-frameworks/metrics/funnel-analysis.md` — feature adoption is a sub-funnel
- `corpus/pm-frameworks/metrics/engagement-metrics.md` — feature-level engagement
- `corpus/pm-frameworks/lifecycle/escape-the-build-trap.md` — adoption is an outcome, not output

## Anti-patterns
1. **Adoption without value.** A feature has 80% adoption but doesn't move the underlying business outcome. Adoption is necessary, not sufficient.
2. **Lifetime adoption.** Reporting "% of users who ever used X" hides whether it's a one-time-use feature or a retained habit. Use stickiness (recurring usage) for that.
