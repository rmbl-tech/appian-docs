---
source_url: https://docs.appian.com/suite/help/25.3/Org_Chart_Component.html
original_path: Org_Chart_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Org Chart Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!orgChartField**( _label, labelPosition, instructions, value, saveInto, showAllAncestors, helpTooltip, accessibilityText, showWhen, showTotalCounts_ )

Displays the organizational structure of users within Appian based on the users’ Supervisor field values.

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

Display Value

 |

`value`

 |

_User_

 |

The user who is the focus of the org chart.

 |
|

Save Input To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the user value. Use a!save() to save a modified or alternative value to a variable.

 |
|

Show All Ancestors

 |

`showAllAncestors`

 |

_Boolean_

 |

Determines if all ancestors above the user are displayed. Default is false, which displays only the user's supervisor.

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

Show Total Counts

 |

`showTotalCounts`

 |

_Boolean_

 |

Determines who is included in the report count. When set to true, the count includes both direct and indirect reports. When set to false, the count only includes direct reports. Default: false.

 |

## Usage considerations

### Permissions and offline use

-   In the org chart, the user can only see active users that they have permission to view. If the current user does not have permission to view the selected user in the _value_ parameter or the selected user is deactivated, an error will occur.
-   Avoid using this component for offline mobile forms since tapping on a user will not update the focus of the org chart to the user.

### Structure

-   The org chart structure is based on users' **Supervisor** field values.
-   If supervisor or location information is not populated in user profiles, you can request users to update their own profiles in Tempo or use the [Update User Profile Smart Service](Update_User_Profile_Smart_Service.html) to update user profiles via process.

### Displaying location and user cards

-   Hovering over a user's profile photo or name displays the corresponding user card, which includes additional information about the user and allows the viewer to quickly follow or unfollow the user.
-   Location (city, state, country) is displayed on the org chart if the user has a value set in their profile.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

```
1
2
3
4
5
6
7
a!localVariables(
  local!user: loggedInUser(),
  a!orgChartField(
    value: local!user,
    saveInto: local!user
  )
)
```

An org chart similar to the one pictured below displays. Note that your org chart may differ from the example:

![An example of the org chart component](images/OrgChart.png)

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