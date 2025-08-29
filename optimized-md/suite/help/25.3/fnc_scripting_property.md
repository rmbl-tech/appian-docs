---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_property.html
original_path: fnc_scripting_property.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# property() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**property**( _bean, nameOfProperty, valueIfMissing_ )

This function extracts a bean's property under a given key name (the `nameOfProperty` parameter).

**See also**: [index()](fnc_array_index.html): This function acts as an alias to the `property()` function especially when applied over custom data types.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`bean`

 |

_Bean_

 |

Bean to retrieve the property from.

 |
|

`nameOfProperty`

 |

_Text_

 |

Property to retrieve from the bean.

 |
|

`valueIfMissing`

 |

_Any Type_

 |

Default value to return if the property is not present in the bean.

 |

## Returns

Any Type

## Usage considerations

If the named property is not present, then the value for the _valueIfMissing_ parameter is returned instead.

The value type of the _valueIfMissing_ parameter should be the same type as the expected property’s type.

For example, `property(msg!properties,"someStringProperty","Missing Text")` returns `"Missing Text"` if `someStringProperty` does not exist.

When the _bean_ is a dictionary, if the _nameOfProperty_ is not found in the dictionary, the _valueIfMissing_ will be ignored and a null value will be returned. Consider using a [map](fnc_system_map.html) instead of a dictionary.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html#create) to see how this works._

`property(msg!properties,"name","no name was sent")` returns `no name was sent` when the `name` property is not received in a message.

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