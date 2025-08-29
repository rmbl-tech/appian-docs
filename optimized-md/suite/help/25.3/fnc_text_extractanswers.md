---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_extractanswers.html
original_path: fnc_text_extractanswers.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# extractanswers() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**extractanswers**( _questions, text_ )

Returns an array of strings that respond to the questions provided. The expected format of the question and answer text is the format returned by `insertquestions()`.

**See also**: [insertquestions()](fnc_text_insertquestions.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`questions`

 |

_Text Array_

 |

Array of questions.

 |
|

`text`

 |

_Text_

 |

Text representing the questions and answers.

 |

## Returns

Text Array

## Examples

`extractanswers({"What is your name?", "What is your age?"}, "1. What is your name? Ben 2. What is your age? 47 <<<###>>>")` returns `{"Ben", "47"}`

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