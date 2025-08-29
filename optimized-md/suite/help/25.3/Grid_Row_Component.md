---
source_url: https://docs.appian.com/suite/help/25.3/Grid_Row_Component.html
original_path: Grid_Row_Component.html
version: "25.3"
title: "Editable Grid Row Component"
page_id: "Grid_Row_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Editable Grid Row Component

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

**a!gridRowLayout**( _contents, id, selectionDisabled, showWhen_ )

Displays a row of components within an [editable grid](Editable_Grid_Component.html).

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Contents

 |

`contents`

 |

_List of Variant_

 |

Array of components to display in the grid cell. Supported components: Barcode, Checkboxes, Date, Date & Time, Dropdown, Decimal, Encrypted Text, File Upload, Image, Integer, Link, Multiple Dropdown, Paragraph, Pickers, Progress Bar, Radio Buttons, Rich Text Display, and Text.

 |
|

Identifier

 |

`id`

 |

_Any Type_

 |

Value that uniquely identifies this row for selection.

 |
|

Selection disabled

 |

`selectionDisabled`

 |

_Boolean_

 |

When selection is enabled, determines if the selection checkbox is disabled for this row. Default: false.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the row is displayed in the grid. When set to false, the row is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Component behavior

-   Some interface component configurations do not take effect when placed in a grid cell. Refer to the [grid layout section](Editable_Grid_Component.html) for details.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Grid row

_This example needs to be used with the `a!gridLayout()` function for it to display anything. Examples that you can see in action are available in the [Grid Layout](Editable_Grid_Component.html) component section._

```
1
2
3
4
5
6
7
a!gridRowLayout(
  contents: {
    a!textField(
      value: "Cell"
    )
  }
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

The following patterns include usage of the Editable Grid Row Component.

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