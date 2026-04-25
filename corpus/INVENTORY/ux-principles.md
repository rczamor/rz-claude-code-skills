# ux-principles — Inventory Slice

**Entry count:** 100
**Source skills:** skills/design-review/SKILL.md (UX Principles section + 10-category audit) + skills/product-design/SKILL.md (interaction frameworks)
**Estimated total words:** ~52,000

This is the deepest domain. The sub-groups split cleanly into (a) foundational principles and (b) the 10-category audit (~80 atomic items). Each audit item gets its own entry so a skill can pull just the rule it needs.

## Sub-grouping summary

- Foundational principles (Three Laws, How Users Behave, Billboard, Wayfinding, Goodwill, Mobile): 12 entries
- Audit category 1 — Visual Hierarchy & Composition: 8 entries
- Audit category 2 — Typography: 15 entries
- Audit category 3 — Color & Contrast: 10 entries
- Audit category 4 — Spacing & Layout: 12 entries
- Audit category 5 — Interaction States: 11 entries
- Audit category 6 — Responsive Design: 8 entries
- Audit category 7 — Motion & Animation: 6 entries
- Audit category 8 — Content & Microcopy: 11 entries
- Audit category 9 — AI Slop Detection: 11 entries
- Audit category 10 — Performance as Design: 6 entries
- Trunk Test + scoring: 2 entries

## Entries

### Foundational principles (12 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| principles/three-laws-overview.md | framework | Three Laws of Usability — overview entry that links to the 3 individual law entries | skill | 500 |
| principles/law-1-dont-make-me-think.md | rule | Self-evident > self-explanatory > requires explanation | skill | 600 |
| principles/law-2-clicks-dont-matter-thinking-does.md | rule | Three mindless clicks beat one click that requires thought | skill | 600 |
| principles/law-3-omit-then-omit-again.md | rule | Get rid of half the words on each page; happy talk dies; instructions die | skill | 600 |
| principles/users-scan-not-read.md | concept | Design billboards going by at 60 mph, not product brochures | skill | 600 |
| principles/users-satisfice.md | concept | Pick the first reasonable option; make right choice the most visible | skill | 500 |
| principles/users-muddle-through.md | concept | Don't figure it out — wing it; once it works they stick to it | skill | 500 |
| principles/users-dont-read-instructions.md | concept | Brief, timely, unavoidable — or unseen | skill | 500 |
| principles/billboard-design-overview.md | framework | Billboard Design for Interfaces — 5 sub-rules link below | skill | 500 |
| principles/navigation-as-wayfinding.md | framework | What site? what page? major sections? options? where am I? how to search? | skill | 700 |
| principles/goodwill-reservoir.md | framework | Friction depletes; respect replenishes | skill | 700 |
| principles/mobile-same-rules-higher-stakes.md | framework | All rules apply more strongly; never sacrifice usability for space | skill | 700 |

### Audit category 1 — Visual Hierarchy & Composition (8 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/01-hierarchy/clear-focal-point.md | rule | One primary CTA per view | skill | 400 |
| audit/01-hierarchy/eye-flow-natural.md | rule | Top-left to bottom-right reading order | skill | 400 |
| audit/01-hierarchy/visual-noise.md | rule | Competing elements fighting for attention | skill | 400 |
| audit/01-hierarchy/info-density-appropriate.md | rule | Density matches content type; respects audience | skill | 400 |
| audit/01-hierarchy/z-index-clarity.md | rule | Nothing unexpectedly overlapping | skill | 400 |
| audit/01-hierarchy/above-fold-3-second.md | rule | Above-the-fold communicates purpose in 3 seconds | skill | 400 |
| audit/01-hierarchy/squint-test.md | rule | Hierarchy still visible when blurred | skill | 400 |
| audit/01-hierarchy/whitespace-intentional.md | rule | Whitespace is intentional, not leftover | skill | 400 |

