---
source_url: https://docs.appian.com/suite/help/25.3/appian-records-security.html
original_path: appian-records-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Overview of Record Type Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how different security configurations impact an end user's ability to view and interact with your record data.

**Note:**  To view and edit the record type and associated objects in Appian Designer, you must have a [designer role](User_Roles.html#designer-role) and the appropriate [object security](object-security.html).

## Overview

When it comes to securing your enterprise data, Appian provides a layered approach to security so you can ensure that your data is only available to the right users at the right time. This means that each element of your record type needs to be secured: the record type, the records themselves, and the individual record views and actions.

Each layer of security will impact the next. Whether a user has access to the record type will determine if they can see any records, and whether a user can see a record determines if they can see the individual record views and actions.

For example, let’s say you have a Support Case record type containing all submitted support cases. Support engineers need to be able to view and update their assigned cases, and create new cases.

To allow support engineers to accomplish their tasks, they would need the following security configurations:

| Object | Security configuration |
| --- | --- |
| Record type object | **Viewer** permission. |
| Records | Record-level security that allows support engineers to see cases they're assigned to. By default, support engineers can see all cases. |
| Record views | Record view security that allows support engineers to see different record views. By default, support engineers can see the Summary view. |
| Record actions | Record action security that allows support engineers to create new cases and update cases assigned to them. |
| Fields | Field-level security that allows support engineers to see the necessary fields. By default, support engineers can see all fields. |

See the different security pages to learn more:

-   [Record type object security](record-security.html)
-   [Record-level security](record-level-security.html)
-   [Record view security](record-view-security.html)
-   [Record action security](record-action-security.html)
-   [Field-level security](field-level-security.html)

## Workspace settings

In addition to the different security options on the record type, you can also configure workspace settings.

Workspace settings determine whether the record type is available in end-user workspaces, like [Process HQ](processhq.html) and [Tempo](Using_the_Records_Tab.html#tempo).

In Process HQ, you can allow users to explore your record type as a [dataset](allow-users-to-build-reports.html#datasets) or as a part of a [process](add-process.html). In Tempo, users can explore your record type as a Record.

By default, business users cannot access record types in Process HQ or Tempo. To allow users to access record types in these workspaces, you must configure the following security and settings:

| Workspace Object | Required Security and Settings |
| --- | --- |
| Dataset in Process HQ |
-   Users must be members of the **[Data Fabric Report Creators](System_Groups.html#data-fabric-report-creators)** system group.
-   Users must have least **Viewer** permissions to the record type. Any record-level security, record view security, and record action security will also be applied.
-   The record type must be configured to [show as a dataset in Process HQ](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets).

 |
| Part of a process in Process HQ |

-   Users must be members of the **[Process HQ Users](System_Groups.html#process-hq-users)** system group.
-   Trusted users must have [data steward](configure-security.html#assign-data-stewards-to-record-types) access to the record type to use it in a process. Data stewards will then configure [security on the process](configure-security.html#grant-access-to-processes) so business users can access and explore it.

    Any other object security or record-level security will _not_ be applied to users leveraging [process insights](process-insights.html).

 |
| Record in Tempo |

-   Users must be members of the **[Tempo Users](System_Groups.html#tempo-users)** system group.
-   A user must have least **Viewer** permission to the record type. Any record-level security, record view security, and record action security will also be applied.
-   The record type must be configured to [show as a Record in Tempo](Using_the_Records_Tab.html#display-a-record-type-in-tempo).

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...