---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_toemailrecipient.html
original_path: fnc_conversion_toemailrecipient.html
version: "25.3"
title: "toemailrecipient() Function"
page_id: "fnc_conversion_toemailrecipient"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toemailrecipient() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toemailrecipient**( _value_ )

Converts a value to email recipient.

**See also**: [Send E-Mail Smart Service](Send_Email_Smart_Service.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Email Recipient

## Usage considerations

### Acceptable input

Accepts values of type email address, user, and group.

### Understanding results

Output can be used in the **To:**, **Cc:**, or **Bcc:** fields in the Setup tab of the Send E-Mail Smart Service.

## Examples

`toemailrecipient(togroup(1))` returns `[Group:1]` as an Email Recipient type.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...