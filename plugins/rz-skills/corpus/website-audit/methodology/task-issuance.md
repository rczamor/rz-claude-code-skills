---
name: Task Issuance
domain: website-audit
source_skill: website-audit
entry_type: pattern
length_target: 300-800
related: [corpus/website-audit/methodology/severity-scoring.md, corpus/website-audit/methodology/report-assembly.md, corpus/website-audit/methodology/slack-notification.md]
---

# Task Issuance

## What it is
The fifth step of the audit. Takes the P0/P1 findings from synthesis and issues up to `MAX_WEEKLY_TASKS` (default 5) Linear tasks in the Brand project on the Riché Zamor team. Tasks are ranked by `impact × (6 − effort)` and spread across Tuesday–Friday.

## Why it matters
The audit produces value only when findings convert into action. Linear is where Riché's actual work lives; tasks issued there are scheduled and tracked. Without this step, the audit page in Notion would be a wall of recommendations with no follow-through path.

The ranking formula (`impact × (6 − effort)`) optimizes for high-impact, low-effort work first. A P0 with effort 2 ranks higher than a P0 with effort 4. This concentrates the week's effort on the most leverage-per-hour findings.

The MAX_WEEKLY_TASKS cap is intentional. Audits that issue 20 tasks per week pile up and never get done. 5 tasks per week is a sustainable cadence; everything else goes to a backlog section in the Notion page that can be promoted in a later run.

## How to apply
1. Take all P0+P1 findings from synthesis.
2. Compute `priority_score = impact × (6 − effort)` for each.
3. Sort descending. Take top `MAX_WEEKLY_TASKS` (default 5).
4. For each, create a Linear issue using `Linear:save_issue` with:
   - **team:** `LINEAR_TEAM_ID` (Riché Zamor team UUID)
   - **project:** `LINEAR_PROJECT_ID` (Brand project)
   - **assignee:** `LINEAR_ASSIGNEE_ID` (Riché's user UUID)
   - **priority:** 1 (Urgent) for P0, 2 (High) for P1
   - **title:** per dimension template, format `[dimension] specific finding`
   - **description:** what changed, why it matters, evidence (URL/metric/screenshot link), recommended fix, success criteria, link back to the Notion audit page section
   - **due date:** spacing logic below
   - **labels:** dimension label + surface label (create if missing)
5. Update the Notion audit page with the Linear issue URLs created.
6. Any P0/P1 not in the top 5 goes to the `Backlog (not issued this week)` section in the Notion page.

**Spacing logic for due dates:**

- All P0s due Tuesday EOD
- P1s distributed Wed → Fri, max 2 per day, lightest day first
- If MAX_WEEKLY_TASKS exceeds the date budget (>2 P0s plus >6 P1s), fill Saturday last; never Sunday
- If `save_issue` fails on the full payload, fall back to creating the issue with title and team only, then update with the full description in a separate call (this is a known reliability pattern)

## Examples
1. **Standard week, 4 findings issued.** 1 P0 (broken chatbot endpoint) due Tuesday. 3 P1s due Wed, Thu, Fri. Notion page lists all 4 Linear URLs. 1 P1 finding (lower priority score) goes to Backlog.
2. **Heavy week, 5 issued + 4 in backlog.** 2 P0s, 7 P1s total. 5 issued (2 P0s Tuesday, 3 P1s Wed-Fri). 4 P1s in Backlog. Riché reviews the Notion page Sunday and can promote any of the backlog items to next week's audit by adding `→ Linear` to the page.
3. **save_issue failure recovery.** First attempt with full payload fails. Retry as create-with-title-only, then update with full description. Both succeed; flow continues.

## Related entries
- `corpus/website-audit/methodology/severity-scoring.md` — provides the P0/P1 findings
- `corpus/website-audit/methodology/report-assembly.md` — Notion page is updated with Linear URLs
- `corpus/website-audit/methodology/slack-notification.md` — successor step
- `corpus/website-audit/databases/weekly-audits-schema.md` — where Linear URLs are stored

## Anti-patterns
- Issuing more than MAX_WEEKLY_TASKS to "make sure it gets done." If 8 tasks are issued, 6 stay open as background guilt. The cap exists for a reason.
- Filing Linear tasks with thin descriptions ("fix the SEO issue"). Every task description must contain enough context to act on without re-opening the audit page.
