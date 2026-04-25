# evaluation-frameworks — Inventory Slice

**Entry count:** 40
**Source skill:** skills/plan-ceo-review/SKILL.md (Cognitive Patterns + 11 Review Sections + Modes) + skills/plan-design-review/SKILL.md (rating rubric)
**Estimated total words:** ~22,000

## Sub-grouping summary

- 18 cognitive patterns (Great-CEO thinking instincts): 18 entries
- 11 review sections (architecture → design): 11 entries
- 4 review modes (SCOPE EXPANSION / SELECTIVE / HOLD / REDUCTION): 4 entries
- Premise / Dream / Alternatives / Outside Voice: 4 entries
- Design rating rubric (anchors per dimension): 3 entries

## Entries

### Cognitive patterns — 18 thinking instincts (18 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| cognitive-patterns/01-classification-instinct.md | concept | Categorize decisions by reversibility × magnitude (Bezos one-way / two-way doors) | skill | 600 |
| cognitive-patterns/02-paranoid-scanning.md | concept | Continuously scan for inflection points, drift, talent erosion (Grove) | skill | 600 |
| cognitive-patterns/03-inversion-reflex.md | concept | "What would make us fail?" alongside "How do we win?" (Munger) | skill | 600 |
| cognitive-patterns/04-focus-as-subtraction.md | concept | Primary value-add is what NOT to do (Jobs: 350 → 10 products) | skill | 600 |
| cognitive-patterns/05-people-first-sequencing.md | concept | People → products → profits, in that order (Horowitz, Hastings) | skill | 600 |
| cognitive-patterns/06-speed-calibration.md | concept | Fast is default; slow only for irreversible + high-magnitude; 70% info enough (Bezos) | skill | 600 |
| cognitive-patterns/07-proxy-skepticism.md | concept | Are metrics serving users, or self-referential? (Bezos Day 1) | skill | 600 |
| cognitive-patterns/08-narrative-coherence.md | concept | Hard decisions need clear framing — make the "why" legible | skill | 500 |
| cognitive-patterns/09-temporal-depth.md | concept | Think in 5-10 year arcs; regret minimization for big bets (Bezos at 80) | skill | 600 |
| cognitive-patterns/10-founder-mode-bias.md | concept | Deep involvement isn't micromanagement if it expands team thinking (Chesky/Graham) | skill | 600 |
| cognitive-patterns/11-wartime-awareness.md | concept | Diagnose peacetime vs. wartime; peacetime habits kill wartime companies (Horowitz) | skill | 600 |
| cognitive-patterns/12-courage-accumulation.md | concept | Confidence comes FROM hard decisions, not before; "the struggle IS the job" | skill | 600 |
| cognitive-patterns/13-willfulness-as-strategy.md | concept | World yields to those who push in one direction long enough (Altman) | skill | 600 |
| cognitive-patterns/14-leverage-obsession.md | concept | Tech is ultimate leverage — one person + tool > team of 100 without (Altman) | skill | 600 |
| cognitive-patterns/15-hierarchy-as-service.md | concept | Every UI decision: what does the user see first / second / third? Not pixels — time | skill | 600 |
| cognitive-patterns/16-edge-case-paranoia-design.md | concept | 47-char names, zero results, network mid-action, first-time vs. power user | skill | 600 |
| cognitive-patterns/17-subtraction-default.md | concept | "As little design as possible" (Rams) — feature bloat kills faster than missing features | skill | 600 |
| cognitive-patterns/18-design-for-trust.md | concept | Every interface decision builds or erodes trust — pixel-level intentionality | skill | 600 |

