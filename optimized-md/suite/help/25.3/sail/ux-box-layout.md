---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-box-layout.html
original_path: sail/ux-box-layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Box Layout \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](/suite/help/25.3/sail/ux-wizard-layout.html)
    -   [Header Content Layout](/suite/help/25.3/sail/ux-header-content-layout.html)
    -   [Pane Layout](/suite/help/25.3/sail/ux-pane-layout.html)
-   Layouts
    -   [Section Layout](/suite/help/25.3/sail/ux-section-layout.html)
    -   [Columns Layout](/suite/help/25.3/sail/ux-columns-layout.html)
    -   [Side by Side Layout](/suite/help/25.3/sail/ux-side-by-side-layout.html)
    -   [Box Layout](#)
    -   [Card Layout](/suite/help/25.3/sail/ux-card-layout.html)
    -   [Billboard Layout](/suite/help/25.3/sail/ux-billboard-layout.html)
-   Display
    -   [Images](/suite/help/25.3/sail/ux-images.html)
    -   [Rich Text](/suite/help/25.3/sail/ux-rich-text.html)
    -   [KPIs](/suite/help/25.3/sail/ux-kpi.html)
    -   [Tags](/suite/help/25.3/sail/ux-tags.html)
    -   [Gauges](/suite/help/25.3/sail/ux-gauge.html)
    -   [Standard Icons](/suite/help/25.3/sail/ux-styled-icons.html)
-   Action
    -   [Buttons](/suite/help/25.3/sail/ux-buttons.html)
    -   [Record Actions](/suite/help/25.3/sail/ux-record-actions.html)
-   Grids & Lists
    -   [Grids](/suite/help/25.3/sail/ux-grids.html)
    -   [Event History List](/suite/help/25.3/sail/ux-event-history-list.html)
-   Charts
    -   [Charts](/suite/help/25.3/sail/ux-charts.html)

Components Overview Form Layout Wizard Layout Header Content Layout Pane Layout Section Layout Columns Layout Side by Side Layout Box Layout Card Layout Billboard Layout Images Rich Text KPIs Tags Gauges Standard Icons Buttons Record Actions Grids Event History List Charts

# Box Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

See the developer documentation for technical details about the [box layout](/suite/help/25.3/Box_Layout.html).

## When to use a box layout

Use a box layout to create a strong visual grouping of related components. Each box consists of a title bar and can have a border or shadow. Specify a concise heading in the title bar to describe the box contents.

Use box layouts sparingly as they may make pages look more cluttered. Choose a simpler design if a box layout would not help users to better comprehend the UI.

[![alttext](ds-images/box_dont_nest.png)](ds-images/box_dont_nest.png)

Don’t nest box layouts within other box layouts as this creates a cluttered interface

Below are some examples of how box layouts may be used effectively.

## Highlight key information and controls

Use a box layout to draw attention to particular portions of a form such as important prompts or error messages. Choose the appropriate style for the content of the box. For example, use "ERROR" to tell the user about a problem.

![ds-images/box_layout_example.png](ds-images/box_layout_example.png)

## Designate primary content sections

Use box layouts _instead_ of section layouts to organize and describe main content sections on a page. This approach results in a heavily-compartmentalized page design that may not be appropriate for all use cases. Choose this method if it is very important for users to notice the distinction between content sections. Examples include longer forms where grouping questions into box layouts will help keep users from feeling overwhelmed, and dense dashboards where boxes break information up into digestible chunks.

Avoid mixing box layouts and section headings as that may make it harder for users to understand the structure of the page.

Also avoid mixing box styles for decorative purposes. Styles such as "WARN" and "ERROR" are intended to help draw attention to a single box shown in an interface. When using multiple box layouts to organize a page, the "STANDARD" and "ACCENT" styles are most appropriate.

[![alttext](ds-images/box_for_sections.png)](ds-images/box_for_sections.png)

Use the same style for all boxes when they represent page sections (generally, "Standard" and "Accent" styles work best)

[![alttext](ds-images/box_mixed_styles.png)](ds-images/box_mixed_styles.png)

Don't mix box styles on the same page

## When to use borders and shadows

Don't use borders and shadows together. Use either borders or shadows, depending on the [header content layout](../Header_Layout.html) background color.

[![alttext](ds-images/box_layout_border.png)](ds-images/box_layout_border.png)

On white page backgrounds, use borders without shadows for the best look.

[![alttext](ds-images/box_layout_shadow.png)](ds-images/box_layout_shadow.png)

On transparent page backgrounds, use shadows without borders to help the box layout stand out more.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.