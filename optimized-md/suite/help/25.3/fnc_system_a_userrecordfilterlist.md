---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_userrecordfilterlist.html
original_path: fnc_system_a_userrecordfilterlist.html
version: "25.3"
title: "a!userRecordFilterList() Function"
page_id: "fnc_system_a_userrecordfilterlist"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!userRecordFilterList() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!userRecordFilterList()**

Returns the default user filters for the User record type. For use in the User record type only.

**See also:** [Modify the User Record Type](Configure_Tempo_Users.html)

## Returns

Facet Array

## Usage considerations

This function defines a "Status" user filter with options "Active" and "Inactive", with "Active" selected by default.

See [Modify the User Record Type](Configure_Tempo_Users.html) to learn how to add more user filters and add other configurations.

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
| [a!userRecordFilterList\_22r3](/suite/help/25.3/fnc_system_a_userrecordfilterlist_22r3.html) |
The latest version of this function is compatible with the [updated User record type](Configure_Tempo_Users.html#update-the-user-record-type), which has data sync enabled.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...