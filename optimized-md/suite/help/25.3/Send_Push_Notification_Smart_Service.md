---
source_url: https://docs.appian.com/suite/help/25.3/Send_Push_Notification_Smart_Service.html
original_path: Send_Push_Notification_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Send Push Notification Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Send Push Notification smart service is used to send [notifications](Notifications.html#mobile) to one or more [Appian Mobile](Appian_for_Mobile_Devices.html) application users. You can specify a title, a message, and a [link](SAIL_Components.html#link-types) to open when users tap on the notification.

**Note:**  Mobile push notifications are only available on Appian Cloud and are encrypted end-to-end.

### Properties

-   **Category**: Communication

-   **Icon**: ![Send Push Canvas Smart Service icon](images/Smart_Service_Icons/Send_Push_Notification.png)

-   **Assignment Options**: Unattended

See also: [Smart Services](Smart_Services.html)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Recipients | User Or Group | Recipients of the push notification. Even if users are included multiple times, they receive a single notification. | Yes | Yes |
| Title | Text | The title to display in the notification. The title text is truncated starting at 49 characters on some devices. | Yes | No |
| Body | Text | The message to display below the title. The body text is truncated starting at 140 characters on some devices. | No | No |
| Link | Link | The link to open when the user taps on the notification. Supported link types are [a!newsEntryLink()](News_Entry_Link_Component.html), [a!processTaskLink()](Process_Task_Link_Component.html), [a!recordLink()](Record_Link_Component.html), [a!reportLink()](Report_Link_Component.html), and [a!userRecordLink()](User_Record_Link_Component.html). | Yes | No |

## Exceptions

An exception is thrown which pauses the process at this node if:

-   Invalid expression specified in the `Recipients`, `Title`, `Body`, or `Link` fields
-   Any of the required fields cannot be resolved (expression evaluates to `null` or `empty`)
-   An unsupported link type is specified

## a!sendPushNotification()

Sends a push notification with the specified title, body, and link to one or more Appian Mobile application users. This function will only execute inside a `saveInto`.

### Syntax

**a!sendPushNotification**( _recipients, title, body, link, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recipients`

 |

_User or Group_

 |

List of users and/or groups who are the intended recipients of the push notification.

 |
|

`title`

 |

_Text_

 |

The title to display in the notification.

 |
|

`body`

 |

_Text_

 |

The message to display in the notification below the title.

 |
|

`link`

 |

_Link_

 |

The link to open when the user taps on the notification. Supported link types include [a!newsEntryLink()](News_Entry_Link_Component.html), [a!processTaskLink()](Process_Task_Link_Component.html), [a!recordLink()](Record_Link_Component.html), [a!reportLink()](Report_Link_Component.html), and [a!userRecordLink()](User_Record_Link_Component.html).

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

**Note:**  The maximum number of people that a push notification is sent to is defaulted to 100. You can adjust this from the [maximum notification recipients](Post-Install_Configurations.html#maximum-notification-recipients) setting.

### Example

_Copy and paste an example into an Appian Expression Editor to experiment with it._

Replace `FIELD_WORKERS`, `Record Type`, and `Record Identifier` for your application. User(s) in the `FIELD_WORKERS` group need to have the server account configured on the Appian Mobile iOS or Android app and be previously logged in to receive the push notification.

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
{
  a!buttonArrayLayout(
    buttons: {
      a!buttonWidget(
        label: "Send Push Notification",
        style: "OUTLINE",
        saveInto: {
          a!sendPushNotification(
            recipients: cons!FIELD_WORKERS,
            title: "New Inspection",
            body: "Perform Inspection for Mr. Ragnar Lothbrok",
            link: a!recordLink(
              recordType: 'recordType!{687c7860-2c7c-4e19-8d1f-c2104295cce4}Home Inspection',
              identifier: "1"
            )
          )
        }
      )
    },
    align: "START"
  )
}
```

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
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...