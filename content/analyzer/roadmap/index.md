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

Rather than simply aggregating reports, the project is focused on turning accessibility evidence into actionable insight.

> **Don't count findings. Find consensus.**

---

# Phase 1 — Accessibility Evidence Engine *(Current)*

Phase 1 focuses on gathering accessibility evidence from multiple independent sources and presenting it in a unified, meaningful way.

Instead of manually comparing reports from numerous accessibility tools, the analyzer normalises findings, removes duplication where possible and highlights where tools independently agree.

## Current capabilities

- Support for **14 accessibility engines**
- Public and authenticated website scanning
- Adapter-based report ingestion
- WCAG mapping and enrichment
- Rule canonicalisation
- Cross-tool deduplication
- Consensus analysis
- Interactive dashboard
- Static report generation
- JSON and workbook exports
- Visual Keyboard Tab Map
- Virtual Screen Reader simulation
- Visual Contrast Checker
- HTML validation
- Benchmark website suite

---

# Supported Evidence Sources

| Tool | Purpose |
| :--- | :--- |
| axe-core | Automated WCAG testing |
| axe-scan | Axe-derived reporting |
| IBM Accessibility Checker | Confirmed and advisory findings |
| HTML CodeSniffer | WCAG technique analysis |
| Lighthouse | Browser accessibility audits |
| Oobee | Large-scale crawling |
| UUV | Flow-based accessibility testing |
| Alfa | ACT rule evaluation |
| Nu HTML Checker | HTML validation |
| Pa11y (Axe) | Additional axe reporting |
| Pa11y (HTMLCS) | Additional HTMLCS reporting |
| Tab Map | Keyboard navigation visualisation |
| Virtual Screen Reader | Reading-order simulation |
| Contrast Checker | Visual colour contrast analysis |

---

# Benchmark Suite

The analyzer is continually tested against a growing benchmark suite representing a wide variety of websites.

Current categories include:

- Government
- Retail / eCommerce
- Modern SPA / Next.js
- Legacy websites
- Authenticated applications
- Deliberately poor accessibility examples
- Reference-quality implementations

The benchmark suite acts as a large-scale regression test for every release.

---

# Phase 2 — Accessibility Intelligence *(Planned)*

Phase 2 shifts the focus away from individual findings and towards understanding accessibility at a higher level.

Instead of answering:

> **"How many issues were found?"**

the analyzer will begin answering:

> **"What needs fixing?"**

---

## Component Analysis

Rather than grouping findings purely by WCAG rule, findings will be associated with interface components such as:

- Navigation
- Forms
- Buttons
- Links
- Images
- Tables
- Cards
- Dialogs
- Carousels

The goal is to identify repeated design-system issues rather than isolated page defects.

---

## Root Cause Analysis

Many accessibility reports contain hundreds of repeated findings.

Phase 2 aims to identify the underlying repair.

For example:

| Instead of | The analyzer identifies |
| :--- | :--- |
| 63 button findings | Shared Button component |
| 41 contrast failures | Shared design token |
| 82 missing labels | Shared Form component |

---

## Confidence Scoring

Not every accessibility finding carries the same weight.

Future analysis will consider:

- Tool agreement
- Independent engine families
- WCAG consistency
- Component similarity
- Shared DOM targets
- Advisory vs confirmed findings

This provides stronger evidence when several independent tools report the same underlying issue.

---

## Accessibility Heatmaps

Future visualisations may include:

- Landmark overlays
- Heading hierarchy
- Form analysis
- Image analysis
- Component boundaries
- Accessibility heatmaps

These visual layers will build upon the existing:

- Keyboard Tab Map
- Virtual Screen Reader
- Contrast Checker

---

## Unified Visual Capture

The current screenshot and Tab Map workflows are being merged into a single visual capture pipeline.

One browser visit will generate:

- Visual Preview
- Keyboard Tab Map
- Future accessibility overlays

This simplifies maintenance while ensuring every visual representation uses identical page loading, authentication and cookie-handling logic.

---

# Long-term Vision

Accessibility tools already identify problems.

The Accessibility Systemic Analyzer is focused on understanding those problems.

Ultimately the goal is to help answer questions such as:

- Which issues have the strongest evidence?
- Which findings are repeated across components?
- Which repairs remove the greatest amount of accessibility debt?
- Which issues genuinely require manual review?
- Which components should be prioritised first?

Rather than producing another accessibility report, the analyzer aims to help teams understand **where effort should be spent**.

---

# Current Status

🚧 **Work in Progress**

Phase 1 is nearing completion, with the focus now turning towards Phase 2.

The long-term ambition remains simple:

> **From findings... to evidence.**  
> **From evidence... to consensus.**  
> **From consensus... to meaningful repairs.**