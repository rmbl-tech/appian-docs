---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/managing-documents.html
original_path: kyc-23.3.1.6/managing-documents.html
version: "25.3"
title: "Managing Documents"
page_id: "kyc-23.3.1.6/managing-documents"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Documents

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

New Investigations can involve a lot of documentation. From agreements to financial documentation such as tax forms, Appian Connected KYC allows you to manage all of your documents in one place and provides a guided workflow to walk you through the process of attaching a new or existing document to your Investigation or task. When enabled, Connected KYC uses the power of intelligent document processing (IDP) to properly classify the document type for an uploaded document. This ensures data integrity and saves onboarders time.

This page describes how to use Connected KYC to view, attach, update and manage all of your Investigations documents.

## Connected KYC document lifecycle

Connected KYC includes a full document review and approval process, which correspond to distinct document statuses to help users know where in the lifecycle the document sits.

The document statuses are:

-   **Approved**: the document has been reviewed and approved. The document requirement has been fulfilled.
-   **Rejected**: the document was reviewed and rejected. The document requirement is still outstanding.
-   **Pending review**: the document has been uploaded, the document type has been verified by IDP, and has yet to be reviewed by a user.
-   **Awaiting classification**: the document has been uploaded and is awaiting IDP to verify the document type.
-   **Pending reconciliation**: the document was uploaded and IDP could not verify the document type.
-   **Missing**: the document has not been uploaded.
-   **Secondary**: the document is not a required document type and therefore, did not go through review and approval process.

Each required document will go through the following steps to fulfill the requirement:

