---
name: Ask Riché Chatbot Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/voice/, corpus/growth/channels/website-context-layer-demo.md]
---

# Ask Riché Chatbot Category

## What it is
Five Chatbot checks (C1–C5) that audit the Ask Riché chatbot on richezamor.com. The chatbot is a public-facing demonstration of the Context Layer thesis — a working RAG system that demonstrates the architectural ideas Riché writes about. Together the checks verify factual accuracy, voice fidelity, citation correctness, refusal handling, and the Naive RAG vs Context Layer demo functionality.

**The five checks:**

- **C1 Factual accuracy.** <90% of sampled responses factually accurate per LLM-as-judge. Severity: P0 if <80%; P1 if 80–90%.
- **C2 Voice fidelity.** Mean voice fidelity score <4 (out of 5). Severity: P1.
- **C3 Citation correctness.** <95% of cited /thinking articles exist and are relevant to the answer. Severity: P0.
- **C4 Refusal handling.** <90% of out-of-scope queries (job advice, unrelated AI questions, personal info requests) handled gracefully. Severity: P1.
- **C5 Demo functionality.** Naive RAG vs Context Layer comparison toggle returns errors or identical outputs. Severity: P0 (this is the live thesis demonstration).

**Sources:** Sample 30 conversations from the past 7 days from the context management system database; LLM-as-judge with rubrics; automated UI test for C5.

## Why it matters
The Ask Riché chatbot is a load-bearing brand asset. It demonstrates, in real time, the Context Layer thesis Riché writes about — and demonstrates that he ships working systems, not just commentary. When the chatbot works well, every visitor who interacts with it leaves with reinforced credibility. When the chatbot performs badly (gives wrong information, sounds nothing like Riché, cites articles that don't exist, refuses badly, or has a broken comparison toggle), it actively damages credibility.

C5 (Demo functionality) is P0 because the Naive RAG vs Context Layer comparison toggle is the centerpiece. The toggle exists specifically to make the thesis visible: ask the same question with both retrieval modes, see different (better) answers from the Context Layer mode. When the toggle is broken or the modes return identical outputs, the visual argument collapses.

C3 (Citation correctness) is also P0 because hallucinated citations are uniquely damaging. A user reading the chatbot output and clicking a citation that 404s — or worse, a citation that exists but doesn't actually contain the cited claim — loses trust in everything else the chatbot says.

## How to apply
- Sample 30 conversations from the past 7 days from the chatbot's logging database. Skew toward longer conversations (2+ turns) since they exercise more of the system.
- For each sampled conversation, run LLM-as-judge against four rubrics:
  - **C1 Factual accuracy:** does each substantive claim in the response correspond to something verifiable in Riché's published content or stated positions? Y/N per claim, aggregated to a per-conversation accuracy rate.
  - **C2 Voice fidelity:** scored 1–5. 5 = sounds exactly like Riché's published voice. 1 = generic chatbot voice. Use the rubric in `corpus/voice/`.
  - **C3 Citation correctness:** for each citation in the response, verify the URL exists AND the cited article is relevant to the answer. Both must be true.
  - **C4 Refusal handling:** if the query was out of scope (job advice, unrelated AI questions, personal info requests), did the chatbot refuse gracefully (acknowledge the question, redirect to scope, optionally suggest where else to look)?
- For C5: automated UI test. Open the chatbot, ask a canonical question, toggle Naive RAG vs Context Layer, verify outputs are different and that both render without error.
- Fix patterns:
  - **C1:** investigate failure cases; tighten retrieval scope; add a fact-check step in the response pipeline
  - **C2:** strengthen the system prompt; add few-shot examples from Shares.csv voice training data
  - **C3:** add a post-retrieval relevance filter; verify URLs exist before including in response
  - **C4:** add explicit refusal patterns to system prompt; add scope guardrails
  - **C5:** investigate immediately — likely a deployment or env-var issue

## Examples
1. **C1 fires with P0.** Sample of 30 conversations shows 76% factual accuracy. Investigation reveals 5 conversations where the chatbot fabricated specific metrics (e.g., "Riché's Context Layer Engine processes 50,000 documents per day" — no published source). Fix: add a fact-check step; tighten retrieval scope to only allow claims grounded in cited /thinking articles.
2. **C3 fires with P0.** Citations sample reveals 3 of 30 conversations cite /thinking URLs that don't exist (article slugs that were renamed). Fix: implement a URL-existence check before any citation appears in a response.
3. **C5 fires with P0.** Toggle works but both modes return identical responses. Investigation reveals the Naive RAG endpoint is failing silently; the system is falling back to the Context Layer mode for both. Fix: restore the Naive RAG endpoint, add monitoring for silent fallback.
4. **C2 fires with P1.** Mean voice fidelity is 3.6 — chatbot sometimes sounds AI-generic. Specific failures: opening with "Great question!", using "Let's dive in", performative rhetorical questions. Fix: strengthen the system prompt with explicit fatal-fifteen avoidance; add 5 voice-calibrated few-shot examples.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how the chatbot sample is drawn
- `corpus/voice/` — the voice rubric for C2
- `corpus/voice/fatal-fifteen-01-in-todays-openers.md` — and the rest; C2 evaluations use these
- `corpus/growth/channels/website-context-layer-demo.md` — why the demo (C5) matters strategically

## Anti-patterns
- Sampling only the most recent 30 conversations. Recent conversations are biased toward whatever issue is happening this week. Sample across the full 7-day window for a representative read.
- Treating C2 voice failures as cosmetic. Voice is a core asset; a chatbot that sounds AI-generic is actively eroding the practitioner positioning.
