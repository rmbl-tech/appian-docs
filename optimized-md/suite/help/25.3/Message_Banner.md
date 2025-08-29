---
source_url: https://docs.appian.com/suite/help/25.3/Message_Banner.html
original_path: Message_Banner.html
version: "25.3"
title: "Message Banner Component"
page_id: "Message_Banner"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Message Banner Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!messageBanner**( _primaryText, secondaryText, backgroundColor, highlightColor, icon, showDecorativeBar, shape, marginAbove, marginBelow, showWhen, announceBehavior, accessibilityText_ )

Displays a message banner that screen readers can announce whenever the component is evaluated. The banner can include primary text, secondary text, accessibility text, an icon, and custom colors. See [SAIL Design System: Accessibility](sail/ux-accessibility.html#prodlink-message-banner) for more information about accessibility considerations for the message banner.

This component is best used for information that would be considered a [status message](https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html) per the Web Content Accessibility Guidelines (WCAG). If the content wouldn't be considered a status message, use `"DISPLAY_ONLY"` for the [announceBehavior parameter](#using-the-announcebehavior-parameter).

**Tip:**  If you want to provide links or buttons in your message, consider using one of the [action banner patterns](alert-banners.html).

![Example of message banners for case created, case closed, case requires approval, and case created without files](images/message-banner-examples.png)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Primary Text

 |

`primaryText`

 |

_Text_

 |

Text to display on the first line inside the banner.

 |
|

Secondary Text

 |

`secondaryText`

 |

_Text_

 |

Text to display beneath the primary text inside the banner.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the background color of the message banner. Valid values: Any valid hex color or `"INFO"` (default), `"SUCCESS"`, `"WARN"`, `"ERROR"`.

 |
|

Highlight Color

 |

`highlightColor`

 |

_Text_

 |

Determines the color of the decorative bar and icon. Valid values: Any valid hex color or `"INFO"` (default), `"POSITIVE"`, `"WARN"`, `"NEGATIVE"`.

 |
|

Icon

 |

`icon`

 |

_Text_

 |

Icon to display inside the banner before the primary text. By default, this parameter is null. The icon is intended to be decorative and will not be read by screen readers. See [Appian Icons](Appian_Icons.html#standard-icons) for available icons.

 |
|

Show Decorative Bar

 |

`showDecorativeBar`

 |

_Boolean_

 |

Determines whether a decorative bar is displayed on the banner. Default: `true`.

 |
|

Shape

 |

`shape`

 |

_Text_

 |

Determines the banner shape. Valid values: `"SQUARED"` (default), `"SEMI_ROUNDED"`, `"ROUNDED"` .

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the banner. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the banner. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is evaluated. When set to false, the banner is not announced and not evaluated. To hide the banner but allow screen readers to read the banner text, set showWhen to `true` and announceBehavior to `"ANNOUNCE_ONLY"`. Default: `true`.

 |
|

Announce Behavior

 |

`announceBehavior`

 |

_Text_

 |

Determines the screen reader behavior for announcing the banner text. Valid values: `"DISPLAY_ONLY"` (default) Banner displays; banner text is not read aloud when the component is evaluated. `"DISPLAY_AND_ANNOUNCE"` Banner displays; banner text is read aloud when the component is evaluated. `"ANNOUNCE_ONLY"` Banner doesn't display; banner text is read aloud when the component is evaluated. In Appian Mobile, `"DISPLAY_ONLY"` is used.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |

## Usage considerations

### Using the announceBehavior parameter

Use the _announceBehavior_ parameter to control how assistive technologies, like screen readers, announce the message banner's text.

The following table explains each option and when to use it.

| Option | Behavior | Use When | Example |
| --- | --- | --- | --- |
| `"DISPLAY_AND_ANNOUNCE"` | Shows the banner and announces the message when the component is evaluated. | To display a banner for [status messages](https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html) that convey important and timely information regarding a change in page content. | A success message that confirms that a form was submitted. |
| `"DISPLAY_ONLY"` | Shows the banner but does not announce the message when it appears. The message is only announced if a user navigates to it. | For information that is static and doesn't appear based on a change in the interface. | A banner at the top of a form that provides instructions. |
| `"ANNOUNCE_ONLY"` | Hides the banner but announces the message when the component is evaluated. | To announce a visual change that a screen reader user would otherwise miss, or to pair an announcement with your own custom-built banner. | Adding or deleting a row in a grid. |

### Avoid overusing announcements

The `"DISPLAY_AND_ANNOUNCE"` and `"ANNOUNCE_ONLY"` options create a "live region" that instructs screen readers to politely announce updates without interrupting the user's current task or shifting the user's focus. Because these live announcements can be disruptive if overused, you should reserve them for important and dynamic changes that are essential for the user to understand what's happening on the interface. For any static or non-critical messages, use `"DISPLAY_ONLY"`.

### Color and icon combinations

The following are the predefined _backgroundColor_, _highlightColor_, and _icon_ parameter values that are intended to be used together for info, success, error, and warn banners.

**Tip:**  In design mode, you can easily configure info, success, error, and warn banners by selecting **Choose a predefined style** for **Style**.

| Banner type | Background Color | Highlight Color | Icon |
| --- | --- | --- | --- |
| Info | "INFO" | "INFO" | "info-circle" |
| Success | "SUCCESS" | "POSITIVE" | "check-circle" |
| Error | "ERROR" | "NEGATIVE" | "exclamation-circle" |
| Warn | "WARN" | "WARN" | "exclamation-triangle" |

![Info, success, error, and warn banner examples](images/banner-types.png)

### Appian Mobile considerations

In Appian Mobile, `"DISPLAY_ONLY"` is always used for _announceBehavior_.

## Examples

### Display and announce a success message

This example shows a message banner that will appear and be announced after a user adds items to their cart.

Use the interactive editor below to test out the example code.

### Announce only when a grid row is added or removed

In this scenario, a sighted user can see that a row has been added or removed from the grid. For a non-sighted user, we can use an `ANNOUNCE_ONLY` message banner to announce that the action was successful without displaying a visible banner.

Use the interactive editor below to test out the example code.

### Display only an informational message on page load

This example shows how to use the message banner to display an informational message that is present when the interface first loads. Since the information is not a result of a user action within the interface, `DISPLAY_ONLY` is the appropriate announce behavior.

Use the interactive editor below to test out the example code.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Related Patterns

The following patterns include usage of the Message Banner Component.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...