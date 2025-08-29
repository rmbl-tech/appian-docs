---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-avoiding-clutter.html
original_path: sail/ux-avoiding-clutter.html
version: "25.3"
title: "Avoiding Clutter"
page_id: "sail/ux-avoiding-clutter"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Avoiding Clutter \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](/suite/help/25.3/sail/ux-presenting-information-clearly.html)
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
    -   [Avoiding Clutter](#)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Avoiding Clutter

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

Visual clutter is a common cause of inefficient user interfaces. When certain interface components are used superfluously or when interfaces are designed without considering [the right amount of information](guidance.html#show-the-right-amount-of-information) for the intended audience, the additional cognitive load slows users down and distracts from the task at hand.

## Avoid nested cards and boxes

Because card layouts and box layouts have borders, they are effective for grouping together information. However, when these layouts are nested (ie., a card or box is placed inside another card or box), the borders often hinder comprehension by adding unnecessary visual clutter.

[![alttext](ds-images/nested_comments_dont.png)](ds-images/nested_comments_dont.png)

Multiple levels of borders make it more difficult for users to parse information

[![alttext](ds-images/nested__comments_do.png)](ds-images/nested__comments_do.png)

Borders are not necessary when there is a clear delineation of items. The user photo and bold name clearly signal the beginning of a new entry, and whitespace can be used to convey structure without adding clutter.

[![alttext](ds-images/nested_navigation_dont.png)](ds-images/nested_navigation_dont.png)

Don’t place a list of selectable cards within a wrapper card. This makes it harder to understand which card is selected.

[![alttext](ds-images/nested_navigation_do.png)](ds-images/nested_navigation_do.png)

An unnested representation is cleaner and more quickly understandable

## Use billboards sparingly

Although they can add visual appeal to a page, billboards are another common culprit of unnecessary clutter. When designing a user interface, consider whether it needs the addition of a decorative photo or block of color. Oftentimes, subtle visual elements make the page look appealing without the clutter of an unimportant billboard.

Users’ eyes naturally start at the top of the page, so it’s especially important to use this valuable real estate effectively. When used inappropriately, billboards can be distracting and waste screen space.

[![alttext](ds-images/billboard_image_clutter_dont.png)](ds-images/billboard_image_clutter_dont.png)

The details of some background images can make overlay contents hard to read. In this example, the text within the image competes with the content of the overlay, resulting in a cluttered look.

[![alttext](ds-images/no_billboard_do.png)](ds-images/no_billboard_do.png)

Use subtle visual elements like icons, user avatar images, and rich text to add visual appeal without wasting space or creating clutter

## Utilize navigation and progressive disclosure

Another way to avoid clutter is to reduce the amount of information displayed on the screen at one time. When reviewing a cluttered interface, ask these two questions:

-   **“What information can be moved to a related page that’s one click away?”** Eliminate clutter on the interface by providing a navigation control that allows the user to view this information on a separate page.
-   **“What information can be hidden initially and available behind a control?”** Reduce clutter by hiding this information until the user needs it. This pattern is known as [progressive disclosure](ux-progressive-disclosure.html).

[![alttext](ds-images/grid_clutter_dont.png)](ds-images/grid_clutter_dont.png)

Don’t try to pack in as much information as possible into a grid. Instead, consider what information the user needs on the page, and what information can be shown after selecting an item.

[![alttext](ds-images/record_tabs_do.png)](ds-images/record_tabs_do.png)

Use familiar navigation controls to limit the amount of information presented at one time. In this example, the tabular navigation for record views allows users to find information about customer contacts, interactions, and cases when they need it.

[![alttext](ds-images/more_link_do.png)](ds-images/more_link_do.png)

Provide dynamic links that allow users to see more information when they need it. In this example, less commonly used filters are available behind a control.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.