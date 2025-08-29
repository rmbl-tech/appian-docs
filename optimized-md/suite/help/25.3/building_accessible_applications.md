---
source_url: https://docs.appian.com/suite/help/25.3/building_accessible_applications.html
original_path: building_accessible_applications.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Building Accessible Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian's Accessibility Features

This video from [Academy Online](https://academy.appian.com/) introduces you to Appian's accessibility features.

## Accessible user interfaces with SAIL

The Appian platform allows designers to build applications that are accessible to all users, including those with disabilities who employ assistive technologies such as screen readers. In order to meet this goal, Appian validates its product features against the requirements of leading accessibility standards:

-   US Federal Government's [Section 508](https://www.section508.gov/) of the Rehabilitation Act of 1973 (January 2017 Refresh)
-   World Wide Web Consortium (W3C)'s [Web Content Accessibility Guidelines](https://www.w3.org/TR/WCAG21/) (WCAG) 2.2 Level AA

Since each screen reader is optimized to work best with a particular browser, Appian recommends the following common combinations of browser and screen reader:

| Browser | Screen Reader |
| --- | --- |
| Chrome | JAWS |
| Edge | JAWS |
| Mozilla Firefox | NVDA |
| Safari | VoiceOver |

Accessibility features in Appian's [SAIL technology](SAIL_Design.html) allow users with low vision, limited dexterity, and other concerns to consume the same information and perform the same activities as any other user of an application. Many of these capabilities are automatically enabled when using interfaces, while others are activated by making use of specific interface component configuration parameters. Accessibility-related configuration recommendations are described in detail on each interface component documentation page.

## Interface components with accessibility limitations

A small number of interface components, due to their specialized functionality, may not be accessible to all users.

### Document extraction reconciliation task

The [Reconcile Doc Extraction Smart Service](Reconcile_Doc_Extraction_Smart_Service.html) generates a task for a user to validate the extracted data. This task requires users to visually inspect an image of a document to validate correct extraction of its contents. Therefore, this feature may not be usable for users who are blind or have low vision. To learn more about this task, see [Appian Document Extraction](completing-a-reconciliation-task.html).

### Browser components

[Browser components](SAIL_Components.html#browsers) like the document browser, hierarchy tree, and org chart show a visual representation of object relationships, so they are not usable for users who are blind and may be difficult to use for users who have low vision.

For an accessible alternative, provide the data using grids or another screen reader friendly layout.

### Document extraction reconciliation task

The [Reconcile Doc Extraction Smart Service](Reconcile_Doc_Extraction_Smart_Service.html) generates a task for a user to validate the extracted data. This task requires users to visually inspect an image of a document to validate correct extraction of its contents. Therefore, this feature may not be usable for blind users or those with low vision. To learn more about this task, see [Appian Document Extraction](completing-a-reconciliation-task.html).

### Drill down in Appian charts

When configuring Appian charts using drill down, the micro height option can make it difficult for users who use pointer input devices (such as a mouse, stylus, or touch) to interact with the chart elements.

For an accessible alternative, use a height option other than micro for chart elements that allow drill down.

### Reordering rows in editable grids

Editable grids with [grid row reordering](Editable_Grid_Component.html#reordering-grid-rows) require users to press and hold while moving a mouse, finger, or stylus. This may be difficult for users with mobility impairments.

For an accessible alternative, manually configure the grid with something like clickable arrows for reordering rows.

### Records chat

The [records chat component](Records_Chat_Component.html) is a interface component that enables users to ask questions of their data fabric. This component is powered by generative AI and can answer questions about a record and related record data.

### Rich text

Regardless of formatting, rich text items are never interpreted as HTML headings by screen readers. Instead, use the [heading component](heading-component.html) to represent content sections in an accessible way.

### Row highlight selection style

The row highlight selection style in the [read-only grid](Paging_Grid_Component.html) and [editable grid](Editable_Grid_Component.html) components uses color to indicate which row is selected. This information is not conveyed by screen readers, so it may not be usable by non-sighted users or those with low vision.

For an accessible alternative, use the checkbox selection style instead.

### Signature drawing pad

The drawing pad on the Signature component is not keyboard accessible. A mouse or touchpad must be used to draw the signature.

### Site accent colors

A faded version of the site object [accent color](sites_object.html#branding) is used as a hover style on certain components, such as dropdown menus and grids with row highlight. For better accessibility, test your accent color while hovering on dropdown menus and grids with row highlight to ensure they have adequate color contrast. The contrast ratio between the cell color and the text should be 4.5:1.

### Warn color on gauge and progress bar

The warn color option in gauge and progress bar does not meet WCAG color contrast requirements and may not be usable by users with low vision.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...