---
source_url: https://docs.appian.com/suite/help/25.3/Document_Browser_Component.html
original_path: Document_Browser_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document Browser Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!documentBrowserFieldColumns**( _label, labelPosition, instructions, helpTooltip, rootFolder, navigationValue, navigationSaveInto, selectionValue, selectionSaveInto, showWhen, readOnly, height, accessibilityText_ )

Displays the contents of a folder and allows users to navigate through a series of folders to find and select a document.

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

Root Folder

 |

`rootFolder`

 |

_Any Type_

 |

The contents of the specified folder or knowledge center are displayed in the first column of the browser.

 |
|

Navigation Folder Value

 |

`navigationValue`

 |

_Folder_

 |

The folder that has been navigated to whose contents are displayed in the rightmost column.

 |
|

Save Navigation Folder To

 |

`navigationSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update when the navigation folder changes.

 |
|

Selection Value

 |

`selectionValue`

 |

_Document_

 |

The document to show as selected.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update when a document is clicked.

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

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |

## Usage considerations

### Displaying items and offline use

-   Each column displays items in alphabetical order, with folders always listed first.
-   Avoid using this component for offline mobile forms because tapping on a folder does not display its contents.

### Permissions

-   The current user must have permission to view the selected folder or knowledge center in the parameter.
-   Within a folder or knowledge center, the user can only see contents for which they have permission to view.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Document browser

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
a!localVariables(
  local!selection,
  local!navigation: if(
    isnull(local!selection),
    null,
    document(local!selection[1], "folderId")
  ),
  local!rootFolder: cons!REPORTS_FOLDER,
  a!sectionLayout(
    label: "System Report Picker",
    contents: {
      a!documentBrowserFieldColumns(
        rootFolder: local!rootFolder,
        selectionValue: local!selection,
        selectionSaveInto: local!selection,
        navigationValue: local!navigation,
        navigationSaveInto: local!navigation
      ),
      a!pickerFieldDocuments(
        label: "Selection",
        labelPosition: "JUSTIFIED",
        folderFilter: local!rootFolder,
        maxSelections: 1,
        value: local!selection,
        saveInto: local!selection
      )
    }
  )
)
```

A document browser similar to the one pictured below displays. Note that your folder contents may differ from the example:

![An example of the document browser component](images/doc-browser-example.png)

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
| [a!documentBrowserFieldColumns\_17r3](/suite/help/25.3/Document_Browser_Component_173.html) |
Now supports selection in addition to browsing.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...