---
source_url: https://docs.appian.com/suite/help/25.3/Document_and_Folder_Browser_Component.html
original_path: Document_and_Folder_Browser_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document and Folder Browser Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!documentAndFolderBrowserFieldColumns**( _label, labelPosition, instructions, helpTooltip, rootFolder, navigationValue, navigationSaveInto, selectionValue, selectionSaveInto, showWhen, readOnly, height, accessibilityText_ )

Displays the contents of a folder and allows users to navigate through a series of folders to find and select a folder or document.

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

Determines where the label appears. Valid values: `"ABOVE"` (default), `"ADJACENT"`, `"JUSTIFIED"`,`"COLLAPSED"`.

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

_Document or Folder_

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

_Document or Folder_

 |

The document or folder to show as selected.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

Variable or list of variables to update when a document or folder is clicked.

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

### Displaying values and offline use

-   Each column displays items in alphabetical order, with folders always listed first.
-   Avoid using this component for offline mobile forms because tapping on a folder does not display its contents.

### Permissions

-   The current user must have permission to view the selected items.
-   Within a folder or knowledge center, the user can only see contents for which they have permission to view.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Document and folder browser with document and folder picker

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
a!localVariables(
  local!selection,
  local!navigation,
  local!rootFolder: cons!REPORTS_FOLDER,
  a!sectionLayout(
    label: "System Report Picker",
    contents: {
      a!documentAndFolderBrowserFieldColumns(
        rootfolder: local!rootFolder,
        navigationvalue: local!navigation,
        navigationsaveinto: local!navigation,
        selectionvalue: local!selection,
        selectionsaveinto: local!selection,

      ),
      a!pickerFieldDocumentsAndFolders(
        label: "Selection",
        labelPosition: "JUSTIFIED",
        maxselections: 1,
        folderfilter: local!rootFolder,
        value: local!selection,
        saveInto: local!selection
      )
    }
  )
)
```

A document and folder browser similar to the one pictured below displays. Note that your folder contents may differ from the example:

![An example of the document browser component](images/doc-and-folder-browser-example.png)

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