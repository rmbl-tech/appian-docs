---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/create-new-submission.html
original_path: cu-25.2.1.7/create-new-submission.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a New Submission

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

The key element in Connected Underwriting P&C is the submission. A submission provides a user with a comprehensive view of the required information gathered by an insurance organization to determine the inherent risk of insuring a potential customer.

![cu-create_new_submission-submission_record.png](images/cu-create_new_submission-submission_record.png)

This page provides instructions for creating a new submission. Instructions for managing existing submissions are available on the [Managing Submissions](managing-submissions.html) page.

## Creating a new submission

This guide provides instructions for creating a new submission using the out-of-the-box configuration of Connected Underwriting P&C. However, these steps will not be accurate if you have modified your application to deviate from the standard configuration.

Connected Underwriting P&C supports two ways to create new submissions directly in the solution:

1.  Manually
2.  Via email

Moreover, installing and configuring the Authenticated Broker Portal to work with your Connected Underwriting P&C solution enables brokers to create submissions manually in the portal.

**Note:**  Regardless of how a submission was created, all new submissions will show in the **ALL SUBMISSIONS** table on the **Submissions** dashboard.

### Manually creating a new submission

The following steps walk you through manually entering submission information pertinent to the underwriting process. The information entered on a submission item will also inform connected items, like customers, brokers, and broker offices.

A new submission can be created from two locations:

-   **My Workbench**: Click the **NEW SUBMISSION** button. ![cu-my_workbench-new_submission_highlighted.png](images/cu-my_workbench-new_submission_highlighted.png)
-   **Submissions Dashboard**: Click **SUBMISSIONS** on the navigation bar, then click the **NEW SUBMISSION** button.

    ![cu-create_new_submission-submissions_dashboard_new_submission_button.png](images/cu-create_new_submission-submissions_dashboard_new_submission_button.png)

To create a new submission:

1.  From **My Workbench** or the **Submissions** dashboard, click **NEW SUBMISSION**. This will present the **Create Submission** form.

![cu-create_new_submission-create_submission_form.png](images/cu-create_new_submission-create_submission_form.png)

1.  Complete the General Information section:

    -   **Assignee**: The user responsible for completing the submission.
    -   **Submission Type**: The type of submission is either for a new business or an existing business Renewal.
    -   **Line of Business**: The type of insurance coverage applied for.
2.  Complete the **Customer Information** section:

    -   Select whether a customer is new or existing. Existing customers will be available to select from the dropdown list.
3.  Complete the **Broker Information** section.

    -   Select whether a broker and broker office are new or existing. Existing brokers and broker offices will be available to select from the dropdown list.
4.  Upload any required documentation by clicking **Add Document**, then selecting the appropriate file and selecting the file type from the **Document Type** dropdown list.
5.  Click **CREATE**.
6.  The assignee and broker will receive a message confirming the submission was created successfully. Click **CLOSE**.

![cu-create_new_submission-new_submission_confirmation.png](images/cu-create_new_submission-new_submission_confirmation.png)

### Creating a new submission by email

Often, insurance organizations rely on a shared inbox to accept submissions emailed by brokers. If an organization has set up an email poller within Connected Underwriting P&C to manage their incoming submissions, they can also create submissions automatically from incoming emails. See [Installing Connected Underwriting P&C](installing-the-solution.html) for more information.

A new submission can be created from a shared box if an email adheres to the following properties:

1.  The email does not contain a Submission ID in the subject line.
2.  The email contains an ACORD 125: Applicant Information section.

If both of the above properties are true, Connected Underwriting P&C will automatically create a Submission ID and email the broker with a confirmation email. The new submission proceeds to a processing status.

![cu-create_new__submission-processing_status.png](images/cu-create_new__submission-processing_status.png)

To continue to populate the newly-created submission, proceed to the **Workbench** > **Exception Queue** > **Reconciliation** tab and reconcile the appropriate forms for that submission. For more information about document extraction reconciliation, visit the [My Workbench](my-workbench.html) page or [IDP Reconciliation](../completing-a-reconciliation-task.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...