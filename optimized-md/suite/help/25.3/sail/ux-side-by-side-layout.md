---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-side-by-side-layout.html
original_path: sail/ux-side-by-side-layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Side by Side Layout \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](/suite/help/25.3/sail/ux-wizard-layout.html)
    -   [Header Content Layout](/suite/help/25.3/sail/ux-header-content-layout.html)
    -   [Pane Layout](/suite/help/25.3/sail/ux-pane-layout.html)
-   Layouts
    -   [Section Layout](/suite/help/25.3/sail/ux-section-layout.html)
    -   [Columns Layout](/suite/help/25.3/sail/ux-columns-layout.html)
    -   [Side by Side Layout](#)
    -   [Box Layout](/suite/help/25.3/sail/ux-box-layout.html)
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

# Side by Side Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

See the developer documentation for technical details about the [side by side layout](/suite/help/25.3/Side_By_Side_Layout.html).

## Introduction

The side by side layout is a component that allows you to place items next to each other, horizontally.

Side by side layouts give you fine-grained control over the presentation of small groups of related components, such as related text fields in a form.

![ds-images/colsbs_4.png](ds-images/colsbs_4.png)

This page talks about when to use the side by side layout component, its design configurations, and interface style guidelines.

## When to use a side by side layout

Be mindful to choose side by side layouts appropriately, as there are situations where the [Columns](ux-columns-layout.html) layout component might be more suitable.

### Side by Side vs. Columns

Choosing the right layout for your interface depends on the type of content you plan to display and how you want to organize and arrange that content.

When deciding between using the columns or side by side layout, ask yourself two questions:

1.  Am I trying to organize groups of components or am I focusing on formatting and spacing my content?
2.  Am I arranging large or small component groups?

If you are focusing on large component groups, you are likely working with groups that encompass the main content of the page, such as dashboards, as they define the foundational page structure. In this case, use columns or pane layouts to organize these component groups.

If you are working with small component groups, like a profile image and name, use side by side layouts to format and precisely space this smaller-scale content within an overarching layout.

In the following example is a dashboard that displays:

1.  The main body divided into two columns, which establishes the primary page structure.
2.  The side by side layout used within a column to precisely arrange driver information.

[![Dashboard interface example displaying a side by side layout within a columns layout](ds-images/columns_layout_sbs_example.png)](ds-images/columns_layout_sbs_example.png)

For more information on the differences between the columns and side by side layouts, check out the [Columns vs. Side by Side](ux-columns-and-side-by-side.html) page.

## Usage

This section highlights the variations of the side by side layout component to help you visualize what's possible for your interface designs.

The side by side component can be found in the **LAYOUTS** menu within the **COMPONENTS PALETTE**.

Let's start with this simple form that contains two side by side layouts.

[![Basic side by side layout within a form](ds-images/sidebyside_basicform_example.png)](ds-images/sidebyside_basicform_example.png)

_The first side by side layout contains the First Name, Middle Initial, and Last Name text inputs. The second side by side layout contains the Email Address and Phone Number text inputs._

### Item Widths

Use the **Item Width** parameter to define the width of the components within the side by side layout. Select each individual component to view and select the width configuration. There are three types of side by side widths: Automatic, Relative, and Minimal.

#### Automatically Distribute

If no width is specified, "Automatically distribute" is selected by default, evenly distributing each item across the width of the side by side component. The side by side item widths will remain equal to one another as the screen size changes.

In the following example, all items in both side by side layouts are set to "Automatically distribute".

[![Simple side by side layout example displaying equal item widths as window resizes](ds-images/sidebyside_layout_auto_example.gif)](ds-images/sidebyside_layout_auto_example.gif)

#### Relative width

Select "Set Relative Width" to make an item width proportional to another item with relative width. This width type is best used on items you expect to be expanded and contracted often as the screen size changes.

In the following example, the First Name and Last Name inputs have "3X" widths in comparison to the M.I. input being "1X". The first and last name inputs are three times larger than the middle initial input. Email Address and Phone Number text inputs have also been assigned relative widths, with the email input being "2X" the size of the phone input, being "1X".

![ds-images/sidebyside_layout_relativePIC.png](ds-images/sidebyside_layout_relativePIC.png)

As the window size changes, the width proportions of the side by side items remain consistent:

[![Simple side by side layout example displaying item behavior as window resizes](ds-images/sidebyside_layout_relative_example.gif)](ds-images/sidebyside_layout_relative_example.gif)

#### Minimum width

Select "Use only as much space as necessary" to allow a side by side item of a defined width to take up only as much space as necessary.

When using the minimum width, the rest of the items in the layout will split the remaining space evenly. To ensure that all available space is filled, we recommend that you do not use minimum width for every item in a layout.

![ds-images/colsbs_5.png](ds-images/colsbs_5.png)

_Here, the minimum width is applied to the avatar-style image, so that it takes up as much space as it needs. The rich text item to the right of the image takes up all of the remaining width. Shrinking the image size from "Large" (top) to "Small" (bottom) shows how the minimum width automatically adjusts._

### Vertical Alignment

Use the **Vertical Alignment** parameter to adjust how items are aligned vertically within the side by side layout.

You can set the vertical alignment to the following values: "Top" (default), "Middle," and "Bottom."

The following example displays the vertical alignment when set to "Top" and "Bottom".

![ds-images/sidebyside_layout_vertAlign_example.png](ds-images/sidebyside_layout_vertAlign_example.png)

### Item Spacing

Use the **Item Spacing** parameter to adjust the horizontal spacing between each item in the side by side layout.

The possible spacing settings are: "Standard" (default), "None," "Dense," and "Sparse."

The following examples show what the spacing between items will look like with "None" and "Sparse" selected.

![ds-images/sidebyside_layout_spacing_example.png](ds-images/sidebyside_layout_spacing_example.png)

### Margins

Use the **Margin Above** and **Margin Below** parameters to control the spacing above and below items within the side by side layout.

The possible options for both above and below are: "None" (default), "Even Less," "Less," "Standard," "More," "Even More."

The following example displays what the margins above and below the items will look like with "Standard" and "Even More" margins.

[![Images display the difference between the Standard and Even More margins](ds-images/sidebyside_layout_margins_example.png)](ds-images/sidebyside_layout_margins_example.png)

### Stacking

Use the Stack When parameter to set the window width at which the side by side layouts stack vertically.

The possible window widths you can choose to stack at are: "Never stack" (default), "Phone only," "Portrait Tablet or narrower," "Landscape Tablet or narrower," "Narrow Desktop or narrower," "Desktop or narrower," "Custom."

You can also select a custom combination of screen widths you want your side by side items to stack at.

## Style guidelines

### Using minimal width

Minimal width works best for items with a defined width. Avoid using this width for items that may change in width due to user interaction.

Items with a defined width are those that will remain the same width.

These include, but aren't limited to:

-   Images with a fixed size, like "Medium"
-   Static text values or links
-   Buttons
-   Tags

[![alttext](ds-images/minimizeTextLinks.png)](ds-images/minimizeTextLinks.png)

Use minimum width for short text links that won't change widths based on user interaction. In this example, the user image and time stamp are also defined widths and are using minimum width in order for the body text to have enough space.

Items without a defined width are those with widths that may change based on user interaction or window size.

These include, but aren't limited to:

-   Images with an adjustable size, like "Fit"
-   Dropdowns
-   Pickers
-   Text fields

[![alttext](ds-images/minimizeDropdown.gif)](ds-images/minimizeDropdown.gif)

Don't use minimum width for items that will change widths based on user interaction.

### Responsive stacking

Responsive design is vital for creating a usable and flexible interface. When designing and building an interface, keep in mind that it will be accessed on devices with varying screen sizes.

Use the **Stack When** parameter to define when content should stack at specific screen dimensions, enhancing your interface's responsiveness.

In the following example, the side by side layouts are configured to stack when the window dimensions are equal to phone width.

[![Each item within the side by side layout stacks at phone width](ds-images/sidebyside_layout_stacking_example.png)](ds-images/sidebyside_layout_stacking_example.png)

For more information about creating a responsive interface, visit the [Responsive Design](../responsive_design.html) page.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.