---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/viewing-reports.html
original_path: cu-25.2.1.7/viewing-reports.html
version: "25.3"
title: "Viewing CU Reports"
page_id: "cu-25.2.1.7/viewing-reports"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Viewing CU Reports

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The REPORTS page allows underwriters and managers to view and generate on-demand reports that show key metrics and details about submissions that match specific criteria, view and analyze trends to better understand their team's performance and a portfolio dashboard that allows them to surface customer data through a PowerBI integration.

The REPORTS page has three main parts:

-   On-Demand Reports
-   Trends Reports
-   Portfolio View

**Caution:**  To pull your external customer and claims data into your Connected Underwriting P&C solution and view it from the [Portfolio View](viewing-reports.html#portfolio-view-tab) tab under [REPORTS](viewing-reports.html), You must configure the connected system for the Microsoft PowerBI integration.

This page describes how to use the REPORTS page to find the data you need to understand where your submissions are in the underwriting process, how well your team is performing and where they need more support, and how to access your customer data in other systems in the Connected Underwriting P&C solution.

## On-Demand Reports tab

Connected Underwriting P&C allows you to generate and view on-demand reports that provide real-time data about all submissions in the underwriting pipeline for a given period or submissions that match specific criteria. The up-to-date information in these reports gives you greater confidence in your decisions because you know the data is current and accurate.

Key metrics at the top of this page provide a quick snapshot of where your business stands with regard to submissions resulting in new business, renewals, acceptance, and declines.

![on-demand-key-metrics-renewals](images/on-demand-key-metrics-renewals.png)

### Generating on-demand reports

When you navigate to the REPORTS page, by default, the On-Demand Report tab is selected, and Connected Underwriting P&C displays an on-demand report for all New Businesses for the current date.

![on-demand-report-filters.png](images/on-demand-report-filters.png)

To generate a new on-demand report that matches specific criteria, apply one or more filters and click GENERATE REPORT. The resulting report displays key metrics and data for the submission data you want to see.

Available filters include:

-   **Report Type**: Users can select to generate an on-demand report for a specific type only. Report types options include: _New Business_, _Renewals_, _Accept_, and _Decline_.
-   **Date Range**: Users can select to look at the report data over time using the data range picker (start and end dates). By default, the on-demand report dashboard displays the current date as the start and end time.
-   **Insurance Line of Business**: The business classification defined by the insurer and associated with submissions. Selections include **Commercial Auto**, **Commercial Package**, and **Commercial Property**.
-   **Broker Office**: The broker office who submitted the submission for a customer.
-   **Customer State**: The US territory for a customer associated with a submission.

### Viewing reports

After generating an on-demand submission report, you can see key metrics that summarize the submissions that match your filter criteria, including the total number of new submissions that account for new business, new business accepted, new business declined, and the average time it takes to reach a submission decision.

**Note:**  Note that the **Avg. Time to Decision** metric is calculated from the average time between the submission creation date and the submission decision date for the start and end dates you define when generating the report.

In addition, you can view a list of all the submissions in the report grid. To get detailed data about a particular submission, locate the submission record in the report grid and click the associated link to drill down into the submission record.

![drill-down-submission-record](images/drill-down-submission-record.png)

#### Exporting reports

_Do you need to view or reference an on-demand report outside the solution?_ Whether you need to share submission data with other teams for collaboration or compliance or make the data more accessible by making it available in a different format, Connected Underwriting P&C makes it easy for you to export an on-demand report to Excel by clicking the **download** icon.

![trends_report_export.png](images/trends_report_export.png)

## Trends tab

The Trends tab gives underwriting and managers insights into how their teams perform by allowing them to view productivity metrics and determine where submissions are in the underwriting process. This data can help them quickly identify their teams' caseload and throughput, any bottlenecks in the process, and any reoccurring positive or negative patterns by team, line of business, state, and more.

The Trends tab includes the following reports:

-   [Volume By Line of Business](#volume-by-line-of-business-report)
-   [Submission by Broker Office](#submission-by-broker-office-report)
-   [Average Cycle Time](#average-cycle-time-report)
-   [Submission Creation by Type](#submission-creation-by-type-report)
-   [Submission Decisions](#submission-decisions-report)
-   [Volume By Customer State](#volume-by-customer-state-report)
-   [Declined Submission Reasons](#declined-submission-reasons-report)

![trends_tab_all_reports.png](images/trends_tab_all_reports.png)

_Need to see your team's productivity during a specific date range or determine the number of submissions created for a specific line of business?_ The Trends page allows you to apply one or more filters to adjust the data shown in all the reports to display only the data that match your filter criteria. For example, select a start and end date filter to display the data for a specific date range or select one or more LOBs to display the data for specific lines of business for a given date range.

A start and end date are required for the Trends reports. By default, the display data for all lines of business and all customer states for the current date.

### Volume By Line of Business report

The **Volume By Line of Business** pie chart displays the volume of submissions by percentage for each line of business.

![cu_trends_volume_by_lob.png](images/cu_trends_volume_by_lob.png)

As an underwriting manager or admin, you can use this chart to answer the following questions:

-   What is the total volume of submissions my organization is handling:
    -   During a specific time (start and end date)?
    -   For a specific customer state or across all customer states?
    -   For a specific line of business or across all lines of business?

You can also apply one or more filters to the Trends tab to narrow the data displayed in this chart to return only the submissions that match specific criteria.

### Submission By Broker Office report

The **Submission By Broker Office** stacked bar chart displays the count of the top five submissions with an _accept_ or _decline_ decision by the broker office. To view a list of all submissions across your broker offices, click the **View All** link associated with this chart.

![cu_trends_submissions_by_broker.png](images/cu_trends_submissions_by_broker.png)

_Want more detailed information about the submissions for a specific broker office?_ Hover over a specific bar in the chart to see the number of _accepted_ vs. _declined_ submissions for that broker office.

![cu_trends_submissions_by_broker_count.png](images/cu_trends_submissions_by_broker_count.png)

Additionally, when you hover over a specific bar, you can click the **Accept** link or **Decline** link to see a list view of all the submissions with an accept or decline decision for that particular broker.

![trends_submissions_by_broker_list](images/trends_submissions_by_broker_list.png)

As an underwriting manager or admin, you can use this chart to answer the following questions:

-   What is the total number of submissions for each broker office that have reached an accept or decline decision:
    -   During a specific time (start and end date)?
    -   For a specific customer state or across all customer states?
    -   For a specific line of business or across all lines of business?

You can also apply one or more filters to the Trends tab to narrow the data displayed in this chart to return only the submission data that match specific criteria.

### Average Cycle Time report

The **Average Cycle Time** section displays two data points: the average number of days it takes for your organization to make a submission acceptance decision and the average number of days it takes to decline a submission.

![cu_trends_avg_cycle_time](images/cu_trends_avg_cycle_time.png)

You can also apply one or more filters to the Trends tab to narrow the data displayed in this section to return only the average number of days it takes your organization to accept or decline a submission for:

-   A specific time (start and end date)?
-   A specific customer state or across all customer states?
-   A specific line of business or across all lines of business?

### Submission Creation by Type report

The **Submission Creation by Type** line graph compares the number of submissions that resulted in new business vs. renewals that your organization handled during the prior six months.

![cu_trends_submission_creation_by_type](images/cu_trends_submission_creation_by_type.png)

Additionally, when you hover over a specific point on the line graph, Connected Underwriting P&C shows the exact number of submissions that resulted in new business or renewals.

![cu_trends_submission_creation_by_type_count](images/cu_trends_submission_creation_by_type_count.png)

You can also apply one or more filters to the Trends tab to narrow the data this line graph displays to return only the submissions that resulted in new business vs. renewals for:

-   A specific customer state or across all customer states?
-   A specific line of business or across all lines of business?

By default, the results returned map to the submission data for the prior six months.

### Submission Decisions report

The **Submission Decisions** pie chart displays the percentage of submissions your organization handled that were accepted vs. declined.

![cu_trends_submission_decisions](images/cu_trends_submission_decisions.png)

As an underwriting manager or admin, you can apply one or more filters to the Trends tab to narrow the data this pie chart displays to return only the submissions that were accepted or declined for:

-   A specific time (start and end date)?
-   A specific customer state or across all customer states?
-   A specific line of business or across all lines of business?

### Volume By Customer State report

The **Volume By Customer State** stacked bar chart displays the volume of submissions your organization handled for each line of business by customer state. By default, this chart only shows the top 5 submission results.

![cu_trends_volume_by_customer_state](images/cu_trends_volume_by_customer_state.png)

You can also apply one or more filters to the Trends tab to narrow the data displayed in this chart to return only the submission data that match specific criteria.

To view this data in list form, click the **View All** link associated with this chart. Connected Underwriting P&C will display the data by customer state, showing the total number of submissions for commercial property, commercial auto, and commercial package.

![cu_trends_volume_by_customer_state_list](images/cu_trends_volume_by_customer_state_list.png)

Click on the submission count for any line of business to see a complete list of the submission records. Use this view to locate a specific submission record, and click the record link to drill down and see more details. You can also access the customer record from this view.

![cu_trends_volume_by_customer_state_lob_record_list](images/cu_trends_volume_by_customer_state_lob_record_list.png)

As an underwriting manager or admin, you can use this chart to answer the following questions:

-   What is the total number of submissions your organization handled for each line of business by customer state:
    -   During a specific time (start and end date)?
    -   For a specific customer state or across all customer states?
    -   For a specific line of business or across all lines of business?

You can also apply one or more filters to narrow the data in this graph down to return the results that match your filter criteria.

### Declined Submission Reasons report

The **Declined Submission Reasons** pie chart shows an underwriting manager the percentage of submissions that were declined by reason. Options include: **Submission Withdrawn**, **Coverage Not Offered**, **Loss Exposure**, **Loss History**, and **Other**, which consists of any submissions that were declined for reasons that do not match one of the other decline categories.

![cu_trends_declined_submissions_reasons](images/cu_trends_declined_submissions_reasons.png)

You can use this chart to answer the following questions:

-   How many submissions were declined because your company did not offer the type of coverage requested?
-   How many submissions were declined by the customer was considered high risk?
-   How many submissions were declined for any reason during a specific time (start and end date)?
-   How many submissions were declined for a specific line of business?
-   How many submissions were declined for a specific customer state?

## Portfolio View tab

Having a macro view of your entire business is critical to decision-making. Connected Underwriting P&C provides a way for you to surface a portfolio view of your external data sources through a Microsoft PowerBI integration.

Once this integration is set up and configured, you'll have access to the Portfolio View tab on the REPORTS page as an underwriting manager. This tab provides a dashboard view that allows you to surface reports and data from your external systems into your Connected Underwriting P&C solution, providing a centralized view of all the information you need to understand your health of your business operations at any time. Have the insights you need to identify and track key performance indicators that tell you how well your teams are doing against major goals and initiatives and make sound decisions about changes, risks, and other factors that impact your business.

See [Integrating with Microsoft PowerBI](managing-integrations.html#integrating-with-microsoft-powerbi) for instructions on how to set up the connected system and configure the Microsoft PowerBI integration with your Connected Underwriting P&C solution.

**Note:**  The Microsoft PowerBI is optional integration. You will only have access to the Portfolio View tab in REPORTS when this integration is configured through a connected system.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...