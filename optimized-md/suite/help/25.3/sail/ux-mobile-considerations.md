---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-mobile-considerations.html
original_path: sail/ux-mobile-considerations.html
version: "25.3"
title: "Mobile Considerations"
page_id: "sail/ux-mobile-considerations"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Mobile Considerations \[SAIL Design System: Guidelines\]

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
    -   [Mobile Considerations](#)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Mobile Considerations

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

Remember that users may be using devices with a variety of screen sizes to view interfaces in Appian. When designing an interface, use [device width preview](../working_in_design_mode.html#previewing-interfaces-for-mobile) to determine if it also works well on smaller screens.

![ds-images/interface_designer_mobile_ffp.png](ds-images/interface_designer_mobile_ffp.png)

See [responsive design](../responsive_design.html) to learn how to ensure your interfaces look great on any screen size.

## Flattened columns

Columns layouts are flattened into a single column on phones by default. However, you are able to configure column stacking behaviors for a variety of different screen sizes using the [_stackWhen_](../Columns_Layout.html) parameter.

If you choose to keep the default stacking behavior, make sure that your design doesn’t only make sense when certain fields are placed next to each other.

![ds-images/mobileDesign_flattenedColumns_RN.png](ds-images/mobileDesign_flattenedColumns_RN.png)

## Flattened buttons

When using the iOS or Android mobile app, button layouts are flattened into a single column on phones, with primary buttons appearing above secondary buttons.

Make sure that the button order makes sense in this alternate layout.

![ds-images/flattened_buttons_RN.png](ds-images/flattened_buttons_RN.png)

## Wrapping & scrolling

While concise labels and instructions are always recommended, it's particularly important to reduce clutter, wrapping, and scrolling on mobile screens.

Certain components, by definition, may be configured to require a lot of screen real estate (e.g. milestones with many steps, grids with many columns). Avoid these situations if you're targeting narrow screens.

![ds-images/wrapping_and_scrolling_RN.png](ds-images/wrapping_and_scrolling_RN.png)

## Site pages

Use concise titles for multi-page sites. Keep in mind that there is even less horizontal space on a mobile device.

[![alttext](ds-images/mobileSiteTabs_do.png)](ds-images/mobileSiteTabs_do.png)

[![alttext](ds-images/mobileSiteTabs_dont.png)](ds-images/mobileSiteTabs_dont.png)

For mobile-first sites that are only accessed on Appian Mobile, we recommend limiting the number of pages or [page groups](../sites_object.html#add-a-page-group) to five. See [Designing Sites and Portals](ux-site-branding.html) for more guidance on adding pages and page groups to sites.

**Note:**  Page groups are not supported in offline mobile.

For iOS devices, the fifth page is replaced with a **More** menu.

![ios_more_menu.png](ds-images/ios_more_menu.png)

_Site with more than five pages on an iOS device._

On Android devices, the menu will try to fit in as many pages as possible. When no more pages will fit, the pages scroll horizontally.

In Appian Mobile on iPads that are on iPadOS 18, site pages will display in the app header via a floating tab bar.

[![site pages in an ipad](ds-images/ipad_site_pages.png)](ds-images/ipad_site_pages.png)

## Phone links

Both the iOS and Android applications automatically convert phone numbers inside read-only Text or Paragraph Components to clickable links. These links launch the 'Phone' application and initiate dialing of the specified number.

![/ux pages/Linkify Phone Numbers](ds-images/Linkify_Phone_Numbers.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.