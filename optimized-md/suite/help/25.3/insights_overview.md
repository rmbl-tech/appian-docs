---
source_url: https://docs.appian.com/suite/help/25.3/insights_overview.html
original_path: insights_overview.html
version: "25.3"
title: "MyAppian"
page_id: "insights_overview"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# MyAppian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

[MyAppian](https://forum.appian.com/suite/sites/myappian) provides you with a wealth of information on your Appian experiences in a single place.

MyAppian has four tabs:

-   **Home** provides you with a landing page to view open support cases, key account metrics, and environment details.
-   **Support** provides you with a way to manage and troubleshoot your Appian platform, on your own or with Support.
-   **Health** provides you with information specific to managing and monitoring your Appian platforms.
-   **Adoption** provides you with user login data for all your cloud production sites.

[![screenshot of the MyAppian Home tab](images/myAppian_home.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img188)

[![](images/myAppian_home.png)](#_)

### MyAppian roles

There are two categories of roles that have access to MyAppian: support contacts and basic organization users.

Support contacts have access to the majority of MyAppian content for all accounts they are associated with. Registration administrators are included in the support contacts category. Registration administrators are specific to each customer and assign users to the appropriate role.

Basic organization users do not have support contact permissions, and only have access to information for the accounts that they are associated with.

To learn more about roles and MyAppian access, see the [Security Summary](#security-summary) section below.

## Home

The **Home** tab is a landing page that brings together key details from across your organization into a single, unified view.

The primary content areas are:

-   [Key attributes](#key-attributes)
-   [Environments](#environments)
-   [Open support cases](#open-support-cases)

From the **Home** tab, you can:

-   View details about your support level and contract information.
-   View environment details and identify potential environment risks.
-   Access pending action items through the support cases summary view.

[![screenshot of the MyAppian Home tab](images/myAppian_home.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img189)

[![](images/myAppian_home.png)](#_)

For information on which roles have permission to view the **Home** tab and details, see the [Security Summary](#security-summary).

### Key attributes

The **Key Attributes** section on the **Home** tab contains key details specific to your organization.

These details include:

-   **Open Support Cases** - Shows the total number of support cases that you have open.
-   **Support Level** - Shows the level of support that you have agreed to when purchasing Appian.
-   **Days to Next Renewal** - Shows the amount of days you have remaining until your next subscription renewal is due.
-   **Customer Since** - Shows the year that you became an Appian customer.

**Tip:**  If you have access to multiple organizations, you can toggle between these organizations to view the organization information.

[![screenshot of the Key attributes section in the Home tab](images/myAppian-home-tab-key-attributes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img190)

[![](images/myAppian-home-tab-key-attributes.png)](#_)

### Environments

The **Environments** section on the **Home** tab displays data on potential platform risks, cloud performance, and cloud storage utilization. This section allows designated support contacts to view platform risk levels as well as cloud environment details.

[![screenshot of the environments section in the Home tab](images/myAppian-home-tab-environments.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img191)

[![](images/myAppian-home-tab-environments.png)](#_)

#### View risk levels

Support contacts can drill down to view the high and medium platform risk levels. Health check assesses the risk levels and provides more detailed information on the [Health](#health) and [Analysis](#analyze) pages.

#### View cloud environment details

Support contacts can also view details about the cloud environment to:

-   View the environment’s version and hotfix number.
-   See which environments have High Availability.
-   Toggle between servers to see individual metrics.
-   Interact with the CPU Usage charts to view more details and trends.

By default, support contacts can see 3 environments, but can update the default settings to view more environments by clicking the star icon.

**Note:**  Self managed environments only show health check risks if available.

### Open support cases

The **Open Support Cases** section on the **Home** tab displays an overview of your open support cases. Support contacts can create new cases from this section.

By default, support contacts see up to 5 open support cases. Cases with a “Pending User” status are yellow and displayed above cases with any other status.

[![screenshot of the Open Support Cases section in the Home tab](images/myAppian_home-tab-support_cases.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img192)

[![](images/myAppian_home-tab-support_cases.png)](#_)

## Support

The **Support** tab allows support contacts to interact with support cases, manage account details, access **Accelerators** content, download licensed software, and complete tasks.

For information on which roles have permission to view the **Support** tab and pages, see the [Security Summary](#security-summary).

### Cases

On the **Cases** page, support contacts can view and edit all support cases within your environment, as well as create a new case. Support contacts can also filter the case record grid using the predefined filters, as well as create and save personalized custom user filters powered by record types.

**Note:**  Basic organization users do not have access to the support case grid.

[![screenshot of the MyAppian Cases page on the Support Tab](images/myAppian_cases.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img193)

[![](images/myAppian_cases.png)](#_)

### Accelerators

The **Accelerators** page provides quick access to accelerators for customers that have subscribed to Appian Accelerate. For customers that have not yet subscribed to Appian Accelerate, details are provided to learn more about how this service can improve the overall health and success of your Appian implementations.

### Accounts

On the **Accounts** page, both support contacts and basic organization users can view user account associations to the account. Content access is dependent on the viewer’s role:

-   Registration administrators can:

    -   Register, add, update, and remove support contacts and organization users.
    -   Approve user account associations.
    -   Update cloud maintenance emails and self association approvals.
-   Support contacts can view the installations that are associated with their account.
-   Basic organization users can view:

    -   The accounts page.
    -   The information for their support contact.
    -   The information for their user registration admins.
    -   Any installations associated with their account, including cloud environments and self managed environments. To learn more, see the [Health check page](health-check.html).

An account summary that registration administrators and support contacts can see:

[![screenshot of the MyAppian Account summary](images/myAppian-accounts-summary.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img194)

[![](images/myAppian-accounts-summary.png)](#_)

### Downloads

On the **Downloads** page, customers with self-managed Appian environments and all of their users have access to:

-   The Appian platform\*
-   Process mining\*
-   Solutions\*
-   Software installers
-   Hot fixes
-   Documentation

\*Availability based on the licenses purchased.

By default, cloud customers don't have access to download software. Cloud customers interested in accessing this content should discuss it with their account executive.

**Note:**  RPA is only available to cloud customers.

[![screenshot of the MyAppian Downloads page in the Support tab](images/myAppian_downloads.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img195)

[![](images/myAppian_downloads.png)](#_)

### Tasks

The **Tasks** page is only visible to support contacts and registration administrators.

From the **Tasks** page:

-   Support contacts can view and complete support case satisfaction tasks
-   Registration administrators can:

    -   Complete tasks associated with user requests
    -   Associate the tasks with a specific account

[![screenshot of the MyAppian Tasks page in the Support tab](images/MyAppian_tasks.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img196)

[![](images/MyAppian_tasks.png)](#_)

## Health

Health monitoring is a critical tool for successful management of Appian applications and overall platform health. The Health tab contains two pages: [Health Check](health-check.html) and [Cloud Resources](Cloud_Insights.html).

**Note:**  The cloud resources page is only visible to cloud customers.

For information on which roles have permission to view the **Health** tab and pages, see the [Security Summary](#security-summary).

### Health Check

On the **Health Check** page, you can either analyze the results of a previous [Health Check](health-check.html) run on your site, or request a [manual health check analysis](understanding-the-health-check-report.html). Health Check provides support contacts with insights into application design and performance risks in your environments.

[![screenshot of the MyAppian Health Check page on the Health tab](images/myAppian_healthCheck.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img197)

[![](images/myAppian_healthCheck.png)](#_)

**Tip:**  Update your version of Appian to use our automated and streamlined Health Check features.

#### Analyze

The **Analyze** option on the **Health Check** page allows you to:

-   View the current risks and their trends by priority.
-   View specific risk findings by priority and their trends.
-   Identify new and recurring findings.
-   Ignore findings that have been deemed no longer a risk.
-   Group findings by application name.
-   Add notes and links to findings for future reference.
-   View process metrics.
-   View the process archival settings.

[![screenshot of the MyAppian Analyze option of the Health Check page](images/myAppian_health_analyze.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img198)

[![](images/myAppian_health_analyze.png)](#_)

#### Request

The **Request** option on the **Health Check** page allows you to manually request a health check analysis. To more efficiently use Health Check, schedule regular Health Check analyses or run an ad-hoc check via the [Administration Console](Appian_Administration_Console.html#health-check).

[![screenshot of the MyAppian Request option of the Health Check page](images/myAppian_requestAnalysis.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img199)

[![](images/myAppian_requestAnalysis.png)](#_)

#### Credentials

The **Credentials** option on the **Health Check** page allows you to obtain Health Check credentials or reset the Health Check password. Select your organization from the dropdown to reset your password, or generate credentials if you don't already have them. The new password or credentials will be sent to your email from forum@appian.com.

[![screenshot of the MyAppian Credentials option of the Health Check page](images/myAppian_credentials.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img200)

[![](images/myAppian_credentials.png)](#_)

### Cloud Resources

The [Cloud Resources](Cloud_Insights.html) page provides cloud customer designated support contacts with key information about the current performance of cloud environments, details on infrastructure configuration, and some self service capabilities.

There are five sections on the cloud resources page:

-   Metrics
-   Environments
-   Maintenance
-   Connectivity
-   Certificates

To learn more about each of these sections, see the [Cloud Resources](Cloud_Insights.html) page.

## Adoption

In the **Adoption** tab, support contacts can see metrics and trends on how often users are accessing Appian Cloud production environments.

[![screenshot of the MyAppian Adoption tab](images/myAppian_adoption.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img201)

[![](images/myAppian_adoption.png)](#_)

For information on which roles have permission to view the **Adoption** tab, see the [Security Summary](#security-summary).

### Summary metrics

The **Summary Metrics** section on the **Adoption** tab displays cards at the top of the page and include the following metrics:

-   **Average: Total Logins**: This metric shows the average number of user and system-driven logins (that is, Web API calls) in a given time period.
-   **Average: Unique User Logins**: This metric shows the average number of unique users that logged into the Appian platform one or more times in a given time period.
-   **Average: Unique Mobile User Logins**: This metric shows the average number of unique users that logged into the Appian platform via a mobile device one or more times in a given time period.

You can change the time frame displayed in the cards to show login information in the following increments of time:

-   **Daily**: 30 days, 60 days, 90 days, or 120 days.
-   **Monthly**: 3 months, 6 months, 9 months, or 12 months.
-   **Quarterly**: 6 quarters.

[![screenshot of the MyAppian summary metrics section in the Adoption tab](images/myAppian_adoption_summary_data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img202)

[![](images/myAppian_adoption_summary_data.png)](#_)

### Trending metrics

The **Trending Metrics** section on the **Adoption** tab displays a line chart and includes the following data points:

-   **Unique User Logins**: This metric shows the number of unique users that logged into the Appian platform one or more times in a given time period.
-   **Unique Mobile User Logins**: This metric shows the number of unique users that logged into the Appian platform via a mobile device one or more times in a given time period.

You can change the time frame displayed in the line chart to show login information in the following increments of time:

-   **Daily**: 30 days, 60 days, 90 days, or 120 days.
-   **Monthly**: 3 months, 6 months, 9 months, or 12 months.
-   **Quarterly**: 6 quarters.

[![screenshot of the MyAppian trending metrics section in the Adoption tab](images/myAppian_adoption_trending_data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img203)

[![](images/myAppian_adoption_trending_data.png)](#_)

## Security summary

Not all roles have access to all tabs, pages, options, and sections within MyAppian. Below is a summary of the security settings for both support contacts and basic organization members across the entire MyAppian site.

**Role security summary table**

|
MyAppian Tab

 |

Page

 |

Role: Support Contact

 |

Role: Basic Organization User

 |
| --- | --- | --- | --- |
|

**Home**

 |

All content

 |

Full access

 |

Partial access 1

 |
|

**Support**

 |

Cases

 |

Full access

 |

No access

 |
|

**Support**

 |

Accelerators

 |

Full access

 |

Full access

 |
|

**Support**

 |

Accounts

 |

Partial access 2

 |

Partial access 3

 |
|

**Support**

 |

Downloads

 |

Full access

 |

Full access

 |
|

**Support**

 |

Tasks

 |

Full access

 |

No access

 |
|

**Health**

 |

All Content

 |

Full access

 |

No access

 |
|

**Adoption**

 |

All Content

 |

Full access

 |

No access

 |

### Partial access

Some roles have limited access to tabs and pages in MyAppian.

The limitations are:

1 The **Home** tab: basic organization users don't have access to do the following:

-   View environment cards.
-   View cloud site dropdowns.
-   Open support cases.
-   View **My Account Team** contact information.

2 The **Support** page on the **Accounts** tab: support contacts don't have access to do the following:

-   Register, add, update, and remove other support contacts and organization users.
-   Approve user account associations.
-   Update cloud maintenance emails and self association approvals.

3 The **Support** page on the **Accounts** tab: basic organization users can't see the default support contacts or do the following:

-   Add new environment.
-   Register new user.
-   Update support contact.
-   Update maintenance contact.
-   Dissociate users.
-   Update self association users.
-   Update default case contacts.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...