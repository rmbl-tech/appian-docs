---
source_url: https://docs.appian.com/suite/help/25.3/drilldown-page.html
original_path: drilldown-page.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Drilldown Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). This page describes what actions are available to users [drilling down on KPI data](investigate.html).

## Overview

In Process HQ, the drilldown page lets you take a closer look into specific patterns and issues in your process, so you can uncover insights that lead to improvements.

To access this page, [start drilling down on process data](investigate.html#step-1-start-drilling-down) or [continue a saved insight](collaborate-on-insight.html#continue-a-saved-insight).

## Elements

The following image highlights the elements of the drilldown page:

[![images/process_insights/drilldown-page-annotated.png](images/process_insights/drilldown-page-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img684)

[![](images/process_insights/drilldown-page-annotated.png)](#_)

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

-   View the [**Home**](process-hq-landing-page.html) page.
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

Navigate to higher-level pages related to the cases you're drilling down on:

-   [The **Process Insights** page](process-insights-page.html).
-   [The process page](process-page.html).
-   [The view page](process-view-page.html).
-   [The page for the KPI](process-kpi-page.html) you're drilling down on.
-   [The page for the insight](insight-page.html) you're continuing to drill down on.

 |
|

3

 |

Time period

 |

The time period for the data displaying on the page. This value cannot be changed in the drilldown page. Instead, it represents the time period that was [set in the view or KPI](explore.html#set-the-time-period) when you started to drill down.

 |
|

4

 |

Drilldown header

 |

-   View the following information:

    -   **Name**: The default text **Suggested Characteristics** displays until you save the characteristic(s) you've drilled down on as an insight. After you save the insight, this field displays the name of the insight.
    -   **Filters**: The [view](process-views.html#edit-view-filters) and [KPI](process-custom-kpis.html#edit-kpi-filters) filters inherited by the drilldown. Click **Show applied filter** to display the list of filters.

-   Save the characteristic(s) you've drilled down on as an insight by clicking **SAVE INSIGHT**.

 |
|

5

 |

Process diagram

 |

Review a [process diagram](explore.html#review-the-process-diagram) constructed only from cases that have the characteristics you're drilling down on. The elements of this process diagram update to reflect the choices you make as you drill down.

 |
|

6

 |

Comparison KPI

 |

Review the KPI values to which Process HQ is comparing cases with the current characteristic(s) to calculate [potential reduction](pi-calculations.html#potential-reduction). If you implement changes related to the characteristics in this insight, you will see improvement in this KPI.

The KPI also includes a trend chart representing changes in the KPI over time period set for the insight. You can hover over the chart to see more details for each data point.

 |
|

7

 |

Characteristics pane

 |

-   Review a list of attribute values that are potentially impacting cases or occurrences related to the KPI. By default, the pane shows the [suggested characteristics list](#suggested-characteristics-list), which contains only attribute values with highest potential reduction.
-   Click **Browse All** to review a list of [all attributes](#all-attributes-list) of cases or occurrences related to the KPI.
-   Click an attribute value to see the [attribute details](#attribute-value-details), including relevant metrics, visualizations, and cases.

 |
|

8

 |

Insight pane

 |

Track the characteristics you're currently drilled down on, and view the cumulative effect of the characteristics on the [potential reduction calculation](pi-calculations.html). See the [description](#insight-pane) for a full list of actions.

 |

## Suggested characteristics list

This list displays in the characteristics pane. It contains attribute values that Process HQ has identified as potentially impacting the cases or occurrences you're drilling down on. These attribute values are associated with either longer durations or higher occurrence counts, depending on whether you're evaluating your process based on [duration or count](investigate.html#what-to-look-for).

Attribute values that have the greatest impact are listed at the top of the list.

Each item in this list includes the following elements:

[![images/process_insights/attribute-value-card.png](images/process_insights/attribute-value-card.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img685)

[![](images/process_insights/attribute-value-card.png)](#_)

|
#

 |

Element

 |

Description

 |
| --- | --- | --- |
|

1

 |

Attribute Value

 |

The attribute value. For example, for an attribute named **Country**, this value would be the name of an individual country, like **Spain**.

 |
|

2

 |

Attribute Name

 |

The attribute name. For example, **Country**.

 |
|

3

 |

Case or occurrence count

 |

The number of cases or occurrences related to this KPI that have this attribute value, as well as what percent those cases or occurrences are out of all cases or occurrences related to the KPI.

 |
|

4

 |

Potential reduction

 |

The [potential reduction](pi-calculations.html#potential-reduction) that Process HQ has calculated for cases or occurrences with the attribute value.

 |
|

5

 |

Bar graph

 |

The bar graph shows how the potential reduction for this attribute value compares to the potential reduction for other attribute values in the characteristics list.The longer the bar, the more significant the potential improvement in comparison to other values.

 |

## All Attributes list

When you're drilling down on cases related to a KPI, you'll see the [suggested characteristics list](#suggested-characteristics-list) in the characteristics pane by default.

You can [switch to a list of all attributes](investigate.html#review-an-already-known-attribute), however. This list of all attributes can be useful if you already have an idea of an attribute you need to look into.

To view a list of all attributes of the process, click **Browse All** at the end of the suggested characteristics list. The **All Attributes** list displays.

For example:

[![A list of all attributes associated with cases in the current KPI](images/process_insights/all-attributes-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img686)

[![](images/process_insights/all-attributes-list.png)](#_)

This table includes the following columns:

|
Column

 |

Description

 |
| --- | --- |
|

**Attribute**

 |

The name of the attribute, and a count of the unique values for that attribute. Click on an attribute name to see a comparison of all values for that attribute. Depending on whether you're evaluating your process based on [duration or count](investigate.html#what-to-look-for), you'll see a [duration comparison](pi-visualizations.html#duration-comparison) or a [value comparison](pi-visualizations.html#value-comparison).

 |
|

**Attribute Values**

 |

A list of values for that attribute in the cases or occurrences related to the selected KPI. The **SUGGESTED** tag displays next to attribute values associated with either longer durations or higher occurrence counts, depending on whether you're evaluating your process based on [duration or count](investigate.html#what-to-look-for). Click an attribute value to view the [attribute value details](#attribute-value-details).

 |

## Attribute value details

When you click on an attribute value in the [suggested characteristics list](#suggested-characteristics-list) or [all attributes list](#all-attributes-list), the characteristics pane displays a detailed analysis of that attribute value.

For example:

[![images/process_insights/attribute-value-details.png](images/process_insights/attribute-value-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img687)

[![](images/process_insights/attribute-value-details.png)](#_)

Attribute value details are divided into the sections described below.

### Header

[![images/process_insights/drilldown-header-section.png](images/process_insights/drilldown-header-section.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img688)

[![](images/process_insights/drilldown-header-section.png)](#_)

This section specifies the selected attribute value and attribute name.

This section also allows you to:

-   Click the back arrow next in the header to return to the list you were previously viewing (that is, either the [suggested characteristics list](#suggested-characteristics-list) or [all attributes](#all-attributes-list) list).

-   Click **KEEP DRILLING DOWN** to look at other characteristics that cases with this attribute value have.

### Potential Reduction

[![images/process_insights/drilldown-potential-reduction-section.png](images/process_insights/drilldown-potential-reduction-section.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img689)

[![](images/process_insights/drilldown-potential-reduction-section.png)](#_)

This section also allows you to review the [potential reduction](pi-calculations.html#potential-reduction) that Process HQ has calculated for cases or occurrences with the attribute, as well as a brief sentence describing how improving these cases or occurrences could impact the KPI overall.

### Metrics

This section allows you to review relevant statistics for this attribute value, so you can assess if the analysis of this attribute is meaningful in the business context.

The specific metrics you see will vary based on whether you're focusing on [duration](pi-calculations.html#metrics-duration) or [count](pi-calculations.html#metrics-count) when you drill down.

### Visualizations

[![images/process_insights/drilldown-visualization-tabs.png](images/process_insights/drilldown-visualization-tabs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img690)

[![](images/process_insights/drilldown-visualization-tabs.png)](#_)

This section contains charts displaying relevant statistics in relation to each other:

|
KPI Type

 |

Visualization

 |
| --- | --- |
|

Duration

 |

-   [Duration Comparison](pi-visualizations.html#duration-comparison)
-   [Duration Distribution](pi-visualizations.html#duration-distribution)
-   [Duration Trend](pi-visualizations.html#duration-trend)

 |
|

Count

 |

-   [Value Comparison](pi-visualizations.html#value-comparison)
-   [Case Comparison](pi-visualizations.html#case-comparison)
-   [Occurrence Trend](pi-visualizations.html#occurrence-trend)

 |

### Cases

[![images/process_insights/summary-cases-list.png](images/process_insights/summary-cases-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img691)

[![](images/process_insights/summary-cases-list.png)](#_)

This section contains a [list of cases](#cases) related to this KPI that have this attribute value, so that you can review information about individual cases. Scroll down to view this section.

This section contains the following elements:

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

Case list

 |

-   Sort cases by duration or start date:
    -   **Slowest (by duration)**: Sorts the list by case duration with the highest case durations at the top.
    -   **Fastest (by duration)**: Sorts the list by case duration with the lowest case durations at the top.
    -   **Latest (by start)**: Sorts the list by start date with the latest start dates at the top.
    -   **Earliest (by start)**: Sorts the list by start date with the earliest start date at the top.
-   Scroll to see cases related to the KPI with the selected attribute value.
-   Click a case to see information about the case in the case details pane.

 |
|

2

 |

Case details pane

 |

Review details about the selected case:

-   **Case Metrics:** Metrics for the case, including:
    -   **Start:** The timestamp of the starting activity in this case.
    -   **End:** The timestamp of the ending activity in this case.
    -   **Duration:** The total duration of the case.
    -   **Unique activities:** A count of the unique activities that occurred in the case.
    -   **Executed activities:** A count of all activities that occurred in the case, including repetitions.
-   **Case Attributes:** The names and values of attributes associated with the case.
-   **Activity Details:** A chronological list of activities that occurred in this case. Use the dropdown menu to select which [activity attributes](key-pi-terms.html#attributes) display in the list, or click a column header to sort by that attribute.

 |

## Insight pane

As you [drill down on additional characteristics](investigate.html#step-3-add-a-characteristic-to-your-insight), the **Insight** pane displays those characteristics in a hierarchical format to represent the cumulative filtering of cases in the insight.

The following image highlights the elements of the **Insight** pane:

[![images/process_insights/active-insight-pane.png](images/process_insights/active-insight-pane.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img692)

[![](images/process_insights/active-insight-pane.png)](#_)

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

Header

 |

-   View a count of cases or occurrences affected by the insight.
-   Clear all characteristics from the insight and start from scratch by clicking **CLEAR**.

 |
|

2

 |

**Characteristics** section

 |

-   View the characteristics that have been added to the insight, listed in the order in which they were added to the insight.
-   View details for the last added characteristic:

    1.  Click the menu for the characteristic.
    2.  Select **View Details**. The [attribute value details](#attribute-value-details) displays in the characteristics pane.
-   Remove the last added characteristic in the insight:

    1.  Click the menu for the characteristic.
    2.  Select **Remove**.

 |
|

3

 |

**Potential Reduction** section

 |

View the [potential reduction](pi-calculations.html#potential-reduction) that Process HQ has calculated for combined characteristics in this insight. Click **Show more details** to view a brief sentence describing how improving these cases could impact the KPI overall.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...