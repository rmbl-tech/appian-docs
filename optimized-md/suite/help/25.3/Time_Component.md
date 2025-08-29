---
source_url: https://docs.appian.com/suite/help/25.3/Time_Component.html
original_path: Time_Component.html
version: "25.3"
title: "Time Display Component"
page_id: "Time_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Time Display Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!timeDisplayField**( _label, instructions, value, labelPosition, helpTooltip, accessibilityText, showWhen_ )

Displays a single [time](Appian_Data_Types.html#time) (hour, minute, second) but cannot take input.

When working with a [date](Appian_Data_Types.html#date) (year, month, day), use a [date](Date_and_Time_Component.html) component. When working with [date and time](Appian_Data_Types.html#date-and-time) (year, month, day, hour, minute, second), use a [date & time](Date_and_Time_Component.html) component. To display a time using a custom format, use a [text](Text_Component.html) component.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the field label.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Display Value

 |

`value`

 |

_Time_

 |

The time to display.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Formatting

-   The time is shown in the current user's time zone. For example, 1:20 PM.
-   If you want to display a time with formatting other than the default, use the Text component.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Time with only a label

```
1
2
3
4
a!timeDisplayField(
  label: "Daily Meeting Time",
  value: time(13, 20)
)
```

Displays the following:

![screenshot of a time field with a label](images/Time_label_75.png)

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...