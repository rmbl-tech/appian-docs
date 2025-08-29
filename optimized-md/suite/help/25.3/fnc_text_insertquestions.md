---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_insertquestions.html
original_path: fnc_text_insertquestions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# insertquestions() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**insertquestions**( _questions_ )

Returns an array of questions with a ==EOQ== at the end, returning a single string that can be parsed with `extractanswers()` function after it has been filled in by a user.

**See also**: [extractanswers()](fnc_text_extractanswers.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`questions`

 |

_Text Array_

 |

Array of strings to be created as questions.

 |

## Returns

Text Array

## Examples

`insertquestions({"What is your name?", "What is your age?"})` returns `1. What is your name? 2. What is your age? <<<===>>>`

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