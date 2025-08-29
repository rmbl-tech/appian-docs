---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/configure-submission-score-and-tables.html
original_path: cu-25.2.1.7/configure-submission-score-and-tables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Submission Score

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

A Submission Score is calculated for every submission based on business rules set up in the Connected Underwriting P&C Settings site. Submission scores are calculated using scoring tables for fields associated with a submission. The scores in a scoring table are used as inputs to calculate a weighted average for a submission score. A scale of 1-100 is recommended to provide a score.

Managers and admins can create and edit scoring tables and submission scores from the Submission Score tab of the Connected Underwriting P&C Settings site. To configure Scoring Tables, access the Scoring Tables sub-tab.

## View Scoring Tables

The Scoring Tables page displays all scoring tables for Connected Underwriting P&C. The tables can be filtered by their line of business or _active_ and _inactive_ statuses.

![cu-configure_submission_score_and_tables-scoring_tables.png](images/cu-configure_submission_score_and_tables-scoring_tables.png)

-   **Active/Inactive Status**: From the **Active?** dropdown list, select **Yes** to display active scoring table; select **No** to display inactive scoring tables.
-   **Line of Business**: From the **Line of Business** dropdown list, select a value.

To find a specific scoring table, search by the scoring table name using the **Search Scoring Table** text field.

### Create a Scoring Table

After installing Connected Underwriting P&C, you need to create scoring tables to create Submission Scores. Scoring tables will match on values within a submission to return a score for the submission score calculation. Scoring tables can be created for a set of fields that are shipped with Connected Underwriting P&C.

![cu-configure_submission_score_and_tables-scoring_tables_create_highlighted.png](images/cu-configure_submission_score_and_tables-scoring_tables_create_highlighted.png)

To create a new Scoring Table:

1.  From the **Scoring Tables** page, click **CREATE SCORING TABLE**.
2.  Enter **Scoring Table Name**.
3.  Select the **Line of Business** that applies to this Scoring Table.

    -   This can be multi-select. This selection determines the tables available for selection during the creation of the submission score rule.
4.  Select a **Field** for which you want to create the Scoring Table.
5.  Once you select a field, the scoring table grid will populate to allow users to input values and associated scores.
6.  Users must also input a score when there is no match for a value.
7.  Click **SAVE**.

![cu-configure_submission_score_and_tables-create_scoring_table.png](images/cu-configure_submission_score_and_tables-create_scoring_table.png)

### View a Submission Score

The **Submission Score** page displays all submission scores for Connected Underwriting P&C. Submission Scores can be searched and filtered in the same way as Scoring Tables.

![cu-configure_submission_score_and_tables-submission_score.png](images/cu-configure_submission_score_and_tables-submission_score.png)

### Create a Submission Score

After creating Scoring Tables, a user should create their Submission Score rules. A Submission Score rule will calculate the weighted average based on the Scoring Tables you've selected. Submissions with higher scores will show up at the top of your workbench.

![cu-configure_submission_score_and_tables-submission_score_create_highlight.png](images/cu-configure_submission_score_and_tables-submission_score_create_highlight.png)

To create a new Submission Score:

1.  From the **Submission Score** page, click **CREATE SUBMISSION SCORE RULE**.
2.  Enter the **Rule Name**.
3.  Select **Action Upon Creation?** (Yes or No).
4.  Select the **Line of Business** that applies for this Submission Score rule.
5.  Select **Add Input** in the Scoring Table Inputs section to choose Scoring Tables to evaluate against for the Submission Score rule.
6.  Once you select the Scoring Tables, you can apply the weightage for each Scoring Table.

    -   For example, an organization that wants to prioritize Customers more than Brokers would weight the Customer Scoring Table higher than the Broker Scoring Table.
7.  Click **SAVE**.

![cu-configure_submission_score_and_tables-create_submission_score.png](images/cu-configure_submission_score_and_tables-create_submission_score.png)

### Manage a Submission Score

Managers and admins can update and delete a Submission Score rule.

![cu-configure_submission_score_and_tables-submission_score_update_delete.png](images/cu-configure_submission_score_and_tables-submission_score_update_delete.png)

To update a Submission Score:

1.  Click the icon on the email template you want to update and select **Update Rule**.
2.  Update **Rule Name**, **Active upon Update**, **Line of Business**, **Scoring Table Inputs** and **weightage**, similar to steps 2-6 in Create a Submission Score.
3.  Click **SAVE**.

To delete a Submission Score rule:

1.  Click the icon on the Submission Score rule you want to delete and select **Delete Rule**. A confirmation screen will show and this action will be permanent.
2.  Click **DELETE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...