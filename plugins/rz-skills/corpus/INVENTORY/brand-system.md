# brand-system — Inventory Slice

**Entry count:** 30
**Source skill:** skills/graphic-design/SKILL.md
**Estimated total words:** ~13,000

## Sub-grouping summary

- Brand visual identity (palette, type, imagery, logo): 8 entries + 1 YAML
- Diagram templates: 4 entries
- Presentation design: 6 entries (talk arc + style rules)
- Social media graphics: 6 entries
- Implementation notes: 4 entries
- Cross-medium principles: 2 entries

## Entries

### Brand visual identity (8 entries + 1 YAML)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| identity/neural-architect-overview.md | concept | The "Neural Architect" theme — technical, precise, dark, architecturally structured | skill | 600 |
| identity/color-palette.md | resource | Near-black backgrounds, dark gray cards, white text, muted gray secondary | skill | 500 |
| identity/accent-colors.md | resource | One per project: electric blue / emerald green / amber — used sparingly | skill | 500 |
| identity/color-anti-patterns.md | rule | Never pastels, decorative gradients, neon | skill | 400 |
| identity/typography-rules.md | resource | Inter / system sans for body, JetBrains Mono / Fira Code for technical, never script | skill | 500 |
| identity/imagery-style.md | rule | Architectural / structural / systems-oriented; node-and-edge diagrams; geometric | skill | 600 |
| identity/imagery-anti-patterns.md | rule | Never stock photos of people pointing at screens, generic AI imagery, robots | skill | 500 |
| identity/logo-feel.md | concept | If branded marks: feel like an IDE icon or a developer tool logo | skill | 400 |
| identity/palette.yaml | resource | Structured palette: backgrounds, text, accents, anti-patterns | skill | — |

### Diagram templates (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| diagrams/five-step-context-flow.md | template | Curation → Synthesis → Consolidation → Prioritization → Intelligent Storage; transformation visible at each stage | skill | 700 |
| diagrams/rag-vs-context-layer-comparison.md | template | Side-by-side: RAG (chunk/embed/store/retrieve) vs. Context Layer (5 active steps) | skill | 700 |
| diagrams/context-quality-framework.md | template | Freshness × Consistency × Completeness × Goal-alignment — radar / 2x2 / cards | skill | 600 |
| diagrams/flywheel-diagrams.md | template | Circular reinforcing loops for audience development; pairs with growth flywheel | skill | 500 |

### Presentation design (6 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| presentation/one-idea-per-slide.md | rule | If a slide needs a paragraph to explain, it's two slides | skill | 400 |
| presentation/minimal-text-max-impact.md | rule | Speaker provides explanation; slide provides anchor | skill | 400 |
| presentation/dark-bg-high-contrast.md | rule | Dark backgrounds, high-contrast text, brand-consistent | skill | 400 |
| presentation/code-and-architecture-anchors.md | rule | Code snippets and architecture diagrams as visual anchors — practitioner credibility | skill | 500 |
| presentation/no-bullet-walls.md | rule | If you need a list, make it visual (icons, cards, flow) | skill | 400 |
| presentation/talk-structure-template.md | template | 6-step arc: opening moment → problem → thesis → evidence → framework → close | skill | 700 |

### Social media graphics (6 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| social/aspect-ratios.md | resource | LinkedIn 1200x627 or 1080x1080; X 1600x900 | skill | 400 |
| social/mobile-thumbnail-readability.md | rule | Text overlays must be readable at 375px width | skill | 400 |
| social/non-templated-feel.md | rule | Brand-consistent but not Canva-default; each graphic feels crafted | skill | 500 |
| social/diagrams-over-abstract.md | rule | Diagrams and frameworks beat abstract graphics; audience wants substance | skill | 500 |
| social/corner-treatment.md | rule | Slight border radius (4-8px), never fully rounded | skill | 400 |
| social/attribution-placement.md | rule | Always include Riché's name/handle subtly in a corner for share attribution | skill | 400 |

### Implementation notes (4 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| implementation/svg-for-diagrams.md | pattern | Clean paths, consistent stroke widths | skill | 400 |
| implementation/css-tailwind-layouts.md | pattern | Comparison tables and card layouts via CSS / Tailwind | skill | 400 |
| implementation/react-interactive.md | pattern | Interactive visualizations on richezamor.com via React components | skill | 400 |
| implementation/2x-export-retina.md | rule | Static exports at 2x resolution for retina | skill | 400 |

### Cross-medium principles (2 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| principles/medium-determines-spec.md | rule | When medium isn't specified, ask first — medium determines dimensions, density, interaction | skill | 500 |
| principles/consistent-visual-language.md | rule | Same colors, type scale, spacing rhythm across all outputs | skill | 500 |

## Open questions

1. Should `palette.yaml` exist independently of the markdown entries, or is the markdown sufficient?
2. Speaker one-sheet template — inventoried in growth/speaking, or here? Recommend: design template here, content/structure in growth.

## Cross-domain links

- Talk arc → `corpus/content-system/format-talk-abstract.md`
- Five-step diagram → `corpus/voice/hook-data-is-not-context.md` (the visual argument for the hook)
- Flywheel diagram → `corpus/growth/flywheel/`
- Speaker one-sheet styling → `corpus/growth/channels/website-speaker-one-sheet.md`
