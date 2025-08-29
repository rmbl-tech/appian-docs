---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_urlforrecord.html
original_path: fnc_scripting_urlforrecord.html
version: "25.3"
title: "a!urlForRecord() Function"
page_id: "fnc_scripting_urlforrecord"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!urlForRecord() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!urlForRecord**( _recordType, targetLocation, identifier, view_ )

Returns the URL for one or more records in a site page or Tempo. Can also return the URL for a record list in Tempo.

**See also**:

-   [Record Type](Appian_Data_Types.html#record-type)
-   [Link Component](Link_Component.html)
-   [Database-Backed Record Type Tutorial](Records_Tutorial.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

A reference to a record type. Reference the record type using the recordType! domain or a constant that points to a record type.

 |
|

`targetLocation`

 |

_Any Type_

 |

The location where the record should open, which can be either a site page or Tempo. To reference a [site page](reference-sites.html), use the following structure: `site![site name].pages.[page web address identifier]`. Valid values: `TEMPO` or a reference to a site page. This parameter is required.

 |
|

`identifier`

 |

_Text_

 |

One or more record identifiers. This is typically the primary key field. If the target location is a site page, at least one identifier is required. If the target location is "TEMPO" and no identifier is provided, the URL for the record list will be returned.

 |
|

`view`

 |

_text_

 |

The URL stub of the record view to open for the record. Default is "summary".

 |

## Returns

Text Array

## Usage considerations

### Required permissions

-   The user executing the function must have at least viewer rights to the record type or the expression will fail and an error will occur. They do not need to have viewer rights to the record(s).
-   Links may be clicked by everyone; however, [security settings](sites_object.html#security) determine what can be seen. If a user tries to open a URL without having at least viewer rights to the record or record type in that URL, they will see an error.

### Using the recordType parameter

-   You must reference a record type using the recordType! domain or a constant that points to a record type.
-   If the record type for the _recordType_ value does not exist, the expression will fail and an error will occur.

### Using the identifier parameter

-   Depending on the source of your record type, the value you reference in the _identifier_ parameter will differ:
    -   For database-backed record types, identifier is the primary key in the source table.
    -   For process-backed record types, identifier is the ID of the process instance.
    -   For service-backed record types, identifier is the value of the field returned by the source expression and configured as the primary key.
-   If the _identifier_ value is null or empty, the function returns the URL for the record list view of the _recordType_ value record type.

### Using the targetLocation parameter

-   Avoid opening links in Tempo unless your users are accustomed to using it. Adjust the _targetLocation_ parameter so that it opens a site page that is predictable and familiar to your users.

## Examples

These examples are designed to illustrate how to use the `a!urlForRecord()` function in the [Expression Rule Interface](Expression_Rules.html).

Record type and site object references are specific to each environment. If you copy and paste these examples into the Expression Rule interface, they will not evaluate in your Test Rules interface. Use them as a reference only.

### URL for a single record that opens in a specific site page

```
1
2
3
4
5
a!urlForRecord(
  recordType: recordType!Cases,
  identifier: 1,
  targetLocation: site!caseManagemt.cases
)
```

Returns

```
1
"https://home.appiancloud.com/suite/sites/case-management/page/cases/records/item/lIBBmtkdu05df/view/summary"
```

If the page is in a page group, the url includes the page group.

```
1
"https://home.appiancloud.com/suite/sites/case-management/group/cases/page/openCases/records/item/lIBBmtkdu05df/view/summary"
```

### URL for multiple records that open in a specific site page

```
1
2
3
4
5
a!urlForRecord(
  recordType: recordType!Cases,
  identifier: {1,2},
  targetLocation: site!caseManagemt.openCases
)
```

Returns

```
1
2
3
4
{
  "https://home.appiancloud.com/suite/sites/case-management/page/openCases/records/item/lIBBmtkdu05df/view/summary",
  "https://home.appiancloud.com/suite/sites/case-management/page/openCases/records/item/lIBBmtkdu05df/view/summary"
}
```

### URL for a single record: Tempo

```
1
2
3
4
5
a!urlForRecord(
  recordType: recordType!Cases,
  identifier: 1,
  targetLocation: "TEMPO"
)
```

Returns

```
1
"https://home.appiancloud.com/suite/tempo/records/item/lIBBmtkdu05df/view/summary"
```

### URL with a NULL identifier

```
1
2
3
4
5
6
a!urlForRecord(
  recordType: recordType!Cases,
  identifier: null,
  targetLocation: "TEMPO"

)
```

Returns

```
1
"https://home.appiancloud.com/suite/tempo/records/type/enV6dA/view/all"
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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [urlForRecord\_23r4](/suite/help/25.3/fnc_scripting_urlforrecord_23r4.html) |
You can now specify a site page to open your record when using both a!urlForRecord and a!recordLink.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...