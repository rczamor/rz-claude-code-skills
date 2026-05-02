---
name: Severity Scoring (Synthesis)
domain: website-audit
source_skill: website-audit
entry_type: pattern
length_target: 300-800
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/website-audit/methodology/report-assembly.md, corpus/website-audit/methodology/task-issuance.md]
---

# Severity Scoring (Synthesis)

## What it is
The third step of the audit. Takes raw findings from all 11 parallel data collection sub-steps and assigns each one a severity (P0 / P1 / P2) based on its impact and effort scores. Also computes per-dimension traffic-light status (green / yellow / red) and an overall audit traffic light.

## Why it matters
Raw findings are noise without prioritization. The audit can detect 200+ issues across 11 dimensions; without severity scoring, the operator faces a wall of data with no signal of what to act on first. Severity scoring is the audit's value-add as a synthesis layer — it turns observations into a ranked action list.

The traffic-light rollups serve a different purpose: a five-second status read for the Slack notification and the audit page header. Even before reading the detailed findings, the operator can see whether the site is broadly healthy (green), needs attention (yellow), or has serious issues (red).

## How to apply
For every captured finding from Step 2, score:

- **Impact (1–5):** how much does this affect Riché's audience reaching, citing, or trusting the site?
- **Effort (1–5):** how much work to fix? (1 = under 30 minutes; 5 = multi-day project)

Then assign severity:

- **P0** if impact = 5 OR (impact ≥4 AND effort ≤3) OR site-breaking (broken page, build failure, security issue)
- **P1** if impact ≥3 AND effort ≤4
- **P2** otherwise

Then compute per-dimension traffic light:

- **Green** if no P0 and ≤2 P1
- **Yellow** if 1 P0 OR 3+ P1
- **Red** if 2+ P0

Then compute overall traffic light:

- Worst dimension light becomes the overall light. If any dimension is red, overall is red. If any is yellow (and none red), overall is yellow.

Findings keep their dimension-level severity (defined in the dimension entries) when that severity is more specific than the impact/effort calculation. For example, A3 (AI crawler accessibility) is always P0 by definition; the impact/effort calculation can't downgrade it.

## Examples
1. **Site-breaking finding.** Q3 fires: recurring 5xx errors on /api/chat. Impact = 5 (chatbot is broken; live thesis demo unavailable). Effort = 2 (rotate API key, redeploy). P0. Q dimension's traffic light: red.
2. **Strategic content gap.** K4 fires: "Active Generation Pipeline" cluster has zero articles. Impact = 4 (this is the moat). Effort = 5 (writing a deep dive takes 4-6 hours). Per the impact/effort calculation, this would be P1 (impact ≥3 AND effort ≤4 doesn't apply here because effort is 5). But K4's dimension definition specifies P1 regardless. The dimension-level definition wins; finding is P1.
3. **Aggregating findings.** S7 fires P2 individually on 6 articles (each missing inbound links). Per the dimension definition, 6 affected articles aggregates to P1. The synthesis step applies the aggregation rule; one P1 finding replaces the 6 individual P2s.
4. **Overall light computation.** SEO has 1 P1 (green stretches). AIO has 1 P0 (yellow). Brand has 2 P1 (green; threshold is 3+). Tech QA has 0 findings (green). Overall light: yellow (worst dimension).

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — feeds findings into this step
- `corpus/website-audit/methodology/report-assembly.md` — uses the severity output
- `corpus/website-audit/methodology/task-issuance.md` — uses the severity output
- Every dimension entry — defines per-dimension severity overrides

## Anti-patterns
- Letting the overall traffic light drift toward green by ignoring small issues. The thresholds are calibrated; adjust them deliberately, not silently.
- Assigning P0 too freely. If everything is urgent, nothing is urgent. P0 is reserved for site-breaking or strategic-emergency findings.
