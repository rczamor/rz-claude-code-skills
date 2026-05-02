# Step 7: SEO/AIO Optimization (if article)

If and only if a long-form article was drafted, invoke `rz-content-optimize` on the article body. The optimize skill produces the full 13-section SEO & AIO block.

Append the block to the Content Topic page under a section titled **"SEO & AIO Optimization"**.

If no long-form article exists (Hot Take / Signal format), skip this step entirely. Do not produce SEO recommendations for LinkedIn-only or X-only posts.

## Error handling

If Ahrefs MCP fails during optimization, `rz-content-optimize` will fall back to web_search-based SERP analysis and flag that keyword volumes are estimates. Proceed.
