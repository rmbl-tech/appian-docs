---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_find.html
original_path: fnc_text_find.html
version: "25.3"
title: "find() Function"
page_id: "fnc_text_find"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# find() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**find**( _search\_text, within\_text, start\_num_ )

Searches the text for a particular substring, returning the positional index of the first character of the first match.

**See also**: [search()](fnc_text_search.html), [searchb()](fnc_text_searchb.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`search_text`

 |

_Text_

 |

The text that will be searched for.

 |
|

`within_text`

 |

_Text_

 |

The text that will be searched in.

 |
|

`start_num`

 |

_Number_

 |

The index of the first character within the _within\_text_ value from which to start searching. 1 by default.

 |

## Returns

Number

## Examples

#### Searching for a substring within a string

```
1
find("to", "boston")
```

Returns `4`.

#### Searching for a substring not contained in a string

```
1
find("ne", "boston")
```

Returns `0`.

#### Searching with a start index

```
1
find("o", "boston", 4)
```

Returns `5`. The function starts searching the string at index 4.

### Lists

#### Searching multiple strings at once

```
1
find({ "t", "i" }, { "boston", "paris" })
```

Returns `{ 4, 4 }`.

#### Searching with multiple start indices

```
1
find("o", "boston", { 1, 3 })
```

Returns `{ 2, 5 }`. The search is repeated at each start index in the list.

### Edge cases

#### Empty list parameters

```
1
find({}, "boston")
```

Returns `{}`.

#### Empty string start\_num

```
1
find("o", "boston", "")
```

Returns `0`. The function always returns 0 when given an empty string _start\_num_.

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