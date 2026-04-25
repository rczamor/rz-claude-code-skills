---
name: Evals Framework
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/non-determinism.md
  - corpus/pm-frameworks/ai-product-pm/continuous-calibration.md
  - corpus/pm-frameworks/metrics/consumer-science.md
  - corpus/pm-frameworks/metrics/ab-testing.md
  - corpus/ai-product-ux/patterns/reasoning-transparency.md
  - corpus/voice/hook-data-is-not-context.md
---

# Evals Framework

## What it is

An eval is a structured evaluation of AI model outputs against defined quality criteria. The framework has four layers: (1) a test set of inputs representative of real usage, (2) a rubric defining what good output looks like across multiple dimensions (correctness, safety, format, tone, reasoning quality, etc.), (3) a grading mechanism (human review, automated metrics, LLM-as-judge), and (4) a comparison protocol that lets you measure model quality before and after a change. Evals replace unit tests as the primary quality discipline for AI products. Shreyas Doshi has framed this as "evals are the new SQL" — the technical literacy every PM in AI products will need to develop.

## Why it matters

Without evals, AI product changes are vibe checks. You ship a prompt update because it "feels better" on three example queries, then discover three weeks later that quality regressed on the long tail. With evals, every prompt change, model swap, or context architecture revision gets measured against the same test set, and the regression shows up in the dashboard before it reaches production. Evals are also the only credible way to talk to engineering leadership about AI product quality — "the model got better" is unfalsifiable; "eval pass rate went from 78% to 84% with a 1.5x latency cost" is a decision input. Lastly, evals are the unit economics of AI product quality: as the eval suite grows, every product change can be tested cheaply, which compounds into faster iteration speed.

## How to apply

Build the eval suite before shipping the product, not after. Start with a small test set (50–200 inputs) drawn from real or representative usage — synthetic inputs are weaker than user logs. Define the rubric in PRD-style detail: what counts as correct, what's a partial credit, what's a hard fail. Choose the grading mechanism that fits the budget: LLM-as-judge for scale (cheaper, less reliable on edge cases), human review for ground-truth (slower, more expensive, more reliable). Treat the eval suite as a living asset — every escalation, bug report, or surprising user input becomes an eval case. Run the eval before every production change, and gate releases on pass-rate thresholds. The PM owns the rubric; engineering owns the runner.

## Examples

- A code-completion product evals on 500 representative prompts across language, context length, and complexity. Each release gates on >85% pass rate across the rubric (correctness, security, style).
- A customer-support AI evals on the last 1000 escalated tickets, with human-graded rubric covering accuracy, tone, escalation correctness, and PII handling.
- A research assistant evals on a fixed set of 50 multi-document synthesis tasks, with LLM-as-judge grading factual coverage, structural coherence, and source attribution.

## Related entries

- `corpus/pm-frameworks/ai-product-pm/non-determinism.md` — the constraint that makes evals necessary
- `corpus/pm-frameworks/ai-product-pm/continuous-calibration.md` — evals are the input to CC/CD
- `corpus/pm-frameworks/metrics/consumer-science.md` — Biddle's hypothesis/experiment/data discipline applies
- `corpus/pm-frameworks/metrics/ab-testing.md` — evals are offline; A/B is online; both are needed
- `corpus/ai-product-ux/patterns/reasoning-transparency.md` — the UX side of model quality
- `corpus/voice/hook-data-is-not-context.md` — context quality is the load-bearing eval dimension

## Anti-patterns

- "Vibe check" releases — shipping prompt or model changes based on subjective judgment without an eval suite
- Building the eval suite after the product is live, when there's no clean baseline
- Treating evals as engineering work rather than PM work — engineers can't define the rubric
- Eval suites that drift away from real user inputs (synthetic-only test sets)
- Gating releases on a single pass-rate number rather than a multi-dimensional rubric
- Using LLM-as-judge without a human-grading sample to calibrate it
