# ai-product-ux — Inventory Slice

**Entry count:** 30
**Source skill:** skills/product-design/SKILL.md (AI patterns + design system) + research (modern AI UX canon)
**Estimated total words:** ~14,000

## Sub-grouping summary

- Core AI UX patterns: 6 entries
- Confidence & calibration: 4 entries
- Failure & graceful degradation: 4 entries
- Context display patterns: 5 entries
- Reasoning transparency: 4 entries
- Progressive autonomy: 4 entries
- Design system defaults (AI products): 3 entries

## Entries

### Core AI UX patterns (6 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| patterns/reasoning-transparency.md | pattern | Show why AI made a decision, not just what; reasoning sidebar in Context Layer Demo | skill | 700 |
| patterns/confidence-indicators.md | pattern | Signal high vs. uncertain — visual (color/opacity/icon) or textual qualifying | skill | 700 |
| patterns/graceful-degradation.md | pattern | Design the failure state first; AI without designed failure is unfinished | skill | 700 |
| patterns/progressive-autonomy.md | pattern | Start AI-assisted, graduate to fully automated as trust builds | skill | 700 |
| patterns/context-display.md | pattern | Users see, audit, correct context that informs AI decisions — core to thesis | skill | 700 |
| patterns/rag-vs-context-layer-interfaces.md | pattern | Visual demo of raw retrieval vs. synthesized context — side-by-side or progressive | skill | 700 |

### Confidence & calibration (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| confidence/visual-encoding.md | template | Color, opacity, iconography for high vs. low confidence | skill | 500 |
| confidence/textual-encoding.md | template | Qualifying language: "I'm confident..." / "This is uncertain..." / "Verify..." | skill | 500 |
| confidence/calibration-anti-patterns.md | rule | Don't pretend AI is always right; users notice and trust drops | skill | 500 |
| confidence/expressing-uncertainty.md | pattern | Three levels — known good, hedged, uncertain — distinct UI affordances | research | 600 |

### Failure & graceful degradation (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| failure/design-the-failure-first.md | rule | Failure state is the test of an AI product; design it first | skill | 600 |
| failure/error-recovery-paths.md | template | Three paths: retry / refine / fall back to human | skill | 600 |
| failure/timeout-and-rate-limit-ux.md | pattern | What happens when the model times out? when the API rate-limits? | research | 600 |
| failure/hallucination-handoff.md | pattern | When detected, hand off gracefully — "Let me hand this to the source data" | research | 600 |

### Context display patterns (5 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| context/sources-panel.md | template | Show sources informing the answer; clickable to inspect | skill | 600 |
| context/correction-interface.md | template | Let users edit / remove / re-rank context that informs the AI | skill | 600 |
| context/context-quality-display.md | template | Surface freshness / consistency / completeness / goal-alignment scores | skill | 600 |
| context/audit-log.md | template | What context was used at each decision point — recoverable, attestable | skill | 600 |
| context/context-as-product-surface.md | concept | Context display IS the product, not a debug panel | skill | 600 |

### Reasoning transparency (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| reasoning/sidebar-pattern.md | template | Reasoning sidebar — collapsible, scrollable, time-stamped | skill | 600 |
| reasoning/show-the-work-rule.md | rule | Reasoning shown is reasoning that can be challenged by user | skill | 500 |
| reasoning/reasoning-vs-output.md | concept | Output is a claim; reasoning is the warrant; users need both | skill | 600 |
| reasoning/skip-reasoning-rule.md | rule | Users may skip reasoning; never auto-collapse if uncertainty is high | skill | 500 |

### Progressive autonomy (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| autonomy/three-tier-model.md | framework | Suggested → confirmed → autonomous; promote on observed accuracy | research | 600 |
| autonomy/trust-building-pattern.md | pattern | Start AI-assisted, log accuracy, prompt user to grant autonomy | skill | 600 |
| autonomy/cagan-empowerment-mapping.md | concept | Maps to Cagan's trust-barrier framework from PM-frameworks | skill | 500 |
| autonomy/revoke-autonomy-ux.md | pattern | Easy off-ramp when AI errs — restore human-in-loop with one click | research | 500 |

### Design system defaults — AI products (3 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| design-system/web-stack.md | resource | Next.js 15 + Tailwind + shadcn/ui customized to Neural Architect | skill | 500 |
| design-system/admin-ui-stack.md | resource | HTMX + Tailwind for Context Layer Engine admin — dense dashboard layouts | skill | 500 |
| design-system/motion-rules.md | rule | Subtle, purposeful motion; communicates state change; never decorative | skill | 500 |

## Open questions

1. The progressive-autonomy three-tier model — derive from research or adapt skill content? Marked `research` for now.
2. Hallucination handoff is a public-canon pattern, not in the source skill. Confirm inclusion.
3. Should context display patterns split between this domain and `corpus/ux-principles/` (general UX)? Recommend: AI-specific stays here; general UX laws live in ux-principles.

## Cross-domain links

- Design system defaults → `corpus/brand-system/` (visual identity)
- Cagan empowerment mapping → `corpus/pm-frameworks/strategy/empowered-vs-feature-teams.md`
- Context architecture → `corpus/voice/hook-data-is-not-context.md` (the thesis)
- 5-step diagram → `corpus/brand-system/diagrams/five-step-context-flow.md`