### Audit category 2 — Typography (15 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/02-typography/font-count-leq-3.md | rule | Cap distinct font families at 3 | skill | 400 |
| audit/02-typography/scale-ratio.md | rule | Scale follows 1.25 (major third) or 1.333 (perfect fourth) | skill | 500 |
| audit/02-typography/line-height.md | rule | 1.5x body, 1.15-1.25x headings | skill | 400 |
| audit/02-typography/measure-45-75.md | rule | 45–75 chars per line (66 ideal) | skill | 400 |
| audit/02-typography/no-skipped-heading-levels.md | rule | h1 → h3 without h2 fails | skill | 400 |
| audit/02-typography/weight-contrast.md | rule | Two or more weights for hierarchy | skill | 400 |
| audit/02-typography/blacklisted-fonts.md | rule | No Papyrus, Comic Sans, Lobster, Impact, Jokerman | skill | 400 |
| audit/02-typography/generic-font-flag.md | rule | Inter / Roboto / Open Sans / Poppins → potentially generic; flag | skill | 400 |
| audit/02-typography/text-wrap-balance-pretty.md | rule | balance / pretty on headings | skill | 400 |
| audit/02-typography/curly-quotes.md | rule | Curly quotes, not straight | skill | 400 |
| audit/02-typography/ellipsis-character.md | rule | … not three dots | skill | 400 |
| audit/02-typography/tabular-nums.md | rule | font-variant-numeric: tabular-nums on number columns | skill | 400 |
| audit/02-typography/body-min-16px.md | rule | Body text ≥ 16px | skill | 400 |
| audit/02-typography/caption-min-12px.md | rule | Caption / label ≥ 12px | skill | 400 |
| audit/02-typography/no-letterspacing-lowercase.md | rule | No letterspacing on lowercase text | skill | 400 |

### Audit category 3 — Color & Contrast (10 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/03-color/palette-coherent.md | rule | ≤12 unique non-gray colors | skill | 400 |
| audit/03-color/wcag-aa-contrast.md | rule | Body 4.5:1, large text 3:1, UI 3:1 | skill | 500 |
| audit/03-color/semantic-colors.md | rule | success=green, error=red, warning=amber/yellow consistently | skill | 400 |
| audit/03-color/no-color-only-encoding.md | rule | Always add labels, icons, or patterns | skill | 500 |
| audit/03-color/dark-mode-elevation.md | rule | Surfaces use elevation, not just lightness inversion | skill | 500 |
| audit/03-color/dark-mode-text-off-white.md | rule | Text ~#E0E0E0, not pure white | skill | 400 |
| audit/03-color/dark-mode-accent-desaturated.md | rule | Primary accent desaturated 10–20% in dark mode | skill | 400 |
| audit/03-color/color-scheme-html.md | rule | color-scheme: dark on html if dark mode present | skill | 400 |
| audit/03-color/no-red-green-only.md | rule | 8% of men have red-green deficiency | skill | 400 |
| audit/03-color/neutral-warm-or-cool.md | rule | Warm or cool consistently — not mixed | skill | 400 |

### Audit category 4 — Spacing & Layout (12 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/04-spacing/grid-consistent.md | rule | Grid consistent at all breakpoints | skill | 400 |
| audit/04-spacing/scale-base.md | rule | Scale uses 4px or 8px base, not arbitrary | skill | 400 |
| audit/04-spacing/alignment-consistent.md | rule | Nothing floats outside the grid | skill | 400 |
| audit/04-spacing/rhythm.md | rule | Related items closer; distinct sections farther | skill | 400 |
| audit/04-spacing/border-radius-hierarchy.md | rule | Not uniform bubbly radius on everything | skill | 400 |
| audit/04-spacing/inner-radius-formula.md | rule | inner = outer - gap (nested elements) | skill | 400 |
| audit/04-spacing/no-mobile-horizontal-scroll.md | rule | No horizontal scroll on mobile | skill | 400 |
| audit/04-spacing/max-content-width.md | rule | No full-bleed body text | skill | 400 |
| audit/04-spacing/safe-area-insets.md | rule | env(safe-area-inset-*) for notch devices | skill | 400 |
| audit/04-spacing/url-reflects-state.md | rule | Filters, tabs, pagination in query params | skill | 500 |
| audit/04-spacing/flex-grid-layout.md | rule | Flex / grid for layout, not JS measurement | skill | 400 |
| audit/04-spacing/breakpoints.md | rule | mobile 375 / tablet 768 / desktop 1024 / wide 1440 | skill | 400 |

