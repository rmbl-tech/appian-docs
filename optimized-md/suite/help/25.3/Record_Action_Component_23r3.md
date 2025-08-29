---
source_url: https://docs.appian.com/suite/help/25.3/Record_Action_Component_23r3.html
original_path: Record_Action_Component_23r3.html
version: "25.3"
title: "a!recordActionField\_23r3 Component"
page_id: "Record_Action_Component_23r3"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordActionField\_23r3 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Record Action Component](/suite/help/25.3/Record_Action_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Record_Action_Component.html#Old_Version)

## Function

**a!recordActionField\_23r3**( _actions, style, display, openActionsIn, align, accessibilityText, showWhen_ )

Displays a list of record actions with a consistent style. A record action is an end-user action configured within a [record type object](Record_Type_Object.html), such as a related action or record list action.

**See also**:

-   [Record Action Item](Record_Action_Item_Component.html)
-   [Create record actions](record-actions.html)
-   [Record action design guidance](sail/ux-record-actions.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Actions

 |

`actions`

 |

_Any Type_

 |

List of record action items to display, configured using [a!recordActionItem()](Record_Action_Item_Component.html).

 |
|

Display Style

 |

`style`

 |

_Text_

 |

Determines how the list of actions should be displayed on the interface. Valid values: `"TOOLBAR"` (default), `"LINKS"`, `"CARDS"`, `"SIDEBAR"`, `"CALL_TO_ACTION"`, `"MENU"`, `"MENU_ICON"`, `"TOOLBAR_PRIMARY"`, `"SIDEBAR_PRIMARY"`. See the [record action design guidance](sail/ux-record-actions.html) for details on how to use different styles effectively.

 |
|

Display

 |

`display`

 |

_Text_

 |

Determines how the given action labels will be displayed in each item. Valid values: `"LABEL_AND_ICON"` (default), `"LABEL"`, `"ICON"`.

 |
|

Action Behavior

 |

`openActionsIn`

 |

_Text_

 |

Determines how actions should open to the user. Valid values: `"DIALOG"` (default), `"NEW_TAB"`, `"SAME_TAB"`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the action(s). Valid values: `"START"`, `"CENTER"`, `"END"`.

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

### Using dialog boxes with record actions

-   When using a dialog box for the _openActionsIn_ parameter, form submission will complete the chain and retain the current page state.

-   When the form submits and you close the dialog, all record actions in the record action field will refresh. This means that any visibility conditions, labels, context, and descriptions will update as necessary.

-   If you have multiple record action fields on an interface, the form submission will only refresh the record action field where the action was launched, like from a grid or a specific column in an interface; it will not refresh all record action fields.

-   You can configure the size of the dialog box [in the record type](record-actions.html#record-action-properties). The dialog box size is specific to each record action.

-   See local variable [refresh behavior](Local_Variables.html#configuring-refresh-behavior) to learn how to refresh specific variables after dialog submission.

### Using the record action component with multiple record types

You can select record actions from different record types.

## Examples

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Record action field with no configurations

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
18
a!recordActionField_23r3(
  actions: {
    a!recordActionItem(
   /* For the "action" parameter below, replace the record-action reference
    * (recordType!Department.actions.update) with a valid record-action reference in your environment.
    */
     action: recordType!Department.actions.update,
     identifier: ri!departmentId
    ),
    a!recordActionItem(
   /* For the "action" parameter below, replace the record-action reference
    * (recordType!Customer.actions.flag) with a valid record-action reference in your environment.
    */
     action: recordType!Customer.actions.flag,
     identifier: ri!customerId
    )
  }
)
```

Displays the following:

[![images/record_components/simple_record_action_field.png](images/record_components/simple_record_action_field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img92)

[![](images/record_components/simple_record_action_field.png)](#_)

### Record action field with primary button styling

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
a!recordActionField_23r3(
 actions: {
    a!recordActionItem(
      action: recordType!Order.actions.newOrder
    ),
    a!recordActionItem(
      action: recordType!Order.actions.updateOrder,
      identifier: 1
    ),
    a!recordActionItem(
      action: recordType!Order.actions.discountOrder,
      identifier: 1
    )
  },
  style: "SIDEBAR_PRIMARY",
  display: "LABEL_AND_ICON"
)
```

Displays the following:

[![images/record_components/record-action-primary-style.png](images/record_components/record-action-primary-style.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img93)

[![](images/record_components/record-action-primary-style.png)](#_)

### Record action field with refresh variables

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
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
a!localVariables(
  /*
  * The parameter 'refreshAfter' in a!refreshVariable() can be used to refresh data when
  * record action dialogs are submitted. Do this to update data related to the record action.
  */
  local!case: a!refreshVariable(
    value: a!queryRecordType(
        /* Replace the recordType reference below (recordType!Case) with a valid
         * recordType reference in your environment.
         */
        recordType: recordType!Case,
        fields: {
            recordType!Case.fields.id,
            recordType!Case.fields.priority,
            recordType!Case.fields.status,
            recordType!Case.fields.createdBy,
            recordType!Case.fields.createdOn
        },
        filters: {
            filter: a!queryFilter(recordType!Case.fields.id, "=", ri!CaseId)
        },
        pagingInfo: a!pagingInfo(1, 1)
    ).data,
    refreshAfter: "RECORD_ACTION"
  ),
  {
    a!sideBySideLayout(
      items: {
        a!sideBySideItem(
          item: a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextHeader(
                text: "Case Details"
              )
            }
          )
        ),
        a!sideBySideItem(
          item: a!recordActionField_23r3(
            actions: {
              a!recordActionItem(
              /* Replace the record action reference below, recordType!Case.actions.edit,
               * with a valid record action reference in your environment.
               */
                action: recordType!Case.actions.edit,
                identifier: local!case[recordType!Case.fields.id]
              )
            },
            openActionsIn: "DIALOG",
            style: "LINKS",
            display: "LABEL_AND_ICON",
            showIcon: true,
            align: "END"
          )
        )
      },
      alignvertical: "MIDDLE"
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!textField(
              label: "Priority",
              labelPosition: "JUSTIFIED",
              value: local!case[recordType!Case.fields.priority],
              readonly: true
            ),
            a!textField(
              label: "Status",
              labelPosition: "JUSTIFIED",
              value: local!case[recordType!Case.fields.status],
              readonly: true
            ),
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Created On",
              labelPosition: "JUSTIFIED",
              value: local!case[recordType!Case.fields.createdOn],
              readonly: true
            ),
            a!textField(
              label: "Created By",
              labelPosition: "JUSTIFIED",
              value: local!case[recordType!Case.fields.createdBy],
              readonly: true
            )
          }
        )
      }
    )
  }
)
```

Displays the following:

[![images/record_components/refresh_record_action_example.png](images/record_components/refresh_record_action_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img94)

[![](images/record_components/refresh_record_action_example.png)](#_)

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