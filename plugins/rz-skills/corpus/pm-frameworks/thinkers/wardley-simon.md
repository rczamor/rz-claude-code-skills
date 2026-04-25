---
name: Simon Wardley
domain: pm-frameworks
source_skill: research
entry_type: person
length_target: 600-800
related:
  - corpus/pm-frameworks/strategy/wardley-mapping.md
  - corpus/pm-frameworks/strategy/cynefin-framework.md
  - corpus/pm-frameworks/strategy/competitive-analysis.md
---

# Simon Wardley

## What they're known for

Simon Wardley is a researcher at the Leading Edge Forum and the originator of Wardley Mapping — a strategic mapping technique that visualizes value chains on two axes: visibility (how close a component is to the user, vertical axis) and evolution (how mature a component is — Genesis / Custom / Product / Commodity, horizontal axis). The map reveals where you should build vs. buy vs. outsource, where the competitive landscape will shift, and where to focus strategic attention. Wardley developed the technique while running a SaaS company in the early 2000s and has spent two decades documenting it in a serialized blog book and Medium series. The map became cult-popular in technology strategy circles and is now used inside major tech companies, governments, and consulting firms.

## Why they matter to a Riché-facing skill

Wardley Mapping is the right tool when Riché is doing systems-level strategic thinking — particularly for AI product architecture, where the question of "what do we build vs. what do we use off-the-shelf" is the central decision. The evolution axis (Genesis → Custom → Product → Commodity) is exactly the diagnostic for whether a capability is becoming commoditized (foundation models, embeddings) or remains differentiating (context architecture, evals, domain adaptation). For Riché's context-architecture thesis, Wardley Mapping is uniquely useful: it visualizes why the model layer is heading to commodity while the context layer remains in Custom/Product territory, which is exactly where defensibility lives. The map also helps with build/buy/partner decisions and with anticipating where competitors will move.

## Their core frameworks (pointers)

- `corpus/pm-frameworks/strategy/wardley-mapping.md` — value chain on visibility × evolution axes
- (Cross-link) `corpus/pm-frameworks/strategy/cynefin-framework.md` — Wardley uses Cynefin alongside mapping for situational awareness
- (Cross-link) `corpus/pm-frameworks/strategy/competitive-analysis.md` — maps inform competitive positioning

## Quotable / signature ideas

- "All models are wrong, but some are useful. A map is wrong because it's not the territory. It's useful because it lets you reason about the territory." (Wardley book, ch. 1)
- "Commoditization is inevitable. The question is which parts of your value chain commoditize first." (Talks, OSCON)
- "Most strategy is performative. Real strategy is situational awareness — you have to see the board before you can play." (Medium series)

## Where they're wrong / disagree with others

Wardley Mapping has a steep learning curve and a self-selecting community — practitioners describe it as "the framework that requires a year to use well." Critics argue the technique is more rigorous than the underlying empirical claims warrant, and that it can produce maps that look authoritative but encode the maker's biases. Porter's Five Forces and Helmer's 7 Powers cover similar ground with simpler tools and may be sufficient for most strategic decisions. The mapping technique can also become bureaucratic — a fully-built map for every decision is overkill; the technique earns its keep on the rare 10x-leverage strategic question. For AI products, Wardley's evolution axis is unusually relevant right now because the commoditization velocity is genuinely fast — components that were Custom 18 months ago are Commodity today.

## Pointers to source material

- Wardley's Medium book (free, serialized): "Wardley Maps"
- Talks at OSCON, Strata, MapCamp
- Twitter / X: @swardley
- LEF research papers
- The Wardley Mapping community
