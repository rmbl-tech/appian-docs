---
source_url: https://docs.appian.com/suite/help/25.3/Change_User_Type_Smart_Service.html
original_path: Change_User_Type_Smart_Service.html
version: "25.3"
title: "Change User Type Smart Service"
page_id: "Change_User_Type_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Change User Type Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Change User Type Smart Service allows you to select a user and change the user's type from a Basic User to a System Administrator or from a System Administrator back to a Basic User.

See also: [Manage User Rights and Security](User_Management.html#manage-user-rights-and-security)

### Permissions needed

The user running the smart service must be a System Administrator or an Administrator of the user account to be modified. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Change_User_Type.png)

-   **Assignment Options**: Unattended or Assigned.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

The following node inputs need to be entered on the Data tab displays the node inputs and node outputs for the Smart Service. You can add additional inputs and outputs, if needed. The default inputs are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| User | User | No | No |
| User Type | Integer | Yes | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above.

You can either manually enter data into the text-field, or a value can be generated using the Expression Editor. For the User Type, select either Basic User or Administrator from the dropdown list. If creating an expression, use `0` for Basic User and `1` for Administrator.

When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then populate your Node Input values.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

## a!updateUserType()

The [Change User Type smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!updateUserType**( _user, newUserType, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`user`

 |

_User_

 |

The user whose type will be changed.

 |
|

`newUserType`

 |

_Text_

 |

The new type for the user. Valid values include `ADMINISTRATOR` (default), `BASIC`.

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