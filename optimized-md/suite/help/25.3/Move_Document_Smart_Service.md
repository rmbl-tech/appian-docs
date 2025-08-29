---
source_url: https://docs.appian.com/suite/help/25.3/Move_Document_Smart_Service.html
original_path: Move_Document_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Move Document Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Move Document smart service allows you to select a document and move it to a different [document folder](folder-object.html#document-folders) or [Knowledge Center](folder-object.html#knowledge-centers). A document can only be moved to an existing document folder or Knowledge Center.

Only a system administrator, a user with [**Administrator** permission to the knowledge center](folder-object.html#prodlink-knowledge-center-security), or the person who uploaded the document can move the document. Attempting to complete this task without sufficient rights will result in an error and pause the process.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Move_Document.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays all the Node Inputs and Node Outputs. You can add additional inputs and outputs, if needed.

#### Node inputs

The default inputs are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Document | Document | Yes | No |
| Destination | Folder | Yes | No |

If the node is run without being assigned to a user or a group, you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the using the Expression Editor.

If the node is assigned, the Node Input values are typed by your assigned users in a form.

## a!moveDocument()

The [Move Document smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!moveDocument**( _document, destination, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`document`

 |

_Document_

 |

The document to move.

 |
|

`destination`

 |

_Folder_

 |

The new parent folder for the selected document.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Example: Move documents to a document management record type

In an existing application, you may already have documents stored in folders. However, you may want to [move those documents to a document management record type](manage-docs-with-records.html#move-documents-to-a-document-management-record-type) so you can take full advantage of [smart search](records-smart-search.html).

This example walks you through a scenario that requires a new process model to move documents from an existing folder to a generated document folder for a document management record type.

#### Scenario

In this example, we have an existing record type called **AT Receipt** that stores the document identifiers for all receipts in a `documentId` field. We just changed the data type of the `documentId` field from type Number (Integer) to type [Document](manage-docs-with-records.html#required-object), which [generated a new document folder](manage-docs-with-records.html#generated-folders) for the record type.

While the record type references the existing document identifiers, the documents themselves are not associated with the record type yet. To associate the documents with the record type and apply the record type security to the documents, we need to move the documents to the generated document folder for the **AT Receipt** record type.

This example creates the following process models:

-   [A subprocess to move the documents](#subprocess-to-move-documents).
-   [A process to query and batch through all document identifiers in the record type and execute the subprocess](#process-to-get-documents-and-run-the-subprocess).

[![images/move-documents-to-record-type-folder.png](images/move-documents-to-record-type-folder.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img125)

[![](images/move-documents-to-record-type-folder.png)](#_)

#### Subprocess to move documents

In this example, we need to move more than 1,000 documents, so we must use a subprocess to execute the **Move Documents** smart service multiple times.

To build the subprocess to move documents:

1.  [Create a process model](process-model-object.html#creating-a-process-model). In this example, the process model is called `AT Move Document Subprocess`.
2.  [Add the process variable](process-model-object.html#variables-tab) below:

    | Name | Type | Value | Parameter? | Required? | Multiple? |
    | --- | --- | --- | --- | --- | --- |
    | document | Document (data type) | Leave blank | Yes | No | Yes |

3.  Drag in a **Move Document** node and configure the following:
    -   Go to the **Data** tab.
    -   Click the **Document** input and set the **Value** to `pv!document`.
    -   Click the **Destination** input and configure the **Value** with [a!documentFolderForRecordType()](fnc_system_documentFolderForRecordType.html). For example:

        ```
        1
        2
        3
        a!documentFolderForRecordType(
         recordType: recordType!AT Receipt
        )
        ```

    -   Go to the **Other** tab.
    -   Select the **Automatically run multiple instances of this node** checkbox.
    -   Select the **Run one instance for each item** option and use the dropdown to select the **document** process variable.
4.  Click **File** > **Save & Publish**. The process model should look like this:

    [![images/subprocess-move-documents-to-record-type-folder.png](images/subprocess-move-documents-to-record-type-folder.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img126)

    [![](images/subprocess-move-documents-to-record-type-folder.png)](#_)

#### Process to get documents and run the subprocess

After building the subprocess to move documents, we can build a process model to query the documents that need to be moved and run the subprocess.

To create this process:

1.  Create another process model. In this example, the process model is called `AT Get and Move Documents`.
2.  Add the process variables below:

    | Name | Type | Value | Parameter? | Required? | Multiple? |
    | --- | --- | --- | --- | --- | --- |
    | startIndex | Number (Integer) | 1 | No | No | No |
    | document | Document (data type) | Leave blank | No | No | Yes |

3.  Add a [**Script Task**](Configuring_the_Script_Task.html) node and configure it as follows:
    -   For **Name**, enter `Get Documents`.
    -   Go to the **Data** tab and select the **Outputs** tab.
    -   Click **\+ New Custom Output**.
    -   In **Expression**, enter a query to return the document identifiers from the record type.

        In the query, set the _startIndex_ parameter in `a!pagingInfo` to `pv!startIndex` so the process can batch through all documents.

        For example, the query could look like this:

        ```
        1
        2
        3
        4
        5
        6
        7
        8
        a!queryRecordType(
          recordType: recordType!AT Receipt,
          fields: recordType!AT Receipt.fields.documentId,
          pagingInfo: a!pagingInfo(
            startIndex: pv!startIndex,
            batchSize: 1000
          )
        ).data[recordType!AT Receipt.fields.documentId]
        ```

    -   For **Target**, select the **document** process variable.
4.  Add an **XOR** node after the **Get Documents** node. You'll configure this node in a later step.
5.  Add a second connector from the **XOR** node back to the **Get Documents** node.
6.  Add a [**Subprocess**](Sub-Process_Activity.html) on the second connector and configure the following:
    -   For **Name**, enter `Move Documents`.
    -   Go to the **Setup** tab.
    -   For **Run this process model**, select the [**Move Document Subprocess**](#subprocess-to-move-documents) you created earlier.
    -   For **Input Variables**, use the dropdown to select the **document** process variable.
7.  Add a **Script Task** node on the connector between **Move Documents** and **Get Documents** and configure the following:
    -   For **Name**, enter `Get Next Batch`.
    -   Go to the **Data** tab and select the **Outputs** tab.
    -   Click **\+ New Custom Output**.
    -   In **Expression**, enter `pv!startIndex + 1000`.
    -   For **Target**, select **startIndex**.
8.  Open the **XOR** node and configure the following:
    -   For **Name**, enter `More documents?`
    -   Click **NEW CONDITION**.
    -   For **Condition**, click **Edit as Expression** and enter `a!isNullOrEmpty(pv!document)`.
    -   For **Result**, select **End Node**.
    -   In the **Else if no rules are TRUE** row, set the **Result** to **Move Documents**.
9.  Click **File** > **Save & Publish**. The process model should look like this:

    [![images/move-documents-to-record-type-folder.png](images/move-documents-to-record-type-folder.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img127)

    [![](images/move-documents-to-record-type-folder.png)](#_)

10.  Run the process model to move all documents to the new document folder.

     **Tip:**  To avoid interrupting application users, run the process model outside of peak traffic or working hours.

After executing the process model, all documents will appear in the [**Documents** page](manage-docs-with-records.html#monitor-documents) of the document management record type. You can then configure [record-level security](record-level-security.html) on the document management record type to apply more granular access control to your documents.

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