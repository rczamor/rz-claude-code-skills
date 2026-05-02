---
name: S8 — Backlink Loss
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s7-internal-linking.md, corpus/website-audit/dimensions/seo/s1-ranking-regression.md, corpus/website-audit/methodology/severity-scoring.md]
---

# S8 — Backlink Loss

## What it is
Backlinks (external sites linking to richezamor.com) are a primary ranking signal. Losing referring domains is normal background churn; losing a meaningful number in a short window is a signal worth investigating. The audit flags a P1 finding when 3 or more referring domains are lost in 7 days, or Domain Rating drops 1+ points.

**Trigger:**
- Lost referring domains ≥3 in past 7 days, OR
- Domain Rating drop ≥1 point

**Severity:** P1 (investigative — may not be directly actionable).

**Source:** `Ahrefs:site-explorer-refdomains-history` + `Ahrefs:site-explorer-domain-rating-history`.

## Why it matters
Backlink data lags behind reality by several weeks (Ahrefs has to re-crawl), so when a loss shows up in the audit it usually reflects something that already happened. Most backlink losses aren't directly actionable — the linking site decided to remove the link, redesigned and lost the page, or shut down. The signal value is pattern detection: a single domain dropping is noise; three or more in a week is a pattern that warrants attention.

Domain Rating drops compound. A 1-point DR drop usually correlates with rank movement on borderline queries (positions 8-15) and reduced eligibility for new ranking opportunities. Catching it early gives a chance to investigate and, where possible, recover the link.

For richezamor.com at this stage (low DR, growing), every referring domain matters. The audit isn't trying to recover every lost link — that's not realistic. It's trying to flag patterns and surface reclamation opportunities (cases where reaching out to the linking site can restore the link).

## How to apply
- Pull `Ahrefs:site-explorer-refdomains-history` for the last 90 days. Compute net change in last 7 days.
- Pull `Ahrefs:site-explorer-domain-rating-history` for the last 90 days. Compute DR change in last 7 days.
- For each lost referring domain, capture: domain name, URL of the page that previously linked, the page on richezamor.com that was linked to, the date of loss.
- Categorize each loss:
  - **Reclaimable.** The linking site still exists, the page that linked still exists, but the link was removed (the linking site changed the page content). These are worth a polite outreach email.
  - **Lost permanently.** The linking page no longer exists or redirects. Not actionable.
  - **Site shut down.** The entire linking domain is dead. Not actionable.
- File one Linear task per reclaimable loss with the contact path (typically a tactful email asking if the link can be restored).
- For DR drops: usually a lagging indicator of refdomain loss. Don't file a separate task; note in the audit summary.

## Examples
1. **Reclaimable loss — content refresh on linking site.** A PM newsletter previously linked to /thesis from a "further reading" section. Their refresh kept the section but swapped Riché's link for a different article. Reclaim outreach: "Hi [name], saw your refresh — totally fair update. Would you consider keeping the /thesis link? Here's why it complements [the article they kept]..."
2. **Permanent loss — shut down site.** A small AI blog that previously linked to /work shuts down. Not reclaimable. Note in audit, no task.
3. **Pattern detection — 4 losses from related publications.** Four refdomain losses in 7 days, all from PM-adjacent newsletters. Investigation reveals they all linked to the same /thinking article that has since been heavily updated, breaking deep-link anchors. Fix: restore the deep-link anchors that those external sites referenced.

## Related entries
- `corpus/website-audit/dimensions/seo/s7-internal-linking.md` — internal links partially compensate for external losses
- `corpus/website-audit/dimensions/seo/s1-ranking-regression.md` — backlink loss can drive ranking regressions
- `corpus/website-audit/methodology/severity-scoring.md` — P1 threshold logic
- `corpus/networking/outreach/` — reclaim outreach templates

## Anti-patterns
- Treating every backlink loss as a crisis. Background churn is real. The threshold (3+ in 7 days) is what separates noise from signal.
- Sending desperate-sounding reclaim emails. The reclaim is most effective when it comes across as a polite reference, not a beg.
