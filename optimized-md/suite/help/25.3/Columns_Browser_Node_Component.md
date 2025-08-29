---
source_url: https://docs.appian.com/suite/help/25.3/Columns_Browser_Node_Component.html
original_path: Columns_Browser_Node_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Hierarchy Browser Node (Columns) Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!hierarchyBrowserFieldColumnsNode**( _id, label, image, link, isSelectable, isDrillable, nextColumnCount, showWhen_ )

Returns a Browser Field Columns Node, used in the Node Configurations parameter of the [Columns](Columns_Browser_Component.html) Browser to determine how items in the hierarchy are displayed.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Identifier

 |

`id`

 |

_Any Type_

 |

Required unique identifier of the node. This value only needs to be unique within the nodes column.

 |
|

Label

 |

`label`

 |

_Text_

 |

Required text to display in the node.

 |
|

Image

 |

`image`

 |

_Image_

 |

Required image to display in the node, created with:

-   [a!documentImage()](Document_Image_Component.html)
-   [a!userImage()](User_Image_Component.html)
-   [a!webImage()](Web_Image_Component.html)

 |
|

Link

 |

`link`

 |

_Link_

 |

Optional link to display in the node s label title. Create links with:

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

Node is selectable

 |

`isSelectable`

 |

_Boolean_

 |

If true, clicking the node will save the columns browser's selection value and navigation path. If false, clicking the node will not save the selection value. It may still save the navigation path if the node is drillable. On hover, a selectable node will have a unique display. (default: true)

 |
|

Node is drillable

 |

`isDrillable`

 |

_Boolean_

 |

If true, clicking the node will save the columns browser's navigation path, revealing another column to the user. If false, clicking the node will not reveal another column. It may still save the navigation path if the node is selectable. On hover, a drillable node will have a unique display. (default: true)

 |
|

Next Column Count

 |

`nextColumnCount`

 |

_Integer_

 |

The number of nodes that would be displayed if the user drilled into this node. This value is optional and is displayed on mobile only.

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

### Drillable and selectable nodes

You can see some of these terms and parameters (_isDrillable_ and _isSelectable_) labeled in the following screenshot.

![screenshot of the columns browsers with annotated nodes](images/ColumnsBrowserNodeConfigs.png)

### Using the nodeConfigs and identifier parameters

-   A columns browser node can only be displayed if passed to the _nodeConfigs_ parameter of the columns browser.
-   The variable `fv!nodeValue` is only available when the columns browser node is used in either the _nodeConfigs_ or _nextColumnValues_ parameters of the columns browser.
-   The _identifier_ field can be any value, but using long strings or large data types could cause performance problems. We recommended using a data type's primary key, if available.

### Using links with the columns browser

-   The columns browser component does not support dynamic links nor submit links node configurations.
-   The columns browser component does not permit links in images in node configurations.

## Examples

_For an example of how to configure a columns browser node, see the example in the [Columns Browser](Columns_Browser_Component.html)._

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

The following patterns include usage of the Hierarchy Browser Node (Columns) Component.

-   [Browse Hierarchical Data](/suite/help/25.3/recipe-configure-a-columns-browser.html) (_Hierarchical Data_): Display a hierarchical data browser.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...