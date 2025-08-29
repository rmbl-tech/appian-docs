---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_jsonpath.html
original_path: fnc_system_a_jsonpath.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!jsonPath() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!jsonPath**( _value, expression_ )

Finds information in a JSON string. JSONPath is used to navigate through elements and attributes in a JSON string.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Text_

 |

The JSON text representing the value to be queried.

 |
|

`expression`

 |

_Text_

 |

The JSONPath query to be run against the JSON object.

 |

## Returns

Text

## Usage considerations

### Using the expression parameter

The below table defines the syntax for the _expression_ parameter of `a!jsonPath()`.

| Expression | Description |
| --- | --- |
| $ | the root object/element |
| @ | the current object/element |
| . or \[\] | child operator |
| .. | recursive descent |
| \* | wildcard. All objects/elements regardless their names. |
| \[\] | subscript operator |
| \[,\] | alternate names or array indices as a set. |
| \[start:end:step\] | array slice operator |
| ?() | applies a filter (script) expression |
| () | script expression, using the underlying script engine. |

**Note:**  Array indices in JSONPath start with zero, not one.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
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