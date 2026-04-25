---
name: Discovery and Delivery Tracks
domain: pm-frameworks
source_skill: product-management
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/lifecycle/dual-track-agile.md, corpus/pm-frameworks/lifecycle/continuous-discovery.md, corpus/pm-frameworks/strategy/empowered-vs-feature-teams.md, corpus/pm-frameworks/thinkers/cagan-marty.md]
---

# Discovery and Delivery Tracks

## What it is
Marty Cagan's product-team operating model, from *Inspired* and *Empowered* (SVPG). Quoted verbatim from the product-management skill: "Discovery: rapidly determine the best solution (valuable, usable, feasible, viable). Delivery: build, test, deploy. These are concurrent, not sequential." The mechanic: an empowered product team runs both tracks at all times. Discovery answers "should we build this?" against Cagan's four risks (value, usability, feasibility, viability). Delivery answers "did we build it well?"

## Why it matters
Distinguishes empowered teams from feature teams. Feature teams take a roadmap and execute delivery — discovery happened upstream, often by someone else. Empowered teams own the *outcome*, which means they own discovery, which means they need both tracks. The two-track model also explains why "PM as backlog manager" produces feature factories: it's a delivery-only role.

## How to apply
1. **Run both tracks every week.** Not "discovery sprint then delivery sprint." Concurrent.
2. **Test the four risks before commitment.** Value (will customers buy/use?), Usability (can they figure it out?), Feasibility (can we build it?), Viability (does it work for the business?).
3. **Use prototypes for discovery.** Production code is for delivery. Discovery uses the cheapest artifact that resolves the risk.
4. **Sync at sprint boundaries.** Delivery pulls validated solutions from discovery's queue. No half-validated work enters delivery.
5. **Cadence: most teams do 2–3 discovery experiments per delivery sprint** — calibrated to risk, not a fixed ratio.

## Examples
1. **Suzy Decision Engine** ran both tracks: Riché's discovery validated Intelligence/Insights/Impact pillars against insights-leader workflows while delivery shipped the platform that 350+ enterprise customers now use.
2. **Spotify's Discover Weekly** went through months of discovery (collaborative filtering experiments, behavioral validation) in parallel with delivery hardening — when launched, it had cleared all four risks.
3. **Helm Labs $3.25M pipeline** is a discovery output — the buyer-side validation cleared viability risk before Riché put delivery resources on a v1.

## Related entries
- `corpus/pm-frameworks/lifecycle/dual-track-agile.md` — Patton's parallel formulation
- `corpus/pm-frameworks/lifecycle/continuous-discovery.md` — Torres's habits operationalize the discovery track
- `corpus/pm-frameworks/strategy/empowered-vs-feature-teams.md` — only empowered teams can run both tracks
- `corpus/pm-frameworks/thinkers/cagan-marty.md` — author profile
- `corpus/pm-frameworks/strategy/product-operating-model.md` — discovery/delivery is one of Cagan's 20 principles

## Anti-patterns
1. **Sequential tracks.** Discovery "phase" ends before delivery starts. Recreates waterfall — by the time delivery ships, discovery insight is stale.
2. **Discovery theater.** Running interviews/prototypes after the roadmap is locked. The team performs discovery but cannot act on disconfirming evidence.
