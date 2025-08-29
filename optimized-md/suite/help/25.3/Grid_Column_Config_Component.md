---
source_url: https://docs.appian.com/suite/help/25.3/Grid_Column_Config_Component.html
original_path: Grid_Column_Config_Component.html
version: "25.3"
title: "Editable Grid Column Configuration Component"
page_id: "Grid_Column_Config_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Editable Grid Column Configuration Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-grids.html">SAIL Design System guidance available for Grids</a><p class="ds-release-notice-p">Grids should help your users take action and make decisions. Check out the grids design guidance page to learn how to display your data in a structured, easy-to-scan layout to help your users find what they need.</p></td></tr></tbody></table>

## Function

**a!gridLayoutColumnConfig**( _width, weight, showWhen_ )

Defines a column configuration for use in an [Editable Grid](Editable_Grid_Component.html).

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Width

 |

`width`

 |

_Text_

 |

Determines the column width. Valid values: `"DISTRIBUTE"` (default), `"ICON"`, `"ICON_PLUS"`, `"NARROW"`, `"NARROW_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"WIDE"`.

 |
|

Weight

 |

`weight`

 |

_Number (Integer)_

 |

Determines how wide distributed columns are in relation to each other. Valid values: integers from 1 (default) to 10.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the column configuration is displayed in the grid. When set to false, the column configuration is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Using the editable grid's columnConfigurations parameter

-   The number of column configurations need not match the number of columns in the grid. They are matched with the columns by their position in the _columnConfigurations_ array.

### Using the width parameter

-   Even if _width_ is set to a fixed width, the column will be at least as wide as the longest word in the column. For example, if you set the column's _width_ to `ICON_PLUS` but the column contains a longer word like "operations," the column will be wide enough to accommodate the longer word.
-   `ICON` and `NARROW` do not have a minimum width. This means the column will shrink to fit the longest word in the column.
-   When the total width of your fixed width columns is not wide enough to fill the horizontal space of the grid, the columns will expand proportionally to fill the space.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Narrow grid column

_This example needs to be used with the `a!gridLayout()` function for it to display anything. Examples that you can see in action are available in the Grid Layout component section._

```
1
2
3
a!gridLayoutColumnConfig(
  width: "ICON"
)
```

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

The following patterns include usage of the Editable Grid Column Configuration Component.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

-   [Expand/Collapse Rows in a Tree Grid](/suite/help/25.3/recipe-expand-collapse-rows-in-a-tree-grid.html) (_Hierarchical Data, Grids_): Create a grid that shows hierarchical data and allows users to dynamically expand and collapse rows within the grid.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...