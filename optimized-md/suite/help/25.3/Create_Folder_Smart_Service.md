---
source_url: https://docs.appian.com/suite/help/25.3/Create_Folder_Smart_Service.html
original_path: Create_Folder_Smart_Service.html
version: "25.3"
title: "Create Folder Smart Service"
page_id: "Create_Folder_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create Folder Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Create Folder smart service allows you to create a folder to store files within the Appian file system. The [Modify Folder Security Smart Service](Modify_Folder_Security_Smart_Service.html) allows you to specify user rights for the folder.

To use the `Create Folder` smart service, select the activity and drag it onto the canvas to add it to your process model.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Create_Folder.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The [Data tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays all the input and output parameters of the smart service. You can add additional input and output parameters, if needed.

#### Node inputs

The default inputs that are generated for the Create Folder smart service are:

| Input | Type | Required | Multiple |
| --- | --- | --- | --- |
| Parent Knowledge Center | Knowledge Center | No | Optional |
| Parent Folder | Folder | No | Optional |
| New Folder Name | Text | Yes | Required |

##### Configuring the Inputs

-   On the `Inputs` property sheet, specify values for _either_ the `Parent Knowledge Center` node input, or the `Parent Folder` node input. You cannot specify both.
-   Either manually enter data into the text-field, or create the value using the Expression Editor.
-   When using the Expression Editor, you can select or modify process variables. Process variables can then be used to populate node inputs.
-   The Expression Editor can be accessed by selecting **Expression…** from the dropdown menu under the **Value** column. The Value list displays all process variables that have the same data type as the node input.

#### Node outputs

##### Capturing the Output

The `Create Folder` smart service returns the folder object that was created.

-   To reference the newly created folder elsewhere in the process model, save the activity's output to a process variable.
    -   On the **Data** tab, select the **Outputs** tab.
    -   On the **Results** list, select the output named **The created folder (Folder)**. The `Result Properties` are displayed, listing the `AC!NewFolder` result and its save options.
    -   Save the `AC!NewFolder` result into an existing process variable that holds a Folder data type on the **Target** list.create a new process variable to store the folder by clicking the **New process variable** button.

## a!createFolder()

The [Create Folder smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!createFolder**( _name, parentFolder, parentKnowledgeCenter, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The name of the new folder.

 |
|

`parentFolder`

 |

_Folder_

 |

When present, the new folder will be created in this Folder.

 |
|

`parentKnowledgeCenter`

 |

_Knowledge Center_

 |

When present, the new folder will be created in this Knowledge Center.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!folder` function variable (Folder) is available to specify the folder that was created. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Folder naming considerations

Folder names cannot contain the following characters.

```
1
 \ / ; : " | ? ' > < * ]
```

If a folder is created with an invalid name, an [alert](process-model-object.html#alerts-tab) is sent to configured alert recipients indicating that the node failed to execute due to an invalid folder name. In such a scenario, you must change the name of the folder and re-execute the unattended create folder node. See [Edit Mode](Monitoring_and_Editing_Processes.html#edit-mode) for additional information.

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