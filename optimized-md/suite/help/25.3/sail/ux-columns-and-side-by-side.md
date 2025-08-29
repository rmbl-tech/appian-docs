---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-columns-and-side-by-side.html
original_path: sail/ux-columns-and-side-by-side.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Columns vs. Side by Side \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](/suite/help/25.3/sail/ux-presenting-information-clearly.html)
-   Layout Best Practices
    -   [Example Walk-Through](/suite/help/25.3/sail/ux-example-walkthrough.html)
    -   [Page Width](/suite/help/25.3/sail/ux-page-width.html)
    -   [Columns vs. Side by Side](#)
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

# Columns vs. Side by Side

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

The [columns layout](../Columns_Layout.html) and [side by side layout](../Side_By_Side_Layout.html) provide two complementary techniques for specifying the lateral arrangement of components across the width of your pages.

The **columns layout** is used for the primary, top-level organization of a page or section.

![ds-images/colsbs_1.png](ds-images/colsbs_1.png)

_Columns are used to define the overall content arrangement of this page: the billboard is divided into 2 columns and the main body is divided into 3 columns_

The **side by side layout** is used for fine-grained control over the presentation of small groups of related components.

![ds-images/colsbs_3.png](ds-images/colsbs_3.png)

_The orange outlines show all the places in this UI where side by side layouts are used to precisely arrange components within the overall columns of the page_

Another key difference between columns and side by side is the logical relationship between their horizontal layout elements.

Across columns, the meaningful order of components is vertical. That is, users read from top to bottom within each column. The horizontal relationship between column contents is generally incidental (i.e. which field in one column lines up with which field in the next column). This becomes significant when viewing UIs on small form-factor devices (like mobile phones); columns are "flattened" into a vertical stack instead of being alongside each other.

With side by side layouts, the meaningful order of components is horizontal. That is, users read from left to right (or right to left, depending on the language) to comprehend the contents.

![ds-images/colsbs_6.png](ds-images/colsbs_6.png)

_Column contents flow from top to bottom, while side by side items flow horizontally. This example combines columns for "Payment Information" and "Billing Address" with side by side layouts for arranging field groups for credit card and address inputs._

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.