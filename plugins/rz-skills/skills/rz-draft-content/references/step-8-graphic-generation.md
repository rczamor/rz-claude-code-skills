# Step 8: Generate Graphic

Default to the diagram templates documented in `rz-graphic-design`:

- **Comparison diagram:** for pieces arguing A vs B, two concepts, two approaches
- **Flow diagram:** for pieces walking through a process or sequence
- **Framework diagram:** for pieces teaching a named model (like the five-step context generation flow)
- **Flywheel:** for pieces about compounding loops
- **Radar/matrix:** for pieces about multiple dimensions of a single concept

Select the template that best fits the piece's core argument. Generate the graphic in SVG, respecting the full brand visual identity from `rz-graphic-design` (dark #0a0a0a background, teal #00d4a3 accent, JetBrains Mono labels, Inter body, monospace section labels in uppercase with letter-spacing, dashed outlines for containers where appropriate).

## Dimensions

1200x630 for a single LinkedIn/X compatible version. If the piece specifically needs a platform-tuned pair, also produce 1080x1080 (LinkedIn square) and 1600x900 (X optimized). The default is one graphic at 1200x630.

## Output both formats

- SVG (for editing and archival)
- PNG at 2x resolution (2400x1260) for upload

Save both to `/mnt/user-data/outputs/` and present them.

If the topic doesn't clearly map to any existing template, propose a new template design inline, generate it, and flag it for addition to the `rz-graphic-design` template library.

## Final output to chat

After the page is created, present to Riché:

1. **One-line summary** of what was produced (format, asset count, graphic template used)
2. **Link to the Notion page**
3. **Inline preview** of the LinkedIn promo post and X promo tweet (the two assets he'll actually publish first, keeps them reviewable without opening Notion)
4. **The graphic** (both SVG and PNG file links)
5. **Flagged decisions:** anything that needs explicit approval before publish (Suzy language, format override, keyword choice if SEO ran)

Keep the summary under 10 lines. The page is the deliverable; chat is the summary.

## What this skill does NOT do

- Does not publish to LinkedIn or X. Drafts only.
- Does not update the Content Topics database schema. Only creates pages within it.
- Does not edit the five reference documents. Read-only.
- Does not override Riché's voice. Every draft passes the Content Style Guide.
