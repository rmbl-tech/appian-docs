---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_recordfilterdaterange_20r2.html
original_path: fnc_system_a_recordfilterdaterange_20r2.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordFilterDateRange\_20r2 Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!recordFilterDateRange() Function](/suite/help/25.3/fnc_system_a_recordfilterdaterange.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_system_a_recordfilterdaterange.html#Old_Version)

This function creates a [Facet type object](Appian_Data_Types.html#facet), and is used within a [Record Type Object](Record_Type_Object.html) for creating and configuring date range user filters. See [Expression-Based User Filters](filter-the-record-list.html#expression-user-filter-configuration) for common uses.

## Function

**a!recordFilterDateRange\_20r2**( _name, field, defaultFrom, defaultTo, isVisible_ )

Creates a user filter for a record list. This is an older version of the `a!recordFilterDateRange()` function, which supports record type field references.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The name of the user filter that displays to end users.

 |
|

`field`

 |

_Text_

 |

The name of the field the filter will apply to.

 |
|

`defaultFrom`

 |

_Text_

 |

Determines which, if any, starting date is applied when a record list first loads.

 |
|

`defaultTo`

 |

_Text_

 |

Determines which, if any, ending date is applied when a record list first loads.

 |
|

`isVisible`

 |

_Boolean_

 |

Determines whether the filter is visible to the user at runtime. Default is true.

 |

## Returns

[Facet](Appian_Data_Types.html#facet)

## Example

```
1
2
3
4
5
6
7
=a!recordFilterDateRange_20r2(
   name: "Hire Date",
   field: "hireDate",
   defaultFrom: "today()",
   defaultTo: "today() + 365",
   isVisible: true
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...