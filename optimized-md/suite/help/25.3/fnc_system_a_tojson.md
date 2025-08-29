---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_tojson.html
original_path: fnc_system_a_tojson.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!toJson() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!toJson**( _value, removeNullOrEmptyFields_ )

Converts a value into a JSON string.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to convert into a JSON string.

 |
|

`removeNullOrEmptyFields`

 |

_Boolean_

 |

Determines whether fields with values that are null, empty strings, or empty arrays are removed from the JSON output. Default: false.

 |

## Usage considerations

### Using the value parameter

The _value_ parameter must be a CDT, a dictionary, a map, a record, or a list.

### Using the removeNullOrEmptyField parameter

The _removeNullOrEmptyFields_ parameter removes all fields with values that are null, empty strings, or empty arrays from the generated JSON request body. This is important for certain web services, such as those that follow the [OData protocol](https://www.odata.org/). Some web services treat fields with null values differently from fields that aren't included in the request body at all. Omitting a field may mean "don't modify the field," while sending a null value for that field would mean "write a null value to the field."

The behavior of _removeNullOrEmptyFields_ can also be leveraged for [integrations](Integration_Object.html) that send a JSON request body by selecting the checkbox labeled **Remove fields with null or empty values from generated JSON**.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!toJson\_17r1](/suite/help/25.3/fnc_system_a_tojson_17r1.html) |
Improved support for datetime values. This removes the need to create a supporting conversion rule.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...