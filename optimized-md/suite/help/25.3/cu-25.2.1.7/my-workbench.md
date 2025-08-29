---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/my-workbench.html
original_path: cu-25.2.1.7/my-workbench.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# My Workbench

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

When you log in to Connecting Underwriting, MY WORKBENCH opens by default. From this page, underwriting managers can access all the information they need for the submission underwriting process because it provides a consolidated view of the following data:

1.  Submissions KPIs
2.  Open Alerts
3.  Workload Metrics
4.  Submissions List
5.  Open Tasks

![cu-my_workbench-submissions_alerts_tasks_highlighted.png](images/cu-my_workbench-submissions_alerts_tasks_highlighted.png)

Note that underwriters can view the Submissions List and Open Tasks only.

In addition, you can create a new submission, see a complete list of all of your submissions by category, and drill down into a specific submission to view more details.

![my_workbench_submission_list.png](images/my_workbench_submission_list.png)

## Viewing your submissions data

At the top of MY WORKBENCH, you'll find key metrics about the submissions assigned to you divided into three categories:

-   **Newly Received Submissions**: The number of submissions assigned to you within the past 24 hours.
-   **Older Submissions**: The number of submissions assigned to you that are beyond the past 24 hours.
-   **Avg. Cycle Time**: The average number of days between creating and reviewing a submission in the past 90 days.

![cu-my_workbench-new_old_submissions.png](images/cu-my_workbench-new_old_submissions.png)

### Workload Metrics

The WORKLOAD METRICS tab allows you to view workload data for your various teams, providing visibility into how well your teams are performing in a specific area, including:

-   **Group Workload (Top 5)**: Displays a bar graph of the number of submission tasks by the user and aggregates the data by submission status: _Ready_, _In-Review_, _Missing Critical Information_, and _On Hold_.
    -   Note that only the top 5 users with the most submissions are displayed. Click **View All** to see a list of all the submissions assigned to each user in a specific group.
-   **In Progress vs. Overdue Tasks (Top 10)**: Displays a bar graph of the top 10 tasks by user assignment and aggregates the data by task status: _Open_ and _Overdue_.
    -   Note that only the bar graph only shows the top 10 tasks by user assignment. Click **View All** to see a list of all tasks assigned to all users in a specific group.
-   **Volume by LOB In-flight**: Displays a pie chart of the volume of submissions by the line of business.
-   **Submission Assignment**: Displays a pie chart of the volume of submissions on _Hold_, _In Review_, _Missing Critical Information_ or _Ready_.

Use this data to quickly evaluate individual and team workload capacity, task performance, and your teams' success with meeting submission completion goals you've set for specific lines of business.

Use the Assignment Groups dropdown to switch between group views and see the workload metrics for a specific group.

### Submissions List

The SUBMISSIONS LIST displays all of the submissions assigned to you and organizes them in the following tabs:

-   **Last Modified**: Your most recently updated submissions.
-   **New Business**: Submissions assigned to you that constitute new business.
-   **Renewals**: Submissions assigned to you that constitute renewed business.

![cu-my_workbench-submissions_list_highlighted.png](images/cu-my_workbench-submissions_list_highlighted.png)

After selecting one of the SUBMISSIONS LIST tabs, you can view all your submissions for that category. You can also search or select one or more filters to return only the submission records you want to see from any SUBMISSIONS LIST tab. Filter options include:

-   **STATUS**
-   **ASSIGNEE**
-   **LINE OF BUSINESS**

If you find yourself constantly recreating a filter and reusing it to return specific results for a SUBMISSIONS LIST, take advantage of the **Save Filters** button. With this feature, Connected Underwriting P&C makes it easy to save common filters, saving you time by allowing you to quickly access commonly used filters and eliminating the need for you to recreate them constantly.

![my_workbench_submission_list_save_filters](images/my_workbench_submission_list_save_filters.png)

Do you need more information on a specific submission record? The Submission record allows you to easily view general information about one of your submissions, including customer and broker information, alerts, risk information, notes, and any tasks associated with the submission. Simply click the record link to drill down into the submission and access more information.

![submission_record_drill_down](images/submission_record_drill_down.png)

The record view provides all the information you need to identify and triage issues with that submission's underwriting process.

### Creating a new Submission

You can create a new Submission directly from MY WORKBENCH using the **NEW SUBMISSION** button.

![cu-my_workbench-new_submission_highlighted.png](images/cu-my_workbench-new_submission_highlighted_resized.png)

