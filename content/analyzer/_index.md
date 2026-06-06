---
title: "Systemic Accessibility Analyzer Overview"
summary: "A multi-tool analysis and reporting layer for finding repeated accessibility barriers, prioritising systemic fixes, and turning scan output into a practical remediation plan."
description: "The Systemic Accessibility Analyzer brings accessibility scan output together into a clearer dashboard and workbook, helping teams identify repeated patterns, compare evidence across tools, and prioritise fixes with the widest impact."
date: "2026-05-28"
draft: false
showauthor: false
showdate: false
showreadingtime: false
showtableofcontents: true
---

> [!NOTE]---
> The systemic analyzer is still being polished for public use, but the test jobs board is open for a preview of how it surfaces patterns, priorities, and fix-once opportunities.
> [View systemic analyzer jobs board](https://a11yanalyzer.sbs)
---
The **Systemic Accessibility Analyzer** is a multi-tool analysis and reporting layer for accessibility scan output. It is built for teams whose websites, applications, or digital estates have more findings than can sensibly be triaged one page at a time.

Rather than treating every scanner result as an isolated defect, the analyzer brings reports together, normalises the data, identifies likely overlaps, groups repeated patterns, and highlights the fixes most likely to improve many pages or components at once.

> 🎯 **The Goal:** To make findings easier to understand, prioritise, and act on—not to produce a larger pile of data.

---

## From issue volume to useful priorities

Automated tools are good at finding individual instances. They are less helpful when the same underlying problem appears dozens or hundreds of times across a site.

For example, a contrast failure on the home page, product page, basket, and checkout may not be four unrelated defects. It may be **one shared button style** that needs to be fixed just once. 

The analyzer surfaces these distinctions, helping you quickly answer:

*   **Pattern tracking:** Which issues are repeated across multiple pages?
*   **Shared sources:** Which findings come from a shared component, template, or pattern?
*   **Cross-tool verification:** Which problems are corroborated by more than one tool?
*   **Debt concentration:** Which pages or components carry the greatest concentration of accessibility debt?
*   **High-impact fixes:** Which fixes will remove the broadest class of issues first?

---

## Core Capabilities

The analyzer processes reports from multiple accessibility tools and turns them into a shared, unified analysis model. 

### Data processing & cleanup
*   **Format support:** Automatically detects and loads supported report formats.
*   **Data normalisation:** Organises findings into a consistent, predictable structure.
*   **WCAG mapping:** Maps scanner rules to WCAG criteria, levels, and human-readable titles.
*   **Smart deduplication:** Removes likely overlapping results from different tools on the same page.
*   **Review preservation:** Keeps helpful "needs-review" findings separate from confirmed violations.

### Systemic analysis
*   **Pattern inference:** Identifies likely components, component groups, templates, and shared patterns.
*   **Systemic clustering:** Groups repeated findings into actionable clusters.
*   **Smart metrics:** Calculates overlap, confidence, spread, and prioritisation metrics.
*   **Dual outputs:** Generates both a static visual dashboard and an analyst-friendly spreadsheet workbook.

---

## Why use more than one tool?

Different accessibility tools have different strengths, rule sets, and ways of representing results. Running several tools improves coverage, but it can create noise: duplicated findings, inconsistent labels, and messy comparisons.

The analyzer makes wider evidence usable. It currently supports report families including **axe-core**, **axe-scan**, **IBM Accessibility Checker**, **Lighthouse**, **Oobee**, **UUV**, **Pa11y**, and **HTMLCS / html-sniffer**.

*   **Where tools overlap:** The analyzer blends the findings together into one clear issue.
*   **Where tools are uncertain:** Potential or manual-review results retain their distinction rather than being falsely flagged as confirmed failures.

---

## Output 1: The Dashboard

The dashboard provides a high-level view of your analyzed estate. It helps teams move quickly from raw data volume to the areas most worth investigating.

### Key dashboard views:
*   **Summaries:** Issue volume and affected-page breakdowns.
*   **Compliance metrics:** WCAG criteria and conformance-level breakdowns.
*   **Confidence scores:** Cross-tool overlap metrics to show where tools agree.
*   **Hotspots:** Component heatmaps, top problem types, and issues-per-page.
*   **The Priority Panel:** A dedicated **Fix Once, Benefit Many** prioritisation grid.
*   **Page Inventory Check:** A vital validation step to verify the coverage of your collected reports before interpreting the wider data.
*   **Drilldowns:** Searchable, paginated views for inspecting the raw findings behind each chart.

---

## Output 2: The Workbook

The exported spreadsheet workbook provides the detailed data layer behind the dashboard. It is built for hands-on accessibility reviews, technical handoffs, and downstream reporting workflows.

### What's inside:
*   **Management views:** Clean, high-level summary sheets.
*   **Enriched data:** Detailed issue rows with enriched rule and WCAG fields.
*   **Actionable shortlists:** Systemic cluster analysis and **Fix Once, Benefit Many** priority lists.
*   **BI-ready data:** Flat, Power BI-friendly tables with fact and dimension sheets for relational reporting.

This makes it easy to move seamlessly from an executive overview into filtered developer triage without losing the technical evidence behind the headline numbers.

---

## What “systemic” means here

A **systemic issue** is a repeated finding pattern where one remediation change improves many instances across a site. This includes:
*   Design-system component bugs
*   Repeated page template issues
*   Recurring content structure problems

The analyzer does not assume every repeated issue has the exact same root cause. Instead, it highlights reusable remediation targets so your team can investigate them efficiently.

---

## A practical workflow

1.  **Scan:** Run your accessibility scanners and collect their report files.
2.  **Build:** Generate the normalised dashboard and workbook output using the analyzer.
3.  **Verify:** Check the page inventory to confirm your expected scan coverage.
4.  **Review:** Inspect the dashboard for concentrated problem areas and high-value fixes.
5.  **Triage & Handoff:** Use the workbook for deeper technical triage and developer handoffs.
6.  **Track:** Re-run the tool after remediation to measure changes in volume and systemic impact.

---

## ⚠️ Important Limitation

> **Automated coverage remains partial.** A broader tool stack improves coverage and confidence, but it **does not replace manual testing** or human judgement.
>
> Critical areas like alt-text quality, meaningful link wording, logical focus order, error recovery, semantic clarity, and cognitive accessibility still require human review.

## Explore the analyzer

*   [Systemic Accessibility Analyzer overview](/analyzer/accessibility-systemic-analyzer/)
*   [Dashboard charts and metrics guide](/analyzer/dashboard-charts-and-metrics-guide/)
*   [Spreadsheet workbook guide](/analyzer/workbook-guide/)
*   [View systemic analyzer dashboard](https://a11yanalyzer.sbs)