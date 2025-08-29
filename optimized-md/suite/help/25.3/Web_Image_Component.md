---
source_url: https://docs.appian.com/suite/help/25.3/Web_Image_Component.html
original_path: Web_Image_Component.html
version: "25.3"
title: "Web Image"
page_id: "Web_Image_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web Image

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-images.html">SAIL Design System guidance available for Images</a><p class="ds-release-notice-p">A picture is worth a thousand words. Learn how to use images in your interface designs to say more than words ever could.</p></td></tr></tbody></table>

## Function

**a!webImage**( _source, altText, caption, link, showWhen_ )

Displays an image from the web for use in an [image](Image_Component.html), [rich text display](Rich_Text_Component.html), [tree browser](Tree_Browser_Component.html), or [billboard layout](Billboard_Layout.html) component, or in a [grid column](Grid_Column_Component.html) component in a read-only grid.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Source

 |

`source`

 |

_SafeURI_

 |

Location of the image. See [SafeURI](Appian_Data_Types.html#safeuri).

 |
|

Alternate Text

 |

`altText`

 |

_Text_

 |

Alternate text of the image used for the image s alt attribute and read by screen readers; see accessibility considerations for more information.

 |
|

Caption

 |

`caption`

 |

_Text_

 |

Optional text to display in the mouseover text for the image and when the images is viewed in slideshow mode.

 |
|

Link

 |

`link`

 |

_Link_

 |

Link that determines the behavior of an image when clicked. Create links with:

-   [a!authorizationLink()](authorization_link_component.html)
-   [a!documentDownloadLink()](Document_Link_Component.html)
-   [a!dynamicLink()](Dynamic_Link_Component.html)
-   [a!newsEntryLink()](News_Entry_Link_Component.html)
-   [a!processTaskLink()](Process_Task_Link_Component.html)
-   [a!recordLink()](Record_Link_Component.html)
-   [a!reportLink()](Report_Link_Component.html)
-   [a!startProcessLink()](Start_Process_Link_Component.html)
-   [a!submitLink()](Submit_Link_Component.html)
-   [a!userRecordLink()](User_Record_Link_Component.html)
-   [a!safeLink()](Web_Link_Component.html)

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the image is displayed in the component. When set to false, the image is hidden and is not evaluated. Default: true.

 |

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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

The following patterns include usage of the Web Image.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...