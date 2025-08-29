---
source_url: https://docs.appian.com/suite/help/25.3/Tree_Browser_Node_Component.html
original_path: Tree_Browser_Node_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Hierarchy Browser Node (Tree) Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This component is used within the [Tree Browser Component](Tree_Browser_Component.html).

For more information on how the hierarchy browser tree works, see the [detailed explanation](Tree_Browser_Component.html#breakdown).

## Function

**a!hierarchyBrowserFieldTreeNode**( _id, label, description, details, image, link, isDrillable, nextLevelCount, showWhen_ )

Returns a Tree Node, used in the Node Configurations parameter of the [Tree Browser Component](Tree_Browser_Component.html) to determine how items in the hierarchy are displayed.

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

Required unique identifier of the node. This value only needs to be unique within the nodes level.

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

Description

 |

`description`

 |

_Text_

 |

Text to display below the node label.

 |
|

Details

 |

`details`

 |

_Text_

 |

Text to display below the node description.

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

Node is drillable

 |

`isDrillable`

 |

_Boolean_

 |

If true, clicking the node will drill into it, saving the tree browsers navigation path and revealing another level to the user. If false, clicking the node's will not reveal another level, but the navigation path will still be saved (default: true).

 |
|

Next Level Count

 |

`nextLevelCount`

 |

_Integer_

 |

Optional count of nodes that would be displayed in the next level were this node in the navigation path.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false the component is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Drillable and non-drillable elements

You can see some of these terms and parameters labeled in the following screenshot.

![screenshot of a tree browser with annotated nodes](images/HierarchyBrowserTreeNodes.png)

### Using links and data

-   The hierarchy browser tree component does not permit links in images in node configurations.
-   The _identifier_ field can be any value, but using long strings or large data types could cause performance problems. We recommended using a data type's primary key, if available.

### Using the nodeConfigs parameter

-   The variable `fv!nodeValue` is only available when the node is used in either the _nodeConfigs_ or _nextColumnValues_ parameters of the browser.
-   A hierarchy browser tree node can only be displayed if passed to the _nodeConfigs_ parameter of the hierarchy browser tree.

## Examples

_For an example of how to configure a hierarchy browser tree node, see the example in the [Tree Browser Component](Tree_Browser_Component.html) page._

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...