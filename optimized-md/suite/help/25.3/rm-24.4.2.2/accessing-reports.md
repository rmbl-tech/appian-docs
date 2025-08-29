---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/accessing-reports.html
original_path: rm-24.4.2.2/accessing-reports.html
version: "25.3"
title: "Accessing RM Reports"
page_id: "rm-24.4.2.2/accessing-reports"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Accessing RM Reports

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Information about how requirement are distributed among contracting personnel and whether tasks are completed on time is essential for effectively managing the requirement lifecycle. From the Reports page, you can view important insights and data about an task's due date and completion trend. You can also view information about the work assigned to contracting officers and contracting specialists. The data on this page is divided into two tabs:

-   **Workload:** Displays requirement counts, requirement statuses, and funding amounts for contracting officers and contract specialists in your organization.
-   **Completion:** Displays duration and completion data for tasks.

## Workload Reports

The **Workload** tab is comprised of three main reports:

1.  **Users By Funding**
2.  **Requirement Status and Count**
3.  **Users Mapped by Total Funding and Requirement Count**

You can use the **Start Date** and **End Date** picker to filter the report data on this page to display only the requirement data you want to view for a specific period of time. To view the data for one or more requirement statuses only, simply select one or more statuses in the **Status** dropdown. Use the **Group** checkboxes to filter the requirements by user group. Lastly, use the **Assignee** picker to filter the data by user to view only the requirement data for a specific user or users.

![Workload Reports dashboard featuring user funding, requirement status, and mapped users.](images/workload_reports_1.png)

1.  The **Users By Funding** report displays users in the Contracting Personnel group and displays data about the amount of funding each user is responsible for.

    ![Users By Funding report: allocated funding amounts for contracting personnel.](images/workload_reports_2.png)

2.  The **Requirement Status and Count** report shows a breakdown of requirements assigned to each user by status.

    ![Requirement Status and Count report: Requirements by user and status.](images/workload_reports_3.png)

    Use this report to quickly view the number of requirements and their statuses by user. By hovering over each column, you can view the number of requirements in each status including, **Draft**, **Submitted**, **Accepted**, **Assigned**, and **Submitted**. This section helps you to make decisions about how you want to manage your team resources by allowing you to see if any user appears to be responsible for too many requirement items. It also enables you to see if a user is falling behind on their assigned items.

3.  The **Users Mapped by Total Funding and Requirement Count** report provides a comprehensive view of the total number of requirements and allocated funding amount for each user.

    ![Scatter plot of user requirement count vs. total funding.](images/workload_reports_4.png)

    In this section, you see each user as a data point. The x-axis displays the number of assigned requirements for each user and the y-axis displays the total funding amount of the requirements.

## Completion Reports

The **Completion** tab contains four key reports:

1.  **Completed Tasks by Status**
2.  **Completed Tasks by Category**
3.  **Due Date Changes by Reason**
4.  **Tasks by Actual and Estimated Duration**.

You can filter the reports on this page by using the **Requirement** picker to display only information for the selected requirement. You can also select a checklist from the **Checklist** dropdown to display data for a specific checklist.

![Completion Reports dashboard showing task status, categories, due date changes, and duration.](images/completion_reports_1.png)

1.  The **Completed Tasks by Status** report shows all the completed tasks broken down by the following statuses:

    -   Ahead of Schedule: The task is completed before the assigned due date.
    -   On Schedule: The task is completed on the assigned due date.
    -   Behind Schedule: The task is completed after the assigned due date.

        ![Completed Tasks by Status donut chart: Ahead, On, or Behind Schedule distribution.](images/completion_reports_2.png)

    This report provides valuable insight into whether the majority of requirement tasks are being completed in a timely manner, and whether managers are correctly estimating the amount of time needed to complete the tasks and the capacity of their employees. To see the number of tasks in each status, simply hover over each segment to see the number of tasks in each status.

2.  The **Completed Tasks by Category** report groups the tasks into categories and provides a breakdown of each category by the total number of tasks and task status.

    ![Horizontal bar chart of completed tasks by category and their schedule status.](images/completion_reports_3.png)

    You can use this report to spot completion rate trends by category and determine if any categories have a completion rate that is typically ahead of or behind schedule. You can view the number of tasks in each status by hovering over each row.

3.  The **Due Date Changes by Reason** report uses the new Edit Due Date functionality to display the number of due date changes, split out by the reasons for each change.

    ![Donut chart: Due Date Changes by Reason.](images/completion_reports_4.png)

    By hovering over a segment, you can view the number of due date changes for that reason. This report can help you understand why due dates are being edited.

4.  The tasks by Actual and Estimated Duration section shows the duration difference between the estimated duration and actual duration of each checklists task, which is calculated as follows:

    -   Estimated Duration: number of days between the task start date and the task due date.
    -   Actual Duration: number of days between the task start date and the actual completion date.
    -   Duration Difference: the difference between Actual Duration and Estimated Duration.

    ![Tasks by Actual and Estimated Duration report: grid and duration difference bar chart.](images/completion_reports_5.png)

In the grid, you can sort the rows by Task, Assignment, Estimated Duration, Actual Duration, and Duration Difference. Use this section to view which tasks have the greatest discrepancy between their assigned due date and actual completion date.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...