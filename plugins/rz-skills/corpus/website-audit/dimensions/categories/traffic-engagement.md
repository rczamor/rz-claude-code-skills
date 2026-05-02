---
name: Traffic & Engagement Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/website-audit/methodology/severity-scoring.md, corpus/growth/metrics/]
---

# Traffic & Engagement Category

## What it is
Five Traffic & Engagement checks (T1–T5) that run against Google Analytics data via Zapier. Together they detect: meaningful traffic regressions, source-mix shifts that signal audience quality changes, engagement drops on the canonical content surface, broken conversion paths, and audience composition drift away from the target ICP.

**The five checks:**

- **T1 Session decline.** Total weekly sessions drop ≥15% WoW with no LinkedIn/X publishing change to explain it. Severity: P1.
- **T2 Source mix shift.** Direct traffic share grows past 60% (suggests bot inflation), OR LinkedIn share drops below 30% (audience targeting failing). Severity: P1.
- **T3 Engagement-time regression on /thinking.** Average engagement time on /thinking pages drops ≥20% WoW. Severity: P1 (signals content-market fit issue).
- **T4 Conversion event stalled.** Zero contact form submissions in past 14 days, OR chatbot opens drop ≥30% WoW. Severity: P0 if contact form (could be broken); P1 if chatbot.
- **T5 Audience mismatch.** Top countries by sessions don't include US in top 3, OR mobile session share >70% (desktop is the VP/CPO device). Severity: P1.

**Source for all five:** Zapier → Google Analytics actions.

## Why it matters
Traffic checks are the audit's connection to actual audience reality. Every other dimension (SEO, AIO, design, brand) is upstream optimization; Traffic measures whether the optimization is working. A site can have perfect SEO and zero traffic — that's a content-market fit failure, not an SEO failure. The traffic dimension catches it.

Specifically: T1 catches losses early enough to investigate while the cause is still recoverable. T2 catches audience-quality drift (the wrong people are showing up). T3 catches content-market fit problems (people are showing up but bouncing). T4 catches outright breakage in conversion paths. T5 catches ICP drift (the right metrics, the wrong audience).

For richezamor.com, the audience signal matters more than the absolute numbers. A 50-session week from 50 senior PMs and CPOs is more valuable than a 500-session week from 500 college students. T2 and T5 are the checks that protect against vanity-metric drift.

## How to apply
- Use `Zapier:list_enabled_zapier_actions` first to confirm available GA actions.
- Pull via `Zapier:execute_zapier_read_action`:
  - Sessions, users, pageviews (this week vs. last week, by source/medium)
  - Top 10 pages by sessions and by engagement time
  - Conversion events: chatbot opens, contact form submissions, /thinking article scroll-to-completion
  - Audience signal: country/region, new vs. returning, device
- For each of T1–T5, compare current values against the previous audit's values to compute deltas.
- T1 fixes: cross-reference with the week's publishing activity. If LinkedIn posts dropped, that explains it. If not, investigate referrers — if LinkedIn click-through dropped, audit the past week's posts; if organic dropped, cross-reference with SEO regressions (S1).
- T2 fixes: for direct-share inflation, audit referrer/UTM filtering (bots often arrive as direct). For LinkedIn-share drop, audit recent LinkedIn engagement metrics; the algorithm may have de-prioritized.
- T3 fixes: investigate the most-viewed /thinking article. Common causes: too long without progressive structure, lede buried below scroll, formatting issue (long unbroken paragraphs).
- T4 fixes: P0 — submit a test form, open the chatbot directly. If broken, file as P0 build issue. If working, investigate UX (form too long, chatbot button too small, etc.).
- T5 fixes: ICP drift is rarely actionable in a single week. Note in audit, watch the trend over a quarter. If sustained, revisit channel strategy.

If a needed GA action isn't enabled in Zapier, log under Run notes and surface in the next run setup recommendations.

## Examples
1. **T1 fires with P1.** Sessions down 22% WoW. LinkedIn posting cadence held (5 posts as usual). Referrer breakdown reveals LinkedIn click-through dropped 40%. Cross-reference with the week's post engagement: a Wednesday deep dive that performed badly. Note in audit; add to content-strategy retro.
2. **T4 fires with P0.** Zero contact form submissions in 14 days, normal volume the prior 30 days. Submit a test: form returns "thank you" page but no email arrives. Investigation reveals the email service (Resend) had an API key rotation that didn't propagate. P0 fix; restore service same-day.
3. **T2 fires with P1.** Direct traffic share jumped from 35% to 65% in one week. No corresponding LinkedIn drop. Investigation reveals a referrer-spam attack (bots hitting direct URLs from IP ranges in Eastern Europe). Fix: add referrer/IP filtering to GA; not a real audience change.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how Zapier-GA actions are structured
- `corpus/website-audit/methodology/severity-scoring.md` — P0/P1 threshold logic
- `corpus/growth/metrics/dashboard-template.md` — broader growth metric tracking
- `corpus/growth/metrics/anti-vanity-metrics.md` — why audience quality > total sessions

## Anti-patterns
- Reacting to one week's traffic data in isolation. WoW deltas catch real signals but also catch noise (a holiday week, a single bad post). Trend across 3-4 weeks before making strategic changes.
- Assuming all direct traffic is bots. Direct includes branded searches and bookmarked visits; the 60% threshold is the trigger, not "direct = bad."
