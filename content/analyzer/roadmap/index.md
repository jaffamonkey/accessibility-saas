---
title: "Roadmap"
summary: "The journey from accessibility reports to accessibility intelligence."
description: "An overview of the Accessibility Systemic Analyzer roadmap, covering the current evidence engine and the planned intelligence layer."
categories: ["Accessibility", "Testing"]
tags: ["accessibility", "analysis", "dashboard", "wcag", "roadmap"]
date: 2026-07-02
draft: false
weight: 20
showauthor: false
showTableOfContents: true
showReadingTime: true
---

The **Accessibility Systemic Analyzer** is evolving from a multi-tool reporting platform into an **Accessibility Intelligence Engine**.

Rather than simply aggregating accessibility reports, the project aims to transform accessibility evidence into meaningful insight.

> **Don't count findings. Find consensus.**

---

## Where we are today

<div class="note">

**Current focus:** Completing **Phase 1 – Accessibility Evidence Engine**

The foundations are now largely in place, with development beginning to shift towards **Phase 2 – Accessibility Intelligence**.

</div>

---

# 🚀 Project Roadmap

| Phase | Focus | Status |
| :--- | :--- | :--- |
| **Phase 1** | Accessibility Evidence Engine | ✅ Nearing completion |
| **Phase 2** | Accessibility Intelligence | 🚧 In Development |
| **Phase 3** | Accessibility Guidance | 🔮 Future |

---

# Phase 1 — Accessibility Evidence Engine

The first phase focuses on gathering accessibility evidence from multiple independent engines and presenting it as a unified dataset.

Instead of comparing dozens of reports manually, the analyzer normalises findings, removes duplication where possible and highlights where independent tools agree.

> **Phase 1 asks:** *What did the tools find?*

## Current capabilities

### Multi-tool analysis

- Multiple accessibility engines
- Public website scanning
- Authenticated application scanning
- Adapter-based report ingestion
- WCAG mapping
- Rule canonicalisation
- Cross-tool deduplication
- Consensus analysis

### Reporting

- Interactive dashboard
- Static report generation
- JSON exports
- Excel workbook generation

### Visual analysis

- Visual Explorer
- Keyboard Tab Map
- Virtual Screen Reader
- Visual Contrast Checker

### Validation

- HTML validation
- WCAG reporting
- Benchmark regression suite

---

# Supported Evidence Sources

| Tool | Purpose |
| :--- | :--- |
| axe-core | Automated WCAG testing |
| axe-scan | Additional Axe evidence |
| IBM Accessibility Checker | Confirmed and advisory findings |
| Speca11y | Automated WCAG testing including some draft WCAG 3.0 rules |
| HTML CodeSniffer | WCAG technique analysis |
| Lighthouse | Browser accessibility audits |
| Oobee | Crawl-based analysis |
| UUV | Flow-based testing |
| Alfa | ACT rule evaluation |
| Nu HTML Checker | HTML validation |
| Pa11y Axe | Additional Axe evidence |
| Pa11y HTMLCS | Additional HTMLCS evidence |
| Visual Explorer | Visual page previews |
| Tab Map | Keyboard navigation visualisation |
| Virtual Screen Reader | Reading-order simulation |
| Contrast Checker | Visual contrast analysis |

---

# Benchmark Suite

The analyzer is continuously tested against a growing benchmark suite.

Current categories include:

- 🏛 Government
- 🛒 Retail / eCommerce
- ⚡ Modern SPA / Next.js
- 🏚 Legacy websites
- 🔐 Authenticated applications
- 😈 Deliberately poor accessibility examples
- ✅ Reference-quality websites

These sites provide regression testing for adapters, aliases, dashboard views, consensus scoring and future intelligence features.

---

# 🚧 Phase 2 — Accessibility Intelligence

Phase 2 moves beyond collecting findings.

Instead of asking:

> **How many issues exist?**

the analyzer begins asking:

> **What should be fixed first?**

---

## Component Analysis

Findings will be grouped by interface components instead of isolated pages.

Examples include:

- Navigation
- Forms
- Buttons
- Links
- Images
- Cards
- Tables
- Dialogs
- Carousels

Instead of:

> 47 button issues

the analyzer can identify:

> One shared Button component affecting 47 locations.

---

## Root Cause Analysis

Many accessibility reports contain hundreds of repeated findings.

Phase 2 aims to identify the underlying repair.

| Instead of | The analyzer identifies |
| :--- | :--- |
| 63 button findings | Shared Button component |
| 41 contrast failures | Shared design token |
| 82 missing labels | Shared Form component |
| 76 missing alt text issues | Shared Image component |

---

## Confidence Scoring

Future confidence scoring will consider:

- Tool agreement
- Independent engine families
- WCAG consistency
- Component similarity
- Shared DOM targets
- Advisory vs confirmed findings

The objective is to distinguish between:

- ✅ High-confidence evidence
- ⚠ Needs-review evidence
- 🔍 Tool-specific observations

---

## Visual Accessibility Layers

The existing Visual Explorer provides the foundation for richer visual overlays.

Future views may include:

- 🧭 Landmark View
- 📝 Heading Hierarchy
- 📋 Form Analysis
- 🖼 Image Analysis
- 🧩 Component Map
- 🌡 Accessibility Heatmap

These all build upon the same visual capture pipeline.

---

## Repair Count, Not Issue Count

One of the major goals of Phase 2 is changing the conversation from:

> **437 accessibility findings**

to:

> **9 meaningful repairs.**

For large digital estates, this can dramatically reduce manual triage.

---

# 🔮 Phase 3 — Accessibility Guidance

The long-term vision is to help teams understand *how* to improve accessibility rather than simply reporting defects.

Potential ideas include:

- 💡 Suggested repairs
- 📈 Trend analysis
- 🧩 Design system insights
- 🏗 Component ownership
- 🤖 AI-assisted explanations
- 📊 Organisation-wide accessibility intelligence

---

# Long-term Vision

Accessibility tools already identify problems.

The Accessibility Systemic Analyzer aims to explain those problems.

Ultimately the project is designed to answer questions such as:

- Which findings have the strongest evidence?
- Which issues are repeated across components?
- Which repairs remove the greatest accessibility debt?
- Which components should be prioritised?
- Which findings still require manual review?

Rather than producing another accessibility report, the analyzer aims to help teams make better accessibility decisions.

---

# Status

🚧 **Active Development**

Phase 1 is nearing completion.

Development is now beginning to focus on:

- 🧩 Component Intelligence
- 🌳 Root Cause Analysis
- 📊 Confidence Scoring
- 🌡 Accessibility Heatmaps
- 🖼 Expanded Visual Explorer

---

> **From findings... to evidence.**  
> **From evidence... to consensus.**  
> **From consensus... to meaningful repairs.**