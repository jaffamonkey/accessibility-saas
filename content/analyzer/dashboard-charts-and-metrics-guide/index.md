---
title: "Dashboard Charts and Metrics Guide"
summary: "Guide to the current dashboard cards, charts, panels, and drilldown behavior."
description: "A guide to the Systemic Accessibility Analyzer dashboard, covering top cards, WCAG support coverage, problem type charts, component heatmaps, drilldowns, and interpretation guidance."
categories: ["Accessibility", "Testing"]
tags: ["accessibility", "dashboard", "metrics", "wcag", "testing"]
date: 2026-05-28
draft: false
weight: 20
showauthor: false
showTableOfContents: true
showReadingTime: true
---

This guide explains how to read and interpret the analyzer's dashboard cards, charts, panels, and drilldown behaviors. 

The layout is optimized to help your team quickly answer four critical questions:
1.  **Volume:** How much total issue volume exists across the estate?
2.  **Concentration:** Where are these issues physically concentrated?
3.  **Systemicity:** How much of the problem is systemic or tied to reusable code?
4.  **Action:** Which specific fixes will remove the most repeated errors first?

> 🔄 **Recent Dashboard Updates:** Features an all-new WCAG Support Coverage panel, strict WCAG-only charting limits, friendlier human rule labels, optimized component layout tracking, and full text-search, sizing, and pagination on drilldowns.

---

## Suggested Reading Order (How to Triage)

If you aren't sure where to start looking, follow this recommended sequence to process the dashboard data efficiently:

1.  **Verify the Data:** Look at the **Page Inventory Check** first to ensure all your scanner files loaded correctly.
2.  **Identify the Shape:** Scan the **Top Problem Types** and **Component Heatmap** to locate where the issues sit[cite: 6].
3.  **Check Compliance:** Review the **WCAG Rule Breakdown** to gather numbers for standards-focused reporting[cite: 6].
4.  **Evaluate Tools:** Look at the **Tool Agreement Profile** to see where your different scanners match or disagree[cite: 6].
5.  **Build Your Queue:** Open the **Fix Once, Benefit Many** panel to grab your highest-value development tasks[cite: 6].
6.  **Inspect Closely:** Click any chart bar or row to use the **Drilldown Search** and inspect the exact code errors[cite: 6].

---

## Top Metric Cards (The Snapshot)

The top of the dashboard displays summary cards[cite: 6]. They are organized into four functional categories to prevent data overwhelm:

### 📊 Volume Metrics
*   **Violations:** Total count of all processed findings across the entire scan dataset[cite: 6].
*   **Pages Affected:** Total number of unique, normalized pages containing at least one finding[cite: 6].
*   **WCAG Criteria Affected:** Total count of distinct WCAG success criteria triggered[cite: 6].
*   **Top 5 Page Concentration:** The exact percentage of total issue volume found on your five most broken pages[cite: 6].

### ⚙️ Systemic & Architectural Metrics
*   **Shared Pattern Impact:** The percentage of overall issue volume directly tied to shared patterns or reusable code sources[cite: 6].
*   **Shared Source Rate:** The percentage of findings explicitly linked to global components, templates, or design styles[cite: 6].
*   **Opportunity Score:** An estimated percentage showing how many bugs can be cleared by focusing only on top-ranked opportunities[cite: 6].
*   **Accessibility Debt Index:** A weighted burden score calculated from overall repetition, page spread, and systemicity[cite: 6].

### 🛡️ Trust & Tool Metrics
*   **Cross-Tool Overlap:** High-level counts splitting issues into `verified` (multiple tools matched), `likely`, and `single` categories[cite: 6].
*   **Evidence Confidence:** A summary scale rating the raw strength of your automated test evidence[cite: 6].

### 🧩 Compliance & Heritage Markers
*   **WCAG Levels:** Total issue breakdowns categorized by strict compliance tiers: A, AA, and AAA[cite: 6].
*   **Legacy Frames:** Total counts of frame/iframe-related items and the specific pages they affect[cite: 6].

---

## Main Chart and Table Panels

### 🚦 Data Validation Panels

> 🔍 **Critical Trust Check: Page Inventory Check**
> This panel validates your cross-tool page coverage[cite: 6]. Always check this sheet before interpreting the wider dashboard to guarantee that your raw scanner outputs aren't missing key pages[cite: 6].

*   **Tool Agreement Profile (Chart):** Displays how often your accessibility tools agree on issues, overlap within the same family, or remain entirely unique[cite: 6]. This is an organization tool, not an absolute truth meter[cite: 6].
*   **WCAG Support Coverage (Table):** Explains the high-level WCAG testing capabilities of your active tool frameworks[cite: 6]. It shows capability, not a guarantee that every rule was actively triggered on a run[cite: 6].

### 🛠️ Action & Remediation Panels
*   **Fix Once, Benefit Many (Table):** A ranked shortlist highlighting the repeated code patterns most worth fixing first[cite: 6]. This is the most actionable panel on the dashboard[cite: 6].
*   **Top Problem Types (Chart):** Groups individual component failures into massive functional buckets (e.g., Forms, Interactive, Navigation, Structure, ARIA)[cite: 6].
*   **Component Heatmap (Chart):** Pinpoints exactly which user interface components are throwing the most errors[cite: 6]. Display labels are humanized, but lookups run on raw component keys underneath[cite: 6].
*   **WCAG Rule Breakdown (Chart):** Displays a refined view containing only valid WCAG criteria[cite: 6]. Messy technical rule IDs and engine debug text are stripped out[cite: 6].
*   **Issues per Page (Chart):** Lists your most heavily broken URLs so you can separate severe localized failures from global template noise[cite: 6].

---

## Drilldown Behavior

Clicking any interactive chart bar or fix row automatically launches the drilldown panel for that specific data subset[cite: 6]. 

To make exploring dense rows easier, the drilldown interface includes:
*   🔍 **Targeted Search:** Instantly filters text across the current drilldown result subset[cite: 6].
*   📄 **Page Sizing:** Lets you adjust your workspace view to show 10, 25, 50, or 100 rows per screen[cite: 6].
*   🔀 **Pagination:** Provides clean page numbers to navigate long development sets without crashing your browser[cite: 6].

*Fields rendered in this view include: rule label, page URL, component key, issue scope, pattern type, code source, DOM selector path, unique fingerprint, and engine message[cite: 6].*

---

## ⚠️ Interpretation Guidance & Limits

*   **Overlap Value:** Higher overlap across completely different tool families indicates incredibly high confidence and strong issue corroboration[cite: 6].
*   **Same-Family Overlap:** Intrafamily overlap can be highly sensitive to your deduplication settings, DOM selector formats, and fingerprint strictness[cite: 6].

> **Warning:** Dashboard charts and overlap summaries are designed for **evidence organization**[cite: 6]. They are an optimization map for developers, not a replacement for manual accessibility audits or human evaluation[cite: 6].