### Audit category 5 — Interaction States (11 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/05-interaction/hover-state.md | rule | All interactive elements have a hover state | skill | 400 |
| audit/05-interaction/focus-visible-ring.md | rule | focus-visible ring; never outline:none without replacement | skill | 500 |
| audit/05-interaction/active-pressed-state.md | rule | Depth or color shift on press | skill | 400 |
| audit/05-interaction/disabled-state.md | rule | Reduced opacity + cursor:not-allowed | skill | 400 |
| audit/05-interaction/loading-skeletons.md | rule | Skeleton shapes match real content layout | skill | 500 |
| audit/05-interaction/empty-states.md | rule | Warm message + primary action + visual; not "No items." | skill | 500 |
| audit/05-interaction/error-messages.md | rule | Specific + include fix or next step | skill | 500 |
| audit/05-interaction/success-confirmation.md | rule | Confirmation animation or color, auto-dismiss | skill | 400 |
| audit/05-interaction/touch-targets-44px.md | rule | ≥44px on all interactive elements | skill | 500 |
| audit/05-interaction/cursor-pointer.md | rule | cursor:pointer on all clickable elements | skill | 400 |
| audit/05-interaction/mindless-choice-audit.md | rule | If a click requires thought about whether it's right, flag HIGH | skill | 600 |

### Audit category 6 — Responsive Design (8 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/06-responsive/mobile-design-sense.md | rule | Mobile makes design sense — not stacked desktop columns | skill | 500 |
| audit/06-responsive/touch-targets-mobile-44.md | rule | ≥44px on mobile | skill | 400 |
| audit/06-responsive/no-horizontal-scroll.md | rule | No horizontal scroll on any viewport | skill | 400 |
| audit/06-responsive/responsive-images.md | rule | srcset / sizes / CSS containment | skill | 500 |
| audit/06-responsive/text-readable-no-zoom.md | rule | ≥16px body on mobile | skill | 400 |
| audit/06-responsive/nav-collapse-pattern.md | rule | Hamburger / bottom nav appropriate | skill | 500 |
| audit/06-responsive/forms-mobile-correct-types.md | rule | Correct input types; no autoFocus on mobile | skill | 500 |
| audit/06-responsive/no-user-scalable-no.md | rule | No user-scalable=no or maximum-scale=1 in viewport meta | skill | 400 |

### Audit category 7 — Motion & Animation (6 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/07-motion/easing-rules.md | rule | ease-out enter / ease-in exit / ease-in-out moving | skill | 500 |
| audit/07-motion/duration-50-700.md | rule | 50-700ms range; nothing slower unless page transition | skill | 400 |
| audit/07-motion/purpose-rule.md | rule | Every animation communicates state change, attention, or spatial relationship | skill | 500 |
| audit/07-motion/prefers-reduced-motion.md | rule | Respect prefers-reduced-motion media query | skill | 500 |
| audit/07-motion/no-transition-all.md | rule | List properties explicitly, no transition: all | skill | 400 |
| audit/07-motion/animate-only-transform-opacity.md | rule | Not layout properties (width, height, top, left) | skill | 500 |

### Audit category 8 — Content & Microcopy (11 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/08-content/empty-states-warm.md | rule | Message + action + illustration / icon | skill | 500 |
| audit/08-content/error-messages-specific.md | rule | What happened + why + what to do next | skill | 500 |
| audit/08-content/button-labels-specific.md | rule | "Save API Key" not "Continue" or "Submit" | skill | 400 |
| audit/08-content/no-placeholder-lorem.md | rule | No placeholder / lorem ipsum in production | skill | 400 |
| audit/08-content/truncation-handled.md | rule | text-overflow: ellipsis / line-clamp / break-words | skill | 400 |
| audit/08-content/active-voice.md | rule | "Install the CLI" not "The CLI will be installed" | skill | 400 |
| audit/08-content/loading-ellipsis-character.md | rule | "Saving…" not "Saving..." | skill | 400 |
| audit/08-content/destructive-confirmation.md | rule | Confirmation modal or undo window | skill | 500 |
| audit/08-content/happy-talk-detection.md | rule | "Welcome to..." paragraphs flagged for removal | skill | 500 |
| audit/08-content/instructions-detection.md | rule | If users need to read instructions, the design failed | skill | 500 |
| audit/08-content/happy-talk-word-count.md | rule | Count visible words; classify useful vs. happy talk; report % | skill | 500 |

