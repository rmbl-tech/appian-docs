---
source_url: https://docs.appian.com/suite/help/25.3/User_Image_Component.html
original_path: User_Image_Component.html
version: "25.3"
title: "User Image"
page_id: "User_Image_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Image

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

**a!userImage**( _user, altText, caption, link, showWhen_ )

Displays a user's profile photo for use in an [image](Image_Component.html), [rich text display](Rich_Text_Component.html), [tree browser](Tree_Browser_Component.html), [billboard layout](Billboard_Layout.html) component, or in a [grid column](Grid_Column_Component.html) component in a Read-Only Grid.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
User

 |

`user`

 |

_User_

 |

The user whose profile photo will be shown.

 |
|

Alternate Text

 |

`altText`

 |

_Text_

 |

Alternate text of the image used for the image's alt attribute and read by screen readers; see accessibility considerations for more information.

 |
|

Caption

 |

`caption`

 |

_Text_

 |

Text to display in mouseovers.

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

## Usage considerations

### Using the user parameter

-   When no _user_ is provided, the default profile picture is shown.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
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

The following patterns include usage of the User Image.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...