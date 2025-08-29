---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_keyval.html
original_path: fnc_text_keyval.html
version: "25.3"
title: "keyval() Function"
page_id: "fnc_text_keyval"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# keyval() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**keyval**( _text, keys, separators, delimiters_ )

Returns the value(s) associated with the given key(s). This function performs the reverse of insertkeyval() function.

**See also**: [insertkeyval()](fnc_text_insertkeyval.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to parse.

 |
|

`keys`

 |

_Text Array_

 |

Array of keys.

 |
|

`separators`

 |

_Text Array_

 |

Array of key-value separators.

 |
|

`delimiters`

 |

_Text Array_

 |

Array of delimiters specifying the end of a value.

 |

## Returns

Text Array

## Usage considerations

### Using the separators parameter

If a single _separator_ value is passed, it is used for parsing all key-value pairs; if multiple separators are specified, the number of separators must match the number of keys.

### Using the delimiter parameter

If a single _delimiter_ value is passed, it is used for parsing all key-value pairs; if multiple delimiters are specified, the number of delimiters must match the number of keys.

## Examples

`keyval("hello=alpha][goodbye=beta]", {"hello"}, "=", "]")` returns `alpha`

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