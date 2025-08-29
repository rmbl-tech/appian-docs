---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_like.html
original_path: fnc_text_like.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# like() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**like**( _text, with_ )

Tests whether a string of text is like a given pattern.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

Text to match against pattern.

 |
|

`with`

 |

_Text_

 |

Pattern, where ? is any character, \* is zero or more characters, \[characters\] is any listed character.

 |

## Returns

Boolean

## Usage considerations

### Using wildcards

_with_ accepts the following wildcard characters:

-   **\*** - matches one or more characters (including an empty character). Multiple consecutive asterisks (multiple anything) is invalid input; use just one.
-   **?** - matches any one character. Multiple question marks match the same number of characters.
-   **\[characters\]** - matches one of the enclosed characters.
-   **\[^characters\]** - matches anything but the enclosed characters.
-   **\[number-number\]** - matches a range of numbers created in combination with the enclosed.

#### Wildcard examples

-   b**\***t matches b**e**t; b**ea**t; and b**eas**t.
-   b**?**t matches b**a**t ; and b**e**t; and b**i**t.

-   a**\[cr\]**t matches a**c**t and a**r**t.
-   ab**\[^bc\]** matches ab**d** but not ab**b** nor ab**c**.
-   **\[0-2\]**4 matches **0**4 and **1**4 and **2**4 not **7**4.

## Examples

`like("brian","*ian")` returns `true`

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