---
source_url: https://docs.appian.com/suite/help/25.3/configure-security.html
original_path: configure-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Security for Process Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers), [data governors](processhq.html#-data-governors), [data stewards](processhq.html#-data-stewards), and [system administrators](processhq.html#-system-administrators). It describes how each role configures a different layer of security to secure data in process insights.

## Overview

In process insights, different users work together to add processes for analysis, explore the aggregated data, and share insights about that analysis to collaborate with other users. You'll need to assign [user roles](#about-user-roles-in-process-insights) accordingly to make sure everyone can access what they need to work in process insights while keeping your business data secure.

To configure user access and security for process insights:

-   [Grant access to Process HQ](#grant-access-to-process-hq).
-   [Assign data governors](#assign-data-governors).
-   [Assign data stewards to record types](#assign-data-stewards-to-record-types).
-   [Grant access to processes](#grant-access-to-processes).
-   [Monitor access with Data Governance](#monitor-access-with-data-governance).

## About user roles in process insights

Users need permissions to [access Process HQ](#grant-access-to-process-hq) as a separate workspace. All users are assigned these permissions by default, but developers can limit access as needed.

Once your business data has been [prepared for analysis](prepare-data.html), _data stewards_ [add business processes](add-process.html) to the **Process Insights** page. They specify which [case and event record data](key-pi-terms.html#case-data-and-event-data) should be analyzed, filter process data, and add [custom attributes](process-custom-attributes.html). Then, data stewards configure the process security to share the process with analysts and other stakeholders.

To add processes, data stewards need access to the record data to be analyzed. Data stewards can be assigned by either developers or by _data governors_. Data governors are trusted users who grant data stewards access to synced record types in Process HQ. They can also monitor who has data steward access to all the synced record types in your environment. You should choose at least one data governor to monitor security in process insights and ensure data stewards have access to the record types they need.

After data stewards add processes, _analysts_ [explore](explore.html) and [drill down](investigate.html) on the aggregated process data. Analysts apply their knowledge of your business to the data as they analyze to identify the root cause of inefficiencies in your processes. They can [collaborate](collaborate-on-insight.html) with other analysts to identify actionable conclusions to improve your organization's workflows.

_Viewers_ have the most limited access to process insights. They can collaborate with analysts by viewing and commenting on insights, but cannot add or modify [processes](add-process.html), [views](process-views.html), [KPIs](process-custom-kpis.html), or [insights](investigate.html).

## Grant access to Process HQ

To access the Process HQ workspace, users need to be members of the [**Process HQ Users**](System_Groups.html#process-hq-users) system group.

All users are members of **Process HQ Users** by default. System administrators can [manage members of this group](Group_Management.html#add-or-remove-members) to grant or revoke access to the workspace.

Users in the **Process HQ Users** system group can access the Process HQ workspace, but will need the additional permissions described in this page to work in process insights. Make sure to configure the appropriate user access based on the tasks they need to perform.

## Assign data governors

Data governors can access the [**Data Governance** page](#monitor-access-with-data-governance), which allows them to see all synced record types in the environment and [assign data steward access](#assign-data-stewards-to-record-types) for record types in production.

Data governors should be users you trust to:

-   Manage access to record types in Process HQ.
-   See group membership for data stewards.

System administrators should assign at least one data governor by [adding them](Group_Management.html#add-or-remove-members) to the [**Data Governors**](System_Groups.html#data-governors) system group.

The **Process HQ Users** system group inherits members from the **Data Governors** system group, so data governors will automatically have access to the Process HQ workspace.

## Assign data stewards to record types

Data stewards are responsible for [adding and managing processes](add-process.html) in Process HQ using data from synced record types.

These should be users you trust to select fields for analysis, hide sensitive data, and create custom attributes when adding processes. To ensure they have a complete version of process data, data stewards can see all the data in a record type, even if you configured [record-level security](record-level-security.html) or [field-level security](field-level-security.html) for those record types.

To add processes, data stewards need access to the following record types:

-   The [case record type](key-pi-terms.html#case-record-type-and-event-history-record-type), which stores details about specific instances of a business process.
-   The [event history record type](key-pi-terms.html#case-record-type-and-event-history-record-type), which stores the details of your events.
-   Any record types that contain information relevant to the case or its events.

There are two ways to assign users data steward access to a record type:

|
Who

 |

Where

 |

How

 |
| --- | --- | --- |
|

Developers

 |

Record type in Appian Designer

 |

1.  In the record type, go to \> **Security**.
2.  Click **Add Users or Groups**.
3.  Enter the name of the group or user you want to assign as a data steward.
4.  For **User or Group**, enter the name of the group or user you want to assign as a data steward.
5.  For **Permission Level**, select **Data Steward**.
6.  Click **SAVE CHANGES**.

You can also assign data steward permissions on multiple records types using the [security summary](object-security.html#security-summary). All other [permission levels](record-security.html) are not applied in process insights.

 |
|

Data Governors

 |

Data Governance in Process HQ

 |

1.  In Process HQ, go to **Data Governance**.
2.  Select the checkbox next to one or more record types.
3.  Click [**MANAGE DATA STEWARDS**](data-governance-page.html#manage-data-stewards).

 |

You will likely want to use a combination of these methods to assign data stewards.

For example, if a developer is creating a new case record type, they can conveniently assign users **Data Steward** permissions while configuring the record type object security. As time goes on, data governors can assign additional users as data stewards to these record types so they don't have to wait for future deployment cycles.

You can use any combination of these methods to manage data steward access without accidentally overwriting permissions. For example, a data governor cannot use Data Governance to remove a data steward who was assigned via the record type object.

## Grant access to processes

When a data steward [adds a process](add-process.html), they need to give users permission to access the process.

Data stewards can assign users two types of permissions:

|
 |

Process Analyst

 |

Process Viewer

 |
| --- | --- | --- |
| [Add a process KPI to a dashboard](process-custom-kpis.html) \* |  |  |
| Access a [process](process-page.html), [view](process-views.html#access-a-view), [KPI](process-custom-kpis.html#access-a-kpi), or [insight](collaborate-on-insight.html#view-a-saved-insight) |  |  |
| [Add, edit, or delete a process view](process-views.html) |  |  |
| [Add, edit, or delete a KPI](process-custom-kpis.html) |  |  |
| [Drill down to insights](investigate.html) |  |  |
| [Save an insight](investigate.html#step-5-save-the-insight) |  |  |
| [Comment on a saved insight](collaborate-on-insight.html#add-a-comment-to-a-saved-insight) |  |  |
| Define the [expected activity order](process-views.html#define-the-expected-activity-order) or [activity costs](process-views.html#define-activity-costs) |  |  |
| [View conformance and costs](explore.html#review-conformance-and-costs) |  |  |

\* Must also be a member of the [Data Fabric Report Creators](System_Groups.html#data-fabric-report-creators) system group

**Note:**  To properly explore processes, users with **Analyst** permissions to a process have access to all of its process data, even if you configured [record-level security](record-level-security.html) or [field-level security](field-level-security.html) for those record types. Data stewards should hide any sensitive data as needed before granting access to processes.

## Monitor access with Data Governance

Data governors can use the [**Data Governance** page](data-governance-page.html) to continuously monitor [data steward access](configure-security.html#assign-data-stewards-to-record-types) for record types in production.

Data stewards can also use this page to review the record types they have access to and see which processes use each of those record types.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...