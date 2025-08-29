---
source_url: https://docs.appian.com/suite/help/25.3/User_and_Group_Browser_Components.html
original_path: User_and_Group_Browser_Components.html
version: "25.3"
title: "User and Group Browser Component"
page_id: "User_and_Group_Browser_Components"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User and Group Browser Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!userAndGroupBrowserFieldColumns**( _label, labelPosition, instructions, helpTooltip, rootGroup, pathValue, pathSaveInto, selectionValue, selectionSaveInto, readOnly, height, accessibilityText, showWhen_ )

Displays group membership structure in columns. Users can navigate through the structure and select a single user or group.

**See also**: [Recipes](recipe-add-remove-move-group-members-browser.html)

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

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

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

Initial Group

 |

`rootGroup`

 |

_Group_

 |

The direct members of the initial group are displayed in the first column.

 |
|

Navigation Path

 |

`pathValue`

 |

_List of User or Group_

 |

The path from the first column to the current navigation.

 |
|

Save Navigation To

 |

`pathSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update when a user clicks on a user or group.

 |
|

Selection Value

 |

`selectionValue`

 |

_User or Group_

 |

This user or group is displayed as selected when it is present in the navigation path array.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update upon selection of a user or group.

 |
|

Read-only

 |

`readOnly`

 |

_Boolean_

 |

Determines whether selection is enabled. Default: false.

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the height of the component.Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

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

### User, group, and user and group browser components comparison

The user and group browser components create Miller-columns-style browsers that allow users to select a user or group while browsing through a group membership tree.

![screenshot of a user and group browser expanded](images/Group_Browsers_Main_Image.png)

The three group membership browsing components are:

-   [User Browser](User_Browser_Components.html)
-   [Group Browser](Group_Browser_Components.html)
-   User and Group Browser

Similar to the user and group picker fields, these three components appear the same but differ in what they allow to be selected. Depending on whether users, groups, or users and groups should be selected, choose the group browser, user browser, or user and group browser, respectively. If the interface is only for browsing, use the group browser, as it is the only browser that can be configured to show only groups and not users.

### Saving, selecting, and displaying values

-   If an initial group is not specified, only the _label_, _tooltip_, and _instructions_ will be displayed.
-   Click a selected user or group to deselect the value. When a user or group is deselected, a null value is saved.
-   To make the selection required for submission or display validation messages based on the selection, [pair the browser with a a picker](Group_Picker_Component.html) or other component.

### Using the pathValue and pathSaveInto parameters

-   Because users and groups can appear in multiple places in the browser at one time, a user or group only appears as selected if it is present in the _pathValue_ array.
-   When a user or group is selected, the variables in _selectionSaveInto_ are updated after the variables in _pathSaveInto_. This means that if a variable is updated in both saves, it will be updated to the value assigned in the _selectionSaveInto_ when a user or group is selected.
-   When the component is read-only, the variables in _selectionSaveInto_ are not updated when a user or group is clicked. However, if the _selectionValue_ is set, a user or group can still be displayed as selected. _pathSaveInto_ still updates as normal.
-   A user or group can only be deselected if present in the _pathValue_.
-   The first user or group in the _pathValue_ must be a member of the initial group. Each subsequent user or group in the _pathValue_ must be a member of the group that comes before it in the array. Otherwise, an error will occur.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Using user and group browsers with picker fields

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
a!localVariables(
  local!initialGroup,
  local!pathValue: a!refreshVariable(
    value: {},
    refreshOnVarChange: local!initialGroup
  ),
  local!selectionValue,
  local!readOnly,
  {
      a!sectionLayout(
        label:"Controls",
        contents:{
          a!pickerFieldGroups(
            label: "Initial Group",
            maxSelections: 1,
            value: local!initialGroup,
            saveInto: local!initialGroup
          ),
          a!checkboxField(
            labelPosition: "COLLAPSED",
            choiceLabels: {"Read-only"},
            choiceValues: {true},
            value: local!readOnly,
            saveInto: local!readOnly
          )
        }
      ),
      a!sectionLayout(
        label:"Component",
        contents: {
          a!userAndGroupBrowserFieldColumns(
            label: "User and Group Browser",
            rootGroup: local!initialGroup,
            pathValue: local!pathValue,
            pathSaveInto: local!pathValue,
            selectionValue: local!selectionValue,
            selectionSaveInto: local!selectionValue,
            readOnly: local!readOnly
          )
        }
      ),
      a!sectionLayout(
        label: "Selection & Path",
        contents: {
          a!pickerFieldUsersAndGroups(
            label: "Navigation Path",
            instructions: "Represents the current navigation from the rootGroup. Changing this could cause errors in the interface.",
            value: local!pathValue,
            saveInto: local!pathValue
          ),
          a!pickerFieldUsersAndGroups(
            label: "Selected User or Group",
            instructions: "The selected user or group only appears as selected if contained in the pathValue.",
            value: local!selectionValue,
            saveInto: local!selectionValue
          )
        }
      )
  }
)
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

## Related Patterns

The following patterns include usage of the User and Group Browser Component.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...