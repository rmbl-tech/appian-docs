---
source_url: https://docs.appian.com/suite/help/25.3/Add_User_Smart_Service.html
original_path: Add_User_Smart_Service.html
version: "25.3"
title: "Create User Smart Service"
page_id: "Add_User_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create User Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Create User Node allows you to create new users on the system while executing your process application.

A temporary password will be automatically generated and sent to the email address provided, unless the **Send Account Creation Email** input is set to false. The temporary password never expires and can only be used once. The user is forced to change the password when they log in for the first time.

The password parameter has been deprecated in favor of using auto-generated passwords. Existing processes which use the password parameter will continue to be supported.

### Permissions needed

Only system administrators can run this smart service.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Add_User.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Username | Text | The username of the new user.
A username can only contain letters, numbers, and the following special characters: `@ . _ - '` .
It must not match an existing username regardless of case. For example, if `john.doe` already exists, you cannot enter `JOHN.doe` | Yes | No |
| First Name | Text | The first name of the new user. | Yes | No |
| Nickname | Text | The nickname of the new user. | No | No |
| Middle Name | Text | The middle name of the new user. | No | No |
| Last Name | Text | The last name of the new user. | Yes | No |
| Email | Text | The email of the new user. | Yes | No |
| Send Account Creation Email | Boolean | If true (default), an account creation email with a temporary password will be sent to the new user.
If you are using [external authentication](Authentication.html#external-authentication-versus-local-authentication), such as LDAP, we recommend setting this input to false. | Yes | No |

See also: [Creating a New User](User_Management.html#create-a-new-user)

#### Node outputs

The node returns a user object for the new user added to the system.

## a!createUser()

The [Create User smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!createUser**( _username, firstName, nickname, middleName, lastName, email, sendAccountCreationEmail, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_Text_

 |

The username of the new user.

 |
|

`firstName`

 |

_Text_

 |

The first name of the new user.

 |
|

`nickname`

 |

_Text_

 |

The nickname of the new user.

 |
|

`middleName`

 |

_Text_

 |

The middle name of the new user.

 |
|

`lastName`

 |

_Text_

 |

The last name of the new user.

 |
|

`email`

 |

_Text_

 |

The email address of the new user.

 |
|

`sendAccountCreationEmail`

 |

_Boolean_

 |

If true (default), an email with a temporary password will be sent to the new user.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!user` function variable (Any Type) is available to specify the user that was created. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

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