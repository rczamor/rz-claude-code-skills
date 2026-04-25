---
name: Dual-Track Agile
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/lifecycle/discovery-delivery-tracks.md, corpus/pm-frameworks/lifecycle/continuous-discovery.md, corpus/pm-frameworks/thinkers/patton-jeff.md]
---

# Dual-Track Agile

## What it is
A development process popularized by Jeff Patton (and earlier formulated by Desiree Sy at Autodesk). Two parallel tracks operate continuously: a **discovery track** (validate problems and solutions through research, prototyping, experiments) and a **delivery track** (build, test, ship validated work). The tracks sync at sprint boundaries — only validated work flows from discovery into the delivery backlog.

## Why it matters
From Patton's *User Story Mapping* (2014) and his "Dual Track Development" essays. Dual-track resolves the agile ceremony problem: scrum tells you how to deliver but not what to deliver. Without an explicit discovery track, teams default to "PM tosses tickets over the fence" — a feature factory dressed in agile rituals. Dual-track institutionalizes the parallel investigation that Cagan, Torres, and Olsen all assume.

## How to apply
1. **Two tracks, one team.** Not two separate teams. PM, design, and engineering split attention across both tracks.
2. **Discovery track outputs:** validated user stories, prototypes, assumption-test results, story maps. *Not* just "research findings."
3. **Delivery track outputs:** shipped, tested, instrumented features.
4. **Sync at sprint planning.** Delivery pulls from a queue of *validated* stories. Anything unvalidated stays in the discovery track.
5. **Allocate engineering time to discovery.** A common ratio: ~10–20% of engineering capacity goes to spikes, prototypes, and feasibility tests inside the discovery track.

## Examples
1. **Spotify squads** historically run dual-track — squad members allocate time to "next quarter" discovery in parallel with current-sprint delivery, then sync at quarterly planning.
2. **Atlassian product teams** describe dual-track as the canonical operating model — engineers join discovery interviews, designers prototype against feasibility input, PMs sequence both queues.
3. **Riché's Suzy team** operated dual-track during Decision Engine development — discovery interviews and prototype tests with insights leaders ran weekly while delivery shipped the production platform.

## Related entries
- `corpus/pm-frameworks/lifecycle/discovery-delivery-tracks.md` — Cagan's nearly-identical formulation
- `corpus/pm-frameworks/lifecycle/continuous-discovery.md` — Torres's habits live inside the discovery track
- `corpus/pm-frameworks/discovery/opportunity-solution-trees.md` — OSTs structure the discovery-track queue
- `corpus/pm-frameworks/thinkers/patton-jeff.md` — author profile

## Anti-patterns
1. **Tracks at different cadences.** Discovery operates quarterly while delivery runs 2-week sprints. Discovery output becomes stale; delivery defaults to whatever's lying around.
2. **No engineering in discovery.** Treating discovery as PM-and-design only. Feasibility risk goes untested until delivery hits the wall.
