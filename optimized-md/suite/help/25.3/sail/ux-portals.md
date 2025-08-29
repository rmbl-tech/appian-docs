---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-portals.html
original_path: sail/ux-portals.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Portal Design Guidelines \[SAIL Design System: Guidelines\]

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
    -   [Portal Design Guidelines](#)
    -   [Designing Sites and Portals](/suite/help/25.3/sail/ux-site-branding.html)
-   General Guidelines
    -   [Accessibility](/suite/help/25.3/sail/ux-accessibility.html)
    -   [Avoiding Clutter](/suite/help/25.3/sail/ux-avoiding-clutter.html)
    -   [Formatting and Punctuation](/suite/help/25.3/sail/ux-formatting-and-punctuation.html)
    -   [Mobile Considerations](/suite/help/25.3/sail/ux-mobile-considerations.html)
    -   [Progressive Disclosure](/suite/help/25.3/sail/ux-progressive-disclosure.html)
    -   [Using Colors](/suite/help/25.3/sail/ux-color-overview.html)

Guidelines Overview Designing for Your Users Presenting Information Clearly Example Walk-Through Page Width Columns vs. Side by Side Labels Inputs, Selection, and Pickers Buttons vs. Links Portal Design Guidelines Designing Sites and Portals Accessibility Avoiding Clutter Formatting and Punctuation Mobile Considerations Progressive Disclosure Using Colors

# Portal Design Guidelines

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

With portals you need to consider a user type that you don't deal with in an authenticated interface—anonymous users. These users will likely access your portal from many different locations on many different device types. Since the users aren't a part of your organization, you know a lot less about them than your typical Appian users. Additionally, since they aren't logged in, you don't automatically know information about them like their preferred language or time zone.

This page offers a few high-level guidlines to consider when trying to provide the best possible user experience in your portal.

For more information:

-   See the [Portal Object](../portal-object.html) page.
-   Check out [Designing Sites and Portals](ux-site-branding.html) page to learn more about branding options for your portal.
-   For functional design considerations, see the [Portal Best Practices](../portals-design.html) page.

## Design your interface to account for time zones and localization

### Specify the time zone in your interface design

Because users of your portal aren't logged in with a user account, you can't access their time zone.

For any component that displays time or asks users to enter a time, always display the time zone that your portal is using.

![time zone.png](ds-images/design-portal-time-zone.png)

### For multilingual portals, provide a way for users to switch between locales

By default, portals use the primary locale, time zone, and calendar settings that are configured in the [Administration Console](../Appian_Administration_Console.html#internationalization) for the environment when the portal is published.

You can create links that switch between locales using [a!portalUrlWithLocale()](../fnc_scripting_portalurlwithlocale.html) in a safe link component.

Changing a portal locale will automatically update the following to match the locale:

-   Date and time fields
-   Right-to-left or left-to-right layout
-   Translation strings
-   Components that use system text, such as the [file upload component](../File_Upload_Component.html)

[![Gif that shows a portal switching between languages](ds-images/portal_localization2.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img878)

[![](ds-images/portal_localization2.gif)](#_)

## Use responsive design

Keep in mind that your users will likely be accessing your portal from many different types of devices. Make sure you design your portal so that it looks good on any screen size. For more guidance, check out our content on [Responsive Design](../responsive_design.html).

![responsive design example](ds-images/design-portal-responsive-design.png)

Additionally, to change the design based on the device width, be sure to use the [a!isPageWidth()](../fnc_scripting_a_isPageWidth.html) function. The [a!isNativeMobile()](../fnc_scripting_a_isNativeMobile.html) function will not work with portals since portals don't display in the Appian Mobile application. You can also use the _stackWhen_ parameter in [columns layouts](../Columns_Layout.html) and [side by side layouts](../Side_By_Side_Layout.html) to make your design look great on any screen size.

Note that the [page width](ux-page-width.html) for a portal is equivalent to "Full" in a site page.

## Consider a header bar layout for your portal

To quickly configure a fixed header in a single-page portal, consider enabling the HEADER BAR layout option for the [navigation bar](../portal-object.html#navigation-bar). On multipage portals, the navigation bar is always enabled. Enabling the navigation bar also provides you with additional branding options and navigation for multipage portals.

## Using reCAPTCHA in your portal

Using [reCAPTCHA](../google_reCAPTCHA.html) in your portal is a great way to frustrate bots and protect your portal from malicious or fraudulent activity. Just make sure you don't frustrate your human users when you enable reCAPTCHA on a portal interface. Because the reCAPTCHA icon will always display on the bottom-right corner of your interface, you'll want to center the content at the bottom of the page with white space on either side. This will ensure you don't cover up important content, like a submit button, with the reCAPTCHA icon.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.