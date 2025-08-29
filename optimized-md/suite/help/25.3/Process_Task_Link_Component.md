---
source_url: https://docs.appian.com/suite/help/25.3/Process_Task_Link_Component.html
original_path: Process_Task_Link_Component.html
version: "25.3"
title: "Process Task Link"
page_id: "Process_Task_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Task Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!processTaskLink**( _label, task, showWhen, openLinkIn_ )

Defines a link to a process task. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Task](Appian_Data_Types.html#task)
-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [Execute Process Report Smart Service](Execute_Process_Report_Smart_Service.html)
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

Text displayed as the link name the user clicks on.

 |
|

Task

 |

`task`

 |

_Task_

 |

ID of the process task to use as the address of the link.

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
|

Open Link In

 |

`openLinkIn`

 |

_Text_

 |

(Browser-Only) Determines where the linked content should open. Valid values: `"SAME_TAB"` (default), `"NEW_TAB"`.

 |

## Usage considerations

### Offline mobile

While the process task link component is partially compatible with offline mobile, using the component to link to tasks assigned to groups and social tasks is not supported for offline mobile. However, if a user accepts a group-assigned task while online, they will be able to access it offline.

### Retrieving task IDs

-   To retrieve task IDs, use the Execute Process Report Smart Service and pull from the column that returns the list of IDs.

### Using process tasks links with other components

-   To display a single link or array of links, use the process task link inside of the [link field component](Link_Component.html).
-   To display a link in a grid, use the process task link inside of a [grid text column](Grid_Text_Column_Component.html).
-   To add a link to an image, use the process task link inside of a [document image](Document_Image_Component.html) or [web image](Web_Image_Component.html).
-   To add a link to a chart series, use the process task link inside of the [chart series component](Chart_Series_Component.html).

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Basic process task link

```
1
2
3
4
a!processTaskLink(
  label: "Approval Task",
  task: 1
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Partially compatible |
Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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

The following patterns include usage of the Process Task Link.

-   [Display a User's Tasks in a Grid With Task Links](/suite/help/25.3/recipe-display-a-users-tasks-in-a-grid-with-task-links.html) (_Grids, Reports, Looping_): Display the tasks for a user in a Read-Only Grid and allow them to click on a task to navigate to the task itself.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...