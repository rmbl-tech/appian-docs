---
source_url: https://docs.appian.com/suite/help/25.3/sail/tabular-data-display.html
original_path: sail/tabular-data-display.html
version: "25.3"
title: "Tabular Data Display"
page_id: "sail/tabular-data-display"
section: "List-style grid"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Tabular Data Display \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](/suite/help/25.3/sail/page-titles.html)
    -   [Content Structure](/suite/help/25.3/sail/content-structure.html)
    -   [Page Headers](/suite/help/25.3/sail/page-headers.html)
    -   [Secondary Navigation](/suite/help/25.3/sail/secondary-navigation.html)
-   Page Types
    -   [Employee Home Pages](/suite/help/25.3/sail/employee-home-pages.html)
    -   [Visitor Landing Pages](/suite/help/25.3/sail/visitor-landing-pages.html)
    -   [Dashboards](/suite/help/25.3/sail/dashboards.html)
    -   [Forms](/suite/help/25.3/sail/forms.html)
    -   [Record Views](/suite/help/25.3/sail/record-views.html)
    -   [Online Shopping Journey](/suite/help/25.3/sail/online-shopping-journey.html)
-   Page Content
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](#)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Tabular Data Display

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Consider best practices for showing data in grids.

* * *

## List-style grid

This style of tabular data layout is designed to fit within the width of the containing page or page column without horizontal scrolling.

Its most common use is as a list of records or other data set, featuring links to drill into item details.

When configuring width for a list-style grid:

-   Use "Auto" width on all columns to allow the grid to automatically set column widths based on their contents, as in this example.
-   Use weighted column widths to set proportional widths across columns. For example, "3x."
-   See the [grid design guidance](ux-grids.html) for more details on column width configurations.

![](ds-images/image31.png)

## Spreadsheet-style grid

This style of tabular data layout is intended to feature fixed widths for each column, with horizontal scrolling to overflowing grid columns when they don't fit within the containing page or page column.

Use this style for data-rich grids where the primary use is analysis, not navigation.

When configuring width for a spreadsheet-style grid:

-   Set a fixed width, such as "Narrow" or "Medium," for all columns in a spreadsheet-style grid.
-   Choose a width that is appropriate for the length of the column header label and typical row contents.
-   Do not set "Auto" or relative widths, such as "3x," for columns in a spreadsheet-style grid as this shrinks the columns in an attempt to fit all of them into the width of the component.

![](ds-images/image37.png)

## Grids for smaller device widths

Grids layouts that work well on wide screens may require adjustments for viewing on narrower screens.

In particular, list-style grids featuring columns that distribute available horizontal space on a laptop screen may not be as legible on a phone. Conditionally switch to a spreadsheet-style layout approach, with fixed width columns, for grids that don't fit well in narrow screens.

![](ds-images/image40.png)

## User controls on records-powered grids

Configuring a read-only grid to use a record type as its data source allows you to easily enable filtering, search, and export features with a few clicks.

These user controls are also automatically arranged to minimize their footprint on the screen, leaving more space for viewing data.

Always consider this low-code approach before taking on the added effort of building custom user controls from scratch.

![](ds-images/image62.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.