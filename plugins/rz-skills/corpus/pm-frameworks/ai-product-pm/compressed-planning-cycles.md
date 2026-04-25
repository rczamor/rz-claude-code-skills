---
name: Compressed Planning Cycles
domain: pm-frameworks
source_skill: product-management
entry_type: concept
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/continuous-calibration.md
  - corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md
  - corpus/pm-frameworks/strategy/product-vision-strategy.md
  - corpus/pm-frameworks/lifecycle/lean-startup.md
  - corpus/pm-frameworks/thinkers/cagan-marty.md
---

# Compressed Planning Cycles

## What it is

Compressed Planning Cycles describes the structural compression of product planning cadences in AI product organizations. What took quarters in traditional product orgs (roadmap planning, capability assessment, strategy revision) now takes weeks or months. The driver: foundation models improve every few months, which means product capabilities shift underneath the team's plans. A roadmap committed in January describes capabilities that are obsolete by April. The PM's job becomes continuous re-evaluation of what's now possible, not execution of a pre-committed plan.

## Why it matters

Traditional planning frameworks (annual strategy, quarterly OKRs, sprint-level roadmap) assume relatively stable capability boundaries. AI products break this assumption: every model release, context-window expansion, or capability launch (multi-modal, agentic, longer reasoning) shifts what the product can do. A team operating on quarterly OKRs in 2026 is by definition planning against capability assumptions from three months ago. Compressed planning is not "plan less" — it's "plan more often, at a different cadence." The most operationally mature AI orgs run 4–6 week strategic refreshes, monthly capability reviews, and continuous roadmap adjustment, with quarterly being reserved only for the highest-altitude bets. Cagan's vision/strategy distinction still applies, but the strategy layer updates monthly, not quarterly.

## How to apply

Design two cadences: a Stable cadence for vision-level work (years; rarely updated) and a Compressed cadence for strategy and roadmap (monthly to bi-weekly). At each compressed cycle, force the team to re-answer: what's now possible that wasn't 30 days ago? What's now obsolete? What customer expectations have shifted? Treat capability releases from foundation model providers as planning inputs, not technical updates — every Anthropic, OpenAI, or Google release should trigger a roadmap review within two weeks. Don't try to maintain a 6-month roadmap; maintain a 6-week committed roadmap and a 6-month directional one. Communicate this cadence to stakeholders explicitly so they don't expect quarterly stability.

## Examples

- A team running monthly strategy reviews instead of quarterly, with explicit "what's now possible / impossible" check
- A roadmap with 6 weeks of committed work and 12 weeks of directional work, refreshed every 4 weeks
- A capability-watch document maintained weekly that tracks model provider updates relevant to the product
- OKRs run on monthly cycles instead of quarterly for AI-product teams (with annual themes for higher-altitude focus)

## Related entries

- `corpus/pm-frameworks/ai-product-pm/continuous-calibration.md` — operational cadence at the system level
- `corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md` — compressed cycles increase PM-thinking demand
- `corpus/pm-frameworks/strategy/product-vision-strategy.md` — Cagan's distinction; strategy layer compresses
- `corpus/pm-frameworks/lifecycle/lean-startup.md` — Ries's B-M-L compresses naturally to AI cadence
- `corpus/pm-frameworks/thinkers/cagan-marty.md` — Cagan's frameworks adapted for compressed cycles

## Anti-patterns

- Maintaining quarterly OKRs in AI product teams without monthly roadmap refresh
- Treating model provider updates as technical news rather than strategic input
- Long roadmaps committed for 6+ months in domains where capability shifts every 3
- "Stability theatre" — refusing to update plans because of stakeholder commitment, even as the plan is obsolete
- Compressing without a Stable layer above (continuous tactical thrash without strategic anchor)
