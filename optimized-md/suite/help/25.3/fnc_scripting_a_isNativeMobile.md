---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_a_isNativeMobile.html
original_path: fnc_scripting_a_isNativeMobile.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isNativeMobile() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!isNativeMobile()**

Returns true if the interface is being viewed within the Appian for Mobile application. Returns false otherwise. Use a!isNativeMobile() when you are specifying behavior unique to a mobile app. For example, you might use `a!isNativeMobile()` to check for mobile browser users who are not using the Appian Mobile application and show them a redirect link to download the application.

**See also**:

-   [a!isPageWidth](fnc_scripting_a_isPageWidth.html)
-   [Responsive Design](responsive_design.html)
-   [Columns Layout](Columns_Layout.html)
-   [Side By Side Layout](Side_By_Side_Layout.html)

## Parameters

No parameters.

## Returns

Boolean

## Usage considerations

### Using isNativeMobile to set site visibility

-   Do not use the `a!isNativeMobile` function to set site page visibility.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

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
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...