---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_isnotnullorempty.html
original_path: fnc_informational_isnotnullorempty.html
version: "25.3"
title: "a!isNotNullOrEmpty() Function"
page_id: "fnc_informational_isnotnullorempty"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isNotNullOrEmpty() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

Returns `false` if the value is null, an empty string, or an empty list. Otherwise returns `true`.

**See also:**

-   [if()](fnc_logical_if.html)
-   [isnull()](fnc_informational_isnull.html)
-   [not()](fnc_logical_not.html)
-   [a!isNullOrEmpty()](fnc_informational_isnullorempty.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to be checked.

 |

## Returns

Boolean

## Usage considerations

### Replace if() and isnull() expressions with a!isNotNullOrEmpty

This function is similar to the behavior of using `if()` and `isnull()` in combination to check for the absence of a value or an empty string or list.

For example, you could create an expression using `if()` and `isnull()`:

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
not(
    or(
        or(tostring(ri!input) = "", isnull(ri!input)),
        if(isnull(ri!input),
            true,
            length(a!flatten(ri!input)) = 0
            )
        )
    )
```

Or you could use `a!isNotNullOrEmpty()`, which requires fewer lines of code:

```
1
a!isNotNullOrEmpty(ri!input)
```

## Examples

```
1
a!isNotNullOrEmpty(togroup(null))
```

Returns `false`.

```
1
a!isNotNullOrEmpty("")
```

Returns `false`.

```
1
a!isNotNullOrEmpty({1,2,3,4})
```

Returns `true`.

```
1
a!isNotNullOrEmpty(cast(recordType!Address, null)
```

Returns `false`.

```
1
a!isNotNullOrEmpty(recordType!Address)
```

Returns `true`.

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