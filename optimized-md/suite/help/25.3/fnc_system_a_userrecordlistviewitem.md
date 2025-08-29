---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_userrecordlistviewitem.html
original_path: fnc_system_a_userrecordlistviewitem.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!userRecordListViewItem() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!userRecordListViewItem**( _record_ )

Returns the default list view item for the User record type. For use on the User record type only.

**See also:** [Modify the User Record Type](Configure_Tempo_Users.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`record`

 |

_Any Type_

 |

The reference to the current User record, provided via `rv!record`.

 |

## Returns

ListViewItem

## Usage considerations

This function defines a list view for the User record type that displays the following information for each user in the [record list](Configure_Tempo_Users.html#modify-the-record-list): first and last names, email, office and mobile phone numbers.

See [Modify the User Record Type](Configure_Tempo_Users.html) to learn how to edit the record list and add other configurations.

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
| [a!userRecordListViewItem\_22r3](/suite/help/25.3/fnc_system_a_userrecordlistviewitem_22r3.html) |
The latest version of this function is compatible with the [updated User record type](Configure_Tempo_Users.html#update-the-user-record-type), which has data sync enabled.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...