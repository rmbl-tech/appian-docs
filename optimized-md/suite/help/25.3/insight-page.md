---
source_url: https://docs.appian.com/suite/help/25.3/insight-page.html
original_path: insight-page.html
version: "25.3"
title: "Insight Page"
page_id: "insight-page"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Insight Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes what actions can be performed on an [insight](investigate.html#overview).

## Overview

The insight page allows you and any collaborators to view and interact with a [saved insight](investigate.html).

To access this page, [view a saved insight](collaborate-on-insight.html#view-a-saved-insight).

**Note:**  An insight displays analysis in terms of either cases or occurrences depending on the [comparison KPI](pi-calculations.html).

## Elements

The following image highlights the elements of an insight page:

[![images/process_insights/insight-page-annotated.png](images/process_insights/insight-page-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img712)

[![](images/process_insights/insight-page-annotated.png)](#_)

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

Navigate to higher-level pages associated with the insight:

-   [The **Process Insights** page](process-insights-page.html)
-   [The process page](process-page.html) associated with the related view.
-   [The view page](process-view-page.html) to which the insight is related.
-   [The KPI page](process-kpi-page.html) to which the insight is related.

 |
|

3

 |

Header pane

 |

-   View information about the insight, including:

    -   **Name**: The name of the insight. For example, **Individual Accounts in Spain**.
    -   **Filters**: The filters that define the [view](process-views.html#edit-view-filters) and [KPI](process-custom-kpis.html#edit-kpi-filters) to which the insight is related. To expand or collapse the list of filters, click **Filters**.
    -   **Cases**: The number of cases related to this insight.
-   [Rename](collaborate-on-insight.html#rename-a-saved-insight) or [delete](collaborate-on-insight.html#delete-a-saved-insight) the insight by clicking the gear menu next to the insight name.

 |
|

4

 |

Action buttons

 |

-   **CONTINUE DRILLING DOWN**: [Drill down on an insight](collaborate-on-insight.html#continue-a-saved-insight), so you can update the existing insight or create a new insight based on the existing insight's characteristics.
-   **HIDE COMMENTS**: [Show or hide comments](collaborate-on-insight.html#show-or-hide-comments-in-a-saved-insight) on the insight.

 |
|

5

 |

Tabs

 |

Switch between the following tabs to explore data for cases related to the insight:

-   **SUMMARY**: View Process HQ's analysis of cases or occurrences related to the insight. See the [description](#summary-tab) for a full list of actions.

-   **PROCESS DIAGRAM**: View the [process diagram](explore.html#review-the-process-diagram) for cases related to the insight.

-   View visualizations for duration KPIs:

    -   [**DURATION COMPARISON**](pi-visualizations.html#duration-comparison)
    -   [**DURATION DISTRIBUTION**](pi-visualizations.html#duration-distribution)
    -   [**DURATION TREND**](pi-visualizations.html#duration-trend)

-   View visualizations for count KPIs:

    -   [**VALUE COMPARISON**](pi-visualizations.html#value-comparison)
    -   [**CASE COMPARISON**](pi-visualizations.html#case-comparison)
    -   [**OCCURRENCE TREND**](pi-visualizations.html#occurrence-trend)

-   **CASE LIST**: View cases related to this insight. This tab has the same elements as the [**Cases** section](drilldown-page.html#cases) in the drilldown page.

 |
|

6

 |

**COMMENTS** pane

 |

[Add and view comments](collaborate-on-insight.html#add-a-comment-to-a-saved-insight) on the insight.

 |

## Summary tab

The **Summary** tab of a saved insight includes the following elements:

|
Element

 |

Actions Available

 |
| --- | --- |
|

**Comparison KPI**

 |

Review the [comparison KPI](pi-calculations.html#comparison-kpi) for the insight. To calculate [potential reduction](pi-calculations.html#potential-reduction), Process HQ compares the cases or occurrences with the characteristics in this insight against this KPI. If you implement changes related to the characteristics in this insight, you will see improvement in this KPI.

The KPI also includes a trend chart representing changes in the KPI over the time period of the insight. You can hover over the chart to see more details for each data point.

 |
|

**Characteristics**

 |

View the characteristics included in the insight. By default, the last characteristic added to the insight displays. To view all characteristics in the insight, click **Show All**.

 |
|

**Potential Reduction**

 |

View the potential improvements your organization could realize by implementing changes in your business process based on the insight. Learn [how this improvement is calculated](pi-calculations.html).

 |
|

**Description**

 |

View the [insight description](collaborate-on-insight.html#add-a-description-to-a-saved-insight), including recommendations on how to improve.

 |
|

**Metrics**

 |

View metrics for the insight.

If the insight is related to a duration KPI, these metrics include:

-   **Cases**: A count of total cases related to the insight.
-   **Duration (Average)**: The average duration of cases or occurrences related to the insight.

If the insight is related to a count KPI, these metrics include:

-   **Activity/Sequence Occurrence Count**: A count of how many times the sequence or activity tracked by the comparison KPI occurs in the affected cases. This value is only present if the KPI counts occurrences.
-   **Cases with These Characteristics**: A count of cases that have the characteristics specified in the insight. Depending on the section, this metric counts cases related to the comparison KPI or not related to the comparison KPI.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...