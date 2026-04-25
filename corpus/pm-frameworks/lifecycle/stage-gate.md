---
name: Stage-Gate
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/lifecycle/lean-startup.md, corpus/pm-frameworks/lifecycle/dual-track-agile.md]
---

# Stage-Gate

## What it is
Robert G. Cooper's product-development methodology, originating in industrial product development at Procter & Gamble in the 1980s. Projects move through discrete *stages* (scoping, business case, development, testing, launch) separated by *gates* — formal go/kill/hold decisions made by a cross-functional gatekeeping committee against pre-defined criteria. Each gate has clear deliverables and pass thresholds. The opposite end of the spectrum from Lean Startup: heavyweight, sequential, governance-driven.

## Why it matters
Stage-Gate looks dated in software but remains the right model in three contexts: regulated industries (medical devices, pharma, aerospace, automotive), capital-intensive bets (hardware, infrastructure), and large enterprises with portfolio-level investment governance. In these settings, the cost of a failed launch dwarfs the cost of a slow process. PMs in software often inherit Stage-Gate residue when companies were founded in such contexts and never updated their operating model.

## How to apply
1. **Identify the stages.** Cooper's classic five: Scoping → Build Business Case → Development → Testing & Validation → Launch.
2. **Define gate criteria upfront.** Each gate has must-meet and should-meet criteria — not negotiable at gate time.
3. **Assemble the gatekeeper committee.** Senior cross-functional leaders authorized to kill projects, not just defer them.
4. **Resource only past-gate projects.** Major investment unlocks at gates, not at the start.
5. **Modernize where possible.** Cooper himself published "Stage-Gate Idea-to-Launch System" updates that integrate Lean and Agile elements — discovery sprints inside scoping, parallel iteration inside development.

## Examples
1. **Medical device companies** under FDA Class II/III oversight effectively require Stage-Gate — design controls, design history files, and 510(k) submissions map directly onto gates.
2. **Boeing 787 development** ran a Stage-Gate-derived process, with parallel-track Agile efforts inside individual subsystems but corporate-level gates for major commitments.
3. **IBM** historically ran Stage-Gate at the product-portfolio level — Riché's IBM personalization work would have surfaced through scoping/business-case gates before development resourcing.

## Related entries
- `corpus/pm-frameworks/lifecycle/lean-startup.md` — opposite end of the lifecycle spectrum
- `corpus/pm-frameworks/lifecycle/dual-track-agile.md` — what most software teams use instead
- `corpus/pm-frameworks/strategy/cynefin-framework.md` — Stage-Gate fits "Complicated" domain; Lean fits "Complex"

## Anti-patterns
1. **Stage-Gate for software at consumer pace.** Imposing heavy gates on a product that needs weekly experiments. Process overhead exceeds learning value.
2. **Gate theater.** Gates become rubber-stamp meetings because no project has been killed in five years. The mechanism stops working.
