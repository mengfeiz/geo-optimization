# JSON-LD Schema Patterns for GEO

Valid JSON-LD 1.1 examples. Adjust URLs, IDs, and properties to your site. Validate with [Google Rich Results Test](https://search.google.com/test/rich-results) and schema.org docs.

**Convention**: Use `@context`: `https://schema.org` and absolute URLs. Prefer `@id` for entities you link across graphs.

---

## 1. Article + WebPage (foundation)

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "WebPage",
      "@id": "https://example.com/blog/geo-guide#webpage",
      "url": "https://example.com/blog/geo-guide",
      "name": "GEO Guide for AI Visibility",
      "datePublished": "2026-01-15T08:00:00+00:00",
      "dateModified": "2026-04-01T10:00:00+00:00",
      "isPartOf": { "@id": "https://example.com/#website" },
      "breadcrumb": { "@id": "https://example.com/blog/geo-guide#breadcrumb" },
      "primaryImageOfPage": {
        "@type": "ImageObject",
        "url": "https://example.com/images/geo-guide.png"
      }
    },
    {
      "@type": "Article",
      "@id": "https://example.com/blog/geo-guide#article",
      "headline": "GEO Guide for AI Visibility",
      "datePublished": "2026-01-15T08:00:00+00:00",
      "dateModified": "2026-04-01T10:00:00+00:00",
      "author": { "@type": "Person", "name": "Jane Doe", "url": "https://example.com/authors/jane" },
      "publisher": { "@id": "https://example.com/#organization" },
      "mainEntityOfPage": { "@id": "https://example.com/blog/geo-guide#webpage" }
    }
  ]
}
```

---

## 2. FAQPage

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is GEO?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Generative Engine Optimization (GEO) is optimizing content so AI-powered answer engines can cite and recommend your brand."
      }
    }
  ]
}
```

---

## 3. HowTo

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "Run a one-page GEO audit",
  "totalTime": "PT15M",
  "step": [
    {
      "@type": "HowToStep",
      "position": 1,
      "name": "Check server-rendered HTML",
      "text": "curl the URL and confirm key content appears without JavaScript."
    },
    {
      "@type": "HowToStep",
      "position": 2,
      "name": "Verify structured data",
      "text": "Ensure WebPage or Article JSON-LD includes datePublished and dateModified."
    }
  ]
}
```

---

## 4. Product (+ Offer)

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Example Device Pro",
  "image": ["https://example.com/p/pro.jpg"],
  "description": "Edge AI appliance with 64GB RAM and preinstalled inference stack.",
  "sku": "EX-PRO-001",
  "brand": { "@type": "Brand", "name": "Example" },
  "offers": {
    "@type": "Offer",
    "url": "https://example.com/p/example-device-pro",
    "priceCurrency": "USD",
    "price": "499.00",
    "availability": "https://schema.org/InStock"
  }
}
```

---

## 5. ItemList (comparison / roundup)

```json
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Top GEO tools compared",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "item": {
        "@type": "SoftwareApplication",
        "name": "Tool A",
        "applicationCategory": "BusinessApplication",
        "url": "https://example.com/reviews/tool-a"
      }
    }
  ]
}
```

---

## 6. Organization (sitewide)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": "https://example.com/#organization",
  "name": "Example Inc",
  "url": "https://example.com/",
  "logo": "https://example.com/logo.png",
  "sameAs": [
    "https://www.linkedin.com/company/example",
    "https://github.com/example"
  ]
}
```

---

## 7. Quotation (attributed claims)

```json
{
  "@context": "https://schema.org",
  "@type": "Quotation",
  "text": "Pages with statistics were more likely to be cited by generative systems in controlled studies.",
  "citation": "https://arxiv.org/abs/2311.09735",
  "author": { "@type": "Organization", "name": "arXiv" }
}
```

---

## 8. Dataset (proprietary or published data)

```json
{
  "@context": "https://schema.org",
  "@type": "Dataset",
  "name": "2026 LLM Latency Benchmarks",
  "description": "Measured tokens/sec for consumer GPUs on standardized prompts.",
  "license": "https://creativecommons.org/licenses/by/4.0/",
  "creator": { "@id": "https://example.com/#organization" },
  "distribution": {
    "@type": "DataDownload",
    "encodingFormat": "text/csv",
    "contentUrl": "https://example.com/data/llm-latency-2026.csv"
  }
}
```

---

## 9. BreadcrumbList

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "@id": "https://example.com/blog/geo-guide#breadcrumb",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://example.com/" },
    { "@type": "ListItem", "position": 2, "name": "Blog", "item": "https://example.com/blog/" },
    { "@type": "ListItem", "position": 3, "name": "GEO Guide", "item": "https://example.com/blog/geo-guide" }
  ]
}
```

---

## Next.js App Router — embed JSON-LD

In a **Server Component** page (no `'use client'` on the page that emits schema):

```tsx
export default function Page() {
  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: 'Your Title',
    datePublished: '2026-04-09',
    dateModified: '2026-04-09',
    author: { '@type': 'Person', name: 'Jane Doe' },
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <article>{/* visible content */}</article>
    </>
  );
}
```

Keep schema in sync with **visible** FAQ/HowTo content; avoid marking up text users cannot see on the page.
