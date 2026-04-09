# GEO Tactical Playbook

Use with the main [SKILL.md](../SKILL.md) framework. Check off items before publish; re-run on major refreshes.

---

## Page-Level Pre-Publish Checklist

### Content
- [ ] **Answer-first** opening (direct answer in first 1–2 sentences)
- [ ] **At least one** concrete number, percentage, or dated fact (with source where not proprietary)
- [ ] **Quotable line** — a short, attributed or clearly scoped claim a model can lift
- [ ] **Scannable structure** — descriptive H2/H3; one main idea per section
- [ ] **List or table** for comparisons, steps, specs, or pros/cons (real HTML, not images)
- [ ] **Unique angle** — data, methodology, or POV competitors do not have
- [ ] **Author + org** visible; credentials or "why us" in one line where relevant
- [ ] **Freshness** — `dateModified` or visible "Last updated" aligned with reality

### Technical
- [ ] Meaningful body text in **HTML source** without executing client JS (`curl` test)
- [ ] **Title + meta description** accurate and specific (still used in many contexts)
- [ ] **Canonical URL** set; no accidental duplicates
- [ ] **JSON-LD** appropriate to page type (see [schema-patterns.md](schema-patterns.md))
- [ ] **BreadcrumbList** where hierarchy matters
- [ ] **Images** have descriptive `alt` where they carry information
- [ ] **robots** / paywall: AI-targeted content is crawlable; AI user-agents not blocked by policy mistake
- [ ] **Performance**: reasonable TTFB; no huge blocking scripts above the fold for content pages

---

## Content-Type Guides

### Blog / Editorial
- Put the **thesis and takeaway** in the intro; avoid "In this post we will…" throat-clearing
- Add **one primary stat or study cite** (linked) per long article where possible
- Use **subheads as questions** when matching informational queries ("What is X?", "How does Y work?")
- Link to **author page** and **Organization** context
- Consider **FAQPage** schema if the article naturally ends with 3+ FAQs

### Product Page
- Lead with **what it is + who it's for + differentiator** in plain language
- **Specs table**: dimensions, pricing tier, requirements, limits
- **FAQ**: objections, compatibility, warranty, shipping — markup as FAQPage when substantial
- **Product** + **Offer** JSON-LD; **Review** / aggregate rating if authentic and policy-compliant
- **Real use cases** with measurable outcomes beats adjectives

### Comparison / Alternatives ("X vs Y", "Best Z")
- **Comparison table** early (features, price, best-for column)
- **Verdict section** with clear criteria (transparent methodology reduces generic rewrites)
- **ItemList** or multiple **Product** entities in schema where appropriate
- Disclose **how products were evaluated** (dates, versions)

### How-To / Tutorial
- **Numbered steps** in `<ol>`; one action per step
- **Prerequisites** and **time estimate** up front
- **HowTo** JSON-LD mirroring visible steps
- **Screenshots** with captions; alt text names the UI element
- **Troubleshooting** H2 with common failures

### Landing / Marketing Page
- **Above the fold**: category, primary benefit, proof (stat, logo row, or quote)
- **Social proof** with specifics ("reduced latency by 40% for [customer type]")
- **Single primary CTA**; secondary for learn-more
- Avoid **vague superlatives** without backing; models prefer concrete claims
- **Organization** + **WebPage** schema sitewide minimum

---

## Citation Gap Analysis

1. **List target queries** (10–30) your buyers ask in natural language.
2. For each major engine (ChatGPT, Perplexity, Google AI Overview, Claude), run the query.
3. **Log**: Was your brand/domain cited? Position (primary vs passing)? Sentiment? Source URL if any?
4. **Cluster gaps**:
   - *Not mentioned* — authority / corpus / category clarity
   - *Mentioned but not cited* — missing definitive stats, schema, or extractable facts on your URL
   - *Wrong or outdated* — freshness, contradictory pages, thin syndication
5. **Map gaps to fixes**: new FAQ block, table, schema type, authoritativeness play (study, PR, documentation).

---

## Priority Matrix (Impact × Effort)

| Quadrant | Examples |
|----------|----------|
| **High impact, low effort** | Add FAQ + FAQPage; answer-first rewrite of intro; stat + source; BreadcrumbList |
| **High impact, high effort** | Original research / benchmark; major SSR migration; comprehensive comparison hub |
| **Low impact, low effort** | Meta tweaks only; minor internal link |
| **Low impact, high effort** | Vanity pages with no quotable facts |

Work the queue top-left first.

---

## Maintenance Schedule

### Monthly
- Re-run **manual AI audit** on top 10 queries
- Check **dateModified** and visible dates on money pages
- Spot-check **curl/HTML** after deploys (no accidental client-only content)

### Quarterly
- **Citation gap** refresh; add new FAQs from sales/support logs
- **Competitor extractability** scan — who gets cited and why
- **Schema** validation on templates after site changes

### Annually
- **Information architecture** review for hub pages and definitions
- **Brand corpus** strategy (PR, docs, community, research) tied to GEO goals
