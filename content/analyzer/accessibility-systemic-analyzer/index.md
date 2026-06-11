---
title: "Systemic Analyzer"
summary: "Project overview covering the architecture, supported tools, workflow, workbook, and dashboard notes."
description: "A refreshed project overview for the Systemic Accessibility Analyzer, covering the current architecture, supported adapters, WCAG handling, systemic analysis workflow, workbook model, and dashboard support."
categories: ["Accessibility", "Testing"]
tags: ["accessibility", "testing", "analysis", "wcag", "dashboard"]
date: 2026-05-28
draft: false
weight: 10
showauthor: false
showTableOfContents: true
showReadingTime: false
---

The **Systemic Accessibility Analyzer** is a multi-tool analysis and reporting layer for accessibility scan output. It is built for teams whose digital estates have more findings than can comfortably be triaged page by page. 

Instead of treating issues as isolated page defects, the analyzer normalizes data from multiple engines, deduplicates overlapping results, maps findings to WCAG, and groups repeated issue patterns into highly actionable remediation targets.

> 🔄 **What's New:** The analyzer now features an expanded adapter set, richer WCAG handling, friendlier rule labels, tighter workbook/dashboard synchronization, static builds, and paginated drilldown searches.

---

## Why this exists

Accessibility tools report results per page. This is great for localized debugging, but incredibly difficult for high-level project planning. A single design-system component bug can easily create hundreds of repetitive errors across an entire site.

| Page | Reported Finding |
| :--- | :--- |
| **Home** | Button contrast issue |
| **Product page** | Button contrast issue |
| **Cart** | Button contrast issue |
| **Checkout** | Button contrast issue |

Traditional reports treat these as four separate defects. 

> 💡 **The Reality:** The true root cause is simply **one** shared button component with an invalid color contrast value. The analyzer surfaces this distinction to save teams weeks of manual triage.

---

## Core Operations

To transform high-volume raw data into clean priorities, the analyzer runs the following tasks:

*   **Ingestion:** Detects and loads supported scanner report formats.
*   **Normalization:** Translates tool-specific findings into a unified data model.
*   **WCAG Mapping:** Matches scanner rules to WCAG criteria, levels, and titles.
*   **Data Cleanup:** Standardizes page keys, DOM selectors, severities, and labels.
*   **Component Inference:** Flags likely component, component-group, or design-system ownership.
*   **Deduplication:** Merges matching overlapping issues found by different tools on the same page.
*   **Pattern Rollups:** Clusters repeated issue families into centralized systemic patterns.
*   **Metric Calculation:** Computes scores for tool consensus, systemicity, and fix prioritization.
*   **Asset Export:** Generates clean analytics spreadsheets and static dashboard files.

---

## Supported Tools & Adapters

The analyzer supports a robust range of automated accessibility scanner outputs:

| Tool / Source | Capability & Handling Notes |
| :--- | :--- |
| **axe-core** | Extracts WCAG tags; preserves confirmed violations and manual-review findings. |
| **axe-scan** | Parses axe-derived outputs; handles incomplete/manual contrast checks. |
| **IBM Checker** | Maps specific IBM rule IDs to WCAG; handles `violation` and `potentialviolation` states. |
| **Lighthouse** | Extracts automated accessibility failures and grabs WCAG tags from audit metadata. |
| **Oobee** | Crawler-style integration designed for broader site/estate parsing. |
| **UUV** | Flow/run-based integration featuring hardened metadata and normalized severities. |
| **Pa11y** | Parsed as a single source while tracking individual runner origins (`axe` vs `htmlcs`). |
| **HTMLCS** | Supports HTMLCS-aware parsing alongside technique-style label handling. |

---

## WCAG Handling & Data Dictionary

To keep data human-readable, the engine completely separates automated rule titles from strict compliance criteria codes:

*   **Rule:** The clear, human-readable title of the issue (e.g., `Contrast (Minimum)`).
*   **Rule Id:** The original, technical identifier provided by the scanner tool.
*   **WCAG Code:** The specific compliance criterion code (e.g., `1.4.3`).
*   **WCAG Name:** The official name of the matching WCAG criterion.

This data schema applies fallback message mapping, enriches criterion titles, and cleans up dashboard views so that raw rule IDs never leak into your high-level WCAG charts.

---

## Key Model & Architecture Updates

### 🔀 Pa11y mixed-run support
Pa11y is no longer treated as two fake tools when axe and HTMLCS findings come from the same run. The analyzer models a single `pa11y` source while cleanly tracking the per-issue `runner`.

### 🏷️ Friendly rule labels
Rule formatting has been tightened. The engine no longer falls back on bare WCAG codes or raw HTMLCS identifiers if a human-friendly label can be derived using metadata or technique-aware enrichment (e.g., `1.4.6 [G17]`).

### 🧼 WCAG chart cleanup
Dashboard and export views now accept only real, verified WCAG codes. This prevents raw developer debug messages or fallback text from corrupting compliance charts.

### 🔍 Drilldown UX upgrade
The primary dashboard drilldown engine now natively supports text search, customizable page sizing, and clean pagination.

---

## How the pipeline works