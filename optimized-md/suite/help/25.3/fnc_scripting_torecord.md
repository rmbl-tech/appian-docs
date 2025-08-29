---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_torecord.html
original_path: fnc_scripting_torecord.html
version: "25.3"
title: "torecord() Function"
page_id: "fnc_scripting_torecord"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# torecord() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**torecord**( _xml, type_ )

Converts XML to a value of the given data type.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`xml`

 |

_Text_

 |

The XML text representing the Value to convert.

 |
|

`type`

 |

_Any Type_

 |

Enter a variable (process variable or activity class) that has the same data type that you want the XML to be converted into.

 |

## Returns

Any Type

## Usage considerations

The XML given for the _xml_ parameter must be valid for the XSD that was used to create the target data type.

Whether the input XML needs to have a defined namespace depends on whether an `elementFormDefault` attribute was set with a value of "qualified" in the `schema` tag of the XSD. If no `elementFormDefault` attribute was given, the default is "unqualified" and the given XML does not need to have a defined namespace. CDTs created using the Data Type Designer do not have an `elementFormDefault` attribute, and therefore do not require the namespace to be defined on the given XML.

For example, if the `pv!nameXMLData` variable contains the following data, it will transform correctly into the CDT used as the data type for `pv!PersonName`:

```
1
2
3
4
<PersonName>
	<First>Edward</First>
	<Last>Denton</Last>
</PersonName>
```

If the CDT used as the data type for `pv!PersonName` was created with the `targetNamespace` set to `http://www.bpmbasics.com/Person` and `elementFormDefault` set to "qualified", the following XML must be used:

```
1
2
3
4
<PersonName xmlns="http://www.bpmbasics.com/Person">
	<First>Edward</First>
	<Last>Denton</Last>
</PersonName>
```

— OR —

```
1
2
3
4
<p:PersonName xmlns:p="http://www.bpmbasics.com/Person">
	<p:First>Edward</p:First>
	<p:Last>Denton</p:Last>
</p:PersonName>
```

The result of this function is not automatically saved into the process variable passed in the _type_ parameter. You must store the result of this function into a process variable.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`torecord(pv!nameXMLData,pv!PersonName)` converts `pv!nameXMLData` to the same data type as `pv!PersonName`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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