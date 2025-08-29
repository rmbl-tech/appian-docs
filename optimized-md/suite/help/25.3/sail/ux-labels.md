---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-labels.html
original_path: sail/ux-labels.html
version: "25.3"
title: "Labels"
page_id: "sail/ux-labels"
section: "Position"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Labels \[SAIL Design System: Guidelines\]

-   [Guidelines](/suite/help/25.3/sail/guidance.html)
-   Welcome
    -   [Designing for Your Users](/suite/help/25.3/sail/ux-designing-for-your-users.html)
    -   [Presenting Information Clearly](/suite/help/25.3/sail/ux-presenting-information-clearly.html)
-   Layout Best Practices
    -   [Example Walk-Through](/suite/help/25.3/sail/ux-example-walkthrough.html)
    -   [Page Width](/suite/help/25.3/sail/ux-page-width.html)
    -   [Columns vs. Side by Side](/suite/help/25.3/sail/ux-columns-and-side-by-side.html)
-   Component Best Practices
    -   [Labels](#)
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

# Labels

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Position

Field labels may be shown above the component, adjacent to the component (left- or right-aligned), or not shown at all.

Note that labels are always shown above the component in the mobile application.

![ds-images/uxdg_labels_compared.png](ds-images/uxdg_labels_compared.png)

_Adjacent-positioned labels may appear ragged or misaligned when shown next to other page content_

## Above

The above-component label position generally works well for form input fields (like textboxes and dropdowns).

For all components, labels above are especially preferable to adjacent when:

-   The component is wide (e.g. grids & charts), since adjacent labels take up horizontal space
-   The label text is long (to avoid wrapping)

[![ds-images/ux_labelPositionAboveDo.png](ds-images/ux_labelPositionAboveDo.png)](ds-images/ux_labelPositionAboveDo.png)

[![ds-images/ux_labelPositionAboveDont.png](ds-images/ux_labelPositionAboveDont.png)](ds-images/ux_labelPositionAboveDont.png)

## Adjacent and justified

Use the adjacent or justified position to show a label next to its corresponding component.

Choose one of these options when:

-   Displaying non-editable values, such as record attributes (to enhance visual grouping of labels vs. values, especially when some of the values may be blank)
-   The interface has many fields (to minimize vertical scrolling)

[![ds-images/ux_label_adjacent_do.png](ds-images/ux_label_adjacent_do.png)](ds-images/ux_label_adjacent_do.png)

[![ds-images/ux_label_adjacent_dont.png](ds-images/ux_label_adjacent_dont.png)](ds-images/ux_label_adjacent_dont.png)

Don't use the above label position for read only values. This makes reading fields with missing values difficult.

The adjacent position right-aligns labels in languages that read left-to-right (like English). This position keeps labels close to the components that they describe and generally allows users to more quickly scan forms than the justified label.

Consider using the justified label in situations where the adjacent label results in visual imbalance of the user interface. Since adjacent labels are right-aligned, shorter labels may appear to be offset from other page content that is left-aligned (such as section headers and above-positioned labels).

![ds-images/uxdg_labels_adjacent.png](ds-images/uxdg_labels_adjacent.png)

_Adjacent-positioned labels may appear ragged or misaligned when shown next to other page content_

![ds-images/uxdg_labels_justified.png](ds-images/uxdg_labels_justified.png)

_Justified-positioned labels create more even alignment with other page elements such as section headers_

## Consistency

Avoid mixing different label positions within the same interface or section as this creates an unbalanced layout.

Consider the guidelines for determining label positioning and choose the option that best balances the requirements of all fields.

[![ds-images/ux_labels_consistent.png](ds-images/ux_labels_consistent.png)](ds-images/ux_labels_consistent.png)

## Excluding labels

Field labels may be excluded if they would be redundant. For example, if:

-   An interface contains a single grid or chart and the page title sufficiently describes it.
-   A section header label sufficiently describes a group of related fields.

Be careful of the accessibility impact of excluding labels. Assistive technologies may expect a text label description of each field.

![ds-images/ux_labels_excluded.png](ds-images/ux_labels_excluded.png)

If you set _labelPosition_ to `"ADJACENT"` or `"ABOVE"`, but do not give a value for _label_, a space still displays for the label. To display the component without a label, use `"COLLAPSED"` for _labelPosition_ to avoid unintentionally adding extra spacing.

## Redundant labels

Avoid repeating words when labeling a group of related inputs.

[![ds-images/ux_label_redundant_do.png](ds-images/ux_label_redundant_do.png)](ds-images/ux_label_redundant_do.png)

Use a section header to provide context, allowing for more concise field labels

[![ds-images/ux_label_redundant_dont.png](ds-images/ux_label_redundant_dont.png)](ds-images/ux_label_redundant_dont.png)

## Label format

Avoid using a colon (":") after a field or section label.

Use consistent capitalization in labels. Title case is recommended.

[![ds-images/ux_format_do.png](ds-images/ux_format_do.png)](ds-images/ux_format_do.png)

[![ds-images/ux_format_dont.png](ds-images/ux_format_dont.png)](ds-images/ux_format_dont.png)

## Consistent tone

Avoid using labels with a conversational tone if other labels on the form are concise and direct.

[![alttext](ds-images/ux_labels_tone_do.png)](ds-images/ux_labels_tone_do.png)

[![alttext](ds-images/ux_labels_tone_dont.png)](ds-images/ux_labels_tone_dont.png)

## Rich text headers

When displaying rich text headers, use the above label position or exclude the label for proper alignment.

Field labels may be excluded if the headers are sufficient to describe or organize the content.

[![alttext](ds-images/ux_labels_rich_text_do.png)](ds-images/ux_labels_rich_text_do.png)

[![alttext](ds-images/ux_labels_rich_text_dont.png)](ds-images/ux_labels_rich_text_dont.png)

## Link labels

Use descriptive display text for link labels.

Avoid unnecessary or redundant words like "link".

A URL should not be displayed as the link label unless there is an explicit reason for users to see the URL.

[![ds-images/ux_labels_links.png](ds-images/ux_labels_links.png)](ds-images/ux_labels_links.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.