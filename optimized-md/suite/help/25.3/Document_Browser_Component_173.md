---
source_url: https://docs.appian.com/suite/help/25.3/Document_Browser_Component_173.html
original_path: Document_Browser_Component_173.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!documentBrowserFieldColumns\_17r3

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Document Browser Component](/suite/help/25.3/Document_Browser_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Document_Browser_Component.html#Old_Version)

## Document Browser

**Function**: `a!documentBrowserFieldColumns_17r3()`

Displays the contents of a folder and allows users to navigate through a series of folders to find and download documents.

**Parameters**

| Name | Keyword | Type | Description |
| --- | --- | --- | --- |
| Label | label | Text | Optional text to display as the field label. |
| Label Position | labelPosition | Text | Optional text to determine where the label appears. Valid values include
-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
| Instructions | instructions | Text | Use this parameter to supply supplemental text about this field. |
| Help Tooltip | helpTooltip | Text | Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`. |
| Folder | folder | Folder | The contents of the selected folder are displayed in the document browser. |
| Height | height | Text | Determines the height of the component. Valid values are `SHORT`, `MEDIUM` (default), and `TALL`. |
| Knowledge Center | knowledgeCenter | Knowledge Center | The contents of the selected knowledge center are displayed in the document browser. |
| Show When | showWhen | Boolean | Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true. |

**Notes**

-   You must specify either a folder or a knowledge center, but not both.
-   The current user must have permission to view the selected folder or knowledge center in the parameter.
-   Within a folder or knowledge center, the user can only see contents for which they have permission to view.
-   Each column displays the first 1000 items in alphabetical order. Contents may consist of any combination of folders or documents, and folders are always listed first.
-   Avoid using this component for offline mobile forms because tapping on a folder does not display its contents and tapping on a file does not download it when offline.

**Examples**

_To experiment with examples, copy and paste the expression into an interface object._

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
=a!localVariables(
  local!folder,
  {
    a!pickerFieldFolders(
      label: "Select a Folder",
      maxSelections: 1,
      value: local!folder,
      saveInto: local!folder
    ),
    a!documentBrowserFieldColumns_17r3(
      label: "Document Browser",
      folder: local!folder
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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...