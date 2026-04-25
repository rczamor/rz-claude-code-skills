---
name: Noriaki Kano
domain: pm-frameworks
source_skill: research
entry_type: person
length_target: 600-800
related:
  - corpus/pm-frameworks/discovery/kano-model.md
  - corpus/pm-frameworks/prioritization/kano-prioritization.md
  - corpus/pm-frameworks/discovery/jobs-to-be-done.md
---

# Noriaki Kano

## What they're known for

Noriaki Kano is a Japanese researcher in quality management and the originator of the Kano Model, developed in the late 1970s and published in 1984. The Kano Model classifies product attributes by their effect on customer satisfaction along two dimensions: how present a feature is, and how satisfied customers are with it. The classification yields five categories: Must-Be (basic expectations whose absence causes dissatisfaction but whose presence produces no positive feeling — e.g., a hotel room having a bed), One-Dimensional / Performance (more is better — e.g., battery life), Attractive / Delighters (unexpected positives that delight — e.g., chocolate on the pillow), Indifferent (don't matter), and Reverse (some customers dislike them). The model emerged from Kano's work on Total Quality Management (TQM) in Japanese manufacturing and was later widely adopted in software product management.

## Why they matter to a Riché-facing skill

The Kano Model is the right tool when Riché is debating whether a feature is a basic expectation, a competitive differentiator, or a delight. The framework is especially useful for AI products because it makes explicit the distinction between Must-Bes (the AI doesn't make embarrassing errors), Performance attributes (the AI is faster / cheaper / more accurate than competitors), and Delighters (the AI surprises with reasoning quality). The model's most underused insight: Delighters become Performance attributes which become Must-Bes over time. What was a delight in 2023 ChatGPT (any coherent response) is a Must-Be in 2026. This means PM strategy needs continuous refresh of which category each feature lives in.

## Their core frameworks (pointers)

- `corpus/pm-frameworks/discovery/kano-model.md` — Must-haves / satisfiers / delighters classification
- `corpus/pm-frameworks/prioritization/kano-prioritization.md` — Must-haves first, satisfiers second, delighters for differentiation
- (Cross-link) `corpus/pm-frameworks/discovery/jobs-to-be-done.md` — JTBD complements Kano by surfacing why the categories exist

## Quotable / signature ideas

- "Quality that delights today becomes quality that's expected tomorrow. Delighters decay." (Kano, 1984)
- "You cannot satisfy customers by maximizing one-dimensional attributes alone. You must address Must-Bes first." (Quality Function Deployment workshops)
- "The Kano questionnaire forces customers to evaluate functional and dysfunctional forms of each feature, exposing categories they cannot name." (Methodology paper)

## Where they're wrong / disagree with others

The Kano Model was developed for manufactured consumer goods in 1980s Japan and translates imperfectly to software, where features are continuous rather than discrete and the "presence" axis is fuzzier. The original methodology (paired functional / dysfunctional questions in customer surveys) is rigorous but rarely used in modern PM practice — most teams use Kano as a vocabulary rather than a measurement system. Critics note that the Delighter category can encourage "feature theatre" — shipping cosmetic surprises that don't move durable metrics. Olsen's PMF Pyramid is a complementary frame: Must-Bes correspond to underserved needs, Delighters to value prop differentiation. For AI products, the Kano decay (delighters → must-haves) is faster than in any prior software era, which means strategy needs to anticipate the next category of delighters before the current ones become baseline.

## Pointers to source material

- Original paper: Kano, N. (1984), "Attractive Quality and Must-Be Quality"
- Book: *Guide to TQM in Service Industries* (Kano, 1996)
- Practitioner adaptations: Daniel Zacarias, "The Complete Guide to the Kano Model"
- Folding Burritos blog (canonical practitioner explainer)
- Modern Kano questionnaire templates (ProductPlan, Romanpichler.com)
