---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_toemailaddress.html
original_path: fnc_conversion_toemailaddress.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toemailaddress() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toemailaddress**( _value_ )

Converts a value to email address.

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

Email Address

## Usage considerations

### Using toemailaddress() with arrays

When operating on arrays, it is not necessary to use `apply` with `toemailaddress`. If multiple parameters are passed, or one parameter is an Array, `toemailaddress` will return an Email Address Array.

### Understanding results

Can convert an email address Text.

The output can be converted to a value with an Email Recipient type for use in the **To:**, **Cc:**, or **Bcc:** field in the Setup tab of the Send E-Mail Smart Service.

## Examples

`toemailaddress("john.doe@company.com")` returns `john.doe@company.com` as an Email Address type.

`toemailaddress("john.doe@company.com","jane.doe@company.com")` and `toemailaddress({"john.doe@company.com","jane.doe@company.com"})` both return `{john.doe@company.com,jane.doe@company.com}` as a List of Email Address type.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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