1.  [Attach document](#attaching-a-document).
2.  [Document type verification by IDP](#verifying-document-type-with-idp).
    -   Note: this step only occurs if IDP is turned on in the **System Administration Center**
3.  [Reconcile document type, if necessary](#reconciling-a-document-type).
4.  [Review document and make determination](#reviewing-a-document).

If a document is **Rejected** in step #4, Connected KYC will create a new attach document task for the requirement and the process will begin again and continue until the document is **Approved**.

## Attaching a document

A document can be attached to a Investigation via:

1.  An attach document task.
2.  Directly to the document requirement.
3.  The document tab.
4.  In bulk on the **Summary** tab.

To attach a document:

1.  Select if the document is **New** or **Existing**.
2.  If the document is **New**, click **UPLOAD** and select a document to attach.
3.  If the document is **Existing**, click the document you want to attach from the dropdown list.
4.  Enter **DOCUMENT TYPE**.
5.  (Optional) Enter a **Description** for the document.
6.  (Optional) In the **Expiration Date** field, enter the date that the document expires.
7.  (Optional) Change **Security** to be an internal document.

8.  Click **SUBMIT**.

![attach_required_document.png](images/attach_required_document.png)

## Verifying document type with IDP

It is crucial to ensure the documents uploaded to the system are the correct and expected type. Connected KYC uses Intelligent Document Processing (IDP) to verify the document types automatically to ensure the accuracy of the uploaded document before a user takes time to review it.

When a user attached a document, they must select a document type. IDP will compare the document type selected to the document template expected and if these match, the review task will be assigned.

If the system cannot match the uploaded document's **DOCUMENT TYPE** or the system's confidence level is below the threshold set by the administrator, a **DOCUMENT RECONCILIATION** task will be generated and assigned to the user that uploaded the document.

If the customer uploaded the document, the primary owner will receive the task. The user will be able to manually select the **DOCUMENT TYPE** at that time and the type confidence level will be set at 100%.

## Reconciling a document type

A document reconciliation task is opened when an uploaded document's type cannot be verified by IDP. The user who uploaded the unverified document will be asked to confirm the documents type.

If the document's type was indeed correct, the user selects **Yes** when asked **Is the attached document of type < entered type >?**. If the user selects **No**, they will be asked to upload a new document and it will be run through IDP again.

![reconciliation_choice.png](images/reconciliation_choice.png)

If IDP is not on in the environment, this task will be skipped.

## Reviewing a document

After a document's type is verified, a review task will be opened. The reviewer can choose whether or not to **Approve** or **Reject** the document. If the document is approved, the document requirement will be fulfilled and checked off in the **Required Documents** section. If the document is rejected, a new attach document task is opened and the process begins again.

## Managing required documents

There may be certain documents that are required as part of the Investigation. In order to keep track of these documents, Connected KYC will show the user a checklist of which documents are outstanding.

### Adding required documents to the Investigation

Document requirements are set up by configuring Investigation workflows. Business users can automatically default the document requirements for each workflow, but a user is able to modify to the list of documents requirements if any additional documents are needed. After the Investigation is kicked off, the document requirements will automatically be added to the Investigation and the attach and review tasks will be created.

To modify the required document list from the Investigation record, open the menu in the **Required Documents** section of the Summary tab and Click **Update**. ![update_required_documents_list.png](images/update_required_documents_list.png)

To add a document requirement:

1.  Click **Add Document Requirement**.
2.  Enter the **Document Requirement Name**.
3.  Decide to upload the document **Now** or **Attach Later**.
4.  For attaching a document later, define which groups or users will be uploading and reviewing the document.
5.  Click **SUBMIT**.

![add_requirement.png](images/add_requirement.png)

To remove a document requirement:

1.  Select the checkbox next to the requirements to remove.
2.  Click **Remove Document Requirement**.
3.  Click **NEXT**.
4.  Confirm the removal changes and click **SUBMIT**. Any outstanding attach or review document tasks will be marked as not needed. If a document had already been uploaded to fulfill the requirement, it will stay attached to the Investigation, but the status will become secondary.

## Viewing required documents

Connected KYC makes it easy for you to view a list of all required documents for a individual Investigation and their details from the the Summary or Document tabs in the Investigation record. Know exactly where your required documents are in the process, when they are due, and the user or user group they are assigned to.

### Summary Tab

From the page, you can drill down into a specific Investigation record by locating and clicking the link from the Investigation list. By default, the Summary tab displays and provides a Required Documents section where you can view a list of all of the document requirements associated with the Investigation.

At a quick glance, the Required Documents list shows you how many required documents are outstanding and the status of each document. You can also quickly find a specific document by filtering the list by status, assignee, or group. Users can update the required document list or attach additional documents to the Investigation by clicking the icon.

![view_required_documents_list.png](images/view_required_documents_list.png)

### Document Tab

From the Documents tab of a Investigations record, you can perform the following actions:

1.  View a complete list of all documents attached to the Investigation and specific document details.
2.  Search for a particular document by name.
3.  Filter the document list by document type.
4.  Attach a document.
    -   **Note**: You can attach documents to a KYC investigation that has a status of _Due Diligence In Progress_ only.
5.  Click the document link to preview uploaded documents, view details about them, or remove them.
6.  Download documents.

## Updating document details

After a document has been uploaded, a user is able to update the document details to ensure accuracy of the documents on the Investigation.

The user can update the following details:

-   Expiration date
-   Description
-   Security

To update the details of a document from the **DOCUMENTS** tab:

1.  Select the document you want to update in the document list.
2.  Click **UPDATE DETAILS**.
    -   You can now edit the **Security**, **Description**, and **Expiration Date** fields. Additionally, a document can be deleted, but only by the user who originally uploaded it.
        -   **Note**: The **Description** and **Expiration Date** of the document will be updated across all Investigations it's referenced.
        -   **Note**: Changing the **Security** will determine if external customer users can view the document from the Customer Site or not.
3.  Click **UPDATE** to save your changes.

![Edit_document.png](images/Edit_document.png)

## Deleting a document

If a document is no longer required for an Investigation or a customer, it can be removed by the user that originally uploaded the document.

For Investigations, when a document is deleted, it is still available on the customer's [document tab](managing-customers.html#documents-tab).

For customers, if a document is deleted, the document will no longer be available on the customer's document tab. Additionally, the document can no longer be used as an existing document for other Investigation. A customer document cannot be removed if there are existing Investigation links.

To delete a document:

1.  From the document grid, click the document you would like to delete.
2.  Click **REMOVE**.
3.  On the confirmation page, click **REMOVE** again.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...