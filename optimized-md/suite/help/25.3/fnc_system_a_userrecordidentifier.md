---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_userrecordidentifier.html
original_path: fnc_system_a_userrecordidentifier.html
version: "25.3"
title: "a!userRecordIdentifier() Function"
page_id: "fnc_system_a_userrecordidentifier"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!userRecordIdentifier() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!userRecordIdentifier**( _users_ )

Returns a value of type Record Identifier for each user passed to the function.

**See also:** [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html), [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`users`

 |

_User Array_

 |

The array of users for whom record identifiers are to be created.

 |

## Returns

Record Identifier Array

## Usage considerations

This function can be used for both active and deactivated users.

The expression will fail to evaluate and an error will occur if the _users_ field contains invalid users.

## Examples

**Note:**  To make the following expression valid, replace `"john.smith"` and `"jane.doe"` with valid usernames in your environment.

`a!userRecordIdentifier(users: {"john.smith", "jane.doe"})` returns an array of two Record Identifier values with the first pointing to John Smith's User record the second pointing to Jane Doe's User record.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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