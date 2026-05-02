---
name: Usability Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/website-audit/methodology/severity-scoring.md, corpus/ux-principles/]
---

# Usability Category

## What it is
Four Usability checks (U1–U4) that run against eight critical pages (home, /thesis, /work, /about, /contact, top 3 /thinking articles by traffic). Together they detect: Core Web Vitals failures, mobile touch-target violations, broken keyboard navigation, and Lighthouse performance regressions.

**The four checks:**

- **U1 Core Web Vitals failures.** LCP >2.5s, INP >200ms, or CLS >0.1 on any of the 8 critical pages. Severity: P0 if home or /thesis; P1 otherwise.
- **U2 Mobile touch-target violations.** Any interactive element <44px on mobile. Severity: P1.
- **U3 Keyboard navigation broken.** Critical flow (open chatbot, submit contact form, navigate menu) cannot be completed via keyboard alone. Severity: P0.
- **U4 Lighthouse perf score regression.** Score drops ≥10 points WoW on any of the 8 pages. Severity: P1.

**Sources:** Lighthouse runs via code execution; axe-core or pa11y for accessibility; Vercel runtime logs for 4xx/5xx counts.

## Why it matters
Usability is where audience credibility either holds or breaks. A senior PM landing on a slow page bounces; a CPO trying to navigate via keyboard (some do) hits a dead end and never returns; a Friday-night LinkedIn click that loads on a phone with a broken touch target reads as "this person doesn't ship." Usability isn't optional polish — it's the substrate the rest of the brand sits on.

Core Web Vitals are also Google ranking signals. A site failing CWV on key pages won't rank as well, regardless of content quality. So U1 has direct SEO consequences, not just UX consequences.

The 8-page focus is intentional. Auditing every page on every run is wasteful; auditing the 8 pages that matter most catches the issues that matter most. The audit-by-traffic-priority pattern (top 3 /thinking by traffic) ensures effort scales with audience exposure.

## How to apply
- Run Lighthouse via code execution against each of the 8 pages. Capture LCP, INP, CLS, and overall performance score.
- Run axe-core or pa11y against the same 8 pages for accessibility checks (touch targets, keyboard navigation, ARIA correctness).
- For U1 fixes:
  - **LCP > 2.5s:** image preloading, critical CSS, lazy-load below-fold content
  - **INP > 200ms:** defer non-critical JS, break up long tasks, audit hydration cost
  - **CLS > 0.1:** explicit image dimensions, font-display swap, reserve space for dynamic content
- For U2 fixes: audit the specific elements flagged. Usually nav icons, social pills, theme toggle. Increase target size to 44px minimum (WCAG AA standard for mobile).
- For U3 fixes: file as P0. Add focus traps where needed, ensure all interactive elements are keyboard-reachable, fix focus order, add skip links, implement proper ARIA.
- For U4: compare the deployment that triggered the regression against the previous deployment. Usually a specific deploy introduced the cost; revert or fix the specific addition.

## Examples
1. **U1 fires with P0 on /thesis.** LCP measures 3.8s. Investigation reveals a hero image isn't preloaded and is loaded as a render-blocking resource. Fix: add `<link rel="preload">` for the hero image; implement Next.js Image with priority. LCP drops to 1.9s.
2. **U2 fires with P1.** Mobile theme toggle is 32px. Senior PMs reading on commute can't easily tap it. Fix: increase to 44px with proper hit-area padding. Touch interactions normalize.
3. **U3 fires with P0.** Chatbot can't be opened via keyboard. The chatbot trigger button has `tabindex="-1"`. Fix: remove tabindex, add proper ARIA role and label, ensure focus trapping when open, add Escape-to-close. P0 same-day fix.
4. **U4 fires with P1.** Lighthouse score on /thinking dropped from 92 to 78 after a deploy. Investigation reveals a new analytics script was added without async loading. Fix: defer the script.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how Lighthouse + axe-core run as part of the audit
- `corpus/website-audit/methodology/severity-scoring.md` — P0/P1 threshold logic
- `corpus/ux-principles/audit/01-hierarchy/` — broader UX audit canon
- `corpus/ux-principles/audit/03-color/wcag-aa-contrast.md` — overlapping accessibility check

## Anti-patterns
- Treating Lighthouse score as the ground truth. Lighthouse runs in a controlled environment that doesn't always match real-user experience. CrUX (Chrome User Experience Report) data is closer to truth when available.
- Assuming "looks fine on my desktop" means it's fine. The 8-page check explicitly includes mobile measurements; don't skip them.
