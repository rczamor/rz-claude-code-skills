---
name: Weekly Audits Database Schema
domain: website-audit
source_skill: website-audit
entry_type: resource
length_target: 400-700
related: [corpus/website-audit/methodology/report-assembly.md, corpus/website-audit/methodology/slack-notification.md, corpus/website-audit/methodology/severity-scoring.md, corpus/website-audit/methodology/task-issuance.md]
---

# Weekly Audits Database Schema

## What it is
The Notion database where each audit run's report lives as a single page. Database ID `6d5673aef5a94f17867602778949f869`, data source ID `889093b4-fb7d-4db5-a871-19e7bbe159fd`. One page per Sunday run, named by date. Properties summarize the run; the page body holds the full assembled report per `methodology/report-assembly.md`.

| Property | Type | Notes |
|---|---|---|
| Name | title | `YYYY-MM-DD` of the run |
| Date | date | Same as title, queryable |
| Traffic Light | select | Green / Yellow / Red |
| P0 Count | number | Findings at severity P0 |
| P1 Count | number | Findings at severity P1 |
| P2 Count | number | Findings at severity P2 |
| Notion Run ID | rich_text | Audit run identifier for cross-reference |
| Linear Tasks Created | number | Count of tasks issued from this run |
| Summary | rich_text | One-sentence headline, mirrors the Slack post |
| Overall Dimension Lights | rich_text | Per-dimension green/yellow/red rollup |

The page body, when assembled, contains: executive summary, traffic-light rollup table, Notable Movements section, per-dimension findings sections (SEO, AIO, Traffic & Engagement, Usability, Design, Brand, Technical QA, Chatbot, Keyword Research), Competitive Movements, and an Action List.

## Why it matters
Audits are time-series data. Without a database, you lose the ability to see whether the site is trending green or yellowing, whether the same dimension is recurring as a P0 month over month, and which categories have gone quiet. The properties exist so the time series is queryable without parsing the page body.

The Traffic Light is the headline that gets posted to Slack. The page body is the long form. The split matters because Slack rewards brevity (one line, one link) and Notion rewards depth (the full report). Forcing both into one channel breaks both.

## How to apply

**Page creation timing:** Create the page only after the audit is complete. Partial pages corrupt the time series; if Linear task issuance fails halfway, the audit still has a complete report but the Linear Tasks Created property may be 0 with a note in Summary.

**Naming convention:** `YYYY-MM-DD` (e.g., `2026-05-03`). Do not use day-of-week names; the date is the queryable key.

**Property population:**

- `Traffic Light`. Computed in severity scoring (worst dimension light becomes overall).
- `P0 / P1 / P2 Count`. Direct count from the severity scoring step.
- `Notion Run ID`. Generated at audit start, threaded through every step for traceability.
- `Linear Tasks Created`. Set after task issuance completes.
- `Summary`. One sentence, ≤140 chars, suitable for Slack. Written by report assembly.
- `Overall Dimension Lights`. Comma-separated string like `SEO:green, AIO:yellow, Brand:green, ...`. Lets retrospectives query "all runs where AIO was red" without parsing the body.

**Slack notification rule:** post the Summary + Traffic Light + page link. Do NOT paste the full audit body to Slack; the body is for Notion. The Slack post is the index card.

**Quarterly retrospective query:** at the start of each rebaseline (first Sunday of January, April, July, October), query the last 13 audit pages. Look for: dimensions that were red 3+ times, dimensions that were green 13/13 (consider lightening the check cadence), and P0 categories that recurred.

## Examples
1. **Routine green run.** Sunday audit, all dimensions green, 0 P0, 2 P1, 4 P2. Page created at `2026-05-03` with Traffic Light = Green, Summary = "Site healthy; 2 P1 (S2 low-CTR on /thinking/situated-context, B1 brand drift on /work)." Slack post: green emoji + summary + Notion link.
2. **Yellow with recurring AIO red.** AIO has fired Red for 3 consecutive runs; SEO + Tech QA still green. Page created with Traffic Light = Yellow, dimension lights captures `AIO:red`. Quarterly query at next rebaseline surfaces the recurrence; Riché triages whether to escalate to a content sprint.
3. **Red with site-breaking P0.** Q1 chatbot integration broke; chatbot dimension fires P0. Page created with Traffic Light = Red, P0 Count = 1. Slack post is the red emoji + the summary; Linear task is filed at P0 with the chatbot dimension as the assigned area.

## Related entries
- `corpus/website-audit/methodology/report-assembly.md`. What the page body looks like
- `corpus/website-audit/methodology/slack-notification.md`. How the Summary surfaces to Slack
- `corpus/website-audit/methodology/severity-scoring.md`. How Traffic Light is computed
- `corpus/website-audit/methodology/task-issuance.md`. Fills the Linear Tasks Created property

## Anti-patterns
- Posting the full audit body to Slack. Link to the Notion page; Slack is the index, not the report.
- Creating the page before the audit is complete. Partial pages misrepresent time series and confuse the quarterly retrospective query.
- Renaming pages after creation. The `YYYY-MM-DD` title is the queryable key; renames break the retrospective sort.
