---
name: Context Architecture as Product Strategy
domain: pm-frameworks
source_skill: product-management
entry_type: concept
length_target: 300-800
related:
  - corpus/pm-frameworks/ai-product-pm/five-step-context-generation.md
  - corpus/pm-frameworks/ai-product-pm/non-determinism.md
  - corpus/pm-frameworks/ai-product-pm/evals-framework.md
  - corpus/pm-frameworks/strategy/dhm-model.md
  - corpus/pm-frameworks/strategy/seven-powers.md
  - corpus/voice/hook-data-is-not-context.md
  - corpus/ai-product-ux/patterns/reasoning-transparency.md
---

# Context Architecture as Product Strategy

## What it is

Context Architecture is the discipline of designing how an AI product curates, synthesizes, consolidates, prioritizes, and stores the information it operates on. It's distinct from "prompt engineering" (which is one input to context) and "RAG" (which is one technique for retrieving context). Context Architecture is a strategic decision: it determines product quality, defensibility, and unit economics. Riché's thesis: most AI systems chunk, embed, store, and retrieve — they skip the five steps that matter. Context quality matters more than context quantity. Larger context windows don't solve the problem; they postpone it. Expert decision-makers use less information, not more.

## Why it matters

65% of enterprise AI failures are attributed to context drift or memory loss. Foundation models are commoditizing — the same Claude, GPT-4o, or Gemini is available to every competitor. What is not commoditizing: the context an AI product feeds into the model, and the architecture that produces that context. This is the most consequential product strategy decision in any AI system. Companies that get context architecture right build durable Process Power (in Helmer's terms); companies that don't are building on rented infrastructure with no defensibility. For PMs, this means context architecture is not an engineering implementation detail to be delegated — it's a strategic decision the PM owns, like positioning or pricing. For Riché, this is the load-bearing thesis of his career and the one his future founder role will be built on.

## How to apply

Treat context architecture as a first-class product strategy artifact, alongside positioning, pricing, and roadmap. Document the context architecture explicitly: what's curated, how it's synthesized, what's consolidated away, how prioritization is decided, where it's stored. Don't outsource these decisions to retrieval libraries or default RAG patterns — those make the decisions for you, and the defaults are not strategic. Use the context architecture as the lens for build/buy/partner decisions: what context capabilities must we own to be defensible? Use it as the lens for evals: which context-related failure modes do we test for? Use it as the lens for pricing: which customer outcomes does our context architecture make possible that competitors can't?

**Terminology discipline:** use "context synthesis/orchestration" not "context generation" (which implies LLM output). Use "consolidation" not "compression" (which implies token-level techniques). Use "decision-ready context" not "optimized context."

## Examples

- An AI sales tool whose strategic moat is the way it synthesizes call transcripts, CRM data, and email history into a single decision-ready context per customer
- A coding assistant whose differentiation is context architecture: which files, which symbols, which documentation, prioritized in what order
- A research product whose advantage is consolidating across thousands of sources into a focused brief, rather than retrieving the most "relevant" 10 chunks
- A customer-support AI whose context architecture is the feedback-loop discipline: every escalation becomes context for future cases

## Related entries

- `corpus/pm-frameworks/ai-product-pm/five-step-context-generation.md` — the operational framework
- `corpus/pm-frameworks/ai-product-pm/non-determinism.md` — the constraint context addresses
- `corpus/pm-frameworks/ai-product-pm/evals-framework.md` — context drift is a primary eval dimension
- `corpus/pm-frameworks/strategy/dhm-model.md` — context architecture is hard-to-copy and margin-enhancing
- `corpus/pm-frameworks/strategy/seven-powers.md` — context architecture is Process Power
- `corpus/voice/hook-data-is-not-context.md` — Riché's load-bearing positioning
- `corpus/ai-product-ux/patterns/reasoning-transparency.md` — the UX manifestation

## Anti-patterns

- Treating context architecture as RAG (retrieval-augmented generation alone — chunk, embed, retrieve, done)
- Believing larger context windows will solve context-quality problems
- Outsourcing context decisions to default libraries (LangChain defaults, off-the-shelf RAG)
- Conflating "data" with "context" — data is raw; context is decision-ready
- Letting engineering own context architecture while PMs own prompts; both are PM strategy work
- Using "context generation" as a term (implies LLM output); use "synthesis" or "orchestration"
