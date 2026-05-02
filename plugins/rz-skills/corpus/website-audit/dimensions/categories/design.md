---
name: Design Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/brand-system/identity/neural-architect-overview.md, corpus/brand-system/identity/palette.yaml]
---

# Design Category

## What it is
Five Design checks (D1–D5) that defend the Neural Architect visual identity across deploys, themes, and platforms. Together they detect: theme engine state failures, visual regressions vs. baseline, design system non-compliance on new content, cross-browser rendering breaks (monthly), and OG image quality issues.

**The five checks:**

- **D1 Theme engine state failure.** The theme engine cycles through night/dawn/day/dusk; any state that fails to render correctly is a P0 (the theme engine is a brand differentiator).
- **D2 Visual regression.** Pixelmatch diff vs. baseline >2% on any page (excluding deliberate content changes). Severity: P1.
- **D3 Design system non-compliance.** /thinking article published this week uses inline styles or non-design-system components. Severity: P2.
- **D4 Cross-browser break.** Monthly check only (first Sunday of month). Any of the 8 critical pages renders incorrectly in Chrome / Safari / Firefox. Severity: P1.
- **D5 OG image quality.** Page missing custom OG image OR using a fallback. Severity: P1 for marketing pages; P2 for /thinking (fallback acceptable).

**Sources:** Headless browser screenshots + pixelmatch diff; code execution to scan for inline styles; metadata scan.

## Why it matters
The Neural Architect identity is one of richezamor.com's strongest signals. A senior PM lands on the site, sees the dark technical theme, the monospace eyebrows, the architectural diagrams — and reads "practitioner" before reading any prose. When the design breaks, the signal breaks. A theme engine bug shows up to a viewer in mid-cycle and reads as "low-quality"; a visual regression after a deploy reads as "doesn't ship reliably"; a /thinking article that breaks the design system reads as "rushed."

D1 is P0 because the theme engine is specifically a differentiator — it's not just polish, it's part of the positioning. Most personal-brand sites have static themes; richezamor.com cycles through four. When that cycle fails, the differentiator becomes a liability.

D5 (OG images) sits in the design dimension rather than metadata because the visual quality of the image matters as much as its existence. A custom OG image that's badly designed is worse than a fallback.

## How to apply
- D1: code execution that loads each of the 8 critical pages, cycles through 4 theme states, screenshots each state, runs pixelmatch diff vs. baseline stored in repo. Any state failure = P0.
- D2: same mechanism without the theme cycle. Compare each page's current screenshot to baseline. Diff >2% triggers a P1 unless the diff is a known content change.
- D3: code execution scan of /thinking articles published this week. Parse rendered HTML, flag any inline styles or one-off components. Group findings by article.
- D4: monthly only (first Sunday). Capture screenshots in Chrome, Safari, Firefox at the same viewport. Pixelmatch diff between browsers.
- D5: scan metadata on every page. Flag any without custom OG image. Subjective quality check requires LLM-as-judge on the OG images that exist.
- Fix patterns:
  - **D1:** inspect failing theme variables; usually a missing CSS custom property override
  - **D2:** check git history; either accept and update baseline, or revert
  - **D3:** migrate inline styles to shared design system components
  - **D4:** browser-specific CSS or JS fix (often a vendor prefix issue)
  - **D5:** generate per-page OG images using @vercel/og or static assets

## Examples
1. **D1 fires with P0.** The "dusk" theme renders with broken color tokens on /thinking pages — text becomes barely readable on the slightly-purple background. Investigation: a CSS custom property was renamed in a refactor but wasn't updated in the dusk theme override file. Fix: restore the variable name in the dusk theme. P0, same-day.
2. **D2 fires with P1.** /work case study has a 7% pixel diff vs. baseline. Git history reveals a deliberate content update (new metric added). Update the baseline; not a regression.
3. **D3 fires with P2.** A /thinking article published Wednesday uses an inline `<div style="...">` for a custom callout box. Should be using the shared `<Callout>` component. Migrate.
4. **D5 fires with P1 on /thesis.** /thesis is missing a custom OG image; using the site default. Fix: generate a custom OG image for /thesis featuring the thesis statement in JetBrains Mono on the dark canvas.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how design checks run in the audit
- `corpus/brand-system/identity/neural-architect-overview.md` — the identity these checks defend
- `corpus/brand-system/identity/palette.yaml` — programmatic palette reference
- `corpus/brand-system/identity/imagery-style.md` — what OG images should look like
- `corpus/brand-system/social/non-templated-feel.md` — OG quality criterion

## Anti-patterns
- Updating baselines aggressively to "make D2 pass." If real regressions are routinely accepted as baselines, the check becomes useless. Baselines update only for deliberate, reviewed changes.
- Treating the theme engine as just visual polish. It's a differentiating asset; D1 P0 reflects that priority.
