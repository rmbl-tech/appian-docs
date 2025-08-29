---
source_url: https://docs.appian.com/suite/help/25.3/Export_To_CSV_Smart_Service.html
original_path: Export_To_CSV_Smart_Service.html
version: "25.3"
title: "Export Data Store Entity to CSV Smart Service"
page_id: "Export_To_CSV_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Export Data Store Entity to CSV Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  This smart services exports data to a CSV. If you need to export to Excel, use the [Export to Excel Smart Service](Export_To_Excel_Smart_Service.html).

## Overview

The Export Data Store Entity to CSV Smart Service allows designers to export large datasets.

It can be used to export data from Appian that can then be imported into other third-party applications. A developer may want to export all data or just updates made within the last day.

The Smart Service returns a document in a CSV format.

### Properties

-   **Category**: Document Generation
-   **Icon**: ![CSV Smart Service](images/Smart_Service_Icons/Export_Data_Store_Entity_to_CSV.png)

-   **Assignment Options**: This smart service can be either attended or unattended (default).

## Configuration options

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Data Store Entity | Data Store Entity | The data store entity to query. | Yes | No |
| Selection | Selection | A list of fields to retrieve, created with `a!querySelection()`. The selection accepts up to 50 columns. | No | No |
| Aggregation | Aggregation | A list of fields and the operations to perform on them when retrieving the data, created with `a!queryAggregation()`. The aggregation accepts up to 50 columns. | No | No |
| Filters | Any Type | A set of conditions to apply to the queried data before any grouping or aggregation. Can use either a list of `a!queryFilter()` or a single `a!queryLogicalExpression()`. When using a list of `a!queryFilter()`, all filters are combined using the `AND` operator. | No | Yes |
| New Document Name | Text | The name of the new document created. | No | No |
| New Document Description | Text | A brief description of the document. | No | No |
| Save in Folder | Folder | The folder to store the new document in. Required when creating a new document. | No | No |
| Document to Update | Document | The document to be updated as a result of the export operation. This can be useful when [using the smart service multiple times](Export_Multiple_DSEs_to_Excel.html) in the same process model. New contents will be appended at the end of the file. | No | No |
| Include Header | Boolean | Outputs the field name in the first row of the document if set to true. Default is `true` | No | No |
| CSV Delimiter | Text | The field delimiter used to separate fields in the CSV file. Valid values include `"TAB"`, `"COMMA"`, `"SEMICOLON"`, `"SPACE"`, `"PIPE"`, `"CARET"`. Default is `"COMMA"`. | No | No |

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| New Document | [Document](Appian_Data_Types.html#document) | The document generated as a result of executing this smart service. |

## a!exportDataStoreEntityToCsv()

Exports the selected data store entity to CSV. This function will only execute inside a saveInto or a Web API.

### Syntax

**a!exportDataStoreEntityToCsv**( _entity, selection, aggregation, filters, documentName, documentDescription, saveInFolder, documentToUpdate, includeHeader, csvDelimiter, onSuccess, onError_ )

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

The existing document to update with the exported data. Using this parameter will append new contents at the end of the file. Note that a new version of this document will be created.

 |
|

`includeHeader`

 |

_Boolean_

 |

(Optional) Outputs the field's label in the first row of the document if set to `true`. Default is `true`.

 |
|

`csvDelimiter`

 |

_Text_

 |

(Optional) The field delimiter used to separate fields in the CSV file. Valid values include `"TAB"`, `"COMMA"`, `"SEMICOLON"`, `"SPACE"`, `"PIPE"`, `"CARET"`. Default is `"COMMA"`.

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

Replace the **ENTITY** and **FOLDER** with the appropriate constants for your application.

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
          label: "Export to CSV File",
          saveInto: {
            a!exportDataStoreEntityToCsv(
              entity: cons!ENTITY,
              documentName: "CSV Export " & now(),
              saveInFolder: cons!FOLDER,
              onSuccess: a!save(
                local!exportDocId,
                fv!newDocument
              ),
              /*This displays an error if there is an issue executing the save*/
              onError: a!save(
                local!errorMessage,
                "Error Exporting File to CSV"
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
          label: "Download CSV File",
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

The following configurations and expected behavior apply when using the Export Data Store Entity to CSV Smart Service from the Process Modeler:

-   To export fields in a specific order, make sure to specify the **Selection** parameter. Otherwise, the order of the exported fields will not be guaranteed.
-   You may specify either the **Selection** parameter or the **Aggregation** parameter but not both. If you do not specify either parameter, all fields are returned.
-   You may specify either a **LogicalExpression** or a list of **Filters** in the **Filters** parameter but not both. If you wish to specify only one condition, specify a **Filter**. If you wish to specify more than one condition, use **LogicalExpression** or use a list of **Filters**.
-   To create a CSV file with data from different data store entities, use multiple nodes of this smart service. You can use the **Document to Update** when exporting a second data store entity.

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