---
source_url: https://docs.appian.com/suite/help/25.3/Delete_Document_Smart_Service.html
original_path: Delete_Document_Smart_Service.html
version: "25.3"
title: "Delete Document Smart Service"
page_id: "Delete_Document_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete Document Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Delete Document node allows you to select a document and then completely remove it from a Knowledge Center or Folder, as well as the server file system. It is located under **Appian Smart Services** > **Document Management** in the Process Modeler palette.

You must be a System Administrator, a member of the Document Administrators group, a Knowledge Center Administrator, a Folder Administrator, or the person who uploaded the document in order to execute the activity.

**Note:**  Attempting to complete this task without sufficient user rights generates an error message for the Process Administrator and pauses the process.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Delete_Document.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The [data tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays the node inputs and outputs for the activity. You can add additional inputs and custom outputs, if needed. The default Document input is listed.

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Document | [Document](Appian_Data_Types.html#document) | Yes | No |

If the activity is run without being assigned to a user (or a group) you must specify values for each of the node inputs listed. You can either manually enter data into the text-field, or a value can be generated using the Expression Editor. When using the Expression Editor, you can reference and modify process variables, rules, constants, and other data. The expressions then specify your Node Input values.

If the node is assigned, the node input values are typed by your assigned user(s) into a form.

## a!deleteDocument()

The [Delete Document smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!deleteDocument**( _document, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`document`

 |

_Document_

 |

The document to delete.

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