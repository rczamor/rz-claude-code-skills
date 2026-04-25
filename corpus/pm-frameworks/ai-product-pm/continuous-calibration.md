---
name: Continuous Calibration / Continuous Development (CC/CD)
domain: pm-frameworks
source_skill: product-management
entry_type: concept
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/non-determinism.md
  - corpus/pm-frameworks/ai-product-pm/evals-framework.md
  - corpus/pm-frameworks/ai-product-pm/compressed-planning-cycles.md
  - corpus/pm-frameworks/lifecycle/build-measure-learn.md
  - corpus/voice/hook-data-is-not-context.md
---

# Continuous Calibration / Continuous Development (CC/CD)

## What it is

Continuous Calibration / Continuous Development is the AI-product analog to traditional CI/CD (Continuous Integration / Continuous Deployment). Where CI/CD assumes deterministic code that can be tested and shipped on a binary pass/fail basis, CC/CD assumes a non-deterministic system that needs ongoing recalibration as the underlying model, prompts, context architecture, and user behavior all shift. The cycle: ship, measure (via evals + production telemetry), recalibrate (prompts, context, fine-tuning, retrieval), redeploy. This happens weekly or daily, not quarterly. The "calibration" framing is deliberate — the goal is not to fix bugs but to keep the system aligned with intended behavior as the inputs and underlying capabilities drift.

## Why it matters

Traditional release cadences assume the system is stable between releases. AI products are not stable between releases — the model provider may have updated something, the context distribution shifts as users behave differently, prompts can degrade as edge cases accumulate. Without CC/CD as the operating model, AI products silently degrade in production: the eval pass rate falls, customer satisfaction drops, but no one notices until someone complains loudly. CC/CD makes calibration a scheduled operating activity, not an emergency response. It also reframes "the AI is broken" from a quality-bar question to a calibration-cycle question: how recently was this last calibrated, what changed in inputs, what's the current eval baseline?

## How to apply

Set up the operating cadence: daily eval runs, weekly calibration review, monthly capability review (which lets you respond to new model releases). Define the calibration triggers: eval regression beyond a threshold, customer-reported quality issues clustered around a pattern, model provider notifies of a backend update. Maintain a living calibration log — every prompt change, context architecture revision, retrieval tuning. Treat the prompt + context bundle as a versioned artifact, not a config string. Build dashboards that surface calibration drift: eval pass rate over time, distribution of output quality, customer escalation rate. The PM owns the calibration cadence; engineering owns the tooling.

## Examples

- A coding assistant runs nightly evals on a 1000-prompt test set. When pass rate drops 3+ points, the team triggers calibration review the next morning.
- A customer-support AI calibrates its retrieval index weekly to incorporate new knowledge-base articles, with eval gating on each calibration release.
- An analytics product running on top of a third-party model recalibrates prompts within 48 hours of any model provider update, gated on a regression eval.

## Related entries

- `corpus/pm-frameworks/ai-product-pm/non-determinism.md` — the constraint that makes CC/CD necessary
- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — the measurement infrastructure for CC/CD
- `corpus/pm-frameworks/ai-product-pm/compressed-planning-cycles.md` — CC/CD compresses the planning cadence
- `corpus/pm-frameworks/lifecycle/build-measure-learn.md` — Ries's loop, applied at AI cadence
- `corpus/voice/hook-data-is-not-context.md` — context drift is one of the calibration triggers

## Anti-patterns

- Treating AI product releases like traditional software releases (quarterly with frozen prompts)
- Calibration as emergency response only, not as a scheduled cadence
- Prompt and context changes that aren't versioned or logged
- Calibration without eval gating (you fix one thing and break two others)
- Operating without a calibration owner — the PM defaults to engineering, which doesn't have product context