Check out [Creating a New Submission](create-new-submission.html) for guidance about what information you need to create a new underwriting submission and how to enter it.

## Open Alerts

The **Open Alerts** section displays alerts currently open across all submissions assigned to you, the logged-in user. Each alert shows information about when and why the alert triggered.

![cu_my_workbench_open_alerts_highlighted.png](images/cu_my_workbench_open_alerts_highlighted.png)

You can dismiss alerts from MY WORKBENCH by clicking the **Mark as closed** button. For more information about configuring alert conditions, see [Managing Alerts](managing-alerts.html).

## Open Tasks

The **Open Tasks** section displays tasks currently open across all Submissions assigned to the logged-in user. A task shows information about what is required to complete the item and when the task is due.

![cu-my_workbench-open_tasks_highlighted.png](images/cu-my_workbench-open_tasks_highlighted.png)

You can update tasks from the Workbench using the button and selecting **Reassign**, **Change Due Date**, or **Resolve Task**.

### Messages

Connected Underwriting P&C triggers message exceptions for two reasons:

1.  No Submission ID and No Documents
2.  No Submission ID Match

A user can click on the message to see a preview and perform an action to triage the message appropriately.

1.  Click on the **Name** of the Message.
2.  User must choose one of the following options and link the message. ![cu-my_workbench-message_exception.png](images/cu-my_workbench-message_exception.png)
3.  If the user chooses a link to an existing message, the user can search for an existing record. ![cu-my_workbench-message_exception_link_to_existing.png](images/cu-my_workbench-message_exception_link_to_existing.png)
4.  Click **Save**.

### Classification

Connected Underwriting P&C will attempt to classify documents supported for IDP extraction automatically. Some documents may require manual classification by a user before extraction can be attempted, such as documents that are combined PDFs. Those documents will pass to the Classification exception queue. A user can see the Document Name, Submission ID, and when it was received before completing the classification task.

1.  Click on the Document Name.
2.  User must choose one of the following options and classify the document:
    -   Classify as Single Doc
        ![cu-my_workbench-classification_exception_single_doc.png](images/cu-my_workbench-classification_exception_single_doc.png)
    -   Classify as Multiple Docs
        ![cu-my_workbench-message_exception_link_to_existing.png](images/cu-my_workbench-message_exception_link_to_existing.png)
3.  Click **Save**.

### Reconciliation

Connected Underwriting P&C will run a document extraction process in the background for supported documents. Once the data is extracted, the solution generates a data validation task. The reconciliation task plays an important role in making auto-mappings smarter. As you complete reconciliation tasks, Appian learns how to map the data in your documents to the proper fields in your data type. Over time, this will make auto-extraction more accurate and reconciliation easier and less frequent.

**Note:**  Values selected from the document preview will improve data extraction results. Values entered manually will not. If you have the option, you should select correctly labeled values from the document preview instead of entering them manually.

A user can view the Document Name, Last Opened by, Submission ID, Document Type, and when it was received before completing the reconciliation task.

To complete the reconciliation task:

1.  Click on the Document Name.
2.  Review the information in the fields. Use the document preview to verify the accuracy of the data.
    -   **Note**: To see where the information in the fields came from, select the field, and the value is automatically highlighted in the document preview.
3.  If any information is missing, you can populate the information in three ways:
    -   Place your cursor in the field, then click the box surrounding the desired value. ![cu-my_workbench-reconciliation_exception_click_b.gif](images/cu-my_workbench-reconciliation_exception_click_b.gif)
    -   Click the box surrounding the desired value in the document preview on the right, then click the arrow next to the field to populate the field. ![cu-my_workbench-reconciliation_exception_click_a.gif](images/cu-my_workbench-reconciliation_exception_click_a.gif)
    -   To select the text that was not automatically extracted, press and hold the Shift key while dragging the mouse. ![cu-my_workbench-reconciliation_exception_highlighted.gif](images/cu-my_workbench-reconciliation_exception_highlighted.gif)
4.  Perform additional reconciliation for tables if they appear in the document preview.
5.  After all fields are verified and populated, click **SUBMIT**.

While you are reconciling the data, icons indicate how the information was entered for each field:

-   **No icon**: Value was entered manually.
-   **Magic wand icon**: Value was entered automatically during data extraction.
-   **Link icon**: Value was selected from the document preview.

To learn more about Document Extraction, visit the [Appian Document Extraction](../Appian_Doc_Extraction.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...