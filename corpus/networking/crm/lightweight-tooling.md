---
name: Lightweight Tooling
domain: networking
source_skill: networking
entry_type: resource
length_target: 400-500
related: [corpus/networking/crm/data-model.md, corpus/networking/crm/weekly-review-cadence.md]
---

# Lightweight Tooling

## What it is
The recommended tools for housing the relationship CRM. Three viable options — Notion, Airtable, or a plain spreadsheet — each lightweight enough to support the data model in `corpus/networking/crm/data-model.md` without becoming admin overhead. The principle: pick the one that has the least friction for fast updates, not the one with the most features.

## Why it matters
The fastest way to kill a personal CRM is to build it in a tool that takes more than 60 seconds to update. Heavy CRMs (HubSpot, Salesforce) optimized for sales teams are dramatically wrong for this use case — they assume a sales rep grinding 50 contacts a day, not a busy product leader updating 10 rows a week. The right tool disappears into the workflow.

## How to apply

Three viable options, with tradeoffs:

### Notion (recommended for most cases)

- **Strengths**: free at Riché's volume, integrates with everything else he uses for content and PM work, supports views (filter by tier, sort by next-action date), shows up nicely on mobile.
- **Weaknesses**: slower to load than a spreadsheet, can become bloated if Riché adds tempting fields.
- **Best for**: someone who already lives in Notion for other knowledge work. The CRM benefits from being in the same surface.

### Airtable

- **Strengths**: stronger filtering and view logic than Notion, easier to add automation later, better at high-volume tabular data.
- **Weaknesses**: free tier limited; paid is overkill for this use case; lives in a tool Riché may not use elsewhere.
- **Best for**: someone who wants more structure and is already using Airtable for other work.

### Plain spreadsheet (Google Sheets / Excel)

- **Strengths**: zero learning curve, fastest possible row update, syncs everywhere, easy to share/export.
- **Weaknesses**: limited view logic, mobile experience worse than Notion, no native automation.
- **Best for**: someone who wants the absolute lowest-friction tool and is comfortable with manual filtering.

### Default recommendation

Notion. The CRM lives in the same surface as Riché's content drafts, voice rules reference, and growth playbook. Single-tool friction is lower than best-tool-per-domain friction.

### What NOT to use

- **HubSpot, Salesforce, Pipedrive**: built for sales teams; the field structure and workflow assumptions are wrong for personal networking.
- **Specialized "personal CRM" apps (Dex, Clay personal, etc.)**: each adds a tool to maintain. Unless one of them dramatically reduces friction, the bloat exceeds the benefit.

## Examples
1. Riché using Notion: a "Networking" page with one database, six columns matching the data model, three views (Tier 1, Tier 2, Tier 3+4 active). Embedded in the weekly admin Notion page so the review and CRM are colocated.
2. Spreadsheet alternative: a single Google Sheet, one tab, six columns, frozen header, conditional formatting on the Tier column. Bookmarked in the browser for one-click access.

## Related entries
- `corpus/networking/crm/data-model.md` — what the tooling holds
- `corpus/networking/crm/weekly-review-cadence.md` — how the tooling is exercised

## Anti-patterns
- Picking the most powerful tool. Every additional feature is potential admin overhead.
- Using a tool Riché doesn't already live in. Context-switching kills the cadence.
