---
name: Product Kata
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/lifecycle/escape-the-build-trap.md, corpus/pm-frameworks/lifecycle/build-measure-learn.md, corpus/pm-frameworks/thinkers/perri-melissa.md]
---

# Product Kata

## What it is
Melissa Perri's iteration loop, adapted from Mike Rother's Toyota Kata. Quoted verbatim from the product-management skill: "Understand the direction, analyze current state, set next target condition, choose the step to take. Iterative improvement cycle." Each cycle moves the team one step toward the target condition, then repeats. The mechanic: the team never tries to leap to the destination — they take one informed step, observe, then choose the next step.

## Why it matters
The Kata operationalizes Perri's escape from the build trap. Instead of asking "what features do we ship next?" the team asks "given where we are vs. where we want to be, what is the next step that will teach us the most?" The unit of work is a step toward an outcome, not a feature. This forces evidence-based prioritization at the cadence of a sprint.

## How to apply
1. **Understand the direction.** What is the long-term vision/strategy/outcome we're moving toward? (Months/quarters horizon.)
2. **Analyze current state.** Where are we right now? What metrics, behaviors, customer evidence describe today?
3. **Set the next target condition.** A concrete intermediate state that's reachable in 2–4 weeks. Specific enough to be evaluated.
4. **Choose the step.** What is the smallest action that will move us toward the target condition AND teach us whether the path is right?
5. **Run the step. Observe. Repeat from step 2.** No skipping ahead to step 4 of the next cycle.

## Examples
1. **Riché's Suzy Decision Engine** development followed a kata-like cadence — direction (insights cycle time compression), current state (weeks per insights cycle), target condition (sub-day cycle for a defined workflow), step (one workflow's automation). Iterate.
2. **Atlassian growth team** uses a kata-style operating cadence at the squad level — quarterly direction, monthly target conditions, biweekly steps.
3. **Helm Labs $3.25M pipeline** was built kata-style: target condition was a defined buyer-meeting count per week, steps were specific outreach motions, observations adjusted the next step.

## Related entries
- `corpus/pm-frameworks/lifecycle/escape-the-build-trap.md` — the kata is Perri's escape mechanism
- `corpus/pm-frameworks/lifecycle/build-measure-learn.md` — Ries's loop, similar shape
- `corpus/pm-frameworks/thinkers/perri-melissa.md` — author profile
- `corpus/pm-frameworks/metrics/okrs.md` — target conditions ladder up to OKRs

## Anti-patterns
1. **Skipping current-state analysis.** Setting a target condition without honestly describing today. The step ends up addressing an imagined gap, not the real one.
2. **Steps too large.** Treating "ship the feature" as one step. The kata calls for the *smallest* step that teaches — usually a fraction of a feature.
