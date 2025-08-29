---
source_url: https://docs.appian.com/suite/help/25.3/card-choices-bars.html
original_path: card-choices-bars.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Bars (Justified Text) Card Choices Template

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-card-layout.html">SAIL Design System guidance available for Card Layout</a><p class="ds-release-notice-p">Reduce clutter and bring balance to your interface designs with cards. Learn how to use cards to organize content in a way that is easier for users to understand and navigate.</p></td></tr></tbody></table>

## Function

**a!cardTemplateBarTextJustified**( _id, primaryText, secondaryText, icon, iconColor, iconAltText, tooltip, showWhen_ )

Displays a bar card template with an icon, primary text, and secondary text justified on either side of the card. For use in the [Card Choice Field](card-choices-component.html) _cardTemplate_ parameter.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Id

 |

`id`

 |

_Any Type_

 |

Value that identifies the card.

 |
|

Primary Text

 |

`primaryText`

 |

_Text_

 |

Optional text to display on the first line inside the card.

 |
|

Secondary Text

 |

`secondaryText`

 |

_Text_

 |

Optional text to display beneath the primary text inside the card.

 |
|

Icon

 |

`icon`

 |

_Text_

 |

Icon to display inside the card.

 |
|

Icon Color

 |

`iconColor`

 |

_Text_

 |

Determines the icon color. Valid values: Any hex color or `"ACCENT"` (default), `"STANDARD"`, `"SECONDARY"`, `"POSITIVE"`, `"NEGATIVE"`.

 |
|

Icon Alternative Text

 |

`iconAltText`

 |

_Text_

 |

Equivalent alternate text for use by screen readers.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover (web) or tap (mobile).

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the card is displayed in the set of card choices. When set to false, the card is hidden. Default: true.

 |

## Usage considerations

### Text truncation

-   Spacing and truncation look different in the bars template. To ensure that all your text has enough space to show properly, keep your secondary text short when using this template.

## Examples

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