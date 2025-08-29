---
source_url: https://docs.appian.com/suite/help/25.3/heading-component.html
original_path: heading-component.html
version: "25.3"
title: "Heading Component"
page_id: "heading-component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Heading Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!headingField**( _text, size, headingTag, color, fontWeight, Link, showWhen, align, marginAbove, marginBelow_ ) The headings component is a way to intuitively structure and easily organize your interface with both visual and non-visual indicators to help all users quickly understand your content. Headings are flexible and can be used inside layouts, forms, columns, and overlays, excluding grids.

Displays a heading with configurations for the color, size, and font weight. Also supports heading accessibility tags, which are used by screen readers and produce no visible change.

See also: [Section layout](Section_Layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Text

 |

`text`

 |

_Text_

 |

Text to display in the header

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the text size. Valid values: `"LARGE_PLUS"`, `"LARGE"`, `"MEDIUM_PLUS"` (default), `"MEDIUM"`, `"SMALL"`, `"EXTRA_SMALL"`.

 |
|

Accessibility Heading Tag

 |

`headingTag`

 |

_Text_

 |

Determines the heading tag associated with the text for use by screen readers; produces no visible change. Valid values: `"H1"`, `"H2"`, `"H3"`, `"H4"`, `"H5"`, `"H6"`. The default is dependent on the chosen label size. For more information on heading tags, see our heading accessibility guidance.

 |
|

Color

 |

`color`

 |

_Text_

 |

Determines the label color. Valid values: Any valid hex color or `"ACCENT"`, `"STANDARD"` (default), and `"SECONDARY"`.

 |
|

Font Weight

 |

`fontWeight`

 |

_Text_

 |

Determines the thickness to apply to the text value. Valid values include `"LIGHT"`, `"REGULAR"` (Default), `"SEMI_BOLD"`, and `"BOLD"`.

 |
|

Link

 |

`Link`

 |

_Any Type_

 |

Link to apply to the text. Create a link with:

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
-   [a!safeLink()](Web_Link_Component.html) If more than one link is provided, only the first will be used.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: `true`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the text. Valid values: `"START"` (default), `"CENTER"`, `"END"`.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"` (default), `"EVEN_MORE"`.

 |

## Examples

Use the interactive editor below to test out your code in the provided examples.

### Heading components used in navigation

![Screenshot of multiple heading components used in navigation](images/heading-component-nav-ex.png)

### Full interface with cards and multiple heading components

![Screenshot of a full campsite interface with cards and multiple heading components](images/heading-component-full-ui-ex.png)

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

The following patterns include usage of the Heading Component.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...