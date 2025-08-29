---
source_url: https://docs.appian.com/suite/help/25.3/Group_Browser_Components.html
original_path: Group_Browser_Components.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Group Browser Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!groupBrowserFieldColumns**( _label, labelPosition, instructions, helpTooltip, rootGroup, pathValue, pathSaveInto, selectionValue, selectionSaveInto, readOnly, height, hideUsers, accessibilityText, showWhen_ )

Displays group membership structure in columns. Users can navigate through the structure and select a single group.

**See also**: [Example Interfaces](browser_examples.html)

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

_List of Group_

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

Variable or list of variables to update when a user clicks on a group.

 |
|

Selection Value

 |

`selectionValue`

 |

_Group_

 |

This group is displayed as selected when it is present in the navigation path array.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update upon selection of a group.

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

Determines the height of the component. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

 |
|

Hide Users

 |

`hideUsers`

 |

_Boolean_

 |

Determines whether users will be displayed. Default: false.

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

![screenshot of a group browser expanded](images/Group_Browsers_Main_Image.png)

The three group membership browsing components are:

-   [User Browser](User_Browser_Components.html)
-   Group Browser
-   [User and Group Browser](User_and_Group_Browser_Components.html)

Similar to the user and group picker fields, these three components appear the same but differ in what they allow to be selected. Depending on whether users, groups, or users and groups should be selected, choose the group browser, user browser, or user and group browser, respectively. If the interface is only for browsing, use the group browser, as it is the only browser that can be configured to show only groups and not users.

To learn how to use these components, see the examples listed below:

-   [Example Interfaces for Group Browser Components](browser_examples.html)
    -   [Navigation & the Initial Group](browser_examples.html#navigation-&-the-initial-group)
    -   [Selection for More Information](browser_examples.html#selection-for-more-information)
    -   [Selection for Picking](browser_examples.html#selection-for-picking)

### Saving, selecting, and displaying values

-   If an initial group is not specified, only the _label_, _tooltip_, and _instructions_ will be displayed.
-   The group browser is the only browser of the three that allows users to be hidden. For groups with many user members, hiding users can improve performance.
-   Click a selected group to deselect the value. When a group is deselected, a null value is saved.
-   To make the selection required for submission or display validation messages based on the selection, [pair the browser with a picker](browser_examples.html#selection-for-picking) or other component.

### Using the pathValue and pathSaveInto parameters

-   Because groups can appear in multiple places in the browser at one time, a group only appears as selected if it is present in the _pathValue_ array.
-   When a group is selected, the variables in _selectionSaveInto_ are updated after the variables in _pathSaveInto_. This means that if a variable is updated in both saves, it will be updated to the value assigned in the _selectionSaveInto_ when a group is selected.
-   When the component is read-only, the variables in _selectionSaveInto_ are not updated when a group is clicked. However, if the _selectionValue_ is set, a group can still be displayed as selected. _pathSaveInto_ still updates as normal.
-   A group can only be deselected if present in the _pathValue_.
-   The first group in the _pathValue_ must be a member of the initial group. Each subsequent group in the _pathValue_ must be a member of the group that comes before it in the array. Otherwise, an error will occur.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Using group browsers with picker fields

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
a!localVariables(
  local!initialGroup,
  /* Reset the path value each time you change the initial group */
  local!pathValue: a!refreshVariable(
    value: {},
    refreshOnVarChange: local!initialGroup
  ),
  local!selectionValue,
  local!hideUsers,
  local!readOnly,
  {
      a!sectionLayout(
        label:"Controls",
        contents: a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!pickerFieldGroups(
                  label: "Initial Group",
                  maxSelections: 1,
                  value: local!initialGroup,
                  saveInto: local!initialGroup
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!checkboxField(
                  labelPosition: "COLLAPSED",
                  choiceLabels: {"Read-only"},
                  choiceValues: {true},
                  value: local!readOnly,
                  saveInto: local!readOnly
                ),
                a!checkboxField(
                  labelPosition: "COLLAPSED",
                  choiceLabels: {"Hide Users"},
                  choiceValues: {true},
                  value: local!hideUsers,
                  saveInto: local!hideUsers
                )
              }
            )
          }
        )
      ),
      a!sectionLayout(
        label:"Component",
        contents: {
          a!groupBrowserFieldColumns(
            label: "Group Browser",
            rootGroup: local!initialGroup,
            pathValue: local!pathValue,
            pathSaveInto: local!pathValue,
            selectionValue: local!selectionValue,
            selectionSaveInto: local!selectionValue,
            readOnly: local!readOnly,
            hideUsers: local!hideUsers
          )
        }
      ),
      a!sectionLayout(
        label: "Selection & Path",
        contents: {
          a!pickerFieldGroups(
            label: "Navigation Path",
            instructions: "Represents the current navigation from the rootGroup. Changing this could cause errors in the interface.",
            value: local!pathValue,
            saveInto: local!pathValue
          ),
          a!pickerFieldGroups(
            label: "Selected Group",
            instructions: "The selected group only appears as selected if contained in the pathValue.",
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

The following patterns include usage of the Group Browser Component.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...