---
source_url: https://docs.appian.com/suite/help/25.3/Record_Action_Component.html
original_path: Record_Action_Component.html
version: "25.3"
title: "Record Action Component"
page_id: "Record_Action_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Action Component

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

**a!recordActionField**( _actions, style, display, openActionsIn, align, accessibilityText, showWhen, securityOnDemand_ )

Displays a list of record actions with a consistent style. A record action is an end-user action configured within a [record type object](Record_Type_Object.html), such as a related action or record list action.

**See also**:

-   [Record Action Item](Record_Action_Item_Component.html)
-   [Create Record Actions](record-actions.html)
-   [Record Action Design Guidance](sail/ux-record-actions.html)

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
|

Security On Demand

 |

`securityOnDemand`

 |

_Boolean_

 |

Determines when record action security is evaluated for "MENU" and "MENU\_ICON" styled actions. By default (true), security is evaluated when the user clicks the record action. When false, security is evaluated when the interface loads.

 |

## Usage considerations

### Using dialog boxes with record actions

-   When using a dialog box for the _openActionsIn_ parameter, form submission will complete the chain and retain the current page state.
-   When the form submits and you close the dialog, all record actions in the record action field will refresh. This means that any visibility conditions, labels, context, and descriptions will update as necessary.
-   If you have multiple record action fields on an interface, the form submission will only refresh the record action field where the action was launched, like from a grid or a specific column in an interface; it will not refresh all record action fields.
-   You can configure the size of the dialog box in the [record type](record-actions.html#record-action-properties). The dialog box size is specific to each record action.
-   You can configure the rounding of all dialogs in a site in the [site object](sites_object.html#branding).
-   See local variable [refresh behavior](Local_Variables.html#configuring-refresh-behavior) to learn how to refresh specific variables after dialog submission.

### Using the record action component with multiple record types

Within an `a!recordActionField()` function, you can use multiple `a!recordActionItem()` functions to display record actions from different record types. This allows you to display all actions in a consistent format, like in the [example below](#record-action-field-with-no-configurations), and leverage the [performance benefits](interface-performance.html#when-you-have-multiple-record-actions-on-a-complex-interface-display-them-in-a-menu-style) included in `"MENU"` and `"MENU_ICON"` styled actions.

### Using the securityOnDemand parameter

The _securityOnDemand_ parameter allows you to determine when record action security is evaluated on `"MENU"` and `"MENU_ICON"` styled actions.

By default, this parameter is set to _true_, and security is evaluated when the user clicks the record action. Deferring this check until it's needed means the interface will load faster, especially if you have multiple actions on a single page or if you have complex [record action security](record-action-security.html) configured.

Users may see a short delay when they want to view available record actions, but this experience is often preferable to the alternative (checking action security for every row before showing the grid).

![Record action security evaluation on menu button](images/record_components/record-action-security-menu.gif)

See the [SAIL Design System recommendation](sail/ux-record-actions.html) for more guidance on using the `"MENU"` or `"MENU_ICON"` action styles.

## Examples

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Record action field with no configurations

[![images/record_components/simple_record_action_field.png](images/record_components/simple_record_action_field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img88)

[![](images/record_components/simple_record_action_field.png)](#_)

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
a!recordActionField(
  actions: {
   /* For each of the "action" parameters below, replace the record action reference
    * with a valid record action reference in your environment.
    */
    a!recordActionItem(
     action: recordType!Department.actions.update,
     identifier: ri!departmentId
    ),
    a!recordActionItem(
     action: recordType!Customer.actions.flag,
     identifier: ri!customerId
    )
  }
)
```

### Record action field with primary button styling

[![images/record_components/record-action-primary-style.png](images/record_components/record-action-primary-style.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img89)

[![](images/record_components/record-action-primary-style.png)](#_)

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
a!recordActionField(
 actions: {
   /* For each of the "action" parameters below, replace the record action reference
    * with a valid record action reference in your environment.
    */
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

### Record action field with refresh variables

[![images/record_components/refresh_record_action_example.png](images/record_components/refresh_record_action_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img90)

[![](images/record_components/refresh_record_action_example.png)](#_)

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
a!localVariables(
 /*
  * The parameter 'refreshAfter' in a!refreshVariable() can be used to refresh data when
  * record action dialogs are submitted. Do this to update data related to the record action.
  */
  local!case: a!refreshVariable(
    /* Replace all record type references below with a valid
     * record type references in your environment.
     */
    value: a!queryRecordType(
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
          item: a!recordActionField(
            actions: {
              a!recordActionItem(
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

### Record action field in a column of a read-only grid

[![images/record_components/actions_in_grid.png](images/record_components/actions_in_grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img91)

[![](images/record_components/actions_in_grid.png)](#_)

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
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
{
  /* Replace the record type references below with a valid
   * record type references in your environment.
   */
  a!gridField(
    label: "Read-only Grid",
    labelPosition: "ABOVE",
    data: recordType!Customer,
    columns: {
      a!gridColumn(
        label: "Display Name",
        sortField: recordType!Customer.fields.displayName,
        value: a!linkField(
          links: {
            a!recordLink(
              label: fv!row[recordType!Customer.fields.displayName],
              recordType: {
                recordType!Customer
              },
              identifier: fv!row[recordType!Customer.fields.id]
            )
          }
        )
      ),
      a!gridColumn(
        label: "District",
        sortField: recordType!Customer.fields.districtId,
        value: a!linkField(
          links: {
            a!recordLink(
              label:fv!row[recordType!Customer.relationships.district.fields.name],
              recordType: recordType!District,
              identifier: fv!row[recordType!Customer.fields.districtId]
            )
          }
        ),
        align: "START"
      ),
      a!gridColumn(
        label: "Active",
        sortField: recordType!Customer.fields.isActive,
        value: if(
          fv!row[recordType!Customer.fields.isActive],
          "Active",
          "Inactive"
        )
      ),
      a!gridColumn(
        label: "Address",
        sortField: recordType!Customer.fields.addressId,
        value: rule!RE_formatAddress(
          street1: fv!row[recordType!Customer.relationships.address.fields.street1],
          street2: fv!row[recordType!Customer.relationships.address.fields.street2],
          city: fv!row[recordType!Customer.relationships.address.fields.city],
          state: fv!row[recordType!Customer.relationships.address.fields.state],
          zip: fv!row[recordType!Customer.relationships.address.fields.zip]

        ),
        align: "START"
      ),
      a!gridColumn(
        label: "# Payments",
        sortField: recordType!Customer.fields.paymentCount,
        value: fv!row[recordType!Customer.fields.paymentCount],
        align: "END"
      ),
      a!gridColumn(
        label: "# Deliveries",
        sortField: recordType!Customer.fields.deliveryCount,
        value: fv!row[recordType!Customer.fields.deliveryCount],
        align: "END"
      ),
      a!gridColumn(
        label: "Customer Since",
        sortField: 'recordType!Customer.fields.customerSince',
        value: if(
          isnull(
            fv!row[recordType!Customer.fields.customerSince]
          ),
          fv!row[recordType!Customer.fields.customerSince],
          datetext(
            fv!row[recordType!Customer.fields.customerSince],
            "default"
          )
        ),
        align: "END"
      ),
   /* In the "value" parameter of a!gridColumn, use a!recordActionField()
    * to display one or more record actions on each row of the grid.
    */
      a!gridColumn(
        label: "",
        value: a!recordActionField(
          actions:{
          /* Replace the record action references below with valid
           * record action references in your environment.
           */
            a!recordActionItem(
              action: recordType!Customer.actions.updateCustomer,
              identifier: fv!identifier
              ),
            a!recordActionItem(
              action: recordType!Customer.actions.deleteReCustomer,
              identifier: fv!identifier
              )
          },
        style: "MENU_ICON"
        )
      )
    },
    validations: {},
    refreshAfter: "RECORD_ACTION",
    showSearchBox: true,
    showRefreshButton: true,
    recordActions: {
      a!recordActionItem(
        action: recordType!Customer.actions.newCustomer
      )
    }
  )
}
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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!recordActionField\_23r3](/suite/help/25.3/Record_Action_Component_23r3.html) |
Added the _securityOnDemand_ parameter to determine when record action security is evaluated for the `"MENU"` `and` "MENU\_ICON"\` action styles. By default, security for the menu styles is evaluated when the user clicks the button.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...