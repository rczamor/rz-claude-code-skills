---
name: Report Assembly
domain: website-audit
source_skill: website-audit
entry_type: template
length_target: 300-800
related: [corpus/website-audit/methodology/severity-scoring.md, corpus/website-audit/methodology/task-issuance.md, corpus/website-audit/databases/weekly-audits-schema.md]
---

# Report Assembly

## What it is
The fourth step of the audit. Creates a new page in the Weekly Website Audits Notion database, populated with the synthesis output: traffic-light summary, per-dimension findings, severity-ranked action items, AIO query set used, and Run notes. The Notion page is the canonical artifact of the run.

## Why it matters
The Notion audit page is what Riché actually reads. Slack gets a one-liner; Linear gets task tickets; the page is where the full reasoning, the evidence, and the trend data live. It also serves as historical record — every future audit's WoW deltas depend on this page being well-structured and persistently archived.

The page also has a strategic function: it's the artifact Riché reviews to see whether the audit itself is producing value. A page with too many false positives, missing context, or broken structure tells him to refine the audit. A page with clear signal-to-noise tells him to act on the surfaced findings.

## How to apply
Create a new page in the Weekly Website Audits Notion database (`NOTION_AUDIT_DB_ID`) using `Notion:notion-create-pages` with the data source ID from `NOTION_AUDIT_DS_ID`.

**Page title format:** `Weekly Audit — {YYYY-MM-DD}`.

**Required properties** (per `corpus/website-audit/databases/weekly-audits-schema.md`):

- Date (the run date)
- Overall Status (green / yellow / red)
- P0 count
- P1 count
- Citations gained WoW
- Citations lost WoW
- Run notes (rich text or relation to a sub-page)

**Page body structure:**

```
# Weekly Audit — {YYYY-MM-DD}

## Overall: {🟢 Green | 🟡 Yellow | 🔴 Red}

{One-line summary: "X P0, Y P1, Z citations gained/lost vs last week."}

---

## Per-dimension status

| Dimension | Status | P0 | P1 | P2 |
|---|---|---|---|---|
| SEO | 🟢/🟡/🔴 | n | n | n |
| AIO | ... | | | |
| Traffic & Engagement | ... | | | |
| Usability | ... | | | |
| Design | ... | | | |
| Brand & Voice | ... | | | |
| Technical QA | ... | | | |
| Chatbot | ... | | | |
| Keyword Research | ... | | | |

---

## P0 Findings

{One section per P0, with: dimension, finding, evidence (URLs, metrics, screenshots), recommended fix, success criteria}

---

## P1 Findings

{Same structure as P0}

---

## P2 Findings

{Briefer; one line each, grouped by dimension}

---

## Tasks issued this week

{Filled by Step 5 — Linear issue URLs}

---

## Backlog (not issued this week)

{P0/P1 findings beyond the MAX_WEEKLY_TASKS limit; can be promoted to Linear next run}

---

## Quarterly: Competitive Landscape

{Only if is_quarterly_rebaseline = true; populated from competitor benchmark data}

---

## Run notes

- Total run duration: {min}
- Sub-step failures (if any): {list with error context}
- Tools that need attention: {list}
- AIO query set used this week: {20 queries with sources}
- {Any first_run = true notice or other run-level metadata}
```

Save the Notion page URL after creation; needed for the Slack ping (Step 6) and Linear task back-links (Step 5).

## Examples
1. **Standard run.** Notion page created with green overall, 0 P0, 1 P1 (a quick-win query opportunity), AIO query set logged. Step 5 will add 1 Linear task; Step 6 will Slack a green-light message.
2. **Yellow run.** 1 P0 (chatbot demo broken) and 4 P1 (mixed across SEO and AIO). Notion page has full P0 detail with screenshots and proposed fix. Step 5 will issue up to 5 tasks.
3. **First run.** No previous audit exists. Notion page omits all WoW delta sections; Run notes flag `first_run = true`.

## Related entries
- `corpus/website-audit/methodology/severity-scoring.md` — predecessor step
- `corpus/website-audit/methodology/task-issuance.md` — successor step
- `corpus/website-audit/databases/weekly-audits-schema.md` — the Notion DB schema this populates
- `corpus/website-audit/competitor-benchmarking/read-protocol.md` — quarterly section content

## Anti-patterns
- Skipping sections when there are no findings ("nothing to report on Design this week"). Always include the dimension with a green status; the consistency makes WoW reading easier.
- Putting evidence in run-level prose instead of per-finding sections. Findings should be self-contained — Riché should be able to act on a single finding without scanning the whole page.