### 11 review sections (11 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| review-sections/01-architecture.md | template | Component boundaries, data flow (happy/nil/empty/error), state machines, coupling, scaling, SPOFs | skill | 700 |
| review-sections/02-error-rescue-map.md | template | Method × what-can-go-wrong × exception class × rescue action × user-visible message | skill | 700 |
| review-sections/03-security-threat-model.md | template | Attack surface, input validation, authz, secrets, dependencies, injection vectors, audit | skill | 700 |
| review-sections/04-data-flow-edge-cases.md | template | Input → validation → transform → persist → output, with shadow paths at each node | skill | 700 |
| review-sections/05-code-quality.md | template | Organization, DRY, naming, error patterns, edge cases, over/under-engineering, complexity | skill | 700 |
| review-sections/06-test-review.md | template | Diagram of new flows + tests for each: happy / failure / edge / chaos / 2am-Friday | skill | 700 |
| review-sections/07-performance.md | template | N+1, memory, indexes, caching, jobs sizing, slow paths, connection pools | skill | 600 |
| review-sections/08-observability.md | template | Structured logs, metrics, traces, alerts, dashboards, runbooks | skill | 700 |
| review-sections/09-deployment-rollout.md | template | Migration safety, flags, rollout order, rollback plan, parity, smoke tests | skill | 700 |
| review-sections/10-long-term-trajectory.md | template | Tech debt, path dependency, knowledge concentration, reversibility, 1-year-from-now test | skill | 700 |
| review-sections/11-design-ux-review.md | template | Design intentionality at plan level — heuristics audit comes from /design-review | skill | 600 |

### 4 review modes (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| modes/scope-expansion.md | framework | 10x check + Platonic ideal + 5 delight opportunities + opt-in ceremony | skill | 700 |
| modes/selective-expansion.md | framework | HOLD analysis first; then expansion scan; cherry-pick ceremony with neutral posture | skill | 700 |
| modes/hold-scope.md | framework | Defend the boundary; complexity check; minimum-set check; defer to TODOS.md | skill | 600 |
| modes/scope-reduction.md | framework | Strip back to the smallest valuable thing; aggressive deletion | skill | 600 |

### Step-0 framework — premise / dream / alternatives / outside voice (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| step-0/premise-challenge.md | template | 3 questions: right problem? proxy outcome? do-nothing scenario? | skill | 600 |
| step-0/dream-state-mapping.md | template | Current state → this plan delta → 12-month ideal — does plan move toward or away? | skill | 600 |
| step-0/implementation-alternatives.md | template | 2-3 approaches mandatory; one minimal-viable + one ideal-architecture, equal weight | skill | 700 |
| step-0/outside-voice-challenge.md | template | Independent plan challenge from a distant practitioner perspective; integrate findings | skill | 700 |

### Design rating rubric (3 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| design-rubric/0-10-anchors.md | template | What 10 looks like per dimension; what 5 looks like; what 1 looks like | plan-design-review | 700 |
| design-rubric/explain-then-improve.md | rule | Rate, then explain why, then propose specific improvements | plan-design-review | 500 |
| design-rubric/dimensions.md | resource | Aesthetic consistency, hierarchy, motion, type, color, spacing, accessibility | plan-design-review | 600 |

## Open questions

1. The 18 cognitive patterns include design-specific ones (15-18 about UI). Keep them here as evaluation patterns, or split UI ones to `corpus/ux-principles/`? Recommend: keep here — they're CEO-review patterns about UX intentionality, not UX laws.
2. Section 11 (Design & UX) intentionally has narrow scope — leans on `/design-review` for pixel work. Inventory that linkage explicitly.
3. Outside Voice — light or heavy entry? Inventoried as 700 words to capture the integration-rule and challenge-pattern.

## Cross-domain links

- Design rubric → `corpus/ux-principles/` (5 UX laws inform what 10 looks like)
- Cognitive pattern 16 (edge-case paranoia design) → `corpus/ai-product-ux/failure/`
- Step-0 alternatives → `corpus/pm-frameworks/strategy/` (strategic options thinking)
- Premise challenge → `corpus/office-hours/forcing-questions/q1-demand-reality.md`
