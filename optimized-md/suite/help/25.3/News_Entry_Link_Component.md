---
source_url: https://docs.appian.com/suite/help/25.3/News_Entry_Link_Component.html
original_path: News_Entry_Link_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# News Entry Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!newsEntryLink**( _label, entry, showWhen_ )

Defines a link to news entries. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Text associated with this link.

 |
|

Entry

 |

`entry`

 |

_Text_

 |

The ID of the linked feed entry.

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

### Using and finding the entry ID

-   To get an entry ID of a post created via smart service, use the `Entry Id` node output of the [Post Event to Feed](Post_Event_to_Feed_Smart_Service.html) or the [Post System Event to Feed](Post_System_Event_to_Feed_Smart_Service.html) smart services.
-   To manually get an entry ID from a post while browsing the news feed with a web browser, click on the post's timestamp. The end of the resulting URL in your browser address bar is of the form `tempo/news/entry/[entry ID]`.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Basic news entry link

```
1
2
3
4
a!newsEntryLink(
  label: "Discuss This Case",
  entry: "f-109"
)
```

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...