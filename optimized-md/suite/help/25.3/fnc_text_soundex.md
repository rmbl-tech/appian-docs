---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_soundex.html
original_path: fnc_text_soundex.html
version: "25.3"
title: "soundex() Function"
page_id: "fnc_text_soundex"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# soundex() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Supports US English text only.

## Function

**soundex**( _text_ )

Returns the soundex code, used to render similar sounding names via phonetic similarities into identical four (4) character codes.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be converted.

 |

## Returns

Text

## Usage considerations

### Understanding results

The soundex code is all uppercase. The first character is retained. From the remainder, vowels are dropped.

Repeated letters are made into single letters.

"BFPV" are coded as "1", "CGJKQSXZ"\] as "2","DT" as "3", "L" as "4", "MN" as "5", and "R" as "6" and unfilled characters are "0". For example, "Sullivan" and "Suliban" are both "S415". "Smith" and "Smythe" are both "S530".

## Examples

`soundex("John Smith")` returns `J525`

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