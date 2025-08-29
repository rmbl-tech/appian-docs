---
source_url: https://docs.appian.com/suite/help/25.3/processhq.html
original_path: processhq.html
version: "25.3"
title: "Process HQ"
page_id: "processhq"
section: "About Process HQ"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process HQ

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Welcome to Process HQ! These pages describe how different users in your organization can support or leverage Process HQ.

## About Process HQ

[Set Up Process HQ](https://academy.appian.com/#/curricula/a91a6938-bbff-49fc-9438-0d099302a083)

[Analyze Processes and Data in Process HQ](https://academy.appian.com/#/curricula/bff9074b-2c3c-4b22-a7ad-f277a09a50cc)

Brand new to Process HQ? Check out our free, online video courses.

Knowledge is vital to making strategic decisions and driving operational efficiency. Gaining that knowledge requires visibility into your business data and processes, and that can be a challenge when dealing with disparate systems and complex operations.

Process HQ is a new workspace where business users can gain unprecedented visibility into their enterprise data and processes. Combining the latest technologies in data fabric, process mining, machine learning, and generative AI, Process HQ gives users the power to explore data and identify timely insights they can use to optimize their business.

[![images/phq-landingPage-icons.png](images/phq-landingPage-icons.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img629)

[![](images/phq-landingPage-icons.png)](#_)

Process HQ has two main capabilities:

-   [Process insights](process-insights.html): Explore business processes by viewing an analysis of how the process actually works in the real-world. Users can follow an AI-powered guided experience to drill deeper into the details and uncover potential improvements and savings.
-   [Data fabric insights](allow-users-to-build-reports.html): Explore enterprise data and build custom reports and dashboards to answer common business questions. Users can then access new insights with [Appian AI Copilot](appian-ai-copilot.html), a conversational AI assistant that makes data analysis faster and more accessible.

Once business users identify new insights in Process HQ, they can share potential improvements across their organization to collaborate and optimize even their most complex processes, as well as make more informed, data-driven decisions.

## Who can use Process HQ?

[![images/personas-processhq.png](images/personas-processhq.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img630)

[![](images/personas-processhq.png)](#_)

### ![](images/businessUser-phq.png) Business users

Process HQ is tailor-made for business users, ranging from analysts to executives. These users are typically familiar with the data and processes that make up their organization, but do not have experience developing in Appian. With Process HQ, they don’t need developer experience; instead, they can explore their [processes](process-insights.html) and [business data](allow-users-to-build-reports.html) and collaborate on what they find—all in one place.

The work these business users do in Process HQ is supported by the more technical users listed below.

### ![](images/developer-phq.png) Developers

Low-code developers prepare and secure data for Process HQ. These users are familiar with the data and applications that make up their business, and use that knowledge to:

-   [Connect to process data](capture-process-data.html) and [prepare that data](prepare-data.html) for process insights. If they have an understanding of the business process, they can also [determine who can add a process](configure-security.html#assign-data-stewards-to-record-types) using that data.
-   [Prepare](prepare-data-for-reports.html) and [secure data](secure-records-for-reporting.html) for data fabric insights.

### ![](images/systemAdmin-phq.png) System administrators

System administrators assign users to the appropriate groups, so those users can:

-   [Access Process HQ](#access-process-hq).
-   [Create reports and dashboards](secure-records-for-reporting.html#add-users-as-report-creators).
-   [Control who can add processes](configure-security.html#assign-data-governors).

### ![](images/dataGov-phq.png) Data governors

Data governors [determine who can build processes](configure-security.html#assign-data-governors) in process insights, and [which record types are available as datasets in data fabric insights](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets). These users help accelerate process and data exploration by managing record type access directly in Process HQ. This eliminates the need to wait for a developer to update and redeploy record types. Instead, with just a few clicks, data governors can enable the appropriate users to immediately start adding processes or building reports using that data.

### ![](images/dataSteward-phq.png) Data stewards

Data stewards [add, edit, and secure processes](add-process.html). These are trusted users who have a strong understanding of the business process and how the data is modeled across applications. They can easily discern what data is relevant or sensitive for process exploration, which helps them configure and secure data for business users.

## Access Process HQ

**Note:**  Certain Process HQ capabilities are only available in select environments and regions. Review [Process HQ availability](#availability).

To access the Process HQ workspace, you must be a member of the **[Process HQ Users](System_Groups.html#process-hq-users)** system group. By default, all users are members of this group, but system administrators can restrict access as appropriate.

Users can access Process HQ by clicking the navigation menu and selecting **Process HQ**.

Additional permissions are required to allow users to access [process insights](#access-process-hq) and [data fabric insights](#access-data-fabric-insights).

Users can also access the Process HQ [Reports and Dashboards library](process-hq-landing-page.html) in [Appian Sites](sites_object.html). Process HQ pages in sites have the same access requirements as the Process HQ workspace.

**Tip:**  You can change the Process HQ theme in your [user settings](Settings_Page.html#process-hq).

### Access process insights

Based on their [user role](#who-can-use-process-hq), users can perform the following tasks in process insights:

|
 |

System Admin

 |

Developer

 |

Data Governor

 |

Data Steward

 |

Process Analyst

 |

Process Viewer

 |
| --- | --- | --- | --- | --- | --- | --- |
|

**Technical Users**

 |
| [Grant access to Process HQ](#access-process-hq) |  |  |  |  |  |  |
| [Assign data governors](User_Roles.html#data-governor-role) |  |  |  |  |  |  |
| [Connect to process data](capture-process-data.html) |  |  |  |  |  |  |
| [Prepare process data](prepare-data.html) |  |  |  |  |  |  |
| [Assign data stewards to record types](configure-security.html#assign-data-stewards-to-record-types) |  |  |  |  |  |  |
| [Add, edit, or delete a process](add-process.html) |  |  |  |  |  |  |
| [Grant access to processes](add-process.html#configure-process-security) |  |  |  |  |  |  |
| [Rename process attributes](add-process.html#rename-attributes) |  |  |  |  |  |  |
| [Update a process](add-process.html#manually-update-a-process) |  |  |  |  |  |  |
|

**Business Users**

 |
| [Add, edit, or delete a process view](process-views.html) |  |  |  |  |  |  |
| [Add, edit, or delete a KPI](process-custom-kpis.html) |  |  |  |  |  |  |
| [View a process view](process-view-page.html) |  |  |  |  |  |  |
| [Drill down to insights](investigate.html) |  |  |  |  |  |  |
| [Save an insight](investigate.html#step-5-save-the-insight) |  |  |  |  |  |  |
| [View a saved insight](collaborate-on-insight.html#view-a-saved-insight) |  |  |  |  |  |  |
| [Comment on a saved insight](collaborate-on-insight.html#add-a-comment-to-a-saved-insight) |  |  |  |  |  |  |
| Define the [expected activity order](process-views.html#define-the-expected-activity-order) or [activity costs](process-views.html#define-activity-costs) |  |  |  |  |  |  |

### Access data fabric insights

Based on their [user role](#who-can-use-process-hq), users can perform the following tasks in data fabric insights:

|
 |

System Administrator

 |

Data Governor

 |

Developer

 |

Report Creator

 |
| --- | --- | --- | --- | --- |
| [Grant access to Process HQ](#access-process-hq) |

 |  |  |  |
| [Assign report creators](secure-records-for-reporting.html#add-users-as-report-creators) |

 |  |  |  |
| [Assign data governors](User_Roles.html#data-governor-role) |

 |  |  |  |
| [Manage which record types are available as datasets](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets) |  |

 |

 |  |
| [Secure record types for report creators](secure-records-for-reporting.html#review-security-on-record-types) |  |  |

 |  |
| [Prepare data for report creators](prepare-data-for-reports.html) |  |  |

 |  |
| [View datasets](allow-users-to-build-reports.html#datasets) |  |  |  |

 |
| [Build reports](allow-users-to-build-reports.html#reports) |  |  |  |

 |
| [Build dashboards](allow-users-to-build-reports.html#dashboards) |  |  |  |

 |
| [Share reports and dashboards](manage-reports-and-dashboards.html#share-a-report-or-dashboard) |  |  |  |

 |
| [Chat with AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports) |  |  |  |

 |
| [Chat with AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric) |  |  |  |

 |

## How Process HQ is organized

Process HQ is organized into the following pages:

|
Page

 |

Description

 |
| --- | --- |
|

**[Home](process-hq-landing-page.html)**

 |

Business users can start exploring the most recently opened [processes](add-process.html) or [datasets](allow-users-to-build-reports.html#datasets) that make up their enterprise, create new [dashboards](allow-users-to-build-reports.html#dashboards), or view, edit, and share existing reports and dashboards.

 |
|

**[Process Insights](process-insights-page.html)**

 |

Business users can [explore business processes](explore.html) to understand the current performance and identify ways to optimize that performance in the future.

 |
|

**[Data Catalog](data-catalog-page.html)**

 |

Business users can explore their data fabric and build custom [reports](allow-users-to-build-reports.html#reports).

 |
|

**[Data Governance](data-governance-page.html)**

 |

Data governors can assign data stewards to record types directly in production, and data stewards can review which record types they have access to.

 |

## Availability

Process HQ capabilities are available in select environments:

-   [Process insights](process-insights.html) is only available for Cloud customers at this time. Self-managed customers and Appian Government Cloud customers cannot access this capability. Process insights is not offered as part of a [high-availability configuration](High_Availability_for_Appian_Cloud.html#exceptions).
-   [Data fabric insights](allow-users-to-build-reports.html) is available for all Cloud and self-managed customers.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

**Note:**  Process HQ is not supported on mobile devices.

## Accessibility

Appian is committed to making Process HQ accessible to all users including those with a disability. There are some aspects of the workspace that can pose difficulties for some users who have a disability. Appian has a defined internal accessibility strategy that diagnoses and addresses accessibility concerns, and Appian partners with customers to make content as accessible as possible.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...