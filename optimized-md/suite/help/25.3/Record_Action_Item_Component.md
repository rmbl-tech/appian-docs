---
source_url: https://docs.appian.com/suite/help/25.3/Record_Action_Item_Component.html
original_path: Record_Action_Item_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Action Item

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-record-actions.html">SAIL Design System guidance available for Record Actions</a><p class="ds-release-notice-p">Make taking action on your data quick, easy, and painless with record actions. Learn how to launch actions directly from any interface to save time and get your work done faster.</p></td></tr></tbody></table>

## Function

**a!recordActionItem**( _action, identifier_ )

Displays a record action defined within a record action field or a read-only grid that uses a record type as the data source. A record action is an end-user action configured within a record type object, such as a related action or a record list action.

**See also**: [Record action field](Record_Action_Component.html), [Record action design guidance](sail/ux-record-actions.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Action

 |

`action`

 |

_Record Action Reference_

 |

A record action reference associated with a record type, configured using the `recordType!` domain. For example, `recordType!Case.actions.editCase`, will use the display name, process model, icon, context, and visibility set in the action configured in the record type.

 |
|

Identifier

 |

`identifier`

 |

_Any Type_

 |

Individual record ID within the record type. Only required for related actions. - For record types that use a database as a data source, record ID is the primary key in the data store entity. - For record types that use a process as the data source, record ID is the ID for the process. - For record types that use a web service as the data source, record ID is the value returned to the ID field of the DataSubset produced by the record's source expression.

 |

## Usage considerations

### Icons and tooltips

-   Record action items use the icon configured in the record type.
-   Both the label and description for an action will appear as a tooltip.

### Displaying record actions

When you configure a record action, follow the guidance below to ensure the record action displays in the component where it is referenced.

-   Record action items are displayed based upon record type security, process model security, and the action visibility expression configured in the record type.
-   When configuring the _recordActions_ parameter of a read-only grid, use `fv!identifier` as the identifier to call the selected row ID for a related action. Make sure the grid has values for the _Selection_ parameters properly set up, including the _selectable_, _selectionValue_, and _selectionSaveInto_ parameters.
-   Record action items that reference a related action will not appear when the _identifier_ parameter is null or invalid.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only.

### Record action item in the Employee record

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
a!recordActionField(
  actions: {
    a!recordActionItem(
    /* For the "action" parameter below, replace the record-action reference
     * (recordType!Department.actions.create) with a valid record-action reference in your environment.
     */
     action: recordType!Department.actions.create
    ),
    a!recordActionItem(
   /* For the "action" parameter below, replace the record-action reference
    * (recordType!Department.actions.update) with a valid record-action reference in your environment.
    */
     action: recordType!Department.actions.update,
     identifier: rv!identifier
    )
  }
)
```

Displays the following:

![Basic record action items](images/record_components/basic_record_action_items.png)

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

The following patterns include usage of the Record Action Item.

-   [Show Calculated Columns in a Grid](/suite/help/25.3/recipe-show-calculated-columns-in-a-grid.html) (_Formatting, Grids, Records_): Display calculated values in columns in a grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...