---
name: Non-determinism as a First-Order Design Constraint
domain: pm-frameworks
source_skill: product-management
entry_type: concept
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/evals-framework.md
  - corpus/pm-frameworks/ai-product-pm/continuous-calibration.md
  - corpus/ai-product-ux/patterns/reasoning-transparency.md
  - corpus/ai-product-ux/failure/graceful-degradation.md
  - corpus/voice/hook-data-is-not-context.md
  - corpus/pm-frameworks/thinkers/doshi-shreyas.md
---

# Non-determinism as a First-Order Design Constraint

## What it is

Non-determinism is the property that identical inputs to an AI system can produce different outputs — different wording, different reasoning paths, sometimes different conclusions. Unlike traditional software where the same function call always returns the same value (modulo external state), language models sample from a probability distribution. Two users typing the same query a second apart can get materially different answers. This is not a bug to be fixed; it's a property of how the underlying technology works. PM design has to assume non-determinism at every layer: spec, eval, UX, support, post-mortem.

## Why it matters

Traditional QA assumes determinism. Test cases pass or fail; bugs reproduce. With non-determinism, every test case has a probability of passing rather than a binary outcome. Customer support escalations involve outputs that can't be reproduced. PRDs that say "the AI should respond with X" are unimplementable — the AI will respond with X most of the time, and PMs have to define what "most" means. The shift is from "does it work?" to "what's the distribution of outputs, and where does the long tail go?" PMs who treat AI products like deterministic software ship products that look great in demos and fail in production where the long tail of inputs matters. Andrew Ng has called this the central PM skill shift of the 2020s.

## How to apply

When writing PRDs for AI features, replace "the system should X" with "the system should X with probability P, and when it fails, the failure mode should be Y." Specify the eval rubric upfront — what fraction of outputs pass which quality criteria — rather than treating quality as a vague aspiration. Design the UX assuming the long tail will be visible to users: confidence indicators, easy regeneration, graceful failure messaging, easy correction paths. In support and ops, build the assumption of non-reproducibility into ticket templates: capture the input, the output, and the model version because that's what's needed for diagnosis. In planning, allocate explicit eval-engineering budget — non-determinism management is now an engineering discipline.

## Examples

- A coding assistant that returns the same query with different code each session needs UX that surfaces "regenerate" prominently, not buried.
- A customer-support chatbot that occasionally answers wrong needs an escalation path that's easier than typical chatbot retries.
- A research assistant that synthesizes documents will produce slightly different summaries each run — the PRD should specify that outputs must agree on the load-bearing facts, not the exact phrasing.

## Related entries

- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — the discipline that operationalizes non-determinism management
- `corpus/pm-frameworks/ai-product-pm/continuous-calibration.md` — non-determinism makes CI/CD insufficient
- `corpus/ai-product-ux/patterns/reasoning-transparency.md` — the UX response to non-determinism
- `corpus/ai-product-ux/failure/graceful-degradation.md` — designing the long-tail failure UX
- `corpus/voice/hook-data-is-not-context.md` — Riché's thesis on context architecture as the response to non-determinism

## Anti-patterns

- "Just use temperature=0" — reduces but doesn't eliminate non-determinism, and produces worse outputs in many use cases
- Writing PRDs without acceptance probability thresholds
- Treating customer escalations as if outputs are reproducible (asking the user to "send the exact response")
- Demoing an AI product on cherry-picked inputs without showing the distribution of outputs
- Treating non-determinism as a temporary problem that better models will solve (it won't, structurally)
