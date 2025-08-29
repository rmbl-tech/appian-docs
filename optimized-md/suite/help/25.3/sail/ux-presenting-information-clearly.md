---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-presenting-information-clearly.html
original_path: sail/ux-presenting-information-clearly.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Presenting Information Clearly \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](#)
-   Layout Best Practices
    -   [Example Walk-Through](/suite/help/25.3/sail/ux-example-walkthrough.html)
    -   [Page Width](/suite/help/25.3/sail/ux-page-width.html)
    -   [Columns vs. Side by Side](/suite/help/25.3/sail/ux-columns-and-side-by-side.html)
-   Component Best Practices
    -   [Labels](/suite/help/25.3/sail/ux-labels.html)
    -   [Inputs, Selection, and Pickers](/suite/help/25.3/sail/ux-inputs.html)
    -   [Buttons vs. Links](/suite/help/25.3/sail/ux-buttons-vs-links.html)
-   Site & Portal Best Practices
    -   [Portal Design Guidelines](/suite/help/25.3/sail/ux-portals.html)
    -   [Designing Sites and Portals](/suite/help/25.3/sail/ux-site-branding.html)
-   General Guidelines
    -   [Accessibility](/suite/help/25.3/sail/ux-accessibility.html)
    -   [Avoiding Clutter](/suite/help/25.3/sail/ux-avoiding-clutter.html)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Presenting Information Clearly

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Introduction

Powerful functionality and rich data are of limited value if they cannot effectively be consumed by their audiences. That's why presenting application content with great clarity is a crucial part of user experience design. This page describes how to structure the elements of your UIs to conform to a logical and effective information architecture.

**Information architecture** is the practice of organizing and describing content to maximize comprehension. Getting this right requires thinking about the top-level navigation of your application, the presentation of each individual field or control, and everything in between.

When designing each new interface, make sure that your choices allow users to accomplish their tasks with ease. Specifically, visitors to a page should find it intuitive to:

-   Understand the purpose of the page
-   Know how to navigate to related pages
-   Recognize how page contents are organized
-   Quickly find controls and comprehend specific pieces of information on the page

## Facilitate orientation and navigation

Use prominent titles to identify the content of each page. Be concise, but specific. For example:

-   "Approve Conference Expenses for Jane Smith" describes a task
-   "Sales Performance by Region" describes a report dashboard

![ds-images/IA_good_title_do.png](ds-images/IA_good_title_do.png)

A separate title may not be needed if the selected site page title adequately describes the purpose of the page.

![ds-images/IA_self_title.png](ds-images/IA_self_title.png)

Page titles should remain constant. Avoid changing the title to reflect user selections made on the page.

[![alttext](ds-images/IA_change_title_dont.png)](ds-images/IA_change_title_dont.png)

Don't change the page title as users interact with page contents

[![alttext](ds-images/IA_change_title_do.png)](ds-images/IA_change_title_do.png)

Keep the page title consistent even as page contents update

It should also be easy for users to tell where the current page is situated within a network of related pages, with clear navigation options to jump to those other interfaces.

![ds-images/IA_back_link.png](ds-images/IA_back_link.png)

_A back navigation link reminds viewers that they're looking at the details of a selected item and provides an obvious way to return to the full list of items_

![ds-images/IA_breadcrumbs.png](ds-images/IA_breadcrumbs.png)

_[Breadcrumbs](../breadcrumbs-pattern.html) describe the current page's position within a logical hierarchy of items. Breadcrumb links make it easy to jump to other parts of the same hierarchy._

For more information on how to organize your site content into pages and page groups, see [Designing Sites and Portals](ux-site-branding.html#organizing-pages-and-page-groups).

## Clearly outline page structure

While the simplest pages may only need to be described by a single title, many pages feature a varied collection of content and controls which benefit from structured organization.

Take time to explicitly define the structure of what you plan to show on each page: How many organizational levels will be required? Which groups should be children of which parent sections? Which groups are siblings of each other?

Select appropriate interface components to clearly express the page structure. Users should be able to easily identify and understand the organizational hierarchy. When selecting interface components to structure the information on a page, keep in mind that section labels, box labels, and rich text headers are more [accessible](ux-accessibility.html#use-accessible-headers) than rich text items.

[![alttext](ds-images/IA_structure_do.png)](ds-images/IA_structure_do.png)

Use a consistent and intuitive set of visual styles to represent the content structure of pages.

In the example interface above, the hierarchy is expressed, in order, as follows:

1.  The page title is the most visually-prominent text in the interface and represents the topic of the entire page.
2.  Tabs represent separate views of the same topic. The content below the tab bar corresponds to the selected tab.
3.  Section headings represent major content groupings.
4.  A less prominent text style is used to represent subsections at the lowest level.

[![alttext](ds-images/IA_confusing_hierarchy_dont.png)](ds-images/IA_confusing_hierarchy_dont.png)

Don't make it hard for users to understand the structure of pages. Avoid layouts that create ambiguity and confusion.

In this example:

1.  A section heading ("Case History") is shown with the same style as the title of the entire page ("Case #1748…").
2.  The name of the customer ("Acme Corporation") is styled like a section heading, but it's actually a data value.
3.  The "Notes" section is a sibling to the "Case History" section, but it's styled to look like it belongs at a different level of the information hierarchy.

## Use visual differentiation to aid comprehension

Users may find it difficult to consume pages with a lot of uniformly-presented content.

[![alttext](ds-images/IA_diff_dont.png)](ds-images/IA_diff_dont.png)

Visual differentiation helps to reinforce separation of content groupings within a page, helping users to quickly scan for and understand the most important parts. Differentiate content by varying:

-   **Size** (use larger sizes to draw attention to more important values)
-   **Weight** (vary boldness to contrast different values)
-   **Color** (use different colors to highlight certain values, keeping [accessibility considerations](ux-rich-text.html) in mind)
-   **Container** (show some content in box or card layouts to segregate from rest of page)

[![alttext](ds-images/IA_diff_do.png)](ds-images/IA_diff_do.png)

This dashboard uses restrained differences in styling to make it easier for viewers to understand the content. Key performance indicator cards at the top of the page use large numbers and icons to highlight important values. Green and red text colors are used to supplement numeric values to make it easy to spot performance trends. User photos make it easier to scan for a particular person and also break up the visual uniformity of the data grid.

Avoid creating an unnecessary amount of visual differentiation as that results in clutter and reduces ease of comprehension.

[![alttext](ds-images/IA_random_colors_dont.png)](ds-images/IA_random_colors_dont.png)

Don't use a wide range of colors to differentiate content, particularly when the colors won't have obvious meaning to viewers. The result could look cluttered and garish.

[![alttext](ds-images/IA_random_layouts_dont.png)](ds-images/IA_random_layouts_dont.png)

Don't use the same layout to represent different concepts on the same page. In this example interface, card layouts are used to demarcate content sections, act as selection toggles, and represent section header bars. The inconsistency and visual clutter make it hard for users to navigate the page.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.