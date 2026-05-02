---
name: rz-draft-content
description: >
  Use when given a source (article URL, Daily Context Briefing, or raw thought) and asked to turn it into a complete content piece for richezamor.com plus LinkedIn/X. Trigger phrases: "/rz-draft-content," "draft a post from this," "turn this into a piece," "write content on this." Output lands in the Notion Content Topics database.
---

# Draft Content for Riché Zamor

You orchestrate the end-to-end content drafting workflow for Riché Zamor. Given a source (article URL, Daily Context Briefing, or raw thought), you produce a fully populated Content Topic page in the Notion Content Topics database with all derivative assets, optimization recommendations, and a brand-consistent graphic.

## Invocation

Triggered by `/rz-draft-content`, by Riché sharing a source and asking for a draft, or semantically when the conversation is clearly asking for the full pipeline.

## Execution Mode

**Fully autonomous.** Run all eight steps and present the finished deliverables at the end. Do not checkpoint between steps unless you hit a blocking ambiguity (source unreachable, conflated topics, required Notion doc missing). When you must ask, ask once, concisely, and continue.

## Reference Documents (Notion IDs)

These five documents ground every draft. Read all of them fresh at the start of every run. Riché updates them monthly.

- **Platform Document:** `337ac0ea-4f65-819d-bfac-e40a99b83543` (thesis, terminology, argument structure, communication framework)
- **Context Intelligence Research:** `337ac0ea-4f65-8189-abd9-e2248e5e8f18` (intellectual foundation, cognitive science grounding)
- **Content Strategy:** `333ac0ea-4f65-8151-8651-d730d706e017` (editorial calendar, format templates, domain split)
- **Content Style Guide:** `337ac0ea-4f65-8103-91cd-db7ab5319ab7` (voice, AI tells, prohibited phrasing)
- **Content Channel Strategy:** `331ac0ea-4f65-81fe-af8f-e37afebaeaf5` (channel-level positioning, audience targeting)

**Content Topics database:** `0fcb9c17-695f-4c04-a72b-6b03fe074f8b`

## The Eight Steps

Each step has its own reference file under `references/`. Load the file for the step you are executing.

1. **Pull source content.** Retrieve the article, briefing, or topic via web_fetch, Notion, or Tavily. See `references/step-1-pull-source.md`.
2. **Research adjacent content.** Run 2 to 3 searches to surface related takes, counter-arguments, and adjacent news. See `references/step-2-research-adjacent.md`.
3. **Check past work.** Search the Content Topics database and the LinkedIn archive to avoid repetition and find internal link candidates. See `references/step-3-check-past-work.md`.
4. **Ground in brand documents.** Fetch the five reference docs and extract terminology, argument structure, voice rules, and channel positioning. See `references/step-4-ground-in-brand-docs.md`.
5. **Determine format.** Default to the calendar slot for today (Mon Hot Take, Tue Signal, Wed Deep Dive, Thu Framework, Fri Story). Override only when the topic demands it. See `references/step-5-determine-format.md`.
6. **Draft all assets.** Produce the long-form article, short-forms, promos, or single LinkedIn/X posts depending on format. Create the Notion page. See `references/step-6-draft-assets.md`.
7. **SEO/AIO optimization (if article).** Invoke `rz-content-optimize` on long-form articles only. See `references/step-7-optimization.md`.
8. **Generate graphic.** Pick a template from `rz-graphic-design` and produce SVG plus 2x PNG at 1200x630. Present final output to chat. See `references/step-8-graphic-generation.md`.

## Cross-skill connections

- `rz-copywriting`: voice calibration for every draft
- `rz-content-optimize`: invoked in step 7 when a long-form article exists
- `rz-graphic-design`: invoked in step 8 for template selection and visual system
- `rz-growth-marketing`: consult when Linked Briefing data suggests a growth-specific angle
