---
source_url: https://docs.appian.com/suite/help/25.3/Link_Component.html
original_path: Link_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Link Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!linkField**( _label, instructions, links, labelPosition, align, helpTooltip, showWhen, accessibilityText_ )

Displays one or more links of any link type, including document links, task links, record view links, external web page links, and dynamic links that update variables. Link types serve two main purposes: to navigate to objects, such as tasks and records, or to perform actions, such as downloading documents or starting processes.

Avoid using this component for offline mobile forms because links do not execute when tapped offline.

**See also**: [Link Types](SAIL_Components.html#display), [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Text to display as the field label.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Links

 |

`links`

 |

_Any Type_

 |

Array of links to display. Create links with:

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

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of link labels. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |

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

## Related Patterns

The following patterns include usage of the Link Component.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Configure a Chart to Grid Toggle](/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html) (_Charts, Grids_): Display a column chart with a toggle to display an alternate grid view of the data.

-   [Configure an Array Picker with a Show All Option](/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

-   [Display a User's Tasks in a Grid With Task Links](/suite/help/25.3/recipe-display-a-users-tasks-in-a-grid-with-task-links.html) (_Grids, Reports, Looping_): Display the tasks for a user in a Read-Only Grid and allow them to click on a task to navigate to the task itself.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...