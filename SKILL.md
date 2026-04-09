---
name: geo-optimization
description: >
  Generative Engine Optimization (GEO) — optimize content, site structure, and brand signals
  so AI-powered answer engines (Google AI Overviews, ChatGPT, Perplexity, Claude, Bing Copilot)
  cite, recommend, and surface your brand. Use when asked about GEO strategy, AI visibility,
  optimizing pages for LLM citation, structured data for generative search, or measuring AI share of voice.
  Also use for AI-overview audits, citation gap analysis, and GEO content playbooks.
---

# GEO — Generative Engine Optimization

Optimize for **being part of the answer**, not just ranking #1.

## Core Framework

GEO = SEO × Extractability × Authority × Citation-worthiness

| Layer | Goal | Key Actions |
|-------|------|-------------|
| **Technical** | AI crawlers can parse your content | SSR/SSG, valid HTML, fast TTFB, clean DOM |
| **Structure** | AI can extract & reuse facts | Schema.org, FAQ markup, tables, lists, defined terms |
| **Content** | AI *wants* to cite you | Quotes, stats, original data, clear claims, concise answers |
| **Authority** | AI *trusts* you | E-E-A-T signals, credible backlinks, brand mentions, Wikipedia/UGC presence |
| **Freshness** | AI picks current info | Updated timestamps, recent data, changelog, revision dates |

## When to Read References

- **references/playbook.md** — Full tactical checklist for pages, content types, and maintenance. Read when starting a GEO audit or building a new page.
- **references/schema-patterns.md** — Ready-to-use JSON-LD templates for GEO. Read when adding structured data to a page.

---

## Quick-Start Audit (per page)

1. **Server-side render check**: Does the page render meaningful content without JS? (`curl` the URL and check.)
2. **Schema check**: Does it have at minimum `Article`, `FAQPage`, or `WebPage` JSON-LD?
3. **Extractability scan**: Can a 50-word summary of the page be assembled from visible text alone?
4. **Citation signals**: Does the page contain at least one of: quoted statistic, unique data point, original claim with evidence?
5. **Authority signals**: Author byline? Organization entity? Expertise cues?
6. **Freshness**: Last-updated date visible? Content reflects current year/state?

---

## Content Patterns That Get Cited

AI engines prefer content that is:

### 1. Answer-First
Lead with the direct answer, then elaborate. Inverted pyramid.

```
❌ "In this article we'll explore why XClaw Box is the best private AI hardware…"
✅ "XClaw Box runs LLMs locally with no cloud dependency, starting at $499. It ships pre-configured with [model]."
```

### 2. Quote + Stat Heavy
Pages with quotes and statistics show **30–40% higher visibility** in AI responses (source: arXiv 2311.09735).

- Include inline numbers: "supports 7B–70B parameter models"
- Include comparisons: "3× faster than cloud inference for models under 13B"
- Include authoritative quotes where available

### 3. Table & List Friendly
AI engines extract from `<table>`, `<ol>`, `<ul>` structures.

- Use real `<table>` for comparisons, not images
- Use ordered lists for steps/processes
- Use definition lists for terms

### 4. Concise + Chunked
- One claim per paragraph
- Use `<h2>`/`<h3>` with descriptive headings (AI uses these as extraction anchors)
- Keep each section self-contained (AI may cite individual sections)

### 5. Unique & Original
- Don't just rephrase competitors
- Include proprietary data, benchmarks, or perspectives
- "According to our testing…" > "Many people say…"

---

## Schema Patterns for GEO

### Must-Have (every important page)
- `WebPage` or `Article` with `datePublished` + `dateModified`
- `BreadcrumbList`
- `Organization` or `Author` entity linked from pages

### High-Value for GEO
- `FAQPage` — directly feeds AI answer boxes
- `HowTo` — feeds step-by-step AI answers
- `ItemList` — feeds comparison/roundup AI answers
- `Product` + `Offer` — feeds product recommendation AI answers
- `SpeakableSpecification` — marks extractable audio/text passages

