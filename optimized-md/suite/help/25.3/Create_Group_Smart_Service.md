---
source_url: https://docs.appian.com/suite/help/25.3/Create_Group_Smart_Service.html
original_path: Create_Group_Smart_Service.html
version: "25.3"
title: "Create Group Smart Service"
page_id: "Create_Group_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create Group Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Create Group smart service allows you to add new groups at runtime via process model.

This activity allows you to display a form for your users to fill out, which creates a group based on the information they submit. Alternatively, you can also set all the required node inputs at design time.

**Note:**  

-   This smart service was previously called _Create Custom Group_.
-   This smart service has been enhanced to support _Group Type_ as opposed to just _Text_. As a consequence, group types can be tracked as precedents.

### Permissions needed

The **Assignment** tab allows you to specify a user account that is assigned the activity, or to run the activity automatically, taking the process designer or the process initiator's user account for security purposes. You can only run this activity as a user that is a system administrator or in the process administrator's role. (Other users, such as members of the Portal Administrators group cannot execute this activity.)

Attempting to execute this task as a basic user causes a runtime exception that pauses the process and sends an alert to the process administrator.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![Add Group Members smart service](images/Smart_Service_Icons/Add_Group_Members.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Type | Required | Multiple | Default Value | Comments |
| --- | --- | --- | --- | --- | --- |
| Name | Text | Yes | No |  |
The following characters are not allowed in group names.

`/ \ < > " , . * '`

 |
| Description | Text | No | No |  |  |
| Group Type | Group Type | Yes | No |  | You must select a [group type](Group_Types.html) for the node input. This data cannot be collected from users at runtime, from an associated form. |
| Delegated Creation? | Integer |  | No | 0 (No) | The default values are Yes or No. The integer 1 equals yes. 0 equals no. |
| Parent Group | Group | No | No |  | The user account that activates this activity must have Administrator rights for the parent group in order to add this new group as a child. |
| Membership Policy | Number | Yes | No | Closed | Default value options: Closed, Exclusive, Automatic |
| Visibility | Number | Yes | No | Public | Default value options: Public, Personal, Restricted |
| Privacy Policy | Number | Yes | No | Low | Default value options: Low, High |

If the activity is run without being assigned to a user (or a group) you must specify values for each of the required node inputs listed.

Selecting a Personal visibility input value sets other associated node input values automatically. Be aware that the node input lists on the Data tab and the dropdown lists displayed task form are not automatically filtered when this happens to show only valid options for the Visibility. Any invalid selections (made by you at design time, or by your users at runtime) are ignored when the group is created.

If the **Visibility** input is set to **Personal**, the following settings are configured automatically.

-   The **Group Type** input is set to **Custom**
-   No value can be specified for the **Parent Group** node input.
-   The **Membership Policy** node input is set to **Closed**.
-   The **Group Privacy** node input is set to **High**.

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| New Group | Group | This activity returns the group created. |

You can save this group into a process variable in the following manner.

1.  Select the **Outputs** property sheet (tab).
2.  Click **group** on the Results list. The result properties display.
3.  Create a new process variable to store the result, or select an existing process variable with a Group data type from the available list.

## a!createGroup()

The [Create Group smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!createGroup**( _name, description, groupType, delegatedCreation, parent, membershipPolicy, securityType, groupPrivacy, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The name of the group.

 |
|

`description`

 |

_Text_

 |

The description of the group.

 |
|

`groupType`

 |

_Text_

 |

The type of the group.

 |
|

`delegatedCreation`

 |

_Boolean_

 |

Should administrators of this group be permitted to create additional groups as children? Default is `false`.

 |
|

`parent`

 |

_Group_

 |

The group's parent. You must be an administrator of this group.

 |
|

`membershipPolicy`

 |

_Text_

 |

The membership policy of the new group. Valid values include `CLOSED` (default), `EXCLUSIVE`, `AUTOMATIC`. See [Group Membership Policy](Configuring_Security_for_Groups.html#group-membership-policy) for definitions of the membership policies.

 |
|

`securityType`

 |

_Text_

 |

The security type of the new group. Valid values include `PUBLIC` (default), `PERSONAL`, `RESTRICTED`. See [Group\_Visibility](Configuring_Security_for_Groups.html#group-visibility) for definitions of the security types.

 |
|

`groupPrivacy`

 |

_Text_

 |

The privacy policy of the new group. Valid values include `LOW` (default), `HIGH`. See [Group Privacy Policy](Configuring_Security_for_Groups.html#group-privacy-policy) for definitions of the group privacy rules.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!group` function variable (Any Type) is available to specify the group that was created. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

### Returns

[Save](fnc_evaluation_save.html)

### Example

The following is a simple example that allows you to create, edit, and delete a group using an interface.

These actions need to be performed in the order mentioned above as the edit and delete actions use the group returned by the _Create Group_ action.

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
122
123
124
125
126
=a!localVariables(
  local!group,
  local!groupName,
  local!groupDescription,
  local!groupType: "Custom",
  local!groupSecurity: "PERSONAL",
  local!groupPrivacy: "LOW",
  a!formLayout(
    titleBar: "Create / Edit / Delete Group Test",
    contents: {
      a!sectionLayout(
        label: "Create Group",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!textField(
                    label: "Name",
                    value: local!groupName,
                    saveInto: local!groupName,
                    refreshAfter: "UNFOCUS"
                  ),
                  a!paragraphField(
                    label: "Description",
                    value: local!groupDescription,
                    saveInto: local!groupDescription,
                    refreshAfter: "UNFOCUS"
                  )
                }
              ),
              a!columnLayout(
                contents: {
                  a!textField(
                    label: "Type",
                    value: local!groupType,
                    saveInto: local!groupType,
                    readOnly: true,
                    refreshAfter: "UNFOCUS"
                  ),
                  a!dropdownField(
                    label: "Security",
                    choiceLabels: {"PUBLIC", "PERSONAL", "RESTRICTED"},
                    choiceValues: {"PUBLIC", "PERSONAL", "RESTRICTED"},
                    value: local!groupSecurity,
                    saveInto: local!groupSecurity
                  ),
                  a!dropdownField(
                    label: "Privacy",
                    choiceLabels: {"LOW", "HIGH"},
                    choiceValues: {"LOW", "HIGH"},
                    value: local!groupPrivacy,
                    saveInto: local!groupPrivacy
                  )
                }
              )
            }
          )
        }
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        /* CREATE GROUP */
        a!buttonWidget(
          label: "Create Group",
          style: "OUTLINE",
          saveInto: {
            a!createCustomGroup(
              name: local!groupName,
              description: local!groupDescription,
              groupType: local!groupType,
              delegatedCreation: false,
              securityType: local!groupSecurity,
              groupPrivacy: local!groupPrivacy,
              onSuccess: {
                a!save(local!group, fv!group)
              },
              onError: {}
            )
          },
          submit: true
        ),

        /* EDIT GROUP */
        a!buttonWidget(
          label: "Update Group",
          style: "OUTLINE",
          saveInto: {
            a!editGroup(
              group: local!group,
              name: local!groupName,
              description: local!groupDescription,
              groupType: local!groupType,
              delegatedCreation: false,
              securityType: local!groupSecurity,
              groupPrivacy: local!groupPrivacy,
              onSuccess: {},
              onError: {}
            )
          },
          disabled: if(isnull(local!group),true,false),
          submit: true
        ),

        /* DELETE GROUP */
        a!buttonWidget(
          label: "Delete Group",
          style: "OUTLINE",
          saveInto: {
            a!deleteGroup(
              group: togroup(local!group), /* Converts the local variable from Any Type back to Group */
              onSuccess: {},
              onError: {}
            ),
            a!save(local!group, null),
            a!save(local!groupName, null),
            a!save(local!groupDescription, null)
          },
          disabled: if(isnull(local!group), true, false),
          submit: true
        )
      }
    )
  )
)
```

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...