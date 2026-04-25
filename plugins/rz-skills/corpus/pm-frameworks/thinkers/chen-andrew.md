---
name: Andrew Chen
domain: pm-frameworks
source_skill: research
entry_type: person
length_target: 600-800
related:
  - corpus/pm-frameworks/monetization/cold-start-problem.md
  - corpus/pm-frameworks/monetization/growth-loops.md
  - corpus/pm-frameworks/metrics/k-factor.md
  - corpus/pm-frameworks/strategy/seven-powers.md
---

# Andrew Chen

## What they're known for

Andrew Chen is a General Partner at Andreessen Horowitz (a16z), former growth lead at Uber Rider, and the author of *The Cold Start Problem* (2021). His canonical contribution is the Cold Start framework: how to bootstrap a network-effect product from zero users to atomic network density. The framework decomposes the problem into stages — the Tipping Point, Escape Velocity, the Ceiling, and the Moat — and prescribes specific tactics for each (single-player utility, hard-side subsidies, piggybacking on existing networks, the Hard Side / Easy Side asymmetry). Chen's blog (andrewchen.com) was foundational reading for the 2010s growth movement, including viral coefficient (K-factor) thinking, growth loops vs. funnels, and the mechanics of habit formation.

## Why they matter to a Riché-facing skill

Chen is the load-bearing reference when Riché is working on growth, network effects, or thinking about defensibility for an AI product with multi-sided dynamics. The Cold Start framework is directly applicable to any product that has a marketplace, two-sided dependency, or community component — including most AI products that depend on user-generated context to improve. K-factor and viral coefficient thinking matter for Riché's audience growth on LinkedIn (the rz-growth-marketing skill) and for any product where referral mechanics drive acquisition. Chen's writing on the Hard Side / Easy Side asymmetry — that you must over-subsidize the constrained side of the network — is directly relevant to context architecture: the Hard Side of an AI product is often the high-quality data input, not the consumption.

## Their core frameworks (pointers)

- `corpus/pm-frameworks/monetization/cold-start-problem.md` — bootstrap network effects with zero users
- `corpus/pm-frameworks/monetization/growth-loops.md` — self-reinforcing action → value → loop
- `corpus/pm-frameworks/metrics/k-factor.md` — viral coefficient
- (Cross-link) `corpus/pm-frameworks/strategy/seven-powers.md` — network effects as one of the 7 powers

## Quotable / signature ideas

- "The Cold Start Problem is the most important problem you'll face in any networked product." (*The Cold Start Problem*, intro)
- "Anti-network effects are real. As your network grows, it can also degrade — too much spam, too much noise, the wrong users." (a16z blog post, 2020)
- "Funnels die. Loops compound." (Twitter / X)

## Where they're wrong / disagree with others

The Cold Start framework was developed largely from consumer marketplace and consumer social cases (Uber, Airbnb, Tinder, Snapchat) and applies less cleanly to enterprise SaaS, B2B marketplaces, or single-player AI products where network effects are weaker or absent. Critics argue that Chen overweights network effects as the primary defensibility mechanism — Helmer's 7 Powers points out there are six other defensibility patterns that don't require network density. For AI products, the "network" question is more nuanced: the data network effect is real but slower-acting than user-density network effects, and many AI products will compete primarily on capability and context architecture rather than network. Chen's framework also undertheorizes negative network effects — at scale, networks can become hostile environments that drive users away.

## Pointers to source material

- Book: *The Cold Start Problem* (HarperBusiness, 2021)
- Blog: andrewchen.com
- Substack newsletter
- a16z podcast appearances
- Twitter / X: @andrewchen
