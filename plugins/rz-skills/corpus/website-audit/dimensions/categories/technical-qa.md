---
name: Technical QA Category
domain: website-audit
source_skill: website-audit
entry_type: rule
length_target: 600-900
related: [corpus/website-audit/methodology/parallel-data-collection.md, corpus/website-audit/methodology/severity-scoring.md, corpus/website-audit/dimensions/seo/s4-indexability.md]
---

# Technical QA Category

## What it is
Nine Technical QA checks (Q1–Q9) covering broken links, build failures, runtime errors, dependency security, outdated dependencies, missing security headers, SSL issues, image optimization, and bundle size growth. Together they keep the production site healthy at the infrastructure layer.

**The nine checks:**

- **Q1 Broken links.** Any internal or external link returns 4xx or 5xx. Severity: P0 internal; P1 external (with retry).
- **Q2 Build failures.** Any failed deployment in past 14 days. Severity: P0 if latest production failed; P1 if previous.
- **Q3 Runtime errors.** Any 5xx in Vercel runtime logs, past 7 days. Severity: P0 if recurring; P1 if single.
- **Q4 Dependency CVEs.** `npm audit` reports any high or critical CVE. Severity: P0 critical; P1 high.
- **Q5 Outdated dependencies.** Any major version behind for >60 days. Severity: P2 (unless CVE — covered by Q4).
- **Q6 Missing security headers.** Missing HSTS, CSP, X-Content-Type-Options, X-Frame-Options on production. Severity: P1.
- **Q7 SSL issues.** Cert expiring within 30 days, or any cert validation error. Severity: P0 if expired or expiring within 7 days; P1 otherwise.
- **Q8 Image optimization.** Any `<img>` tag in production HTML not using `next/image` or not delivering WebP/AVIF on supporting browsers. Severity: P2.
- **Q9 Bundle size growth.** Largest JS bundle grows ≥15% WoW. Severity: P1.

**Sources:** `lychee` for broken links; Vercel `list_deployments` and `get_deployment_build_logs`; Vercel `get_runtime_logs`; `npm audit`/`npm outdated`; HTTP header checks; cert validation; build artifact metadata.

## Why it matters
Technical QA is the foundation everything else sits on. A broken build means no new content ships. Runtime errors lose users mid-visit. Expired certs lock the entire site. Security header omissions create attack surface. Bundle bloat slows the site for every visitor. None of these are visible until they break — and when they break, the cost compounds quickly.

Most of these checks are infrastructure hygiene rather than content optimization. They run in the audit not because they're glamorous but because forgetting any one of them creates an outage. Q1 (broken links) and Q3 (runtime errors) are the most frequent flags. Q4 (CVEs) is rare but always P0. Q7 (SSL) is rare but catastrophic when it fires.

The 30-day expiration window for Q7 is intentional. Vercel auto-renews most certs, but auto-renewal can fail silently. Catching a cert 30 days before expiration gives time to investigate and manually intervene if needed.

## How to apply
- Q1: install `lychee` (Rust CLI) if not present; run full broken-link crawl on richezamor.com. External links should be retried (transient outages are common); internal failures are immediate P0.
- Q2: `Vercel:list_deployments` last 14 days. For any failed: `get_deployment_build_logs`. Trend build duration to catch progressive slowdowns.
- Q3: `Vercel:get_runtime_logs` last 7 days. Filter for 5xx. Group by request path; recurring patterns are P0.
- Q4: clone the repo to `/tmp`; run `npm audit`. Capture CVE count by severity.
- Q5: `npm outdated`. Filter to packages where major version is more than 1 behind for more than 60 days.
- Q6: fetch `https://richezamor.com` headers. Verify HSTS, CSP, X-Content-Type-Options, X-Frame-Options, Referrer-Policy.
- Q7: cert validation check. Capture days-until-expiration.
- Q8: parse production HTML; extract all `<img>` tags. Check src usage of `next/image` and content-type negotiation for WebP/AVIF delivery.
- Q9: pull build artifact metadata from latest successful deployment. Compare largest JS bundle size to last week's audit.
- Fix patterns are mostly mechanical: update dependencies, fix configs, replace `<img>` with `next/image`, add missing headers via Next.js `headers()` config or Vercel project settings.

## Examples
1. **Q1 fires with P0.** A `/thinking` article links to a now-deleted internal route (`/legacy/about`). Fix: update the link to point to `/about`.
2. **Q3 fires with P0.** Recurring 500 errors on `/api/chat` over 24 hours. Logs show OpenAI API key rotation didn't propagate to Vercel env vars. Fix: rotate Vercel env vars; redeploy.
3. **Q4 fires with P0.** `npm audit` reports a critical CVE in a transitive dependency of `@vercel/og`. Fix: `npm audit fix`. If breaking, plan upgrade in next sprint and pin the workaround.
4. **Q6 fires with P1.** Site missing CSP header. Fix: add CSP via Next.js `headers()` config; test with strict policy first, relax to allow legitimate inline scripts.
5. **Q7 fires with P1.** Cert expiring in 22 days. Vercel auto-renew should have triggered. Investigate; verify renewal logs in Vercel dashboard.

## Related entries
- `corpus/website-audit/methodology/parallel-data-collection.md` — how the technical scans run
- `corpus/website-audit/methodology/severity-scoring.md` — P0/P1/P2 threshold logic
- `corpus/website-audit/dimensions/seo/s4-indexability.md` — Q1 (broken links) overlaps with indexability
- `corpus/website-audit/dimensions/aio/a3-crawler-accessibility.md` — Q6 (security headers) overlaps with crawler hygiene

## Anti-patterns
- Auto-running `npm audit fix --force` without reviewing what it changes. The `--force` flag can introduce breaking changes; it's a debugging tool, not a fix.
- Treating Q5 (outdated dependencies) as urgent. Most outdated dependencies are fine indefinitely. Only urgent when paired with Q4 (CVE).
