---
name: Hybrid PM-Prototyper Model
domain: pm-frameworks
source_skill: product-management
entry_type: pattern
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/ai-prototyping.md
  - corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md
  - corpus/pm-frameworks/ai-product-pm/taste-conviction-influence.md
  - corpus/pm-frameworks/strategy/empowered-vs-feature-teams.md
  - corpus/pm-frameworks/discovery/continuous-discovery-habits.md
---

# Hybrid PM-Prototyper Model

## What it is

The Hybrid PM-Prototyper is a PM persona that emerged with AI tooling: a PM who has design sensibilities, can build functional prototypes, can read and modify code, and can write evals. The boundaries between PM, design, and engineering are intentionally porous — the same person specifies, prototypes, and validates. This is not the "PM who used to be an engineer" of the 2010s; it's a new role calibrated to AI-product workflows where the prototyping artifact is the primary output and the speed of the discovery loop matters more than the strict separation of concerns.

## Why it matters

In traditional product orgs, the PM specs, design mocks, engineering builds. Each handoff loses information and adds time. The Hybrid PM-Prototyper compresses these handoffs: spec and prototype are co-produced, design sensibilities are baked into the prototype rather than added later, and engineering reviews a working artifact rather than a written description. The result is faster discovery, less spec drift, and higher-fidelity stakeholder reviews. For Riché specifically, this is the model his future founder role will likely require — early-stage AI products are built by Hybrid PM-Prototypers, not by traditional PM/design/engineering trios. The rz-product-design and rz-product-management skills are scoped to support this persona — they overlap deliberately because the underlying work overlaps.

## How to apply

Build the toolchain: a prototyping environment (v0, Cursor, Claude Code, or similar), a design system or component library, an eval harness. Build the skills: read and modify React/Next.js code, manipulate component libraries, write evals, run user interviews. Build the operating cadence: weekly prototyping sessions where the PM produces a working prototype, weekly customer touchpoints where the prototype is tested, weekly reviews where engineering looks at the prototype + spec together. Resist the temptation to specialize back into traditional roles — the leverage is in the hybrid mode, not in any single discipline.

## Examples

- A PM who ships every PRD with a working prototype, customer-tested before engineering scopes the work
- A startup where the founder operates as Hybrid PM-Prototyper for the first 18 months, only hiring traditional design and engineering specialists once the v1 product is in market
- A senior IC role at a mature company titled "Product Engineer" or "Hybrid PM" — explicitly cross-functional
- A PM who maintains their own component library and design tokens because the prototyping workflow benefits from it

## Related entries

- `corpus/pm-frameworks/ai-product-pm/ai-prototyping.md` — the practice the persona performs
- `corpus/pm-frameworks/ai-product-pm/pm-engineer-ratio-inversion.md` — the structural shift the persona enables
- `corpus/pm-frameworks/ai-product-pm/taste-conviction-influence.md` — the appreciating skills the persona embodies
- `corpus/pm-frameworks/strategy/empowered-vs-feature-teams.md` — Cagan's empowered model with role boundaries dissolved
- `corpus/pm-frameworks/discovery/continuous-discovery-habits.md` — Torres's trio model, but with a single hybrid PM

## Anti-patterns

- Calling yourself a Hybrid PM-Prototyper without actually shipping prototypes
- Hybrid PM-Prototyper at scale teams where the model breaks down — works best at <30 person orgs or autonomous pods within larger orgs
- Letting the prototyping work dominate the spec and discovery work — prototypes without research are vanity
- Refusing to delegate as the org grows, becoming a bottleneck
- Hiring traditional PM/design/engineering generalists when the role actually requires the hybrid persona
