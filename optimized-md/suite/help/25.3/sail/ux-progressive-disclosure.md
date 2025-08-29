---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-progressive-disclosure.html
original_path: sail/ux-progressive-disclosure.html
version: "25.3"
title: "Progressive Disclosure"
page_id: "sail/ux-progressive-disclosure"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Progressive Disclosure \[SAIL Design System: Guidelines\]

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
    -   [Progressive Disclosure](#)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Progressive Disclosure

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

Progressive disclosure refers to the hiding of user interface elements until they are needed. This technique presents a simpler initial experience to users, allowing them to better focus and complete the task more quickly.

## Progressively disclose based on user selection

If certain UI elements are only relevant when the user makes a particular selection, then it may be helpful to hide those items until the corresponding selection has been made.

![ds-images/progressiveDisclosure_do.png](ds-images/progressiveDisclosure_do.png)

_The "Maximum Password Age" input and the two checkboxes to its right are only relevant when the user enables the "Expire passwords" option. Therefore, it is a good idea to hide those fields until the "Expire passwords" checkbox is checked._

## Progressively disclose based on user action

Less frequently used elements may be hidden to reduce clutter until the user opts to display them. This is typically achieved by providing a "Show advanced options" link (and corresponding "Hide advanced options" link).

![ds-images/filterControls_do.png](ds-images/filterControls_do.png)

## Avoid hiding items that are part of a sequential flow

Progressive disclosure is appropriate for **conditional** display scenarios where certain UI elements should remain hidden until certain conditions are met. It is possible to successfully use the interface without ever revealing those items (for example, a user could choose not to show advanced options).

However, progressive disclosure should not be applied to **sequential flows**. In these scenarios, users always follow the same steps (which are known ahead of time), but certain inputs cannot be made modified until preceding selections have been made. For sequential steps, fields that are not yet available should be disabled and not hidden.

![ds-images/progressive_disable_sequence.png](ds-images/progressive_disable_sequence.png)

_In this example of a sequential flow, the "Model" dropdown is disabled until the "Make" and "Year" selections have been made_

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.