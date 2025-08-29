---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_listviewitem.html
original_path: fnc_system_a_listviewitem.html
version: "25.3"
title: "a!listViewItem() Function"
page_id: "fnc_system_a_listviewitem"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!listViewItem() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!listViewItem**( _title, details, image, timestamp_ )

Creates a value of type ListViewItem for use with record type definitions.

**See also:** [Create a Feed-Style Record List](record-list.html#feed-style-record-list), [ListViewItem](Appian_Data_Types.html#listviewitem)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`title`

 |

_Text_

 |

The name or short text description of the item.

 |
|

`details`

 |

_Text_

 |

A longer text description of the item.

 |
|

`image`

 |

_Document or User_

 |

The image to appear in the record list next to each item. Value must be entered as an expression. If left null or empty, the first two letters of the record title display. For image file types, a thumbnail of the document displays. For user values, the user's avatar displays.

 |
|

`timestamp`

 |

_Date and Time_

 |

The creation or modification timestamp of the item.

 |

## Returns

ListViewItem

## Examples

**Note:**  This examples use the Employee record type for the purpose of illustration only. If you copy and paste the expression below into the Expression Rule Interface, it will not evaluate in your Test Rules interface. Use it as a reference only.

```
1
2
3
4
5
6
a!listViewItem(
  title: rv!record[recordType!Customer.fields.firstname] & " " & rv!record[recordType!Customer.fields.lastname],
  details: rv!record[recordType!Customer.fields.title] & " | " & rv!record[recordType!Customer.fields.department] & " | " & rv!record[recordType!Customer.fields.phonenumber],
    image: rule!getCustomerImage(rv!record[recordType!Customer.fields.imageId]),
  timestamp: "Start date: " & rv!record[recordType!Customer.fields.startdate],
)
```

When this function is used in a feed-style record list, it appears like this:

![listviewitem-result](images/listviewitem-result.png)

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