### Audit category 9 — AI Slop Detection (11 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/09-ai-slop/purple-violet-gradients.md | rule | No purple/violet/indigo gradients or blue-to-purple schemes | skill | 500 |
| audit/09-ai-slop/3-column-feature-grid.md | rule | Icon-in-circle + bold title + 2-line description × 3 — most recognizable AI layout | skill | 600 |
| audit/09-ai-slop/icons-in-colored-circles.md | rule | SaaS-starter-template look | skill | 500 |
| audit/09-ai-slop/centered-everything.md | rule | text-align: center on all headings, descriptions, cards | skill | 500 |
| audit/09-ai-slop/uniform-bubbly-radius.md | rule | Same large radius on every element | skill | 400 |
| audit/09-ai-slop/decorative-blobs.md | rule | Floating circles, wavy SVG dividers — empty section needs better content, not decoration | skill | 500 |
| audit/09-ai-slop/emoji-as-design-elements.md | rule | Rockets in headings, emoji as bullet points | skill | 500 |
| audit/09-ai-slop/colored-left-border-cards.md | rule | border-left: 3px solid accent | skill | 400 |
| audit/09-ai-slop/generic-hero-copy.md | rule | "Welcome to [X]" / "Unlock the power of..." / "Your all-in-one solution" | skill | 500 |
| audit/09-ai-slop/cookie-cutter-section-rhythm.md | rule | hero → 3 features → testimonials → pricing → CTA — every section same height | skill | 500 |
| audit/09-ai-slop/system-ui-as-display.md | rule | system-ui / -apple-system as PRIMARY display font = "I gave up on typography" signal | skill | 500 |

### Audit category 10 — Performance as Design (6 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/10-performance/lcp-target.md | rule | LCP < 2.0s web apps, < 1.5s informational | skill | 500 |
| audit/10-performance/cls-target.md | rule | CLS < 0.1 — no visible layout shifts during load | skill | 400 |
| audit/10-performance/skeleton-quality.md | rule | Shapes match real content layout, shimmer animation | skill | 400 |
| audit/10-performance/image-optimization.md | rule | loading=lazy, dimensions set, WebP/AVIF | skill | 500 |
| audit/10-performance/font-display-swap.md | rule | font-display: swap, preconnect to CDN origins | skill | 400 |
| audit/10-performance/no-fout.md | rule | Critical fonts preloaded; no visible font swap flash | skill | 400 |

### Trunk Test + scoring (2 entries)

| Filename | Type | Hook | Source | Est words |
|----------|------|------|--------|-----------|
| audit/trunk-test.md | template | Drop on page with no context — answer 6 wayfinding questions | skill | 700 |
| audit/scoring-pass-partial-fail.md | rule | PASS (all 6) / PARTIAL (4-5) / FAIL (3 or fewer) — FAIL is HIGH-impact | skill | 500 |

## Open questions

1. The 80+ audit items — overkill for corpus, or load-bearing? Recommend: keep granular (one entry per rule) so skills can pull just the relevant rule. The atomic-entry approach scales corpus to 100 cleanly.
2. AI Slop Detection (category 9) — overlaps with `corpus/brand-system/identity/imagery-anti-patterns.md`. Recommend: keep separate, cross-link; brand-system is positive identity, ux-principles is universal anti-patterns.
3. Trunk Test (top-level test) — is its own entry sufficient, or should each of the 6 questions be an entry? Inventoried as one entry; promote if user wants granular.

## Cross-domain links

- AI Slop Detection ↔ `corpus/brand-system/identity/` (avoidance + identity)
- Touch targets, mobile rules ↔ `corpus/ai-product-ux/` (AI UI on mobile)
- Empty / error / loading states ↔ `corpus/ai-product-ux/failure/`
- Goodwill Reservoir ↔ `corpus/evaluation-frameworks/cognitive-patterns/18-design-for-trust.md`
- Three Laws ↔ `corpus/evaluation-frameworks/review-sections/11-design-ux-review.md`
