---
name: Product-Market Fit Pyramid
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/discovery/jobs-to-be-done.md, corpus/pm-frameworks/lifecycle/lean-startup.md, corpus/pm-frameworks/thinkers/olsen-dan.md, corpus/pm-frameworks/strategy/dhm-model.md]
---

# Product-Market Fit Pyramid

## What it is
Dan Olsen's five-layer model for evaluating whether a product concept has PMF potential, from *The Lean Product Playbook* (2015). Work bottom-up — each layer constrains the layer above. The five layers, per the product-management skill verbatim: (1) Target customer, (2) Underserved needs, (3) Value proposition, (4) Feature set, (5) UX. The bottom two layers define the *market* (problem space); the top three define the *product* (solution space). PMF is the alignment between the two — a product that delivers a value proposition meeting underserved needs of a defined customer better than alternatives.

## Why it matters
PMF is famously "I know it when I feel it" (Marc Andreessen). Olsen's pyramid converts the felt sense into a stack of testable propositions. It tells a team where to look when PMF is missing — almost always at a lower layer than the team is currently working on. Most "feature" debates are really value-proposition or target-customer ambiguities surfacing as UX disagreements.

## How to apply
1. **Target customer.** Define a specific segment with shared characteristics, not a TAM slice. "Mid-market HR leaders evaluating new performance-review tools" beats "enterprises."
2. **Underserved needs.** Identify what the customer cannot get done well today. Quantify gap: importance × dissatisfaction.
3. **Value proposition.** State how you'll meet those needs better than alternatives. Anchor on the underserved needs you ranked highest.
4. **Feature set.** Choose features that deliver the value prop. Cut anything that doesn't trace upward.
5. **UX.** Make the feature set discoverable and frictionless for the target customer.
6. When a product is struggling, walk *down* the pyramid until you find the broken layer. Don't redesign the UX if the value prop is wrong.

## Examples
1. **Suzy's Decision Engine** sits cleanly in the pyramid — target: 350+ enterprise insights leaders; underserved need: insights cycle time too long for marketing/product cadence; value prop: Intelligence/Insights/Impact pillars compressing weeks to hours; features and UX flow from there.
2. **Helm Labs $3.25M pipeline** validated the bottom two layers (defined buyer, quantified underserved need) before any UX existed — the pre-launch pipeline *was* the PMF signal.
3. **Notion** found PMF after multiple rebuilds because they kept fixing the UX (top) when the issue was target customer (bottom) — ambiguity between consumer note-takers and team workspace buyers.

## Related entries
- `corpus/pm-frameworks/discovery/jobs-to-be-done.md` — JTBD operationalizes "underserved needs"
- `corpus/pm-frameworks/lifecycle/lean-startup.md` — Lean Startup runs experiments against the pyramid
- `corpus/pm-frameworks/thinkers/olsen-dan.md` — author profile
- `corpus/pm-frameworks/strategy/dhm-model.md` — DHM extends PMF into defensibility and margin
- `corpus/pm-frameworks/metrics/north-star-metric.md` — NSM is the lagging indicator of PMF

## Anti-patterns
1. **Top-down design.** Starting at UX and working down. The polished mock survives review but solves the wrong problem.
2. **Single-layer fixation.** Repeatedly iterating on features when the underserved-need layer is unverified. More features won't repair a missing problem.
