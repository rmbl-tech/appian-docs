---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_exact.html
original_path: fnc_text_exact.html
version: "25.3"
title: "exact() Function"
page_id: "fnc_text_exact"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# exact() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**exact**( _text1, text2_ )

Compares two given text strings in a case-sensitive manner, returning true only if they are exactly the same.

**See also**: [Comparison Operators](parts-of-an-expression.html#comparison-operators)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text1`

 |

_Text_

 |

One of two strings that will be compared.

 |
|

`text2`

 |

_Text_

 |

The other string that will be compared.

 |

## Returns

Boolean

## Usage considerations

When comparing text strings, using this function over the `=` operator improves performance. The `=` operator, however, is case-insensitive. Only use the `exact()` function when case-insensitivity is not a requirement.

## Examples

### Text

#### Comparing exact copies

```
1
exact("HELLO", "HELLO")
```

Returns `true`.

#### Comparing text that differs only by case

```
1
exact("Hello", "HELLO")
```

Returns `false`.

#### Comparing different text

```
1
exact("Hello", "World")
```

Returns `false`.

### Other Types

#### Comparing non-text values

```
1
exact(123, 123)
```

Returns `true`. Values of other scalar types are compared in the same way as `=`.

#### Comparing text from a dictionary without casting

```
1
2
3
4
exact(
  "Hello",
  { dictionaryKey: "Hello" }.dictionaryKey
)
```

Returns `false`. Cast dictionary values to text before comparing using the `exact()` function.

#### Comparing text from a map or CDT

```
1
2
3
4
exact(
  "Hello",
  a!map( mapKey: "Hello" ).mapKey
)
```

Returns `true`. Map values do not need to be cast before comparing.

#### Comparing lists and single values

```
1
exact({ "Hello" }, "Hello")
```

Returns `false`. Lists are not considered equal to scalar values.

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