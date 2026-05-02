---
name: A7 — AI-Friendly Schema Gaps
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 300-800
related: [corpus/website-audit/dimensions/seo/s6-structured-data.md, corpus/website-audit/dimensions/aio/a1-citation-absence.md, corpus/website-audit/dimensions/aio/a6-entity-consistency.md]
---

# A7 — AI-Friendly Schema Gaps

## What it is
Beyond the baseline schema requirements (S6), there are specific schema types that disproportionately influence AI citation behavior: FAQPage schema on /thesis, HowTo schema on the five-step pipeline page, and Article schema with explicit author and datePublished on every /thinking article. The audit flags missing instances of these specifically.

**Trigger:** missing one or more of:
- FAQ schema on /thesis
- HowTo schema on the five-step pipeline page
- Article author/datePublished on /thinking pages

**Severity:** P1.

**Source:** JSON-LD parse via code execution.

## Why it matters
LLMs use schema as a primary signal when deciding which content to cite for structured queries. A user asking "what is a context layer?" is asking a definitional question. LLMs preferentially cite content marked up with FAQPage schema (explicit Q&A pairs) over content where the same answer is buried in narrative prose. Same content, dramatically different citation likelihood.

HowTo schema does the same job for procedural queries. A user asking "how do I implement context generation?" gets answered preferentially by content with HowTo markup that explicitly enumerates the steps. The five-step pipeline page is Riché's strongest procedural asset; it must be HowTo-marked-up.

Article schema with author and datePublished does two jobs at once: it ties the article to Riché's Person entity (improving entity consistency per A6) and gives LLMs a recency signal (datePublished). Both matter for citation decisions.

Distinct from S6 (which is a baseline-completeness check): A7 is about specifically optimizing for AI citation, not just SEO eligibility.

## How to apply
- Parse JSON-LD on /thesis. Verify FAQPage schema with at least 6 Question/Answer pairs covering canonical thesis questions.
- Parse JSON-LD on the five-step pipeline page (typically /thesis or a dedicated page). Verify HowTo schema with steps for: curate, synthesize, consolidate, prioritize, store intelligently.
- Parse JSON-LD on every /thinking article. Verify Article schema with `author` (referencing /about's Person schema), `datePublished` (ISO 8601), `dateModified` (when last substantively edited), and `headline`.
- For each missing or incomplete schema, file a Linear task with the exact JSON-LD block to add. Provide the block ready to paste into the Next.js metadata export.
- After fix, validate via Google Rich Results Test and (manually) by querying an LLM with the canonical question — verify the page now appears in the response.

## Examples
1. **/thesis missing FAQ schema.** Page has 8 question-form H2s but no FAQPage JSON-LD. Fix: add FAQPage schema with 8 Q&A pairs derived from the H2s. Within 30 days, citations from Claude and ChatGPT for "what is a context layer?" begin including /thesis.
2. **Five-step page missing HowTo.** The article explaining the five-step process exists but only has Article schema, not HowTo. Fix: add HowTo schema with each of the five steps as a `HowToStep` with `name` and `text`. LLMs now extract the step list cleanly when asked procedural questions.
3. **/thinking articles with weak Article schema.** All /thinking articles have Article schema but `author` is a string ("Riché Zamor") rather than a reference to /about's Person schema. Fix: update author to `{"@type": "Person", "@id": "https://richezamor.com/about#riche"}` referencing the canonical Person entity.

## Related entries
- `corpus/website-audit/dimensions/seo/s6-structured-data.md` — baseline schema completeness
- `corpus/website-audit/dimensions/aio/a1-citation-absence.md` — schema is a citation-decision input
- `corpus/website-audit/dimensions/aio/a6-entity-consistency.md` — Article author references depend on entity consistency
- `corpus/website-audit/methodology/severity-scoring.md` — P1 threshold logic

## Anti-patterns
- Adding FAQ schema with low-quality Q&A pairs just to meet the requirement. LLMs read the actual content; weak Q&A doesn't help citations and may hurt ranking when Google's spam detection catches the pattern.
- Treating HowTo schema as appropriate for any list. HowTo is for sequential procedures. A list of unrelated principles isn't HowTo; it's an Article with a list inside.
