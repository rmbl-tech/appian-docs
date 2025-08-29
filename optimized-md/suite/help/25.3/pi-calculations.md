---
source_url: https://docs.appian.com/suite/help/25.3/pi-calculations.html
original_path: pi-calculations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Calculations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes the calculations, metrics, and units that display when you [drill down](investigate.html) on process characteristics.

## Overview

As you drill down on a process characteristic, you'll see calculations and metrics to help you assess whether a characteristic could be meaningful to optimizing your process.

These calculations and metrics rely on a [**comparison KPI**](#comparison-kpi). This comparison KPI determines how Process HQ calculates [potential reduction](#potential-reduction) for each characteristic, which [metrics](#metrics) you'll see as you drill down, and whether the potential reduction and metrics [display in terms of cases or occurrences](#unit-of-analysis).

## Comparison KPI

A comparison KPI is what Process HQ compares the characteristics you're [drilling down](investigate.html#step-1-start-drilling-down) on against. If you implement changes related to the characteristics in the drilldown or insight, you will see improvement in this KPI.

The comparison KPI varies depending on how you start drilling down, as follows:

|
Drilldown Started With

 |

Comparison KPI

 |
| --- | --- |
|

[duration or count KPI](investigate.html#start-with-a-kpi)

 |

The KPI you started on.

 |
|

[process part](investigate.html#start-with-the-process-diagram) or [case attribute](investigate.html#start-with-a-case-attribute)

 |

An [average duration KPI](process-custom-kpis.html#define-the-duration-kpi) based on the activity, sequence, or case attribute you started on.

 |
|

[conformance rate](investigate.html#start-with-the-conformance-rate)

 |

A [count KPI](process-custom-kpis.html#define-the-count-kpi) based on the unexpected sequence you selected.

 |

As you're drilling down, you will see this KPI in the **Comparison KPI** pane.

For example:

[![images/process_insights/drilldown-page-comparison-kpi.png](images/process_insights/drilldown-page-comparison-kpi.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img713)

[![](images/process_insights/drilldown-page-comparison-kpi.png)](#_)

## Unit of analysis

Depending on the configuration of the comparison KPI, calculations and metrics will display in terms of either [cases](#cases) or [occurrences](#occurrences). We refer to this as the _unit of analysis_.

**Tip:**  This guidance for understanding the unit of analysis also applies to statistics in the [suggested characteristics list](drilldown-page.html#suggested-characteristics-list).

### Cases

The analysis displays in terms of cases if the comparison KPI is either of the following:

-   An average duration KPI configured to track case duration, including the system-provided [Average Case Duration KPI](process-custom-kpis.html#system-provided-kpis).
-   A count KPI configured to track cases in which a specific activity, sequence, or attribute occurs.

For example, these attribute details show cases:

[![Cases highlighted as a unit of analysis in the attribute value details](images/process_insights/attribute-value-details-cases.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img714)

[![](images/process_insights/attribute-value-details-cases.png)](#_)

### Occurrences

The analysis displays in terms of occurrences if the comparison KPI is either of the following:

-   An average duration KPI configured to track activity or sequence duration.
-   A count KPI configured to track how often an activity, sequence, or attribute value occurs in your process.

For example, in a KPI that tracks occurrences of a sequence, the [attribute value details](drilldown-page.html#attribute-value-details) will show you how many times a sequence with that attribute occurs in cases related to the KPI. This occurrence count can be an important distinction if the same sequences or activities occur multiple times per case, representing significant rework.

[![Occurrences highlighted as a unit of analysis in process part details](images/process_insights/attribute-value-details-occurrences.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img715)

[![](images/process_insights/attribute-value-details-occurrences.png)](#_)

## Potential reduction

The potential reduction is Process HQ's estimate of how much improvement you could see in your process if you implemented changes based on specific characteristics.

Calculations of potential reduction display for each characteristic as you drill down and collectively for all characteristics included in an insight.

The calculation used to determine potential reduction changes depending on whether the [comparison KPI](#comparison-kpi) tracks [duration](#potential-reduction-duration) or [count](#potential-reduction-count).

### Duration

If the comparison KPI tracks duration, this number represents the time you could save each year if the average duration of cases or occurrences with this attribute value could match the average duration of all cases or occurrences related to the KPI.

Process HQ calculates this number based on the average duration of all cases or occurrences with the characteristics specified in the insight. This calculation estimates the time you could recover over the course of a year.

More specifically, Process HQ uses the following formula:

**potential reduction = (characteristic duration - target duration) x count x realization rate**

This formula contains the following elements:

-   **Characteristic duration**: The average number of days it takes to complete cases or occurrences related to the KPI that have the selected characteristic(s).
-   **Target duration**: The average number of days that it takes to complete cases or occurrences related to the KPI.
-   **Count**: The total number of cases or occurrences with the selected characteristic(s) in the insight.
-   **Realization rate**: An adjustment to make the estimate more realistic and reachable, as follows:

    |
    Characteristic

     |

    Rate

     |

    Why

     |
    | --- | --- | --- |
    |

    Attribute value

     |

    100%

     |

    Typically, an attribute value represents a condition your business can change.

     |
    |

    Repetition

     |

    100%

     |

    Typically, a repetition can be eliminated entirely from a process.

     |
    |

    Sequence or activity

     |

    25%

     |

    The duration of a sequence or activity is more likely to reflect expected or unchangeable business conditions.

     |

    We know you have to be strategic about where you put your resources, so Process HQ gives you the data to focus your improvements where they'll deliver the greatest benefit.

**Tip:**  Although calculated per year, the potential reduction is not limited to the number of days in a calendar year. Instead, this calculation represents time that could be saved collectively across the multiple times the process runs in the calendar year.

#### Example

Let's say your KPI counts the average duration of closed cases. You want to look closer now at cases related to this KPI that have the attribute Spain (Country).

Here are the values Process HQ uses in its calculation:

-   **Characteristic duration**: When cases related to this insight have this attribute, they take 30 days on average to complete.
-   **Target duration**: When cases not related to this insight have this attribute, they take 15 days on average to complete.
-   **Count**: There are 100 cases related to this insight that have this attribute.
-   **Realization rate**: The rate for cases with a specific attribute value is 100%.

In this scenario, the potential reduction for closed cases in Spain is 1,500 days per year:

**(30 - 15) \* 100 \* 100% = 1500**

### Count

If the comparison KPI is a count KPI, this number indicates the potential for eliminating unwanted occurrences of an activity, sequence, or attribute. The higher the number, the greater the potential.

To calculate this number, Process HQ compares how often this attribute occurs in cases or occurrences related to the KPI to how often this attribute occurs in cases not related to the KPI or insight.

More specifically, Process HQ uses the following formula to calculate:

**potential reduction = attribute occurrences related to KPI - (target occurrence rate x cases related to KPI)**

This formula contains the following elements:

-   **Attribute occurrences related to KPI**: How many times the attribute occurs in cases related to the KPI.
-   **Target occurrence rate**: The percent of cases not related to the KPI in which the selected attribute occurs.
-   **Cases related to KPI**: The total number of cases related to the KPI.

**Tip:**  The potential reduction for count KPIs reflects how many cases with the selected attribute you could potentially improve. That represents the minimum impact you can have if you're working on improving a KPI that tracks occurrences of [process parts](key-pi-terms.html#occurrences). You could, in fact, have a larger impact because activities and sequences can routinely occur more than once per case. For example, the potential reduction score might be 50, but the occurrences you want to reduce take place 3 times per case, which means you'd be able to eliminate 150 total occurrences.

#### Example

Let's say your KPI counts cases with the Request for More Information activity, where employees must ask customers for additional information. This activity wastes resources, so you want to reduce its frequency. You see there's a high potential to reduce occurrences of the activity when cases have the attribute Spain (Country).

Here are the values Process HQ uses in its calculation:

-   **Attribute occurrences related to KPI**: The attribute occurs in 500 out of 1000 cases related to this KPI.
-   **Target occurrence rate**: The attribute occurs in 100 out of 3000 cases not related to this KPI, or on average 3% of the time.
-   **Cases related to KPI**: There are 1000 cases related to this KPI.

Realistically, you're unlikely to improve the occurrence rate lower than the target rate, so Process HQ calculates the potential reduction to account for that. To achieve the target occurrence rate (3%) in cases related to this KPI, Requests for Information in Spain should occur in only 33 cases, instead of 500 cases:

**3% x 1000 = 33**

Process HQ then subtracts the number of target occurrences from the number of total occurrences related to the KPI:

**500 - 33 = 467**

The potential reduction score is 467. If you focus on reducing the occurrence of Requests for Information activity for cases with the Spain (Country) attribute, your overall Requests for Information could be reduced by 467 cases.

## Metrics

Metrics show you key information you can use to assess the impact of the characteristics you're looking at.

The metrics you see changes depending on whether the [comparison KPI](#comparison-kpi) tracks [duration](#metrics-duration) or [count](#metrics-count).

### Duration

Duration metrics display if the comparison KPI tracks duration.

The metrics vary slightly depending on whether you've drilled down on one characteristic or more than one.

#### Single characteristic

If you've drilled down on a single characteristic, you'll see the following metrics:

[![images/process_insights/drilldown-duration-first-level.png](images/process_insights/drilldown-duration-first-level.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img716)

[![](images/process_insights/drilldown-duration-first-level.png)](#_)

|
Metric

 |

Description

 |
| --- | --- |
|

**Cases/Occurrences with this characteristic**

 |

A two-part value specifying (1) the total number of cases or occurrences related to this KPI that have this attribute value, and (2) what percent cases or occurrences with this attribute are out of all cases or occurrences related to the KPI.

 |
|

**Duration (Average)**

 |

The average duration of cases or occurrences related to this KPI that have this attribute value.

 |

#### Multiple characteristics

If you've drilled down on multiple characteristics, you'll see the following metrics:

[![images/process_insights/drilldown-duration-second-level.png](images/process_insights/drilldown-duration-second-level.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img717)

[![](images/process_insights/drilldown-duration-second-level.png)](#_)

The duration metrics include this additional metric:

|
Metric

 |

Description

 |
| --- | --- |
|

**Cases/Occurrences in insight**

 |

A two-part value specifying (1) the total number of cases or occurrences with this attribute value in the insight, and (2) what percent cases or occurrences with this attribute are out of all cases or occurrences related to the KPI.

 |

### Count

Count metrics display if the [comparison KPI](#comparison-kpi) tracks a count.

The count metrics you see vary depending on whether the comparison KPI is counting [activity/sequence occurrences](#count-of-activitysequence-occurrence) or [cases with the activity/sequence](#count-of-cases-with-this-activitysequence).

#### How to compare metrics related and not related to the comparison KPI

The count metrics display in two sections, so you can compare cases or occurrences related to the comparison KPI to cases or occurrences not related to the comparison KPI.

-   **Cases Related to <Comparison KPI Name>**: All cases that meet the count KPI definition and have the currently selected characteristic.
-   **Cases Related Not Related to <Comparison KPI Name>**: All cases that do not meet the count KPI definition, but have the currently selected characteristic.

For example, in a Financial Onboarding app, a KPI has been configured to count occurrences of the sequence, **KYC Review to Financial Review**. Now, as you drill down, Process HQ has suggested you evaluate the **Spain** value for the **Country** attribute of those occurrences, because that attribute value is associated with higher numbers of this sequence.

In this example:

-   The metrics in **Cases Related to KYC Review to Financial Review** show you cases that have both the **KYC Review to Financial Review** sequence and the **Country** attribute of **Spain**.
-   The metrics in the **Cases Not Related to KYC Review to Financial Review** show you cases that have the **Country** attribute of **Spain**, but not the **KYC Review to Financial Review** sequence.

#### Count of Activity/Sequence occurrence

If the comparison KPI is configured to count specific activity or sequence occurrences, you'll see the following metrics:

[![images/process_insights/drilldown-count-occurrences.png](images/process_insights/drilldown-count-occurrences.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img718)

[![](images/process_insights/drilldown-count-occurrences.png)](#_)

|
Metric

 |

Description

 |
| --- | --- |
|

**Activity/Sequence Occurrence Count**

 |

How many times the activity or sequence with the attribute value occurs in cases related or not related to the KPI or insight, as indicated in the section header.

 |
|

**Case Count**

 |

How many total cases are related or not related to the KPI or insight, as indicated in the section header.

 |
|

**Cases with <attribute value>**

 |

How many cases with the attribute value are related or not related to the KPI or insight, as indicated in the section header.

 |

#### Count of Cases with this activity/sequence

If the comparison KPI is configured to count cases with a specific activity or sequence, you'll see the following metrics:

[![images/process_insights/drilldown-count-cases.png](images/process_insights/drilldown-count-cases.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img719)

[![](images/process_insights/drilldown-count-cases.png)](#_)

|
Metric

 |

Description

 |
| --- | --- |
|

**Case Count**

 |

How many total cases are related or not related to the KPI or insight, as indicated in the section header.

 |
|

**Cases with <attribute value>**

 |

How many cases with the attribute value are related or not related to the KPI or insight, as indicated in the section header.

 |
|

**Percent with <attribute value>**

 |

The percent of total cases that are related or not related to the KPI or insight, as indicated in the section header. This field is only present if the related KPI counts cases with a specific attribute.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...