### Advanced / Emerging
- `Quotation` markup for attributed claims
- `Dataset` markup for proprietary data
- `ClaimReview` for fact-checkable statements
- `SoftwareApplication` for SaaS/hardware products

Copy-ready JSON-LD: **references/schema-patterns.md**.

---

## Authority & Brand Signals

### On-Site
- **About page** with real company info, founding story, team
- **Author pages** with credentials, linked from articles
- **Contact page** with verified email, phone, address
- **Testimonials/reviews** with schema markup
- **Case studies** with measurable outcomes

### Off-Site (high GEO impact)
- **Unlinked brand mentions** carry weight in AI systems — PR, podcasts, interviews
- **Wikipedia presence** — significant AI training data source
- **UGC platforms** — Reddit, YouTube, Quora mentions influence AI answers
- **Industry citations** — being referenced in research papers, reports, news
- **Review platforms** — G2, Trustpilot, Capterra data feeds AI recommendations

---

## Technical Requirements

### Rendering
- **SSR/SSG required** — AI crawlers struggle with client-side JS rendering
- Next.js: use `generateMetadata` (server), avoid `'use client'` for content pages
- Test: `curl -sL https://yoururl.com | head -100` — meaningful text should appear

### Performance
- TTFB < 200ms ideal (AI crawlers have timeout budgets)
- Minimize render-blocking resources
- Compress images, use modern formats

### Crawlability
- Clean URL structure
- XML sitemap with `<lastmod>` dates
- Robots.txt allows AI crawlers (GPTBot, PerplexityBot, ClaudeBot, Google-Extended)
- No paywall or login wall on GEO-targeted content

### Recommended robots.txt additions

```
User-agent: GPTBot
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Google-Extended
Allow: /
```

---

## Measurement

### What to Track
- **AI citations**: How often your brand/domain appears in AI answers
- **AI share of voice**: Your visibility vs competitors in AI responses
- **Citation sentiment**: Positive, neutral, or negative when mentioned
- **Query coverage**: Which queries trigger your brand in AI answers

### Tools
- Semrush AI Visibility Toolkit
- Semrush Enterprise AIO
- Manual: Prompt AI engines with target queries and check responses
- Track over time with periodic audits (monthly recommended)

### Manual Audit Template
For each target query, ask:

1. ChatGPT: "[query]" — is brand mentioned? cited?
2. Perplexity: "[query]" — check sources
3. Google AI Overview: "[query]" — check citations
4. Claude: "[query]" — check if brand surfaces

Record: mentioned (Y/N), position in answer, sentiment, source URL cited.

---

## GEO vs SEO — Not Separate, Complementary

| Aspect | SEO | GEO |
|--------|-----|-----|
| Goal | Rank in SERPs | Be cited in AI answers |
| Key metric | Organic traffic, CTR | AI citations, AI share of voice |
| Content focus | Keywords, search intent | Extractability, originality, definitional clarity |
| Structure | Headings, internal links | Tables, lists, FAQ/HowTo schema, quotable blocks |
| Authority | Domain rating, backlinks | E-E-A-T, brand corpus, third-party mentions |
| Technical | Crawl/index | SSR/SSG, low TTFB, crawler allowances for AI bots |
| Wins | Featured snippets (classic) | Synthesis blocks, tool answers, cited sources in AI UIs |

Ship both: strong SEO remains the foundation; GEO layers extractability and citation-worthiness on top.

---

## Agent Workflow (suggested)

1. Classify the asset (landing, blog, product, comparison, how-to).
2. Run the **Quick-Start Audit**; note gaps.
3. Open **references/playbook.md** for the matching content-type checklist.
4. If implementing markup, use **references/schema-patterns.md** templates; validate with Rich Results Test.
5. Propose concrete edits: H2 structure, one stat/quote, one table or list, dates, author/org linkage.
6. If measuring, run the manual audit template for 5–10 priority queries and log results.
