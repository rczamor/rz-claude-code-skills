# Corpus — Canonical Knowledge for Riché's Skills

A shared knowledge base referenced by the skills in this repo. One edit here updates every skill that imports from it. The corpus holds the dense, load-bearing material — voice rules, product-management frameworks, audience segments, UX principles, evaluation rubrics — that previously lived inline across multiple `SKILL.md` files and drifted as it was updated in one place but not others.

## Layout

Ten domains, one subdirectory each. Each contains 300–800-word markdown deep-dives, one file per canonical entry (rule / framework / pattern / template / concept / person / resource / metric).

```
corpus/
├── README.md                                 (this file)
├── INVENTORY.md                              master worklist — every entry, mapped to source
├── INVENTORY/                                per-domain inventory slices
│   ├── voice.md
│   ├── content-system.md
│   ├── pm-frameworks.md
│   ├── growth.md
│   ├── networking.md
│   ├── office-hours.md
│   ├── brand-system.md
│   ├── ux-principles.md
│   ├── ai-product-ux.md
│   └── evaluation-frameworks.md
├── voice/                    Voice rules, Fatal Fifteen, terminology, three-domain balance
├── content-system/           5 content types, story arcs, hook library, content pillars
├── pm-frameworks/            Discovery, prioritization, strategy, lifecycle, metrics, monetization + thinkers
├── growth/                   4 audience segments, weekly playbook, flywheel, growth loops, metrics
├── networking/               Relationship tiers, outreach templates, conference playbook, CRM
├── office-hours/             Six forcing questions, design doc templates, operating principles
├── brand-system/             Neural Architect palette, typography, diagrams, talk arc
├── ux-principles/            5 UX laws, audit categories, mobile, wayfinding, goodwill reservoir
├── ai-product-ux/            Reasoning transparency, confidence indicators, graceful degradation
└── evaluation-frameworks/    CEO cognitive patterns, 11 review sections, rubrics + anchors
```

## Entry schemas

The schema depends on `entry_type`. The standard schema applies to most entry types; `person` and `template` use sub-schemas because their content shape is genuinely different.

### Standard schema — `rule | framework | pattern | concept | resource | metric`

```markdown
---
name: {entry name}
domain: {domain slug}
source_skill: {originating skill(s), or "research"}
entry_type: rule | framework | pattern | concept | resource | metric
length_target: 300-800
related: [{other entry file paths}]
---

# {Entry Name}

## What it is
One-paragraph definition. Dense and concrete.

## Why it matters
The failure mode it prevents or outcome it enables. Grounded.

## How to apply
2–4 bullets or a short numbered procedure. Should read like a checklist.

## Examples
1–3 concrete examples — prefer Riché's context (Grandstage, Helm Labs, IBM, LinkedIn, conference talks), otherwise named industry examples with attribution.

## Related entries
- `corpus/{domain}/{other-entry}.md` — why it connects
- Cross-domain links welcome.

## Anti-patterns
1–2 bullets on how teams get this wrong.
```

### Person sub-schema — `entry_type: person` (thinkers)

```markdown
---
name: {Full Name}
domain: pm-frameworks
source_skill: product-management | research
entry_type: person
length_target: 600-800
related: [{paths to their frameworks}]
---

# {Full Name}

## What they're known for
1–2 paragraphs: canonical contributions, signature works.

## Why they matter to a Riché-facing skill
Where their thinking applies in Riché's context.

## Their core frameworks (pointers)
Bullet list of `corpus/pm-frameworks/...` entries that came from them.

## Quotable / signature ideas
2–3 of their most quotable claims, attributed.

## Where they're wrong / disagree with others
Contrarian positions, where other thinkers diverge.

## Pointers to source material
Books / posts / talks / podcasts.
```

### Template sub-schema — `entry_type: template` (review sections, rubrics, output formats)

Templates describe a structured output (e.g. a review section, a rubric, a step-0 framework) that itself has a specific format. Their H2 sections vary by template type. They MUST include:

- `## What it is` — the template's purpose
- `## Why it matters` — when and why to use it
- One or more sections describing the **structure** the template produces (e.g. `## Required output`, `## How to use this section`, `## Output format`)
- `## Related entries`
- `## Anti-patterns`

The standard `## How to apply` and `## Examples` sections are optional for templates because the structure-section serves both purposes.

### Schema validation rule

When checking compliance:
- `entry_type: person` → use the person sub-schema
- `entry_type: template` → require `What it is`, `Why it matters`, `Related entries`, `Anti-patterns`, plus at least one structure-describing H2
- All other entry types → use the standard schema (6 H2 sections required)

The `corpus/voice/proof-*` entries are a small exception: they're `entry_type: resource` documenting Riché's proof points. They use `## How to weave it in` instead of `## How to apply` because "weaving" is the actual operation. Acceptable.
```

## Referencing convention — from skills into corpus

A skill that previously held the content inline now holds a pointer block instead:

```markdown
## {Section Title}
Canonical reference in `corpus/`:
- corpus/{domain}/{file}.md — one-line hook
- corpus/{domain}/{file}.md — one-line hook
```

**Rule:** if content is used by ≥2 skills, it belongs in corpus. Skill-unique prose stays in the `SKILL.md`.

## Self-improvement

`skills/self-improve/SKILL.md` observes sessions and can propose refinements to corpus + skills via **draft PRs**. Two modes:

- **retrospective** — triggered automatically by the SessionEnd hook (`scripts/self_improve_hook.sh`). Reviews the just-ended session for user corrections, contradicted facts, or repeated proof points. Opens a draft PR only if the conservative gate passes.
- **curate** — manual or scheduled. Invoke with `claude -p "Run the self-improve skill in curate mode"` or inside a session with `/loop 24h`. Scans for duplication, drift, broken cross-references.

All self-improve PRs open as draft; the user merges.
