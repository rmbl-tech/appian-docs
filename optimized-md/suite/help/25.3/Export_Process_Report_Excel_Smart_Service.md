---
source_url: https://docs.appian.com/suite/help/25.3/Export_Process_Report_Excel_Smart_Service.html
original_path: Export_Process_Report_Excel_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Export Process Report to Excel Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  This is the new Export to Excel smart service. If you need to export to CSV, use the [Export Process Report to CSV Smart Service](Export_Process_Report_CSV_Smart_Service.html).

## Overview

The Export Process Report to Excel Smart Service allows designers to safely export large amounts of data from process reports.

It can be used to export data from Appian that can then be imported into other third-party applications. A designer may want to export all data or just updates made within the last day.

The Smart Service returns a document in an Excel format.

**Note:**  Appian strongly recommends customers to use this smart service in place of Export Portal Report to Excel (part of the Excel Tools Plug-in).

### Properties

-   **Category**: Document Generation
-   **Icon**: ![Export Process Report to Excel Smart Service](images/Smart_Service_Icons/Export_Process_Report_to_Excel.png)

-   **Assignment Options**: This smart service can be either attended or unattended (default).

## Configuration options

### Data tab

#### Node inputs

| Name | Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Process Report | Process Report | The process report to query. | Y | N |
| Filters | Any Type | A set of conditions to apply to the queried data. Can use either a list of `a!queryFilter()` or a single `a!queryLogicalExpression()`. When using a list of `a!queryFilter()`, all filters are combined using the `AND` operator. [Filters](Process_Reports.html#filters) saved to the process report are applied before these are applied. | N | Y |
| Report Context | Any Type | Contains an array of either `Group`, `User`, `Number (Integer)`, or `Process Model` to pass to the report context. | N | N |
| New Document Name | Text | The name of the new document that is to be created by this smart service activity. | N | N |
| New Document Description | Text | A brief description of the document. | N | N |
| Save in Folder | Folder | The folder where the newly created document is to be stored. Applicable and required when creating a new document. | N | N |
| Document to Update | Document | The existing document to update with the exported data. This can be useful when using the smart service multiple times in the same process model, or if formatting is needed. See [Supported Excel Formatting](#prodlink-excel-formatting). Appian supports Excel 2007 and above. Note that a new version of this document will be created. | N | N |
| Include header | Boolean | Outputs the label of each field in the first row of the document if set to `true`. Default is `true`. | N | N |
| Sheet Name | Text | The name of the sheet where data will be added as a result of executing this smart service. The following characters will be replaced with underscores: `[ ] / \ ? *` | N | N |
| Sheet Number | Number (Integer) | The sheet number where data will be added as a result of executing this smart service. Default is `1`, the first sheet. | N | N |
| Starting Cell | Text | The cell where the output will begin. Default is `"A1"`. Any data in rows above this cell will remain in the sheet; any data in the same row or below will be removed and overwritten. | N | N |
| Custom Cell Positions | Text | Array of cell positions where custom cell values should be added. | N | Y |
| Custom Cell Values | Text | Array of values to be added on the specified custom cell position. | N | Y |

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| New Document | [Document](Appian_Data_Types.html#document) | The document generated as a result of executing this smart service. |

## a!exportProcessReportToExcel()

Exports data from a process report to Excel. This function will only execute inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!exportProcessReportToExcel**( _report, filters, context, documentName, documentDescription, saveInFolder, documentToUpdate, includeHeader, sheetName, sheetNumber, startingCell, customCellPositions, customCellValues, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`report`

 |

_Document_

 |

The process report to query.

 |
|

`filters`

 |

_Any Type_

 |

(Optional) A set of conditions to apply to the queried data. Can use either a list of `a!queryFilter()` or a single `a!queryLogicalExpression()`. When using a list of `a!queryFilter()`, all filters are combined using the `AND` operator. User filters saved to the process report are applied before these are.

 |
|

`context`

 |

_Any Type_

 |

Contains an array of either `Group`, `User`, `Number (Integer)`, or `Process Model` to pass to the report context.

 |
|

`documentName`

 |

_Text_

 |

The name of the new document that is to be created by this smart service.

 |
|

`documentDescription`

 |

_Text_

 |

(Optional) A brief description of the document.

 |
|

`saveInFolder`

 |

_Folder_

 |

The folder where the newly created document is to be stored. Applicable and required when creating a new document.

 |
|

`documentToUpdate`

 |

_Document_

 |

The existing document to update with the exported data. This can be useful when using the smart service multiple times in the same process model, or if formatting is needed. See [Supported Excel Formatting](#prodlink-excel-formatting). Appian supports Excel 2007 and above. Note that a new version of this document will be created.

 |
|

`includeHeader`

 |

_Boolean_

 |

(Optional) Outputs the field's label in the first row of the document if set to `true`. Default is `true`.

 |
|

`sheetName`

 |

_Text_

 |

(Optional) The name of the sheet where data will be added as a result of executing this smart service. Certain characters (`[ ] / \ ? *`) will be replaced with underscores.

 |
|

`sheetNumber`

 |

_Number (Integer)_

 |

(Optional) The sheet number where data will be added as a result of executing this smart service. Default is `1`, the first sheet.

 |
|

`startingCell`

 |

_Text_

 |

(Optional) The cell where the output will begin. Default is `A1`. Any data in rows above this cell will remain in the sheet; any data in the same row or below will be removed and overwritten.

 |
|

`customCellPositions`

 |

_List of Text String_

 |

(Optional) Array of cell positions where custom cell values should be added.

 |
|

`customCellValues`

 |

_List of Text String_

 |

(Optional) Array of values to be added on the specified custom cell position.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. The document ID of the created/updated document is returned in the `fv!newDocument` function variable.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

### Returns

[Document](Appian_Data_Types.html#document)

### Example

_Copy and paste an example into an Appian Expression Editor to experiment with it._

You will need to provide a constant to replace both **REPORT** and **TARGET\_FOLDER**.

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
a!localVariables(
  local!exportId,
  {
    a!linkField(
      labelPosition: "COLLAPSED",
      links: a!dynamicLink(
        label: "Render Excel File",
        saveInto: {
          a!exportProcessReportToExcel(
            report: cons!REPORT,
            documentName: "Report " & now(),
            saveInFolder: cons!TARGET_FOLDER,
            onSuccess: a!save(
              local!exportId,
              fv!newDocument
            )
          )
        }
      )
    )
  }
)
```

## Usage considerations

The following configurations and expected behavior apply when using the Export Process Report to Excel Smart Service from the Process Modeler:

-   You may specify either a **LogicalExpression** or a list of **Filters** in the **Filters** parameter but not both. If you wish to specify only one condition, specify a **Filter**. If you wish to specify more than one condition, use **LogicalExpression** or use a list of **Filters**.
-   To create multiple tabs in the same Excel spreadsheet with data from different process reports, use multiple nodes of this smart service. You can use the **Document to Update** and **Sheet Number** parameters when exporting a second process report.
-   Due to performance considerations, there is a max row limit of 10,000 rows and a max column limit of 50 columns that can be exported.
-   To export your data to a preformatted spreadsheet, use the **Document to Update** and **Starting Cell** parameters. [Learn how to export data to a formatted Excel sheet](#prodlink-excel-formatting).

### Exporting data to a formatted Excel sheet

It’s common for businesses to use standard, preformatted spreadsheets to display and share data. For instance, a preformatted spreadsheet may have a cover page with different font size and colors; instructions above a table where data will be added; formatted table headers; or a specific column width.

When you use this smart service, you can determine the cell in an existing spreadsheet where the output should begin. This is called the **Starting Cell** parameters. Once you specify the **Starting Cell**, any cells above this point will keep their original formatting, such as alignment, font, border, fill options, column width, and frozen rows and columns.

To export your data to a preformatted spreadsheet:

1.  Create a spreadsheet with any necessary information and formatting. This will be the original spreadsheet where the data will be exported to.
2.  Configure the smart service, and set the following parameters:
    -   Set the **Document to Update** parameter to the spreadsheet you just created.
    -   Set the **Starting Cell** parameter to the appropriate cell. Any cells that start at or below the **Starting Cell** will not maintain any formatting.
3.  Execute the smart service. This will create a new version of your spreadsheet with your exported data and formatting.

#### Supported Excel formatting

The following table shows the formatting options supported by this smart service.

Generic formatting options apply to all data in a given sheet; whereas cell formatting options only apply to any rows that are not updated by these smart services (i.e. custom cell positions/values, starting cell).

<table class="appianTable"><tbody><tr><td><strong>Formatting Type</strong></td><td><strong>Details</strong></td></tr><tr><td>Generic Formatting</td><td><ul><li>Column widths</li><li>Frozen rows and columns</li><li>Tab colors</li><li>Sheet visibility</li></ul></td></tr><tr><td>Cell Formatting: Number</td><td><ul><li>Number</li><li>Currency</li><li>Accounting</li><li>Date</li><li>time</li><li>Percentage</li><li>Fraction</li><li>Scientific</li><li>Text</li><li>special and custom</li></ul></td></tr><tr><td>Cell Formatting: Alignment</td><td><ul><li>Horizontal Alignment</li><li>Vertical Alignment</li><li>Indentation</li><li>Orientation</li><li>Wrap Text</li><li>Shrink to Fit</li><li>Merge Cell</li></ul></td></tr><tr><td>Cell Formatting: Font</td><td><ul><li>Type: Calibri, Arial, etc.</li><li>Style: Bold, Italic, etc.</li><li>Size: 8, 9, 10, etc.</li><li>Underline: Single, double, etc.</li><li>Color</li><li>Effects</li></ul></td></tr><tr><td>Cell Formatting: Border</td><td><ul><li>Line Style</li><li>Line Color</li><li>Border options</li></ul></td></tr><tr><td>Cell Formatting: Fill Options</td><td><ul><li>Background color</li><li>Pattern color</li><li>Pattern style</li></ul></td></tr></tbody></table>

#### Unsupported Excel formatting and elements

The following list displays Excel options that are not supported by this smart service:

-   Charts
-   Excel formulas
-   Filters on columns
-   Formulas
-   Images
-   Links
-   Macros
-   Any formatting options that are not listed above

## Related objects

Data Types:

-   [Query Filter](Appian_Data_Types.html#queryfilter)
-   [Logical Expression](Appian_Data_Types.html#logicalexpression)

## See also

-   [Export Process Report To CSV Smart Service](Export_Process_Report_CSV_Smart_Service.html)
-   [Smart Services Library](Smart_Services.html)

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