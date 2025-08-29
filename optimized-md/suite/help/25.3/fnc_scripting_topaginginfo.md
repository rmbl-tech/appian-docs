---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_topaginginfo.html
original_path: fnc_scripting_topaginginfo.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# topaginginfo() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**topaginginfo**( _startIndex, batchSize_ )

Returns a PagingInfo value for use with the `todatasubset()` function.

**See also**: [todatasubset()](fnc_scripting_todatasubset.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`startIndex`

 |

_Integer_

 |

The value for the startIndex field.

 |
|

`batchSize`

 |

_Integer_

 |

The value for the batchSize field.

 |

## Returns

PagingInfo

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`topaginginfo(1, 25)` returns `[startIndex=1, batchSize=25]`

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