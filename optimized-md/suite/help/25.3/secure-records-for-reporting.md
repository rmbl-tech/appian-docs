---
source_url: https://docs.appian.com/suite/help/25.3/secure-records-for-reporting.html
original_path: secure-records-for-reporting.html
version: "25.3"
title: "Secure Data for Data Fabric Insights"
page_id: "secure-records-for-reporting"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Secure Data for Data Fabric Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers), [system administrators](processhq.html#-system-administrators), and [data governors](processhq.html#-data-governors). It describes how each role configures a different layer of security in data fabric insights.

## Overview

System administrators, developers, and data governors work together to decide who can access data fabric insights and what data is available to them.

To allow users to access data fabric insights and build reports and dashboards:

-   [Add users as report creators](#add-users-as-report-creators).
-   [Choose which record types are available as datasets](#choose-which-record-types-are-available-as-datasets).
-   [Review security on record types](#review-security-on-record-types).
-   [Review security on processes](#review-security-on-processes).

As report creators build reports and dashboards, they can also determine who can see their reports and dashboards by [sharing them](manage-reports-and-dashboards.html#share-a-report-or-dashboard) with their colleagues.

## Add users as report creators

To access data fabric insights, users need to be members of the [**Data Fabric Report Creators**](System_Groups.html#data-fabric-report-creators) system group. The **[Process HQ Users](System_Groups.html#process-hq-users)** system group inherits members from the **Data Fabric Report Creators** system group, so report creators will automatically have access to the [Process HQ](processhq.html) workspace.

Once a user is added to this group, they can take advantage of data fabric insights by selecting **Process HQ** from the navigation menu.

## Choose which record types are available as datasets

By default, new record types are not available to report creators in Process HQ.

To be available, a record type must be configured to display as a [dataset](allow-users-to-build-reports.html#datasets) in the Data Catalog of Process HQ. When a record type is available as a dataset it in the Data Catalog, users can:

-   [Ask AI Copilot](allow-users-to-build-reports.html#ai-copilot-for-data-fabric) about all available datasets in the Data Catalog.
-   Access the record type as its own dataset and any other datasets where the record type is configured as a related record type.
-   Build and view reports and dashboards created from that data.

You should only allow users to access record types necessary for reporting. To allow report creators to access data from related record types, you'll need show any one-to-one or many-to-one related record types in the Data Catalog as well.

There are two ways to show a record type as a dataset in the Data Catalog:

|
Who

 |

Where

 |

How

 |
| --- | --- | --- |
|

[Developers](User_Roles.html#designer-role)

 |

Record type in Appian Designer

 |

1.  In the record type, go to **Workspaces**.
2.  Select the **Show this record type as a dataset in the Data Catalog of Process HQ** checkbox.
3.  Click **SAVE**.
4.  [Deploy](Deploy_to_Target_Environments.html) the record type to production.

 |
|

[Data Governors](User_Roles.html#data-governor-role)

 |

Data Governance in Process HQ

 |

1.  In Process HQ, go to **Data Governance**.
2.  To show or hide a single record type from the Data Catalog, use the toggle in the **Data Catalog** column.
3.  To show or hide multiple record types from the Data Catalog, select the checkbox next to the record types and click **SHOW IN DATA CATALOG**.

Any Data Governance configurations will take precedence over the record type configuration.

 |

## Review security on record types

Each dataset will inherit the different [layers of security](appian-records-security.html) configured on the record type and its related record types. If you've already secured these aspects of your record types, there's likely no additional configuration necessary.

To allow users to view and update the record data in a report or dashboard, they must have the following security configurations on the base record type and any related record types:

|
Security

 |

Required Configuration

 |
| --- | --- |
|

[Record type object security](record-security.html)

 |

Users must have at least **Viewer** permission to view the record type as a dataset and use the data in reports and dashboards.

As a best practice, you should configure the record type security so that **Default (All Other Users)** is set to **No Access**. This ensures that only users who have been specifically granted permission to the record type are allowed to see the record data.

 |
|

[Record-level security](record-level-security.html)

 |

Users must have access to see the appropriate records (or rows of data in the dataset).

If no record-level security is applied, then users with **Viewer** permission to the record type can see all rows in the dataset.

 |
|

[Field-level security](field-level-security.html)

 |

Users must have access to see the appropriate fields.

If no field-level security is applied, then users with **Viewer** permission to the record type can see all fields in the dataset.

 |
|

[Record action security](record-action-security.html)

 |

Users must have access to see the appropriate record actions. Users must also have **Initiator** permission to the underlying [process models](process-model-object.html#prodlink-security).

 |
|

[Record view security](record-view-security.html)

 |

No additional configuration necessary. Users can only view a record's [Summary view](record-view.html#default-record-views), which is automatically visible to any user with permission to see the record type and the record itself.

 |

## Review security on processes

To allow users to include process KPIs in a dashboard, they must have at least Process Viewer permissions for the process. To learn more about process security, see [Grant access to processes](configure-security.html#grant-access-to-processes).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...