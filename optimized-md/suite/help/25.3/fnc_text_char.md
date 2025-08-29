---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_char.html
original_path: fnc_text_char.html
version: "25.3"
title: "char() Function"
page_id: "fnc_text_char"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# char() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**char**( _number_ )

Converts a number into its Unicode character equivalent.

**See also**: [unicode.org](https://www.unicode.org/charts/)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Number_

 |

The Unicode decimal value of the character to return.

 |

## Returns

Text

## Examples

#### Converting Unicode numbers to characters

```
1
char(65)
```

Returns `A`.

#### Transforming characters by an offset

```
1
char(code("ABC") + 4)
```

Returns `{ "E", "F", "G" }`.

#### Using control characters in text

```
1
2
3
4
a!textField(
  readOnly: true,
  value: "Above" & char(10) & char(10) & "below"
)
```

Returns a text component including newline characters between `Above` and `below`.

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