---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_split.html
original_path: fnc_text_split.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# split() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**split**( _text, separator_ )

Splits text into a list of text elements, delimited by the text specified in the separator.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be split.

 |
|

`separator`

 |

_Text_

 |

The text delimiter by which the text will be separated.

 |

## Returns

Text

## Examples

#### Splitting text into text elements

```
1
split("John Smith", "m")
```

Returns `{ "John S", "ith" }`.

#### Splitting a sentence into words

```
1
split("A sentence has words separated by spaces.", " ")
```

Returns `{ "A", "sentence", "has", "words", "separated", "by", "spaces." }`.

#### Splitting raw data into record fields

```
1
2
3
4
5
6
7
a!localVariables(
  local!names: "James Cameron; Sofia Coppola",
  a!forEach(
    split(local!names, "; "),
    recordType!Person(Person.name: fv!item)
  )
)
```

Returns `{ [Person name=James Cameron], [Person name=Sofia Coppola] }`.

### Lists

#### Splitting multiple text values

```
1
split({ "carol@sample.com", "jeremy@sample.com" }, "@")
```

Returns `{ "carol", "sample.com", "jeremy", "sample.com" }`. All items in the list are processed together.

#### Splitting with multiple separators

```
1
split("REDXbluexGREEN", { "x", "X" })
```

Returns `{ "RED", "blue", "GREEN" }`. All separators in the list are used to separate elements. Any matching separator results in a split regardless of their order in the _text_ or the _separator_ list.

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