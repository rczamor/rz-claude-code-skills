---
name: Growth Loops
domain: pm-frameworks
source_skill: research
entry_type: framework
length_target: 300-800
related: [corpus/pm-frameworks/monetization/cold-start-problem.md, corpus/pm-frameworks/metrics/k-factor.md, corpus/pm-frameworks/metrics/aarrr-funnel.md, corpus/pm-frameworks/monetization/product-led-growth.md]
---

# Growth Loops

## What it is
A model from Brian Balfour (Reforge) and Sean Ellis: instead of a linear funnel (acquisition → conversion → retention), growth happens via *self-reinforcing loops* in which user actions produce outputs that drive further inputs. Common loop types: **viral loops** (users invite users — Dropbox referrals), **content loops** (UGC produced by users attracts more users — YouTube, Reddit), **paid loops** (revenue funds paid acquisition that produces more revenue), **sales loops** (existing customers refer or expand to fund new sales). A product can have multiple loops; the strongest companies have a dominant loop plus secondary loops.

## Why it matters
The funnel is leaky and one-shot — users come in the top, drop out the bottom. Loops compound — each user's actions produce more users. Companies that build genuine growth loops (Slack's invite-driven activation, Notion's shareable-pages content loop, Stripe's developer-content loop) achieve sustained growth at near-zero marginal CAC. Companies that don't build loops require ever-increasing paid spend to maintain growth — a treadmill that breaks at scale. Loop thinking changes what features get built: features that strengthen the loop beat features that don't.

## How to apply
1. **Identify the dominant loop.** Map: input → action → output → reinforcement. What does a user do that produces an outcome that brings in more users (or more usage)?
2. **Quantify each step.** Inputs per period, conversion through each step, output rate, reinforcement rate. The product of the conversions tells you the loop's strength.
3. **Find the bottleneck.** The loop is only as strong as its weakest step. Invest there first.
4. **Layer loops.** A viral loop on top of a content loop on top of a paid loop produces compound growth that no single loop achieves.
5. **Beware decay.** Loops decay as the early-adopter segment exhausts. Build the next loop before the current one saturates.

## Examples
1. **Slack's invite loop** — users create channels, invite teammates, teammates invite teammates. Combined with the ~2,000-message activation threshold, it produced extraordinary compound growth from 2014–2019.
2. **Pinterest's content loop** — users save pins, pinned content surfaces in search/feed, drives new visitor signups, who pin more. Compounds into the network.
3. **Riché's Grandstage 300% growth at $0 CAC** is a growth-loop outcome — referral and content loops supplied acquisition that paid spend never had to fund.

## Related entries
- `corpus/pm-frameworks/monetization/cold-start-problem.md` — loops are hard to start, easy to scale
- `corpus/pm-frameworks/metrics/k-factor.md` — quantifies viral loop
- `corpus/pm-frameworks/metrics/aarrr-funnel.md` — funnel is the linear sibling of loops
- `corpus/pm-frameworks/monetization/product-led-growth.md` — PLG depends on loops
- `corpus/pm-frameworks/thinkers/ellis-sean.md` — co-popularizer
- `corpus/pm-frameworks/thinkers/chen-andrew.md` — Cold Start Problem
- `corpus/growth/` — direct overlap with growth-domain mechanics

## Anti-patterns
1. **Funnel thinking applied to a loop product.** Optimizing the top of the funnel while the loop's reinforcement step leaks. Spend rises; growth flattens.
2. **Calling everything a loop.** "We have a content loop" with no measurable input → output → reinforcement. The word loses meaning; the team can't act on it.
