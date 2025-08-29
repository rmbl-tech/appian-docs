---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-color-overview.html
original_path: sail/ux-color-overview.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Using Colors \[SAIL Design System: Guidelines\]

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
    -   [Avoiding Clutter](/suite/help/25.3/sail/ux-avoiding-clutter.html)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](#)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Using Colors

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

Experiment with Color

Check out the Design Tips Series on the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) to learn how to build beautiful interfaces and sites by configuring background colors and branding.

## Introduction

This page provides guidance on how to use color effectively in your applications to create consistent branding, convey page structure, and highlight important information.

Well-designed software applications use a small, consistent color palette. To ensure a tasteful and professional style, use a minimal number of colors to communicate the identity of your application.

[![alttext](ds-images/color_palette_do.png)](ds-images/color_palette_do.png)

Use a small color palette to convey branding without distracting from the page content

[![alttext](ds-images/color_palette_dont.png)](ds-images/color_palette_dont.png)

A diversity of colors and shades tends to look messy and disruptive

## Using dark color schemes

### Header content layout

There are three dark color schemes that you can use to set the background color on [header content layouts](ux-header-content-layout.html#background-color): "CHARCOAL\_SCHEME", "NAVY\_SCHEME", and "PLUM\_SCHEME". We recommend using one of these schemes instead of using plain black. Additionally, place content in cards with the corresponding scheme.

![ds-images/headerContentLayout_charcoalScheme.png](ds-images/headerContentLayout_charcoalScheme.png)

_Using the "CHARCOAL\_SCHEME" for header content layout background color and card style_

![ds-images/headerContentLayout_navyScheme.png](ds-images/headerContentLayout_navyScheme.png)

_Using the "NAVY\_SCHEME" for header content layout background color and card style_

![ds-images/headerContentLayout_plumScheme.png](ds-images/headerContentLayout_plumScheme.png)

_Using the "PLUM\_SCHEME" for header content layout background color and card style_

### Site branding

If your site pages use a dark color scheme, use the same color scheme for the navigation bar and accent color. In the site object, click **Try a Dark Color Scheme** then select the corresponding color scheme to ensure the navigation bar and accent color matches the site pages.

Learn how to set [dark color schemes on sites](ux-site-branding.html#dark-color-schemes-sites).

## Using color to convey page structure

Styled cards and billboards with solid background colors can be used to establish structure for a page. To use these big blocks of color effectively, place them along the perimeter of the page. At a more granular level, use box layouts to create visually distinct subheaders.

[![alttext](ds-images/color_block_do.png)](ds-images/color_block_do.png)

Use a block of color (e.g., a card) to create a visually distinct page header

[![alttext](ds-images/color_block_dont.png)](ds-images/color_block_dont.png)

Avoid using blocks of color to highlight random sections that are not on the perimeter of the page

[![alttext](ds-images/color_header_flush.png)](ds-images/color_header_flush.png)

Use out-of-the-box features, including the header-content layout (pictured above) and record view header backgrounds, to create colored page headers. When choosing a color for these flush headers, it’s especially important to consider the color of the header bar above it.

When selecting a color for a header or other structural element, keep in mind that a bright, intense color will pull the user’s eye toward that section. If you want to avoid this, use a less intense shade. For example, using “Standard” box styles is usually a safe choice to ensure the color doesn’t call more attention to the box headers than to the content of the boxes themselves.

Used without caution, colored cards and boxes are an easy way to put disruptive eyesores on a page. Appropriate use of color within structural elements allows color to more effectively be used to highlight important information on the screen (in the student dashboard example above, green is used to quickly convey the status of the student’s performance and graduation schedule).

## Using color to create layers

You can style certain components with hex codes that include transparency to create layered designs within your interfaces.

By incorporating hex codes with transparency in your layouts, charts, and other components, you can highlight a specific area of the screen without completely obscuring the background. You can also use transparency to create visual hierarchy, so users can quickly understand the layout, identify key information, and interact with the most critical components first.

Hex codes including transparency are formatted as `#RRGGBBAA`, where the final two hexadecimal digits (`AA`) represent the opacity of the color. You can configure these two digit with values ranging from `00` (completely transparent) to `FF` (fully opaque).

[![alttext](ds-images/color_opacity_do.png)](ds-images/color_opacity_do.png)

In this example, the card layout has the _style_ parameter set to a transparent hex code for blue to showcase the background.

## Using color to highlight information

Color can be used to convey meaning and make certain information stand out, such as alerts, statuses, and key performance indicators. This should be done sparingly, as each additional instance of color competes for attention. When using colors to display information, consider what the user’s attention should be drawn to when they first see a page.

Colors should be used consistently throughout an application or site, and the meaning of each color should be clear and obvious to the user (e.g., green = positive, red = negative).

[![alttext](ds-images/color_info_do.png)](ds-images/color_info_do.png)

Selectively use color to call attention to items on a page. In this example, green signifies completed tasks, orange warns of a delay, and red denotes alerts that should not be overlooked.

[![alttext](ds-images/color_info_dont.png)](ds-images/color_info_dont.png)

Don’t use more than a handful of colors to highlight information on a page. Random, unmeaningful colors distract from the rest of the page content.

## Using color in images and icons

Diverse or varied colors that are represented within content such as images and icons can work well, as long as the user can clearly tell what the colors represent. ![ds-images/color_in_content.png](ds-images/color_in_content.png)

_A set of colorful flag icons represents the countries that are part of this product launch. Because the user can clearly tell what the images and icons represent, the effect isn’t distracting._

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.