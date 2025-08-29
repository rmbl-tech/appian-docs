---
source_url: https://docs.appian.com/suite/help/25.3/Rename_Users_Smart_Service.html
original_path: Rename_Users_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rename Users Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Rename Users Node allows you to rename existing users on the system while executing your process application. Users will be notified via email when their usernames have changed, and all username changes are tracked in the [User Management Log](Logging.html#user-management).

Note that during a bulk rename, if any one username change fails, the node will pause by exception and none of the given usernames will be changed. Additionally, it is not possible for a user to rename themselves.

### Permissions needed

Only system administrators can run this smart service.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Change_User_Type.png)

-   **Assignment Options**: Attended/Unattended

### Recommendations

It is recommended to use the smart service or the related a!renameUsers() expression function to update usernames, instead of directly through the Admin Console.

This is especially critical for scenarios where usernames are stored in an external system, including a business data source, where no other system is responsible for updating those usernames during a rename. It is important to build workflows that can both update the username within Appian and properly call for updates to external data sources, as well, in order to avoid service disruptions in existing applications.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Old Usernames | Text | The current username to be changed. A username must match an existing username, including case.

For example, if `john.doe` exists, you cannot enter `JOHN.doe`. | Yes | Yes |
| New Usernames | Text | The new username that will take effect. A username can only contain letters, numbers, and the following special characters: `@ . _ - '`. A username cannot match an existing username, regardless of case. For example, if `john.doe` already exists, you cannot enter `JOHN.doe`. | Yes | Yes |

##### Executing Bulk Renames

In order to successfully execute a bulk rename, two equal-sized lists of users must be be passed into the two node inputs. The first item in the first list, for old usernames, corresponds to the first item in the second list, for new usernames. If any one username is invalid in either of the lists, the ode will pause by exception and none of the given usernames will be changed.

See also: [View and Update Users](User_Management.html#view-and-update-users)

#### Node outputs

None

## a!renameUsers()

The [Rename Users smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!renameUsers**( _oldUsernames, newUsernames, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`oldUsernames`

 |

_List of Text String_

 |

The current username of the user.

 |
|

`newUsernames`

 |

_List of Text String_

 |

The new username of the user.

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

### Usage considerations

During a bulk rename, if any one username change fails, the expression will fail and none of the given usernames will be changed. Additionally, it is not possible for a user to rename themselves.

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