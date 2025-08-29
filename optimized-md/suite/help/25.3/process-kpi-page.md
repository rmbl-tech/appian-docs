---
source_url: https://docs.appian.com/suite/help/25.3/process-kpi-page.html
original_path: process-kpi-page.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# KPI Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes what actions are available in a KPI page in Process HQ.

## Overview

In Process HQ, a KPI page displays details about a [key performance indicator](process-custom-kpis.html) for your process. On this page, you can [explore data](explore.html) for that KPI. Then, once you're familiar with the details of your KPI, you can start [drilling down](investigate.html) on a subset of cases or occurrences related to the KPI.

To access this page, go to a [view page](process-view-page.html), then click on any KPI in the **PINNED KPIS** section or the **All KPIs** tab.

## Elements

The following image highlights the elements included in KPI page:

[![images/process_insights/kpi-page-annotated.png](images/process_insights/kpi-page-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img731)

[![](images/process_insights/kpi-page-annotated.png)](#_)

|
#

 |

Element

 |

Actions Available

 |
| --- | --- | --- |
|

1

 |

Navigation bar

 |

-   View the [Home](process-hq-landing-page.html) page.
-   View the [**Process Insights** page](process-insights-page.html).
-   View the [**Data Catalog**](data-catalog-page.html) page.
-   View the [**Data Governance**](data-governance-page.html) page.
-   Switch out of Process HQ and into another workspace like [Appian Designer](welcome-app-designer.html). The workspaces you can access depend on your user role and other security settings.
-   [Change settings for your user profile](Settings_Page.html).

 |
|

2

 |

Breadcrumbs

 |

Navigate to higher-level pages associated with the KPI:

-   [The **Process Insights** page](process-insights-page.html).
-   [The process page](process-page.html).
-   [The process view page](process-view-page.html) associated with the KPI.

 |
|

3

 |

Time period

 |

Set the [time period](explore.html#set-the-time-period) for the KPI data displaying on the page.

 |
|

4

 |

Information pane

 |

-   View basic information about the KPI, including:

    -   **Name**: The KPI name.
    -   **Value**: The current value of the KPI, with an indicator of whether data shows the KPI to be increasing or decreasing recently. For example, for a duration KPI, the value displays in as the number of days and hours it takes the case, activity, or sequence to complete on average.
    -   **Trend chart**: A chart showing changes in the KPI value over the selected [time period](explore.html#set-the-time-period).
    -   **Cases**: The number of cases related to the KPI, followed by the total number of cases in the associated view.
    -   **Last update**: The date of the [last process update](add-process.html#schedule-process-updates).
    -   **Insights**: The number of insights related to the KPI.
    -   **Description:** A brief description of the KPI. For system-provided KPIs, the default text displays. For user-created KPIs, the text defined in the **Description** property of the KPI displays.
    -   **Filters:** A list of [view](process-views.html#edit-view-filters) filters inherited by the KPI and filters configured for the [KPI](process-custom-kpis.html#edit-kpi-filters). To expand the list of filters, click **Show applied filters**.

-   Manage the KPI from the menu:

    -   [View or edit KPI properties](process-custom-kpis.html#edit-kpi-properties).

    -   [View or edit the KPI definition](process-custom-kpis.html#edit-kpi-definition), including the filters configured for the KPI.

-   Start [drilling down](investigate.html#start-with-a-kpi) on characteristics of cases related to the KPI. This action is only available for a count KPI or an average duration KPI, including the system-provided Average Duration KPI.

 |
|

5

 |

**EXPLORE DATA FOR THIS KPI** section

 |

Switch between the following tabs to explore data for cases related to the KPI:

-   **Process Diagram**: View the [process diagram](explore.html#review-the-process-diagram) for cases related to the KPI.

    From the diagram on this page, you can [view details](explore.html#view-process-part-details) for individual activities or sequences, but you cannot drill down to insights for a specific process part. To drill down on a process part, go to the [process diagram](investigate.html#start-with-the-process-diagram) in the associated view instead.

-   **Case Attributes**: View [attributes](explore.html#review-case-attributes) of cases related to the KPI.

    From this tab, you can [view attribute value details](explore.html#view-attribute-value-details), as well as [start drilling down](investigate.html#start-with-a-case-attribute) on a specific attribute value.

-   **Case List**: View a [list of cases](explore.html#review-the-case-list) related to the KPI.

-   **Trend**: View a chart of changes in the KPI over time. The type of changes depends on the KPI type:

    -   [Changes in duration](pi-visualizations.html#duration-trend) for duration KPIs that track time, including the Average Case Duration KPI.
    -   [Changes in occurrence counts](pi-visualizations.html#occurrence-trend) for count KPIs and duration KPIs that track SLAs.
    -   Changes in the number of automated activities for the Automation Rate KPI.
    -   Changes in the aggregation value for an aggregation KPI.

-   **Insights**: View insights related to this KPI.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...