---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_replaceb.html
original_path: fnc_text_replaceb.html
version: "25.3"
title: "replaceb() Function"
page_id: "fnc_text_replaceb"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# replaceb() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**replaceb**( _old\_text, start\_num, num\_chars, new\_text_ )

Replaces a piece of the specified text with new text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`old_text`

 |

_Text_

 |

The original text before replacement.

 |
|

`start_num`

 |

_Number_

 |

The positional index in bytes of the first byte of the substring to be replaced.

 |
|

`num_chars`

 |

_Number_

 |

The length in bytes of the substring to be replaced.

 |
|

`new_text`

 |

_Text_

 |

The text that will be inserted into the old text in place of the extricated substring.

 |

## Returns

Text

## Usage considerations

The first byte of the entire _text_ value is considered to have an index = 1.

## Examples

`replaceb("oldtext",1,3,"new")` returns `newtext`

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