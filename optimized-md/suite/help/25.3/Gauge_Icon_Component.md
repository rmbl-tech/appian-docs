---
source_url: https://docs.appian.com/suite/help/25.3/Gauge_Icon_Component.html
original_path: Gauge_Icon_Component.html
version: "25.3"
title: "Gauge Icon"
page_id: "Gauge_Icon_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Gauge Icon

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-gauge.html">SAIL Design System guidance available for Gauges</a><p class="ds-release-notice-p">What gets measured gets done. So measure what matters with gauges. Learn how to configure and display gauges on your interface designs so you can visualize progress on your most important goals and initiatives.</p></td></tr></tbody></table>

## Function

**a!gaugeIcon**( _icon, altText, color_ )

Displays an icon for use within the [gauge](Gauge_Component.html) field _primaryText_ parameter.

**See also**: [Gauge design guidance](sail/ux-gauge.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Icon

 |

`icon`

 |

_Text_

 |

Icon to display. See the list of [available icons](sail/ux-styled-icons.html).

 |
|

Icon Alternative Text

 |

`altText`

 |

_Text_

 |

Equivalent alternate text to display in the hover tooltip and for use by screen readers.

 |
|

Icon Color

 |

`color`

 |

_Text_

 |

Determines the icon color. Access the percentage using fv!percentage. Valid values: Any valid hex color or `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`. Defaults to the gauge field color.

 |

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...