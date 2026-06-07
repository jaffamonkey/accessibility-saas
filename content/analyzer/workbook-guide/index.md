---
title: "Spreadsheet Workbook Guide"
summary: "Reference guide for the exported spreadsheet tabs, columns, and analysis model."
description: "A guide to the Systemic Accessibility Analyzer workbook export, including analyst tabs, BI-friendly sheets, fact/dimension tabs, field concepts, and suggested workflows."
categories: ["Accessibility", "Testing"]
tags: ["accessibility", "workbook", "reporting", "wcag", "power-bi"]
date: 2026-05-28
draft: false
weight: 30
showauthor: false
showTableOfContents: true
showReadingTime: true
---

> [!NOTE] The spreadsheet output is still being polished for public use.

This workbook functions as the primary data and analysis export for the accessibility testing framework. It compiles processed findings, deduplicated clusters, prioritized fix sequences, and database-ready data schemas into a single offline spreadsheet.

> 🔄 **Recent Workbook Updates:** Implemented friendlier human rule labels, enforced strict visual separation between Rule names and WCAG codes, optimized WCAG-only chart logic, and preserved "needs-review" data fields.

---

## Core Data Concepts (Dictionary)

To help you navigate the columns across different tabs, here is a quick key explaining what the primary data fields represent:

| Field Family | Meaning / Data Contained |
| :--- | :--- |
| **Rule** | Clear, human-readable display title for the issue[cite: 7]. |
| **Rule Id** | The original, technical identifier used by the source scanner tool[cite: 7]. |
| **WCAG** | The specific compliance success criterion code (e.g., `1.4.3`)[cite: 7]. |
| **WCAG Name** | The official title of the criterion (e.g., `Contrast (Minimum)`)[cite: 7]. |
| **Severity** | Normalized severity scales used for sorting and issue triage[cite: 7]. |
| **Consensus** | An overlap tracker showing how many tools flagged this exact issue[cite: 7]. |
| **Confidence** | A calculated judgment score verifying the raw strength of the evidence[cite: 7]. |
| **Issue Rank Score** | A calculated numeric value used to prioritize tasks[cite: 7]. |
| **Pattern** | A shared identifier and human label for a repeated issue family[cite: 7]. |

---

## The 3-Layer Sheet Guide

The sheets in this workbook are divided into three clear layers depending on your immediate goal: **Human Analysis**, **Flat Reporting**, or **Relational BI Modelling**[cite: 7].

### Layer 1: Human Summary & Analyst Tabs
*Use these tabs for manual code reviews, engineering handoffs, and project planning.*

*   **1. Summary:** The executive dashboard page[cite: 7]. Displays macro metrics like overall Violations, Pages Affected, Debt Indices, and your total Opportunity Score[cite: 7].
*   **2. Systemic Clusters:** *One of the most vital analyst tabs[cite: 7].* It rolls raw individual findings up into grouped, repeated issue families[cite: 7]. 
    *   *🎯 **Best used for:** Identifying which specific code bugs repeat across the site and which clusters to fix first[cite: 7].*
*   **3. Issue Details:** The master row review page[cite: 7]. Contains every single processed finding with fully enriched fields (DOM paths, selectors, and tool messages)[cite: 7]. 
    *   *💡 **Note:** This tab strictly isolates clean Rule labels from raw WCAG codes[cite: 7].*
*   **4. Fix Once Benefit Many:** A pre-ranked engineering shortlist displaying pattern groups, counts, affected URLs, and priority scores[cite: 7]. 
    *   *💡 **Note:** Numeric priority scores are guides; multiple rows can tie if their scale and severity are identical[cite: 7].*
*   **5. Top Fixes:** A highly simplified root-cause summary sheet[cite: 7]. Perfect for concise, high-level management status updates[cite: 7].

### Layer 2: Flat Reporting & Business Intelligence Tabs
*Use these tabs to plug your spreadsheet directly into tools like Power BI or Tableau.*

*   **6. Power BI Findings:** A flattened reporting layout containing stabilized keys and clean display fields for raw downstream findings[cite: 7].
*   **7. Power BI Patterns:** A flat, pattern-level rollup table optimized to track page spread, team ownership boundaries, and systemicity metrics[cite: 7].

### Layer 3: Relational Star-Schema Tabs
*Use these tabs to construct custom database models, relational tables, or complex internal metrics.*

*   **8. Fact Findings:** The central data hub[cite: 7]. Contains one strict transactional row per individual processed finding[cite: 7].
*   **9. Dim Page:** The dimension table containing normalized page keys and validated display URLs[cite: 7].
*   **10. Dim Rule:** The dimension table housing rule titles, scanner IDs, WCAG criteria, levels, and sorting attributes[cite: 7].
*   **11. Dim Component:** The component dimension containing custom infrastructure names and internal development team ownership mappings[cite: 7].
*   **12. Dim Pattern:** The pattern dimension designed for mapping and reporting on broad, repeated issue families[cite: 7].

---

## Standard Analyst Workflow

When opening a new export, follow this step-by-step pipeline to process the data without getting lost in the rows:

1.  **Assess the Scale:** Start with the **Summary** tab to get your bearings, then open **Systemic Clusters** to see the grouped problem spaces[cite: 7].
2.  **Queue the Work:** Open **Fix Once Benefit Many** to immediately pull out your highest-value development priorities[cite: 7].
3.  **Handoff to Devs:** Filter the rows on the **Issue Details** sheet to export exact DOM paths and messages to your engineering teams[cite: 7].
4.  **Scale the Reports:** Connect the **Power BI** or **Star-Schema** tabs to your downstream business systems for long-term tracking[cite: 7].

---

## 💡 Important Data Quirks & Limits

### Handling "Needs-Review" Statuses
Some automated testing tools generate warnings that are not definitive, confirmed compliance failures[cite: 7]. Depending on the source engine, these will appear in your sheets flagged as `incomplete`, `potentialviolation`, or `warning`[cite: 7]. The analyzer intentionally preserves these rows for deep security and engineering investigation, but **do not calculate them as confirmed failures** in your final compliance metrics[cite: 7].

### Troubleshooting Dashboard Discrepancies
The visual dashboard and the spreadsheet workbook share a core data model and should always align[cite: 7]. However, because dashboards summarize data, the workbook is always the source of truth for micro-investigations[cite: 7]. If a chart metric looks confusing, always verify the raw rows inside **Issue Details**, **Dim Rule**, and **Systemic Clusters**[cite: 7].