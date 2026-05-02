# Step 1: Pull Source Content

Identify what the source is and retrieve it.

- **URL provided:** use `web_fetch` first. If blocked (Forbes, WSJ, paywalled sites), fall back to `web_search` for the article title plus author to find an accessible version or a detailed summary.
- **Daily Context Briefing referenced:** fetch the Notion page directly via `Notion:notion-fetch`. The briefing will contain the relevant link and the synthesized take.
- **Raw thought or topic:** skip retrieval. The thought itself is the source.
- **Tavily:** use `Tavily:tavily_research` or `Tavily:tavily_extract` when `web_fetch` fails and `web_search` snippets aren't rich enough. Tavily is the escalation path for difficult sources.

Capture: the source URL, author, publication date, and the full body text.

## Error handling

If `web_fetch`, `web_search`, and `Tavily` all fail, stop and ask Riché for the article text or a different source.
