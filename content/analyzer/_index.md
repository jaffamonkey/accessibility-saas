---
title: "Systemic Web Accessibility Analyzer Overview"
summary: "A multi-tool analysis and reporting layer for finding repeated accessibility barriers, prioritising systemic fixes, and turning scan output into a practical remediation plan."
description: "The Systemic Web Accessibility Analyzer brings accessibility scan output together into a clearer dashboard and workbook, helping teams identify repeated patterns, compare evidence across tools, and prioritise fixes with the widest impact."
date: "2026-05-28"
draft: false
showauthor: false
showdate: false
showreadingtime: false
showtableofcontents: true
---

> [!NOTE]
> The systemic analyzer is still being polished for public use, but the test jobs board is open for a preview of how it surfaces patterns, priorities, and fix-once opportunities. <br />[View systemic analyzer jobs board](https://a11yanalyzer.sbs)

The **Systemic Web Accessibility Analyzer** is a multi-tool analysis and reporting layer for accessibility scan output. It is built for the point where a website, application, or wider digital estate has more findings than a team can sensibly triage one page at a time.

Rather than treating every scanner result as an isolated defect, the analyzer brings reports together, normalises the data, identifies likely overlaps, groups repeated patterns, and highlights the fixes most likely to improve many pages or components at once.

_The aim is not to produce a larger pile of findings. It is to make the findings easier to understand, prioritise, and act on._

## From issue volume to useful priorities

Automated tools are good at finding individual instances. They are less helpful when the same underlying problem appears dozens or hundreds of times across a site.

A contrast failure on the home page, product page, basket, and checkout may not be four unrelated defects. It may be one shared button style that needs fixing once.

The analyzer is designed to surface that distinction. It helps answer questions such as:

- Which issues are repeated across multiple pages?
- Which findings appear to come from a shared component, template, or pattern?
- Which problems are corroborated by more than one tool?
- Which pages or components carry the greatest concentration of accessibility debt?
- Which fixes are likely to remove the broadest class of issues first?

## What the analyzer does

The analyzer processes reports from multiple accessibility tools and turns them into a shared analysis model. It can:

- detect and load supported report formats
- normalise findings into a consistent structure
- map rules to WCAG criteria, levels, and human-readable titles where possible
- preserve useful needs-review findings as well as confirmed violations
- deduplicate likely overlaps between tools on the same page
- infer likely components, component groups, templates, and shared patterns
- group repeated findings into systemic clusters
- calculate overlap, confidence, spread, and prioritisation metrics
- generate a static dashboard and an analyst-friendly workbook

## Why use more than one tool?

Different accessibility tools have different strengths, rule sets, and ways of representing results. Running several tools can improve breadth, but it can also create noise: duplicated findings, inconsistent labels, and results that are difficult to compare directly.

The analyzer is intended to make that wider evidence set usable. It currently supports report families including **axe-core**, **axe-scan**, **IBM Accessibility Checker**, **Lighthouse**, **Oobee**, **UUV**, **Pa11y**, and **HTMLCS / html-sniffer**.

Where tools appear to report the same underlying problem, the analyzer can bring those findings together. Where a tool reports an incomplete, potential, or manual-review style result, the analyzer can retain that distinction rather than presenting everything as a confirmed failure.

## Dashboard: understand the shape of the problem

The dashboard provides a higher-level view of the analyzed estate. It is designed to help teams move quickly from raw volume to areas worth investigating.

Current dashboard views include:

- issue volume and affected-page summaries
- WCAG criteria and conformance-level breakdowns
- cross-tool overlap and evidence confidence
- shared-pattern and shared-source metrics
- top problem types
- component heatmaps
- issues per page
- page inventory checks
- a **Fix Once, Benefit Many** prioritisation panel
- searchable, paginated drilldowns for inspecting the findings behind each chart or ranked item

The **Page Inventory Check** is an important first step: it helps validate the coverage of the collected reports before the wider dashboard is interpreted.

## Workbook: inspect, filter, hand off, and report

The exported workbook provides the more detailed analysis layer behind the dashboard. It is intended both for hands-on accessibility review and for wider reporting workflows.

It includes:

- summary and management-style views
- detailed issue rows with enriched rule and WCAG fields
- systemic cluster analysis
- **Fix Once, Benefit Many** and top-fix shortlists
- flat Power BI-friendly tables
- fact and dimension sheets for relational reporting

This makes it possible to move from an executive overview into filtered triage, technical handoff, ownership discussions, and downstream BI analysis without losing the evidence behind the headline metrics.

## What “systemic” means here

A systemic issue is a repeated finding pattern where one remediation change may improve many instances. That may be a design-system component issue, a repeated template problem, a recurring content structure issue, or another shared implementation pattern.

The analyzer does not assume that every repeated issue has the same cause. Instead, it helps surface likely reusable remediation targets so that teams can investigate and prioritise them more efficiently.

## A practical workflow

1. Run the accessibility scanners and collect their report files.
2. Build the normalised dashboard and workbook output.
3. Check the page inventory to confirm the expected coverage.
4. Review the dashboard for concentrated problem areas, repeated patterns, WCAG hotspots, and high-value fixes.
5. Use the workbook for deeper triage, handoff, reporting, and BI workflows.
6. Re-run after remediation to compare changes in volume, concentration, overlap, and systemic impact.

## Important limitation

> **Automated coverage remains partial.** A broader tool stack improves breadth, corroboration, and confidence, but it does not replace manual accessibility testing or human judgement.

Areas such as alt-text quality, meaningful link wording in context, logical focus order, error recovery, semantic clarity, and cognitive accessibility still need human review.

## Explore the analyzer

- [Systemic Web Accessibility Analyzer overview](/analyzer/accessibility-systemic-analyzer/)
- [Dashboard charts and metrics guide](/analyzer/dashboard-charts-and-metrics-guide/)
<!-- - [Spreadsheet workbook guide](/analyzer/workbook-guide/) -->
- [View systemic analyzer dashboard](https://a11yanalyzer.sbs)
