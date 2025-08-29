---
source_url: https://docs.appian.com/suite/help/25.3/Modify_User_Security_Smart_Service.html
original_path: Modify_User_Security_Smart_Service.html
version: "25.3"
title: "Modify User Security Smart Service"
page_id: "Modify_User_Security_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modify User Security Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This smart service allows you to overwrite a specific user's entire role map with different users and groups. See role map in the [glossary](Glossary.html).

Enter the users and groups to overwrite with in the [node input](#data-tab) roles (Administrator, Editor, Viewer) for this smart service. If no user or group is entered for a particular role, the role defaults to the `Site-wide Default Role Map` behavior for that role and is considered "cleared."

By using this smart service, you can easily "lock down" a user and make them invisible to all basic users. Instead of needing to remove the Viewer role from every user or group for that specific user, you can run this smart service with no values in the Viewer input, so the Viewer role defaults to the Site-wide Default Role Map of no viewers.

**Caution:**  The user running the smart service must have Administrator privileges over the target user or be a system administrator. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

The activity is **unattended** by default. If the activity is run without being assigned to a user (or a group) you must specify values for the node inputs listed in the table below. You can either manually enter data into the text-field or generate a value using the Expression Editor. When using the Expression Editor, you can reference and modify process variables, rules, constants, and other data. The expressions then populate your node input values.

Process designers can switch the activity to attended. If switched, a default form is available to allow the task user to enter users or groups for the node input roles.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Modify_User_Security.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The data tab displays the node inputs and outputs for the activity. You can add additional inputs and custom outputs, if needed.

#### Node inputs

The default inputs include the following:

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| User | People | The user to update (target user). Valid values include deactivated users. By default, you can only run this service against one user at a time. Click [here](#running-the-smart-service-against-multiple-users) for instructions on running this service against multiple users. | Yes | No |
| Administrators | People | The list of People who will be Administrators in the User role map. In addition to the system administrators, people set in this role can administer the user. If no value is set, no one but a system administrator can administer the target user. | No | Yes |
| Editors | People | The list of People who will be Editors in the User role map. The user cannot edit his/her self unless you explicitly include them in the value. | No | Yes |
| Viewers | People | The list of People who will be Viewers in the User role map. The list of users and groups set in this role will be honored, and the site-wide default will be overridden for this user. If not set, the site-wide default for user visibility will be used to determine who can see this user. | No | Yes |

## a!modifyUserSecurity()

The [Modify User Security smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!modifyUserSecurity**( _group, administrators, editors, viewers, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_Group_

 |

The user that will be updated.

 |
|

`administrators`

 |

_List of User or Group_

 |

List of users or groups that will have administrative privileges on the user.

 |
|

`editors`

 |

_List of User or Group_

 |

The users to add as administrators to this group.

 |
|

`viewers`

 |

_List of User or Group_

 |

The users to add as administrators to this group.

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

## Running the Smart Service Against Multiple Users

In order to update multiple users, use a rule defined as `user(getdistinctusers(topeople(ri!gr)),"username")` where `ri!gr` is the group containing the users you want to modify to get the list of all usernames to MNI over.

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