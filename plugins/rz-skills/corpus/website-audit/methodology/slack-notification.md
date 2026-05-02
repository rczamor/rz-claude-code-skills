---
name: Slack Notification
domain: website-audit
source_skill: website-audit
entry_type: template
length_target: 300-800
related: [corpus/website-audit/methodology/report-assembly.md, corpus/website-audit/methodology/task-issuance.md]
---

# Slack Notification

## What it is
The sixth and final step of the audit. Posts a single message to `#brand` in Slack with the traffic-light headline, P0/P1 counts, citation delta, and a link to the full Notion audit page. One message, no thread, no follow-ups.

## Why it matters
The Slack message is the only audit artifact that demands attention. The Notion page is searchable; Linear tasks are scheduled. The Slack notification is the operator's "what happened this week" signal — a five-second read that determines whether to open the Notion page now or later.

The single-message constraint is intentional. A multi-message thread (one per dimension, one per finding) creates noise and trains the operator to ignore the channel. The audit posts one message. If something is genuinely urgent, the operator opens Notion.

## How to apply
Use `Slack:slack_send_message` (NOT draft) to `SLACK_CHANNEL` (default `#brand`). Format:

```
🔍 Weekly Audit — {YYYY-MM-DD}: {🟢 Green | 🟡 Yellow | 🔴 Red}
{n} P0 · {n} P1 · {citations gained or lost} citations WoW
{Notion URL}
```

Single message. No thread. No follow-ups. No tagging.

## Examples
1. **Green week.**
   ```
   🔍 Weekly Audit — 2026-05-03: 🟢 Green
   0 P0 · 1 P1 · +2 citations WoW
   https://www.notion.so/...
   ```
2. **Yellow week.**
   ```
   🔍 Weekly Audit — 2026-05-10: 🟡 Yellow
   1 P0 · 4 P1 · -1 citations WoW
   https://www.notion.so/...
   ```
3. **Red week.**
   ```
   🔍 Weekly Audit — 2026-05-17: 🔴 Red
   3 P0 · 2 P1 · 0 citations WoW
   https://www.notion.so/...
   ```

## Related entries
- `corpus/website-audit/methodology/report-assembly.md` — provides the Notion URL
- `corpus/website-audit/methodology/task-issuance.md` — predecessor step
- `corpus/website-audit/methodology/severity-scoring.md` — provides the traffic light + counts

## Anti-patterns
- Tagging `@here` or specific people in the audit message. The notification is informational; tagging implies urgency that the green-light cases don't warrant.
- Posting follow-up messages in the same channel ("update on the P0 from last week"). Updates belong in the Notion page or in the Linear task — not in Slack.
