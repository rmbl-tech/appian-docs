---
source_url: https://docs.appian.com/suite/help/25.3/investigate.html
original_path: investigate.html
version: "25.3"
title: "Drill Down to Insights"
page_id: "investigate"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Drill Down to Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to drill down into analytical details about your process and create insights that highlight areas for process improvements and efficiency.

You must have [Analyst permissions](configure-security.html) for a process to drill down to and save insights for that process.

## Overview

As you [explore your process](explore.html), you may find characteristics of that process that you want to specifically analyze to see how they're impacting the speed and efficiency of the process.

You can drill down into these characteristics to evaluate whether they are likely contributors to process slowness or high numbers of unwanted outcomes. As you drill down, Process HQ makes intelligent suggestions and provides you with a calculation called [potential reduction](pi-calculations.html#potential-reduction). This calculation helps you easily determine the importance of characteristic.

[![An example of potential reduction displayed while drilling down](images/process_insights/potential-reduction-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img668)

[![](images/process_insights/potential-reduction-example.png)](#_)

As you evaluate the characteristics of your process, you can combine them into an **insight**, so you can present it to and [collaborate with colleagues](collaborate-on-insight.html) in your organization. By combining characteristics in an insight, you'll be able to understand better where problems are occurring in the process and how to resolve them.

[![An Insight pane that contains three characteristics, Country = Spain, Account Type = Individual, and Accredited Investor = 1](images/process_insights/insight-pane-multiple-characteristics.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img669)

[![](images/process_insights/insight-pane-multiple-characteristics.png)](#_)

When you save an insight, Process HQ automatically associates it with a KPI, even if you start drilling down from a process diagram or case attribute. The KPI then serves as the central point of access for your saved insights, so you can get started sharing actionable conclusions with your organization.

## What to look for

A [business process](key-pi-terms.html#business-process) consists of a series of [activities](key-pi-terms.html#cases-activities-events), [sequences](key-pi-terms.html#sequences), and [attributes](key-pi-terms.html#attributes), corresponding to real-world tasks and information about those tasks.

To evaluate your process, you can focus on:

-   **Duration:** Look at how long a case, activity, or sequence takes on average, so you can speed up slow processes. Process HQ calculates a [potential reduction](pi-calculations.html#potential-reduction-duration) that shows the days of work you could save each year.

-   **Count:** Look at how often an unwanted outcome occurs, so you can reduce or even eliminate that outcome from your process. An unwanted outcome can be cases with a specific attribute or cases that include a specific sequence or activity. Process HQ calculates a [potential reduction](pi-calculations.html#potential-reduction-count) that shows the number of unwanted outcomes you could eliminate to bring these cases in line with the average.

-   **Conformance:** Look at how often activities within a sequence occur in the expected order. Process HQ calculates a [potential reduction](pi-calculations.html#potential-reduction-count) that shows the number of unexpected sequences you could eliminate to improve your overall conformance rate.

As you evaluate characteristics both individually and collectively, follow the guidelines described below.

### Look for the unexpected and meaningful

Pay the most attention to analysis that reveals something unexpected and meaningful about your process.

For example, in a Financial Onboarding process, the analysis might reveal that cases with a **Country** attribute of `Spain` take far longer than cases in other countries. Or the analysis might reveal that the sequence **Financial Review to Financial Review**, a repetition of a single activity, is unexpectedly happening in a high percentage of the slowest cases.

### Ignore the expected and unchangeable

Ignore analysis that you'd expect based on the business context, and ignore analysis of attributes, activities, or sequences that your organization doesn't have the power to change.

For example, your case data might include an attribute value that indicates the case must undergo review and approval by an external agency (for example, a case attribute like **Customer Type** with a value of `Federal`). In this scenario, your organization is not likely to be able to improve the slowness of steps associated with that external review.

On the other hand, your case data might include an attribute value that indicates a third-party vendor completes certain steps (for example, an event attribute like **User** with a value of `Wickham Outsourcing Unlimited`). In this scenario, you might have service-level agreements with that vendor that you can leverage for change.

### Remember the inherited filters

The data you see on drilling down is always focused by filters set at higher levels, so the data is increasingly narrower with each level. If you're not seeing data you expect when you start drilling down, check the setting of the inherited filters.

These higher-level filters include:

-   [Time period](explore.html#set-the-time-period)
-   [View filters](process-views.html#edit-view-filters)
-   [KPI definition](process-custom-kpis.html#edit-kpi-definition)

[![An example of how filters are applied at different levels](images/process_insights/inherited-filter-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img670)

[![](images/process_insights/inherited-filter-example.png)](#_)

For example, in the image above:

-   The time period might be set to show only cases between June and December 2024.
-   The view filters might focus the data on cases with an **Approved (Status)** attribute.
-   The KPI might count only cases that include a **Request for Information** activity.

In this example, when you start to drill down, you'll only see an analysis of approved cases that include an Request for Information activity between June and December 2024.

## Before you begin

-   [Explore your business process](explore.html) to determine what aspects of the data you want to look most closely at.
-   (Optional) You can always use the [Average Duration KPI](process-custom-kpis.html#system-provided-kpis) as your starting point, but as you get to know your process better, [create a KPI](process-custom-kpis.html#create-a-kpi) that tracks a specific activity, sequence, or attribute that's particularly relevant to your business.

## Step 1: Start drilling down

You can start drilling down in a number of ways:

-   [Start with a KPI](#start-with-a-kpi).
-   [Start with the process diagram](#start-with-the-process-diagram).
-   [Start with a case attribute](#start-with-a-case-attribute).
-   [Start with the conformance rate](#start-with-the-conformance-rate).

How you start depends on what you want to look closely at:

|
Want to Look At

 |

Start With

 |
| --- | --- |
|

Average duration of all cases in the current view

 |

[Average Case Duration KPI](#start-with-a-kpi)

 |
|

Average duration of cases with a specific attribute

 |

[Case attribute](#start-with-a-case-attribute) or [case duration KPI](#start-with-a-kpi)

 |
|

Average duration of a sequence

 |

[Process diagram](#start-with-the-process-diagram) or [sequence duration KPI](#start-with-a-kpi)

 |
|

Average duration of an activity

 |

[Process diagram](#start-with-the-process-diagram) or [activity duration KPI](#start-with-a-kpi)

 |
|

Occurrence of an activity, sequence, or attribute

 |

[Count KPI](#start-with-a-kpi)

 |
|

Conformance of activities to the expected order

 |

[Conformance KPI](#start-with-the-conformance-rate)

 |

### Start with a KPI

You can drill down from either a count KPI or an average duration KPI, including the system-provided Average Duration KPI.

To start drilling down from a KPI:

1.  [Access a KPI](process-custom-kpis.html#access-a-kpi).
2.  In the information pane, click **START DRILLING DOWN**. The [drilldown page](drilldown-page.html) displays.

**Tip:**  You can also drill down on a KPI on a [view page](process-view-page.html). To do so, go to either the **PINNED KPIs** section or **All KPIs** tab, click the three-dot menu in a KPI, then select **Start Drilling Down**.

### Start with the process diagram

To start drilling down from the [process diagram](explore.html#review-the-process-diagram):

1.  [Access a view](process-views.html#access-a-view).
2.  In the process diagram, click on a connector or a node.

    **Note:**  You can only drill down from a node if your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp.

    [![A process diagram with a selected sequence highlighted in yellow](images/process_insights/process-diagram-sequence-highlighted.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img671)

    [![](images/process_insights/process-diagram-sequence-highlighted.png)](#_)

    The [sequence or activity details](explore.html#view-process-part-details) display.

    For example:

    [![Sequence details dialog](images/process_insights/sequence-details-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img672)

    [![](images/process_insights/sequence-details-dialog.png)](#_)

3.  Review the metrics, visualizations, and KPI preview. Your goal is to determine whether the analysis of this sequence or activity is meaningful based on your business context.

4.  Click **START DRILLING DOWN**. The [drilldown page](drilldown-page.html) displays.

### Start with a case attribute

You can start drilling down on a specific case attribute from a KPI page.

To start drilling down on a case attribute:

1.  [Access a KPI](process-custom-kpis.html#access-a-kpi).

2.  In the **Case Attributes** tab, click an attribute value. The [attribute value details dialog](explore.html#view-attribute-value-details) displays.

    For example:

    [![Attribute value details dialog](images/process_insights/attribute-value-details-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img673)

    [![](images/process_insights/attribute-value-details-dialog.png)](#_)

3.  Review the potential reduction, metrics, and visualizations. Your goal is to determine whether this attribute value is meaningful based on your business context.

4.  Click **START DRILLING DOWN**. The [drilldown page](drilldown-page.html) displays.

    The case attribute you selected as the starting point has been automatically added as a characteristic to the **Insight** pane.

    For example:

    [![Insight pane with a single characteristic](images/process_insights/drilldown-attribute-value-resulting-insight-pane.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img674)

    [![](images/process_insights/drilldown-attribute-value-resulting-insight-pane.png)](#_)

### Start with the conformance rate

When you start drilling down on conformance, you'll be looking at the number of sequences that don't follow the expected order, which typically you'd want to reduce. As a result, the calculations and visualizations you'll see as you drill down will be the same you'd see if you were drilling down directly from a [count KPI](pi-calculations.html#potential-reduction-count).

You can drill down on the conformance rate for activities and sequences from a view page.

If you have previously [defined the expected activity order](process-views.html#define-the-expected-activity-order) for your process, you can start drilling down on a list of all unexpected sequences.

To drill down on the list of unexpected sequences:

1.  [Access a view](process-views.html#access-a-view).

2.  Go to the **Conformance and Costs** tab.

3.  Next to **Total Case Conformance**, click **DRILL DOWN**.

    The **Drilldown: All Unexpected Sequences** dialog displays.

    This dialog contains a list of sequences in the view that do not conform with the expected activity order.

    For example:

    [![Drill Down: All Unexpected Sequences dialog](images/process_insights/drilldown-on-all-unexpected-sequences.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img675)

    [![](images/process_insights/drilldown-on-all-unexpected-sequences.png)](#_)

4.  Click a sequence in the list.

5.  Click **KEEP DRILLING DOWN**. The [drilldown page](drilldown-page.html) displays, and you can now review suggested characteristics.

Alternatively, you can define the expected activity order as you go when you start drilling down on an individual activity in the **Conformance and Costs** list.

To drill down on an individual activity:

1.  [Access a view](process-views.html#access-a-view).

2.  Go to the **Conformance and Costs** tab.

3.  In the grid, click the name of the activity you want to drill down on. The **Drill Down: Unexpected Sequences for <Activity Name>** dialog displays.

    If the expected activity order for this activity is already defined, the dialog contains a list of sequences in the view that start with the selected activity and do not conform to the expected activity order.

    For example:

    [![Drill Down: Unexpected Sequences for Financial Review Activity dialog](images/process_insights/drilldown-on-activity-conformance.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img676)

    [![](images/process_insights/drilldown-on-activity-conformance.png)](#_)

4.  If you have not previously defined the expected activity order, do so now:

    1.  Select an expected sequence:

        |
        Expected Sequence

         |

        Description

         |
        | --- | --- |
        |

        Any activity can follow except for itself

         |

        Select this option if the activity should not immediately repeat. No action is needed on the **Specific Activities** list.

         |
        |

        Any activity can follow

         |

        Select this option if any activity can follow this activity. No action is needed on the **Specific Activities** list. This option is the equivalent of setting no expected order; select it if you want to return to that default behavior.

         |
        |

        No activity should follow

         |

        Select this option for the activity that represents the end of the business process. No action is needed on the **Specific Activities** list.

         |
        |

        Only specific activities should follow

         |

        Select this option to set the expected sequence order. Then, from the **Specific Activities** list, select one or more activities that can appropriately follow the activity.

         |

    2.  Click **UPDATE**.

5.  (Optional) To edit the expected activity order:
    1.  Click . The **Expected Activity Order** pane displays.
    2.  Edit the expected sequence.
6.  Click a sequence in the list.

7.  Click **KEEP DRILLING DOWN**. The [drilldown page](drilldown-page.html) displays, and you can review suggested characteristics.

## Step 2: Review characteristics

Now that you've started drilling down, you're looking at the [suggested characteristics list](drilldown-page.html#suggested-characteristics-list) in the drilldown page.

For example:

[![Drilldown page example](images/process_insights/drilldown-page-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img677)

[![](images/process_insights/drilldown-page-example.png)](#_)

Decide what you want to do next:

-   [Follow Process HQ's recommendations](#follow-process-hqs-recommendations)
-   [Review an already-known attribute](#review-an-already-known-attribute)

**Tip:**  At this point, your evaluation is in a temporary state that will clear if you navigate away. To save the characteristics you're looking at, [save the insight](#step-5-save-the-insight).

### Follow Process HQ's recommendations

To follow process HQ's recommendations:

1.  Click the first attribute value in the suggested characteristics list. The [attribute value details](drilldown-page.html#attribute-value-details) display in the characteristics pane.

2.  Review the potential reduction, metrics, and visualizations for the attribute. Your goal is to determine whether this characteristic is [unexpected and meaningful](#what-to-look-for) in your business context.

### Review an already-known attribute

You may already know the process well enough that you have a specific attribute value you want to drill down on right away.

To drilldown an already-known attribute value:

1.  At the end of the suggested characteristics list, click **Browse All**. The **All Attributes** list displays. This list contains all attributes and attribute values associated with the process.

    For example:

    [![All Attributes list](images/process_insights/all-attributes-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img678)

    [![](images/process_insights/all-attributes-list.png)](#_)

    **Tip:**  As you review all attributes, you'll continue to see intelligent recommendations via the **SUGGESTED** tag. This tag appears next to attributes associated with long durations or frequent occurrences depending on the related KPI.

2.  (Optional) In the **Attribute** column, click on an attribute name to view a [comparison](pi-visualizations.html#duration-comparison) of the attribute values. To return to the list, click the arrow next to the pane title.
3.  In the **Attribute Values** column, click on the value you're interested in to view the [attribute value details](drilldown-page.html#attribute-value-details).
4.  Review the potential reduction, metrics, and visualizations. Your goal is to determine whether this attribute value is [unexpected and meaningful](#what-to-look-for) in your business context.

## Step 3: Add a characteristic to your insight

Based on [your review of the characteristic](#step-2-review-characteristics), you can decide that the characteristic is meaningful enough that you'd like to see what else sticks out about cases with that characteristic.

To see the analysis of those additional characteristics, click **KEEP DRILLING DOWN** in the attribute details header.

The characteristic now displays in the [**Insight** pane](drilldown-page.html#insight-pane).

For example:

[![An Insight pane populated with a single characteristic](images/process_insights/insight-pane-updated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img679)

[![](images/process_insights/insight-pane-updated.png)](#_)

The [characteristics pane](drilldown-page.html#elements) shows you the next characteristics Process HQ suggests you evaluate.

When you add a characteristic to an insight, you're essentially applying a new filter to the cases you're evaluating. The data on the page narrows to the context of cases affected by the characteristic you added.

For example, let's say all cases you were evaluating originally included the following:

| Case ID | Country | Account Type | Status |
| --- | --- | --- | --- |
| 100 | Spain | Corporate | Rejected |
| 101 | Spain | Corporate | Approved |
| 103 | Germany | Individual | Deferred |

If you add the characteristic, **Spain (Country)**, to an insight, the new attribute values you can review now include the following:

| Case ID | Country | Account Type | Status |
| --- | --- | --- | --- |
| 100 | Spain | Corporate | Rejected |
| 101 | Spain | Corporate | Approved |

You'd see **Corporate**, **Rejected**, and **Approved** as possible attribute values to evaluate.

## Step 4: Review and add more characteristics

Typically, a single characteristic doesn't give enough information to identify concrete actions you can take to improve the process. An insight is most useful when the combined characteristics are granular enough that you can see specific actions to take, but they still apply to a large number of cases so that acting on the insight will provide a measurable improvement. Typically, this means you'll add about two to three findings to an insight.

For example:

[![An Insight pane that contains three characteristics, Country = Spain, Account Type = Individual, and Accredited Investor = 1](images/process_insights/insight-pane-multiple-characteristics.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img680)

[![](images/process_insights/insight-pane-multiple-characteristics.png)](#_)

Expect an iterative process as you review more characteristics and add them to your insight. You'll evaluate one aspect of your process, then evaluate the next aspect in the context of that first aspect, until you reach an actionable conclusion. Each step of the way, the [characteristics pane](drilldown-page.html#elements) shows you the next characteristics Process HQ suggests you evaluate next.

As you're evaluating characteristics, you might want to refine the characteristics included in the insight. For example, you might determine that a specific characteristic relates to a condition your organization does not have power to change. To support this refinement flow, you can [remove the most recent characteristic](#remove-the-most-recent-characteristic) from an insight or [clear all characteristics](#clear-the-insight) from the insight to start your evaluation over.

### Remove the most recent characteristic

To remove the most recent characteristic, click the three-dot menu in the characteristic, then select **Remove**.

[![Context menu displaying View Details and Remove options](images/process_insights/remove-characteristic-from-insight.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img681)

[![](images/process_insights/remove-characteristic-from-insight.png)](#_)

Process HQ removes that characteristic from the insight pane and appropriately adjusts the potential reduction calculated for the insight.

### Clear the insight

To clear all characteristics from the insight, select **CLEAR** in the insight header.

[![Insight pane with CLEAR highlighted in header](images/process_insights/clear-characteristics-from-insight.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img682)

[![](images/process_insights/clear-characteristics-from-insight.png)](#_)

Then, click **CLEAR INSIGHT** to confirm. The [drilldown page](drilldown-page.html) displays, and you can start [reviewing characteristics](#step-2-review-characteristics) from scratch.

## Step 5: Save the insight

Once you've built a sufficiently actionable insight, you can save it to [share with colleagues and collaborate together](collaborate-on-insight.html).

To save a new insight:

1.  In the header of the drilldown page, click **SAVE INSIGHT**.

    [![images/process_insights/save-new-insight-step.png](images/process_insights/save-new-insight-step.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img683)

    [![](images/process_insights/save-new-insight-step.png)](#_)

    The **Save New Insight** dialog displays.

2.  For **Insight Name**, enter a short, meaningful name for the insight. For example, `Individual Accounts in Spain`.

    **Tip:**  Once you've saved an insight, you can take advantage of [AI-generated summaries](collaborate-on-insight.html#add-a-description-to-a-saved-insight) in [select regions](security-compliance.html#ai-copilot-regional-availability).

3.  Continue as appropriate:

    -   **Stop drilling down:** To stop drilling down, click **SAVE AND EXIT**. The [insight page](insight-page.html) displays, where you can review the insight you created and even [start collaborating on the insight](collaborate-on-insight.html) with colleagues.
    -   **Keep drilling down:** To review and evaluate more characteristics of the process, click **SAVE AND CONTINUE**. The drilldown page continues displaying, with the page title in the header showing the insight name you configured. The [characteristics pane](drilldown-page.html#elements) shows you the next characteristics Process HQ suggests you evaluate.

### System-generated KPIs

When you save an insight, Process HQ attempts to find an existing KPI to relate the insight to. If the system cannot find an appropriate KPI, it automatically generates a KPI, as follows:

|
Drilldown Started With

 |

System-generated KPI

 |

Example

 |
| --- | --- | --- |
|

[process part](#start-with-the-process-diagram) or [case attribute](#start-with-a-case-attribute)

 |

[Average duration KPI](process-custom-kpis.html#define-the-duration-kpi) based on the process part or case attribute you started on

 |

You started with the activity, Financial Review, so the system creates a duration KPI named **Avg. Duration of Financial Review**.

 |
|

[conformance rate](#start-with-the-conformance-rate)

 |

[Count KPI](process-custom-kpis.html#define-the-count-kpi) based on the unexpected sequence you selected

 |

You selected the unexpected sequence, **KYC Review to Financial Review**, so the system creates a count KPI with that name.

 |

This system-generated KPI is [unpinned](process-custom-kpis.html#pin-and-unpin-a-kpi) by default.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...