---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-rich-text.html
original_path: sail/ux-rich-text.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Rich Text \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](/suite/help/25.3/sail/ux-wizard-layout.html)
    -   [Header Content Layout](/suite/help/25.3/sail/ux-header-content-layout.html)
    -   [Pane Layout](/suite/help/25.3/sail/ux-pane-layout.html)
-   Layouts
    -   [Section Layout](/suite/help/25.3/sail/ux-section-layout.html)
    -   [Columns Layout](/suite/help/25.3/sail/ux-columns-layout.html)
    -   [Side by Side Layout](/suite/help/25.3/sail/ux-side-by-side-layout.html)
    -   [Box Layout](/suite/help/25.3/sail/ux-box-layout.html)
    -   [Card Layout](/suite/help/25.3/sail/ux-card-layout.html)
    -   [Billboard Layout](/suite/help/25.3/sail/ux-billboard-layout.html)
-   Display
    -   [Images](/suite/help/25.3/sail/ux-images.html)
    -   [Rich Text](#)
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

# Rich Text

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

Know Your Typography

This video from the UI Design Tips series explains how to use rich text to express content hierarchy in your UIs. For more tips, check out the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity).

See the developer documentation for technical details about the [rich text display component](/suite/help/25.3/Rich_Text_Component.html).

## Accessibility considerations

Rich text formatting allow designers to visually differentiate text in user interfaces in order to aid information comprehension. This formatting should be used only as supplemental techniques since not all users can benefit from them. For example, non-sighted or low-vision users who rely on a screen reader to announce text in a UI will not know which words are bolded or shown at a larger size. Similarly, color blind users may not be able to identify the green color of positive-style text, nor the red color of negative-style text. The words and numbers in UI content should convey the most critical information without relying on formatting.

[![alttext](ds-images/richtext_do.png)](ds-images/richtext_do.png)

In this example, "Positive" and "Negative" colors highlight qualitative record attributes, while the "Medium" text size makes the values more noticeable on the page. The fundamental information is conveyed in words as plain text so that users with limited vision can still comprehend the content.

When selecting custom colors for rich text values, remember to ensure that there is sufficient contrast between the text and the background for legibility. This is particularly important when the text will be displayed on top of a colored background (such as a billboard layout or card layout).

## Positive and negative colors

The "Positive" and "Negative" rich text colors are intended to highlight values of business significance (for example, increased or decreased revenues). It is not recommended to use these colors for decorative purposes, i.e. to make text arbitrarily green or red without a corresponding meaning.

When using "Positive" or "Negative" rich text colors for billboard content, pay careful attention to ensure sufficient contrast between the background media and the text. When the "Dark" overlay style is selected, the regular text color is automatically switched from black to white to maximize contrast. However, positive and negative text retain their green and red colors, respectively.

[![alttext](ds-images/positive-style_do.png)](ds-images/positive-style_do.png)

[![alttext](ds-images/negative-text_dont.png)](ds-images/negative-text_dont.png)

Don’t use "Positive" or "Negative" colors for content that will be shown above a background which would not provide sufficient contrast for easy reading

## Emphasis style

[![alttext](ds-images/emphasis_style_do.png)](ds-images/emphasis_style_do.png)

Use the “Emphasis” rich text style to draw attention to certain words or phrases in a sentence or paragraph.

[![alttext](ds-images/emphasis_style_alternative_do.png)](ds-images/emphasis_style_alternative_do.png)

Use a smaller text size and/or the “Secondary” rich text color, instead of the “Emphasis” style, to differentiate subordinate text

[![alttext](ds-images/italics_dont.png)](ds-images/italics_dont.png)

Don’t use the “Emphasis” rich text style for an entire sentence or paragraph because italicized text is harder to read

## Using varied font features

Too much uniform text can make it hard to scan a page and identify important information. Use varied font features to highlight key values and to convey [visual hierarchy](ux-presenting-information-clearly.html#clearly-outline-page-structure).

There are a variety of ways to effectively differentiate text, including size, weight, color, and capitalization.

![ds-images/font_features.png](ds-images/font_features.png)

[![alttext](ds-images/font_features_do.png)](ds-images/font_features_do.png)

This example shows how a clear hierarchy can be created by using different font features for the page title, section title, and subsection titles. In addition, it shows how font styles can be used to emphasize important data points, like the number of open requests that are assigned, in progress, and high priority.

[![alttext](ds-images/font_features_dont.png)](ds-images/font_features_dont.png)

In this example, the standard text style is overused, making it hard to understand the structure of the page and quickly find important information.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.