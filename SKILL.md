---
name: geo-optimization
description: >
  Generative Engine Optimization (GEO) for websites, product pages, blog posts, comparison pages,
  landing pages, and brand/entity signals. Use when asked to improve AI search visibility,
  increase citations in ChatGPT/Perplexity/Google AI Overviews/Claude/Bing Copilot, audit pages for
  extractability, plan answer-first content, add structured data for AI answer engines, run citation-gap
  analysis, or turn SEO pages into citation-worthy GEO pages.
---

# GEO — Generative Engine Optimization

Optimize for **being part of the answer**, not just ranking #1.

## Use This Skill For

- GEO audits of existing pages
- Rewriting pages into answer-first, citation-worthy content
- Planning comparison pages, landing pages, FAQ pages, and how-to pages
- Adding or improving JSON-LD / Schema.org markup
- Citation-gap analysis against competitors in AI answer engines
- Prioritizing GEO work across a site or content backlog

## Workflow

1. **Classify the asset** — product page, comparison page, blog post, how-to, landing page, homepage, or sitewide entity work.
2. **Run the quick-start audit** below.
3. **Read `references/playbook.md`** for the matching content type when you need tactical page guidance.
4. **Read `references/schema-patterns.md`** when adding or revising JSON-LD.
5. **Recommend or implement the smallest high-impact improvements first**: answer-first lead, extractable structure, unique evidence, schema, authority cues, freshness.

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

- **`references/playbook.md`** — Read when auditing or drafting a specific page type, running citation-gap analysis, or prioritizing GEO fixes.
- **`references/schema-patterns.md`** — Read when adding structured data or choosing which schema type fits a page.
- **`references/ai-search-patterns.md`** — Read when planning content strategy, deciding content type priorities, or understanding AI citation behavior and RAG mechanisms.

## Quick-Start Audit (per page)

1. **Server-side render check**: Does the page render meaningful content without JS? (`curl` the URL and check.)
2. **Schema check**: Does it have at minimum `Article`, `FAQPage`, or `WebPage` JSON-LD?
3. **Extractability scan**: Can a 50-word summary of the page be assembled from visible text alone?
4. **Citation signals**: Does the page contain at least one of: quoted statistic, unique data point, original claim with evidence?
5. **Authority signals**: Author byline? Organization entity? Expertise cues?
6. **Freshness**: Last-updated date visible? Content reflects current year/state?
7. **Answer-first lead**: Does the first screen answer the likely query directly?
8. **Priority call**: Is the next best change content, schema, authority, or freshness?

## High-Impact Fix Order

Apply fixes in this order unless the page has a blocking technical issue:

1. **Answer-first lead**
2. **Clear sections with extractable headings**
3. **Tables / lists / FAQ blocks**
4. **Unique facts, data, or attributed claims**
5. **Schema markup**
6. **Authority cues**
7. **Freshness updates**

## Content Priority Matrix

Based on research from Ahrefs and arXiv 2311.09735:

| Page Type | AI Citation Rate | Commercial Value | Implementation Priority |
|-----------|-----------------|-----------------|-------------------------|
| Product pages | High | High | **P0** (immediate) |
| "Best"/"Top" lists | High | Medium | **P0** (immediate) |
| How-to guides | High | High | **P0** (immediate) |
| Comparison / "vs" pages | High | High | **P0** (immediate) |
| Homepage | Very high | Very high | **P0** (immediate) |
| FAQs | Medium | Medium | **P1** (short-term) |
| Data studies | Medium | High | **P1** (short-term) |
| Blog posts | Variable | Low-Medium | **P2** (long-term) |

**Key insight**: 80%+ of AI referral traffic concentrates on homepage, product pages, and tools. Focus there first.

## Advanced GEO: Perception in the Model

Beyond traditional SEO, GEO requires managing **how your brand is encoded in the AI layer** (a16z insight):

- **Unaided awareness**: Does the AI mention your brand spontaneously, or only when prompted?
- **Sentiment**: When cited, is the framing positive, neutral, or negative?
- **Competitive positioning**: Which competitors are cited alongside you? Are you framed as a leader or alternative?
- **Attribute association**: What product attributes does the AI associate with your brand?

**RAG Behavior**: AI assistants use Retrieval-Augmented Generation — they actively search Google/Bing to find current info, then synthesize. This means strong traditional SEO creates your GEO foundation.

**Unlinked Mentions**: AI can pick up brand references without backlinks (unlike SEO). Focus on getting mentioned across the web through PR, reviews, rankings, and industry coverage.

## Content Patterns That Get Cited

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

## Technical Requirements

### Rendering
- **SSR/SSG preferred** — AI crawlers struggle with client-side JS rendering
- Next.js: use `generateMetadata` (server), avoid `'use client'` for content-heavy pages
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

## Measurement

### What to Track
- **AI citations**: How often your brand/domain appears in AI answers
- **AI share of voice**: Your visibility vs competitors in AI responses
- **Citation sentiment**: Positive, neutral, or negative when mentioned
- **Query coverage**: Which queries trigger your brand in AI answers

### Tools
- Semrush AI Visibility Toolkit
- Semrush Enterprise AIO
- Manual: prompt AI engines with target queries and check responses
- Track over time with periodic audits (monthly recommended)

### Manual Audit Template
For each target query, ask:
1. ChatGPT: "[query]" — is brand mentioned? cited?
2. Perplexity: "[query]" — check sources
3. Google AI Overview: "[query]" — check citations
4. Claude: "[query]" — check if brand surfaces

Record: mentioned (Y/N), position in answer, sentiment, source URL cited.

## GEO vs SEO — Not Separate, Complementary

| Aspect | SEO | GEO |
|--------|-----|-----|
| Goal | Rank in SERPs | Be cited in AI answers |
| Key metric | Organic traffic | AI citations, AI share of voice |
| Content focus | Keywords, intent | Extractability, originality |
| Technical | Crawl, index, speed | SSR, schema, clean DOM |
| Authority | Backlinks | Mentions (linked + unlinked), E-E-A-T |

**Rule of thumb**: good SEO creates the GEO foundation. Then add extractability, structure, and citation-worthiness.

