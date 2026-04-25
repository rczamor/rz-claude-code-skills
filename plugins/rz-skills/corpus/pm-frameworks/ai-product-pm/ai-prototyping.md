---
name: AI Prototyping (PRD-to-Prototype in Minutes)
domain: pm-frameworks
source_skill: product-management
entry_type: pattern
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/hybrid-pm-prototyper.md
  - corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md
  - corpus/pm-frameworks/ai-product-pm/taste-conviction-influence.md
  - corpus/pm-frameworks/discovery/opportunity-solution-trees.md
  - corpus/pm-frameworks/lifecycle/build-measure-learn.md
---

# AI Prototyping (PRD-to-Prototype in Minutes)

## What it is

AI Prototyping is the practice of converting a PRD or feature concept into a working, interactive prototype in minutes rather than weeks. Tools like v0, Cursor, Bolt, Replit, Lovable, and Claude Code make it possible for a PM to go from "what should this do?" to "here is a clickable, partially functional version" inside a single working session. The prototype is not throwaway — it can become the spec engineering implements against, or in some cases the prototype becomes the v1 production code. The discovery loop compresses: prototype faster, test faster, learn faster.

## Why it matters

Before AI prototyping, the highest-fidelity artifact a PM could produce solo was a Figma mock or a written spec — both of which lose detail in handoff. Engineers had to interpret intent, which produced spec drift between PRD and shipped feature. AI prototyping puts a runnable artifact between the PM and engineering, removing whole categories of misinterpretation. It also dramatically changes the discovery loop: instead of testing a Figma mock with users (low-fidelity, easy to misjudge), the PM tests a working prototype where users actually click, type, and react to live behavior. The quality of learning per discovery hour increases by an order of magnitude. The structural implication: PMs who can prototype have leverage that PMs who can't simply don't.

## How to apply

Make prototyping a default PM practice for any non-trivial feature. Skip the static mockup stage where possible — go from PRD outline directly to a working prototype, then iterate on both in parallel. Use the prototype as the artifact in discovery interviews — users interact with the live thing, not a wireframe. Use the prototype as the artifact in stakeholder reviews — the engineering review meeting is "here's the working version, what do we want to change?" not "here's the spec, what do we think it should do?" Build prototyping fluency as a PM hiring rubric — candidates who can prototype have higher ceiling than those who can't.

## Examples

- A PM uses v0 + Claude Code to ship a working version of a new feature in 30 minutes, then spends two hours running it past five customers before finalizing the PRD
- A team replaces Figma walkthroughs with working-prototype walkthroughs in stakeholder reviews
- A PRD that includes a "live prototype" link section as a required field, alongside problem statement and target outcome
- A PM ships a prototype on Friday afternoon, runs three customer calls Monday morning, and revises the PRD by Monday afternoon

## Related entries

- `corpus/pm-frameworks/ai-product-pm/hybrid-pm-prototyper.md` — the persona this enables
- `corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md` — prototyping is the leverage source for ratio inversion
- `corpus/pm-frameworks/ai-product-pm/taste-conviction-influence.md` — prototyping requires taste
- `corpus/pm-frameworks/discovery/opportunity-solution-trees.md` — Torres's solution-test branch becomes prototype-test
- `corpus/pm-frameworks/lifecycle/build-measure-learn.md` — Ries's loop, dramatically compressed

## Anti-patterns

- Prototyping for the sake of prototyping (working version of a poorly-defined problem)
- Prototypes that bypass eval and quality discipline (the prototype works on demo inputs only)
- Treating the prototype as throwaway when it should be the basis for production code
- Skipping written PRDs entirely — the prototype + spec combination is stronger than either alone
- PMs who refuse to prototype and rely on engineering for any executable artifact
