---
source_url: https://docs.appian.com/suite/help/25.3/Export_To_Excel_Smart_Service.html
original_path: Export_To_Excel_Smart_Service.html
version: "25.3"
title: "Export Data Store Entity to Excel Smart Service"
page_id: "Export_To_Excel_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Export Data Store Entity to Excel Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  This smart service exports data to Excel. If you need to export to CSV, use the [Export to CSV Smart Service](Export_To_CSV_Smart_Service.html).

## Overview

The Export Data Store Entity to Excel Smart Service allows designers to safely export large datasets.The exported data can then be imported into other third-party applications.

The Smart Service returns a document in an Excel format.

**Note:**  Appian strongly recommends customers to use the Export Data Store Entity to Excel smart service in place of Export SQL to Excel (part of the Excel Tools Plug-in).

### Properties

-   **Category**: Document Generation
-   **Icon**: ![Export Data Store Entity to Excel Smart Service](images/Smart_Service_Icons/Export_Data_Store_Entity_to_Excel.png)

-   **Assignment Options**: This smart service can be either attended or unattended (default).

## Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Data Store Entity | Data Store Entity | The data store entity to query. | Yes | No |
| Selection | Selection | A list of fields to retrieve, created with `a!querySelection()`. The selection accepts up to 50 columns. | No | No |
| Aggregation | Aggregation | A list of fields and the operations to perform on them when retrieving the data, created with `a!queryAggregation()`. The aggregation accepts up to 50 columns. | No | No |
| Filters | Any Type | A set of conditions to apply to the queried data before any grouping or aggregation. Can use either a list of `a!queryFilter()` or a single `a!queryLogicalExpression()`. When using a list of `a!queryFilter()`, all filters are combined using the `AND` operator. | No | Yes |
| New Document Name | Text | The name of the new document that is to be created by this smart service activity. | No | No |
| New Document Description | Text | A brief description of the document. | No | No |
| Save in Folder | Folder | The folder where the newly created document is to be stored. Applicable and required when creating a new document. | No | No |
| Document to Update | Document | The existing document to update with the exported data. This can be useful when using the smart service multiple times in the same process model, or if formatting is needed. See [Supported Excel Formatting](#prodlink-excel-formatting). Appian supports Excel 2007 and above. Note that a new version of this document will be created. | No | No |
| Include Header | Boolean | Outputs the field name in the first row of the document if set to true. Default is `true`. | No | No |
| Sheet Name | Text | The name of the sheet where data will be added. The following characters will be replaced with underscores: `[ ] / \ ? *` | No | No |
| Sheet Number | Number (Integer) | The sheet number where data will be added. Default is 1, the first sheet. Setting the number to a non-existing sheet creates a new sheet in the Excel document. | No | No |
| Starting Cell | Text | The cell within the Excel sheet where the output will begin. Default is `"A1"`. Any data in rows above this cell will remain in the sheet; any data in the same row or below will be removed and overwritten. | No | No |
| Custom Cell Positions | Text | Array of cell positions where custom cell values should be added. | No | Yes |
| Custom Cell Values | Text | Array of values to be added on the specified custom cell position. | No | Yes |

## Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| New Document | [Document](Appian_Data_Types.html#document) | The document generated as a result of executing this smart service. |

## a!exportDataStoreEntityToExcel()

Exports the selected data store entity to Excel. This function will only execute inside a saveInto or a Web API.

### Syntax

**a!exportDataStoreEntityToExcel**( _entity, selection, aggregation, filters, documentName, documentDescription, saveInFolder, documentToUpdate, includeHeader, sheetName, sheetNumber, startingCell, customCellPositions, customCellValues, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`entity`

 |

_Data Store Entity_

 |

The data store entity to query.

 |
|

`selection`

 |

_Selection_

 |

(Optional) A list of fields to retrieve, created with [a!querySelection()](fnc_system_a_queryselection.html). The selection accepts up to 50 columns.

 |
|

`aggregation`

 |

_Aggregation_

 |

(Optional) A list of fields and the operations to perform on them when retrieving the data, created with [a!queryAggregation()](fnc_system_a_queryaggregation.html). The aggregation accepts up to 50 columns.

 |
|

`filters`

 |

_Any Type_

 |

(Optional) A set of conditions to apply to the queried data before any grouping or aggregation. Can use either a list of [a!queryFilter()](fnc_system_a_queryfilter.html) or a single [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html). When using a list of `a!queryFilter()`, all filters are combined using the `AND` operator.

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

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with [a!save()](fnc_evaluation_save.html) or [a!httpResponse()](fnc_system_a_httpresponse.html). The document ID of the created/updated document is returned in the `fv!newDocument` function variable.

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

Replace the ENTITY and FOLDER with the appropriate constants for your application.

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
a!localVariables(
  local!exportDocId,
  local!errorMessage,
  {
    if(
      isnull(local!exportDocId),
      /*This link field contains the link that starts the export*/
      a!linkField(
        labelPosition: "COLLAPSED",
        links: a!dynamicLink(
          label: "Export to Excel File",
          saveInto: {
            a!exportDataStoreEntityToExcel(
              entity: cons!ENTITY,
              documentName: "Excel Export " & now(),
              saveInFolder: cons!FOLDER,
              onSuccess: a!save(
                local!exportDocId,
                fv!newDocument
              ),
              /*This displays an error if there is an issue executing the save*/
              onError: a!save(
                local!errorMessage,
                "Error Exporting File to Excel"
              )
            )
          }
        )
      ),
      {}
    ),
    if(
      /*This only displays the download link if a valid document was created*/
      not(isnull(local!exportDocId)),
      /*This changes the link to a download link for the newly created document */
      a!linkField(
        links: a!documentDownloadLink(
          label: "Download Excel File",
          document: local!exportDocId
        )
      ),
      a!textField(
        value: local!errorMessage,
        readOnly: true
      )
    )
  }
)
```

## Usage considerations

The following configurations and expected behavior apply when using the Export Data Store Entity to Excel Smart Service from the Process Modeler:

-   To export fields in a specific order, make sure to specify the **Selection** parameter. Otherwise, the order of the exported fields will not be guaranteed.
-   You may specify either the **Selection** parameter or the **Aggregation** parameter but not both. If you do not specify either parameter, all fields are returned.
-   You may specify either a **LogicalExpression** or a list of **Filters** in the **Filters** parameter but not both. If you wish to specify only one condition, specify a **Filter**. If you wish to specify more than one condition, use **LogicalExpression** or use a list of **Filters**.
-   When using fields of type Date or Date and Time in a filter and the filter's value uses either the `todate()`, `now()` or `today()` functions, make sure to cast their value using the appropriate type. For example: `cast('type!{http://www.appian.com/ae/types/2009}Date', today())`, or `cast('type!{http://www.appian.com/ae/types/2009}Datetime', now())`.
-   To create multiple tabs in the same Excel spreadsheet with data from different data store entities, use multiple nodes of this smart service. You can use the **Document to Update** and **Sheet Number** parameters when exporting a second data store entity.
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

## Avoiding Query Timeouts when Exporting Data

Exporting data store entities from either record lists or smart services relies on sorting the entity by its primary key. This sorting ensures that data is exported consistently—that is, all rows are exported and no row is exported more than once.

Appian export operations use small batches to control the amount of memory consumed. The last row of a batch is tracked and used to determine where the next batch starts. By managing load this way, we avoid high memory consumption when exporting entities with a very large number of rows.

Designers should adhere to [Database Performance Best Practices](https://community.appian.com/w/the-appian-playbook/197/database-performance-best-practices) when creating their schema relationships. Because database views do not have a primary key, or the ability to have indexes, Appian recommends exporting data only from tables or materialized views in order to avoid query timeouts with large data sets.

## Related objects

Data Types:

-   [Selection](Appian_Data_Types.html#selection)
-   [Aggregation](Appian_Data_Types.html#aggregation)
-   [Query Filter](Appian_Data_Types.html#queryfilter)
-   [Logical Expression](Appian_Data_Types.html#logicalexpression)

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