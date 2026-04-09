# GEO Schema Patterns — Ready-to-Use JSON-LD Templates

## WebPage + Article (foundation)

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Page Title Here",
  "description": "Concise description with key facts and terms.",
  "url": "https://www.example.com/page",
  "datePublished": "2025-01-15",
  "dateModified": "2025-06-20",
  "author": {
    "@type": "Organization",
    "name": "Company Name",
    "url": "https://www.example.com"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Company Name",
    "url": "https://www.example.com",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.example.com/logo.png"
    }
  }
}
```

## FAQPage (high GEO value — directly feeds AI answers)

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "What is [product]?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Concise answer with key facts. Include numbers if possible.]"
      }
    },
    {
      "@type": "Question",
      "name": "How much does [product] cost?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Specific pricing. Avoid vague language.]"
      }
    },
    {
      "@type": "Question",
      "name": "How does [product] compare to [competitor]?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Direct comparison with specific metrics.]"
      }
    }
  ]
}
```

## HowTo (step-by-step content)

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "How to [task]",
  "description": "Step-by-step guide for [task].",
  "totalTime": "PT15M",
  "step": [
    {
      "@type": "HowToStep",
      "position": 1,
      "name": "Step name",
      "text": "Clear instruction for this step."
    },
    {
      "@type": "HowToStep",
      "position": 2,
      "name": "Step name",
      "text": "Clear instruction for this step."
    }
  ]
}
```

## Product (product pages)

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Product Name",
  "description": "One-sentence description with key specs and differentiators.",
  "url": "https://www.example.com/product",
  "brand": {
    "@type": "Brand",
    "name": "Company Name"
  },
  "offers": {
    "@type": "Offer",
    "price": "499.00",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "url": "https://www.example.com/product"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.8",
    "reviewCount": "127"
  }
}
```

## ItemList (comparison / roundups)

```json
{
  "@context": "https://schema.org",
  "@type": "ItemList",
  "name": "Best [category] in 2025",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "item": {
        "@type": "Product",
        "name": "Product A",
        "description": "Why it's #1 — key differentiator.",
        "url": "https://www.example.com/product-a"
      }
    },
    {
      "@type": "ListItem",
      "position": 2,
      "item": {
        "@type": "Product",
        "name": "Product B",
        "description": "Why it's #2 — key differentiator.",
        "url": "https://www.example.com/product-b"
      }
    }
  ]
}
```

## Organization (sitewide — add to layout or homepage)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Company Name",
  "url": "https://www.example.com",
  "logo": "https://www.example.com/logo.png",
  "description": "One sentence about what the company does and its expertise.",
  "foundingDate": "2024",
  "contactPoint": {
    "@type": "ContactPoint",
    "contactType": "sales",
    "email": "sales@example.com",
    "url": "https://www.example.com/contact"
  },
  "sameAs": [
    "https://twitter.com/company",
    "https://linkedin.com/company/company",
    "https://github.com/company"
  ]
}
```

## Quotation (for attributed claims — emerging GEO signal)

```json
{
  "@context": "https://schema.org",
  "@type": "Quotation",
  "text": "Exact quoted text with a specific claim or data point.",
  "author": {
    "@type": "Organization",
    "name": "Company Name"
  },
  "spokenByCharacter": {
    "@type": "Person",
    "name": "Person Name",
    "jobTitle": "Title",
    "worksFor": {
      "@type": "Organization",
      "name": "Company Name"
    }
  }
}
```

## Dataset (for proprietary data — high GEO differentiation)

```json
{
  "@context": "https://schema.org",
  "@type": "Dataset",
  "name": "Dataset Name",
  "description": "What this dataset measures and why it matters.",
  "url": "https://www.example.com/data/xyz",
  "creator": {
    "@type": "Organization",
    "name": "Company Name"
  },
  "temporalCoverage": "2025-01-01/2025-06-30",
  "license": "https://creativecommons.org/licenses/by/4.0/"
}
```

## BreadcrumbList (navigation + hierarchy signal)

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://www.example.com"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Category",
      "item": "https://www.example.com/category"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Current Page"
    }
  ]
}
```

---

## Tips for JSON-LD in Next.js

```tsx
// app/page.tsx
const schema = { /* ... */ }

export default function Page() {
  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
      />
      {/* page content */}
    </>
  )
}
```

- Place JSON-LD in `<head>` via `generateMetadata` or inline `<script>` in JSX
- One `<script type="application/ld+json">` per schema block (or combine with `@graph`)
- Validate with Google Rich Results Test: https://search.google.com/test/rich-results
- Use `@id` to link entities across schemas (e.g., Organization in Article publisher)
