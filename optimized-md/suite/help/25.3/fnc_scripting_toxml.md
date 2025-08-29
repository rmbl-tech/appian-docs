---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_toxml.html
original_path: fnc_scripting_toxml.html
version: "25.3"
title: "toxml() Function"
page_id: "fnc_scripting_toxml"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toxml() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toxml**( _value, format, name, namespace_ )

Converts a value to its equivalent XML form.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value or variable (PV, ACP) to be converted to XML.

 |
|

`format`

 |

_Boolean_

 |

Whether or not to format the result. If true, the resultant XML is formatted with line breaks and indenting, otherwise it uses a compact notation. If not given, the result is unformatted XML.

 |
|

`name`

 |

_Text_

 |

The name to use as the root element name in the resultant XML. If not given, the name of the data type of the variable passed as the _value_ parameter is used.

 |
|

`namespace`

 |

_Text_

 |

The namespace to use as the default namespace in the resultant XML. If not given, the namespace of the data type of the variable passed as the value parameter is used.

 |

## Returns

Text

## Usage considerations

This function supports primitive system data types, custom data types, and the following complex system data types: LabelValue, LabelValueTable, PagingInfo, SortInfo, and DataSubset.

The XML structure for Complex System Data Types and Appian objects is not guaranteed to remain the same from release to release.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
toxml(a!paginginfo(startIndex: 1, batchSize: 10))
```

returns

```
1
2
3
4
<a:PagingInfo xmlns:a="http://www.appian.com/ae/types/2009">
 <startIndex>1</startIndex>
 <batchSize>10</batchSize>
</a:PagingInfo>
```

A well-formed XML document has a single root element. When you pass a list into toxml(), you get an XML _snippet_ of multiple elements. To end up with a single-root XML document when passing in a list, use a parent-level xml element.

By wrapping it with a root element, you end up with a well-formed single-root XML document.

```
1
2
3
4
a!localVariables(
  local!data:{​{ id: 1, value: "First value"}, { id: 2, value: "Second Value"}},
  "<root>" & toxml(local!data) & "</root>"
)
```

returns

```
1
2
3
4
<root>
  <a:Dictionary xmlns:a="http://www.appian.com/ae/types/2009" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><id xsi:type="xsd:int">1</id><value xsi:type="xsd:string">First value</value></a:Dictionary>
  <a:Dictionary xmlns:a="http://www.appian.com/ae/types/2009" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><id xsi:type="xsd:int">2</id><value xsi:type="xsd:string">Second Value</value></a:Dictionary>
</root>
```

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