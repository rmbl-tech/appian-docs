---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/managing-tasks.html
original_path: kyc-23.3.1.6/managing-tasks.html
version: "25.3"
title: "Managing Tasks"
page_id: "kyc-23.3.1.6/managing-tasks"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

A Investigation process is complicated and involves many individuals from different departments completing many different tasks. Tasks allow Connected KYC users to keep track of the work they need to accomplish for each Investigation.

Based on the process template configured for a Investigation, the solution automatically assigns the associated tasks to the correct user group. Appian Connected KYC simplifies this process by bringing together all of those tasks in one system to be tracked.

The life cycle of a task in Connected KYC is:

1.  [Creating reusable tasks](#create-reusable-tasks-in-connected-fs-settings).
2.  [Creating investigation templates](#create-investigation-templates) using these tasks.
3.  [Creating additional tasks](#create-additional-tasks) for an onboarding when needed.
4.  [Completing tasks](#complete-tasks).

This page outlines each step in the life cycle of a task for Connected KYC and how to add new task types.

## Create reusable tasks in Connected FS Settings

The Connected FS Settings site allows users to create reusable tasks that can be added to the Investigation templates or to the Investigation.

## Create Investigation templates

A Investigation template assigns default tasks for a specific type of Investigation. In order to complete Investigations, you will need to create templates that are mapped to certain attributes that are specified when the Investigation is created.

See [Setting Up Processes](setting-up-processes.html#create-a-new-template) for more information on adding and editing templates.

## Create additional tasks

A new task can be added to the Investigation after it has been started. For KYC investigations with the status **Due Diligence in Progress**, additional tasks can be added after the template tasks are generated.

To create a new task:

1.  From the summary tab of the Investigation, Click **New Task** above the **Tasks** grid.

    ![new_task_from_grid.png](images/new_task_from_grid.png)

2.  Enter a **Task Name**.
3.  Select a business group to use as the **Assigned Group**. For example, **Client Onboarding** or **Sales**.

    ![custom_task.jpg](images/custom_task.jpg)

4.  Select the **Task Type**. See the [Adding a new task type](adding-new-task-type.html#adding-a-new-task-type) section for more instructions on adding more task types.
5.  (_Optional_) Enter a **Description**.
6.  (_Optional_) Use the picker to select an **Individual Assignee** to assign the task to.
7.  Choose a task **Due Date**.

## Task statuses

| Status | Icon |
| --- | --- |
| Assigned |  |
| Queued |  |
| Completed |  |
| Not Needed |  |

## Complete tasks

The solution allows users to track completed work by marking off tasks as they complete them. Users can access their tasks from the **Home** site tab, the **Tasks** site tab, or from the **Summary** tab of the Investigation.

The **Summary** tab lists all tasks, whether or not they are assigned to the logged in user or their team. Tasks that belong to a group that the user is not a member of cannot be opened or modified by the logged in user. However, if the user is a member of a group that a task has been assigned to, they can claim, complete, or reassign the task.

The following actions are available in the task grids:

1.  **MARK COMPLETE**: complete a confirmation task directly from the task grid.
2.  **MARK NOT NEEDED**: determine that a task is no longer required for a Investigation.
3.  **CLAIM TASK**: assign the task to yourself.
4.  **REASSIGN**: change the individual assignee of the task.
5.  **CHANGE DUE DATE**: update the date the task must be completed by.
6.  **REOPEN TASK**: reopen a **Completed** and **Not Needed** task.
7.  **SEND TASK**: move a task from **Queued** status to **Assigned** status.

To complete any task, click into the **Task Name**.

### Complete confirmation tasks

Confirmation tasks require users to select a checkbox that says the task has been completed.

To complete a confirmation task:

-   Select the checkbox to confirm the task has been completed and click **SUBMIT**.

    ![confirmation_task.jpg](images/confirmation_task.jpg)

### Complete document tasks

Attach document tasks require users to attach a specific document to a Investigation. You can choose a document that has already been attached to that customer or attach a new document.

To complete a document task:

1.  Select if you want to attach a **New** or **Existing** document.
2.  If the document is **New**, click **UPLOAD** and select a document to attach.
3.  If the document is **Existing**, click the document you want to attach from the dropdown list.
    -   You will only be able to attach documents that have been previously uploaded and match the document type you want to attach.
4.  (_Optional_) Enter a **Description** for the document.
5.  (_Optional_) In the **Expiration Date** field, enter the date that the document expires.
6.  Click **SUBMIT**.

### Complete review tasks

Review tasks require users to approve, reject, or make no decision on a task.

To complete a review task:

1.  Select **Approve**, **No Decision**, or **Reject**.
2.  Enter a comment. This is optional unless you select **Reject**.
3.  Click **SUBMIT**.

    ![complete_review_task.jpg](images/complete_review_task.jpg)

### Complete document reconciliation tasks

Document reconciliation tasks are auto-generated by the system when a document is uploaded and one of the following conditions apply:

-   The document type cannot be classified by type using intelligent document processing (IDP).
-   IDP classifies the document but the type confidence is lower than the type confidence threshold.

These tasks will be assigned to the user that uploaded the document that needs to be classified. The document reconciliation tasks require the user to choose the **DOCUMENT TYPE**.

![document_reconciliation_task.jpg](images/document_reconciliation_task.jpg)

To complete a document reconciliation task:

1.  Select a **DOCUMENT TYPE**.
    -   You are able to download a preview of the document that has been uploaded by clicking on the document name.
2.  Click **SUBMIT**.

Once submitted, the document will reflect the document type and will have an **ACCEPTED** [status](managing-documents.html#connected-kyc-document-lifecycle) and fulfill any [required documents](managing-documents.html#viewing-required-documents).

### Complete Northrow error tasks

If the [Northrow](managing-integrations.html#integrating-with-northrow) integration is connected, Northrow's company check can be included as a task in the Investigation [workflow process](configure-data.html) configuration. This task type is called the **Northrow Risk Score Check**. When the task is triggered, Connected KYC will make an integration call to Northrow and update the customer record automatically.

If there is an error connecting to or retrieving the results from Northrow, a follow up task will be opened. The Northrow error tasks are by default assigned to the Connected KYC group. To [complete](managing-integrations.html#using-northrow-tasks) the **Northrow Risk Score Error** tasks, the user can choose to either retry the Northrow check or to skip the risk score check entirely.

### Complete DocuSign tasks

The DocuSign integration sends documents to internal and external users to collect a signature. In order to have a document signed via DocuSign within Connected KYC, a user must receive a DocuSign task. When a user receives a DocuSign task, it will appear on their task list with a task type **Collect DocuSign Signature**. To [complete](managing-integrations.html#completing-a-docusign-task) a DocuSign task, a user must sign the document through DocuSign.

### Complete OFAC consolidated screening result tasks

The OFAC integration will only open a task for a user to complete if user action is needed. A user will have to complete a task when OFAC has found matching customer name results on the consolidated screening list or there was an integration error. When a user receives an OFAC task, it will appear on their task list with a task type **Consolidated Screening Results**. To [complete](managing-integrations.html#completing-an-ofac-consolidated-screening-results-task) a **Consolidated Screening Results** task, a user must select which, if any, of the returned results are relevant or in the event of an error, choose whether or not to retry the integration.

## View completed tasks

Details of completed tasks are available on the **CATEGORY VIEW** on the **Tasks** tab of the Investigation. To view the specific details of the completed task, click on the task name. A read-only version of the task will show up in a modal and show the results of the task.

From the modal, you will be able to see:

1.  The action or information the user took.
2.  The completed date and time.
3.  The user who completed the task.

## Dependency view

Click on the icon above the **Tasks** grid to view tasks in the **DEPENDENCY VIEW**.

The tasks are displayed so that the KYC investigator can see a specific task and all of its dependent tasks in a cascading list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...