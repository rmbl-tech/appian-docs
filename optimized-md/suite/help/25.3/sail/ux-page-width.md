---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-page-width.html
original_path: sail/ux-page-width.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Page Width \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](/suite/help/25.3/sail/ux-presenting-information-clearly.html)
-   Layout Best Practices
    -   [Example Walk-Through](/suite/help/25.3/sail/ux-example-walkthrough.html)
    -   [Page Width](#)
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

# Page Width

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

When designing for a sites user experience, select the appropriate page width for the content. Choose the "Wide" or "Full" page width for content-packed UIs such as those with many columns of data (see the section below for tips on when to use each setting). The "Narrow" width is appropriate for interfaces such as simple one-column and two-column forms where excessive white space is undesirable. The "Medium" width is a good compromise for many common use cases. Keep in mind that the [selected width for a site page](ux-header-content-layout.html#site-page-width) applies until the user navigates to another page, even when UI content is updated (such as when drilling into a record from a record list). Make sure that the width you choose works well for all content that will be displayed on that page.

![ds-images/overview_page_width.png](ds-images/overview_page_width.png)

_Page widths compared: (L-R) "Wide", "Medium", and "Narrow"_

On mobile devices, [sites pages](../sites_object.html#add-a-page) always use the full width of the screen regardless of the configured page width.

The page width for a portal is equivalent to "Full" in a site page.

For task-specific start pages on sites, the page width is always "Medium" and cannot be changed.

The page width for UIs viewed in Tempo is always equivalent to the "Medium" setting for sites pages. Interfaces designed for "Wide" or "Narrow" sites pages will automatically adjust to fit within Tempo pages. Tempo pages always use the full width of the screen when viewed on mobile devices.

When embedding interfaces into another web page, the available width is dictated by the dimensions of the Appian container, which is controlled by the web page designer.

## Wide vs. full page width

Pages that use the "Wide" width setting will fill the browser window when viewed on a typical display. However, when using a screen with very high horizontal resolution (such as an ultrawide monitor), the page width will be limited to 2,000 device independent pixels. This behavior minimizes variation in page content layout, providing a more consistent experience for users with varied display setups.

[![alttext](ds-images/page_width_wide_do.png)](ds-images/page_width_wide_do.png)

Use the "Wide" page width setting instead of "Full" to provide a consistent layout for users across a range of display resolutions.

The "Full" width setting allows pages to fill any size browser window, even on very wide displays. Use this configuration to maximize content space for users who will reliably view the page on high-horizontal-resolution displays.

[![alttext](ds-images/page_width_full_do.png)](ds-images/page_width_full_do.png)

Use the "Full" page width setting to optimize the experience for users with very wide displays.

[![alttext](ds-images/page_width_full_dont.png)](ds-images/page_width_full_dont.png)

Don’t use the "Full" setting for pages intended to be viewed across a range of display widths. Pages designed for typical screen sizes may not look good when allowed to fill the full width of very wide displays. Contents may look unexpectedly stretched or there may be too much white space.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.