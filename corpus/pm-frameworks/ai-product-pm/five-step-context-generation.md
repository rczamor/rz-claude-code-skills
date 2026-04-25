---
name: Five-Step Context Generation Framework
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/context-architecture-as-strategy.md
  - corpus/pm-frameworks/ai-product-pm/non-determinism.md
  - corpus/pm-frameworks/ai-product-pm/evals-framework.md
  - corpus/pm-frameworks/ai-product-pm/continuous-calibration.md
  - corpus/voice/hook-data-is-not-context.md
  - corpus/ai-product-ux/patterns/reasoning-transparency.md
---

# Five-Step Context Generation Framework

## What it is

Riché Zamor's framework for actively producing decision-ready context for AI systems. Five steps, ordered: **Curate, Synthesize, Consolidate, Prioritize, Store Intelligently.** Each step is a deliberate operation that transforms raw data into context the model can act on. The framework rejects the dominant chunk-embed-store-retrieve pattern, which skips steps 2 and 3 (synthesis and consolidation) and treats prioritization as a sorting problem rather than an editorial one. The five steps are the operational expression of context-architecture-as-strategy.

**Step 1 — Curate:** Decide what data sources are admissible. Quality over quantity. Most AI systems include everything they can get; expert-grade systems include only what's earned its place.

**Step 2 — Synthesize:** Connect across sources. The same fact appearing in five places gets unified; contradictions get surfaced rather than averaged. Synthesis is the editorial layer, not the merging layer.

**Step 3 — Consolidate:** Reduce redundancy and noise. This is not token-level compression — it's information-level consolidation. Three repetitive paragraphs become one decisive paragraph.

**Step 4 — Prioritize:** Order by load-bearing relevance to the task at hand. The first 500 tokens shape the model's reasoning more than the last 5000.

**Step 5 — Store Intelligently:** Maintain context architecture as a living artifact, not a one-shot construction. Updates, decay, retrieval patterns, and feedback loops are all part of storage design.

## Why it matters

The five-step framework is what makes context-architecture-as-strategy operational. Without an explicit framework, "good context architecture" stays vague — every team produces something they call context, with wildly different quality. With the five-step framework, teams have a checklist: at each step, what's the deliberate decision? Where is the editorial layer? Where is the consolidation discipline? The framework also exposes anti-patterns by absence — teams that skip Synthesize ship redundant, contradictory context; teams that skip Prioritize ship context the model can't navigate; teams that skip Store Intelligently ship products that degrade silently after launch.

## How to apply

Use the framework as a five-pass review for any new AI feature:
1. **Curate review:** Which sources are in? Why? What's excluded? What's the curation rule?
2. **Synthesize review:** Where are sources connected? Where are contradictions surfaced? Who owns the editorial layer?
3. **Consolidate review:** Where is redundancy reduced? What's the consolidation principle?
4. **Prioritize review:** What's at the top of the context window? Why? What's the prioritization heuristic?
5. **Store Intelligently review:** How does this context architecture evolve? What feedback loops update it?

Run this review at PRD finalization, before any major eval or release, and at each calibration cycle. Document the answers as a versioned artifact alongside the PRD.

## Examples

- A research-assistant product where the five-step pass produced a context architecture that reduced average response length by 40% and improved eval pass rate by 15 points
- A customer-support AI where the Synthesize step revealed that 30% of context was contradictory between sources, which had been silently averaged before
- A coding assistant where the Prioritize step (putting the active file and recently edited files first) produced larger gains than swapping foundation models

## Related entries

- `corpus/pm-frameworks/ai-product-pm/context-architecture-as-strategy.md` — the strategic framing
- `corpus/pm-frameworks/ai-product-pm/non-determinism.md` — the constraint the framework addresses
- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — the framework is gated through evals
- `corpus/pm-frameworks/ai-product-pm/continuous-calibration.md` — Step 5 is operationalized via CC/CD
- `corpus/voice/hook-data-is-not-context.md` — Riché's load-bearing thesis
- `corpus/ai-product-ux/patterns/reasoning-transparency.md` — the UX side of context architecture

## Anti-patterns

- Skipping Synthesize and Consolidate, going from Curate directly to Prioritize / Retrieve (this is most RAG)
- Treating Consolidate as token compression rather than information consolidation
- Treating Store Intelligently as a database choice rather than a context-evolution discipline
- Using "context generation" as a term — it implies LLM output; use "synthesis" or "orchestration"
- Outsourcing the framework's steps to off-the-shelf retrieval libraries that make the decisions for you
- Treating the framework as a one-shot review rather than a recurring discipline
