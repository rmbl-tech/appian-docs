---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_len.html
original_path: fnc_text_len.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# len() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**len**( _text_ )

Returns the length in characters of the text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text, the length of which will be returned.

 |

## Returns

Number

## Examples

```
1
len("boston")
```

Returns `6`.

```
1
len("New York", "San Francisco")
```

Returns `{8, 13}`.

```
1
len({"New York", "San Francisco"})
```

Returns `{8, 13}`. Items in a list are evaluated individually and returned as a list of numbers.

```
1
len(1000, 1000000, "ABC")
```

Returns `{4, 7, 3}`.

```
1
len(null, "", " ")
```

Returns `{0, 0, 1}`.

```
1
len(true(), false())
```

Returns `{4, 5}`.

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