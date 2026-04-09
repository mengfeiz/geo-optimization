# GEO Playbook — Tactical Checklist

## Page-Level Checklist

### Before Publishing
- [ ] Answer-first lead paragraph (inverted pyramid)
- [ ] At least one unique statistic, data point, or proprietary claim
- [ ] At least one `<table>` or structured list if comparing items
- [ ] Descriptive `<h2>`/`<h3>` headings (not vague like "Overview")
- [ ] JSON-LD: `Article` or `WebPage` with dates
- [ ] JSON-LD: `BreadcrumbList`
- [ ] `datePublished` and `dateModified` present
- [ ] Author or organization linked
- [ ] Meta description is a complete sentence (not keyword stuffing)
- [ ] OG image and Twitter card set
- [ ] Canonical URL set

### Content Quality
- [ ] Each section is self-contained (can be cited independently)
- [ ] No fluff paragraphs — every paragraph adds a fact or insight
- [ ] Claims are backed by evidence or attributed to a source
- [ ] Technical terms defined on first use
- [ ] Comparisons use real numbers, not vague superlatives
- [ ] Content is original — not just rephrased from competitors

### Technical
- [ ] Page renders without JS (test with curl)
- [ ] TTFB < 500ms
- [ ] No render-blocking scripts on content
- [ ] Valid HTML (no broken tags)
- [ ] Proper heading hierarchy (h1 → h2 → h3, no skipping)

---

## Content Type Playbooks

### Blog Post
1. Lead with the answer or key takeaway
2. Include 2–3 unique data points or statistics
3. Use FAQ schema for Q&A sections
4. Add "Key Takeaways" summary box (often cited by AI)
5. Include author byline linking to author page
6. Update `dateModified` when revising

### Product Page
1. Product schema with name, price, availability, reviews
2. Comparison table vs alternatives (AI extracts these)
3. Specs in structured format (table or dl)
4. Original benchmarks or test results
5. FAQ section with Product FAQ schema
6. Review aggregate with schema markup

### Comparison / "X vs Y" Page
1. ItemList schema for the compared items
2. Clear comparison table (AI primary extraction target)
3. Winner/recommendation clearly stated (AI cites conclusions)
4. Unique testing methodology described
5. Pros/cons lists for each item

### How-To / Tutorial
1. HowTo schema with steps
2. Numbered steps in `<ol>`
3. Tools/materials list
4. Prerequisites clearly stated
5. Expected outcome / time estimate
6. Common mistakes section (often cited)

### Landing Page
1. Clear value proposition in first sentence
2. Social proof (customer count, reviews, testimonials)
3. Specific claims with numbers
4. FAQ section
5. Organization schema with contact info

---

## Citation Gap Analysis

### How to Find Gaps
1. Identify 10–20 target queries
2. Ask each AI engine (ChatGPT, Perplexity, Google AI, Claude)
3. Note which competitors are cited, with what source URLs
4. Compare against your existing content

### How to Close Gaps
1. **Missing topic**: Create content that answers the query directly
2. **Competitor cited, not you**: Improve your page's extractability, add schema, include unique data
3. **You're mentioned but not cited**: Strengthen authority signals on that page
4. **Wrong information**: Publish corrections with clear, factual statements

### Priority Matrix
| Citation Gap | Effort | Impact | Priority |
|---|---|---|---|
| AI mentions competitor, not you (high-volume query) | Medium | High | **P0** |
| AI cites wrong info about you | Low | High | **P0** |
| You're mentioned but not cited as source | Low | Medium | **P1** |
| AI doesn't mention your category at all | Medium | Medium | **P2** |
| Niche long-tail query gap | Low | Low | **P3** |

---

## Ongoing GEO Maintenance

### Monthly
- Re-run target query audits
- Update `dateModified` on refreshed pages
- Check AI crawler access (robots.txt, server logs)
- Review new schema types or AI engine changes

### Quarterly
- Full citation gap analysis refresh
- Competitive GEO benchmarking
- Content freshness audit (stale pages)
- Schema coverage audit (pages missing structured data)

### Annually
- Rebuild comparison pages with current data
- Update organization schema
- Review and update FAQ pages
- Assess new AI platforms to target
