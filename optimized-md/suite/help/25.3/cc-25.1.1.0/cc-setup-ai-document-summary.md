---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-ai-document-summary.html
original_path: cc-25.1.1.0/cc-setup-ai-document-summary.html
version: "25.3"
title: "Setting Up AI Claim Document Summary Module"
page_id: "cc-25.1.1.0/cc-setup-ai-document-summary"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up AI Claim Document Summary Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

After installing the [AI Claim Document Summary](cc-install-ai-document-summary.html) module, you need to set it up before using it with the Connected Claims Base application.

This guide walks you through the setup steps, which include:

1.  [Adding the Document Summary node to the Create Claim Addendum process](#step-1-adding-the-document-summary-node-to-the-create-claim-addendum-process).
2.  [Adding the Document Summary node to the Create Document process](#step-2-adding-the-document-summary-node-to-the-create-document-process).
3.  [Adding the Document Summary node to the Complete Task process](#step-3-adding-the-document-summary-node-to-the-complete-task-process).
4.  [Adding the Delete Document Summary node to the Delete Document process](#step-4-adding-the-delete-document-summary-node-to-the-delete-document-process).
5.  [Displaying the Document Summary on the Claim Document interface](#step-5-displaying-the-document-summary-on-the-claim-document-interface).

### System Prerequisites

-   Appian platform running version 25.1 or greater.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported AI Claim Document Summary module application containers, including: -`CCM Add On: Documents Summary AI (CCM_DSAI)`

## Step 1: Adding the Document Summary node to the Create Claim Addendum process

To set up the AI Claim Document Summary module with Connected Claims you need to first update the **CCM\_SUB\_SubmitClaim\_ParallelProcesses** process model.

1.  Open the **CCM\_SUB\_SubmitClaim\_ParallelProcesses** process model.

    1.  After the **Store Documents** subprocess node, add a new subprocess node called **AI Summarize Docs**.

    ![cc_create_claim_addendum_pm](images/cc_create_claim_addendum_pm.png)

    1.  Under the **Setup** tab, configure the subprocess in the following way:

        ![cc_configure_summarize_ai_docs_setup](images/cc_configure_summarize_ai_docs_setup.png)

        1.  For the document input variable, pass in the following:

            ![cc_document_input_expression_ed](images/cc_document_input_expression_ed.png)

    2.  Under the **Other** tab of the subprocess node, configure a multiple node instance of this node in the following way:

        ![cc_configure_summarize_ai_docs_other](images/cc_configure_summarize_ai_docs_other.png)

        1.  For the **Run this many:** portion of the MNI, click the expression editor and copy the following code:

            ![cc_run_this_many_expression](images/cc_run_this_many_expression.png)

            ```
            1
            2
            3
            4
            5
            6
            7
            8
            9
            10
            11
            /*the model errors out if the count is zero so return 1 if count is less than 1*/
               tointeger(
                 max(
                   {
                     count(
                       pv!claim['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f-ccm}CCM_Claim.relationships.{341720e1-0b79-4f0c-ac48-789ee3fbeae3-ccm}documents']
                     ),
                     1
                   }
                 )
               )
            ```

## Step 2: Adding the Document Summary node to the Create Document process

Next, you need to update the Create Document process model by adding the Document Summary node.

1.  Open the **CCM\_Document\_Create** process model.
    1.  Before the **Incorporation Tag Script** task, add a new subprocess called **AI Summarize Docs**:

![cc_update_created_document_pm](images/cc_update_created_document_pm.png)

1.  In the **Setup** tab, configure the subprocess in the following way:

    ![cc_document_create_pm_setup_tab](images/cc_document_create_pm_setup_tab.png)

2.  In the **Other** tab of the subprocess node, configure a multiple node instance of this node in the following way:

    ![cc_document_create_pm_other_tab](images/cc_document_create_pm_other_tab.png)

## Step 3: Adding the Document Summary node to the Complete Task process

In this step, you need to update the Complete Task process model by adding the Document Summary node.

1.  Open the **CCM\_Task\_Complete** process model.
    1.  After the **Store Task Documents** subprocess node, add a new subprocess called **AI Summarize Docs**:

        ![cc_task_complete_pm](images/cc_task_complete_pm.png)

        1.  In the **Setup** tab, configure the subprocess as shown:

            ![cc_summarize_docs_sp_setup_tab](images/cc_summarize_docs_sp_setup_tab.png)

            1.  For the document input variable, pass in the following:

                ![cc_summarize_doc_input_variable](images/cc_summarize_doc_input_variable.png)

        2.  In the **Other** tab of the subprocess node, configure a multiple node instance of this node as shown:

            ![cc_summarize_docs_other_tab](images/cc_summarize_docs_other_tab.png)

            1.  For the **Run this many:** portion of the MNI, click the expression editor and copy the following code:

                ![cc_run_this_many_ex_editor_ds](images/cc_run_this_many_ex_editor_ds.png)

## Step 4: Adding the Delete Document Summary node to the Delete Document process

Next, you need to update the Delete Document process model by adding the Delete Document Summary node.

1.  Open the **CCM\_Document\_Delete** process model.
    1.  After the **Set Inactive** script task node, add a new **Delete Records** node called **Delete AI Summary**:

        ![cc_document_delete_pm](images/cc_document_delete_pm.png)

        1.  In the **Data Inputs** tab of the **Delete Records** node, set the value of the Records input as shown:

            ![cc_delete_records_data_input](images/cc_delete_records_data_input.png)

            ```
            1
            2
            3
            4
            5
            6
            7
               rule!CCM_DSAI_QR_GetDocumentSummary(
                 documentIds: pv!documents['recordType!{4fcbf8d2-f6f9-4a38-bbf1-d2722635282a-ccm}CCM_Document.fields.{11173308-3bb1-43ad-b63a-4ff680227037-ccm}documentId'],
                 returnType: "OBJECT_ARRAY",
                 executeWhen: a!isNotNullOrEmpty(
                   pv!documents['recordType!{4fcbf8d2-f6f9-4a38-bbf1-d2722635282a-ccm}CCM_Document.fields.{11173308-3bb1-43ad-b63a-4ff680227037-ccm}documentId']
                 )
               )
            ```

## Step 5: Displaying the Document Summary on the Claim Document interface

Finally, you need to update the Claim Document interface to call the AI Claim Document Summary, allowing the Document Summary to display on the interface.

1.  Open the **CCM\_Claim\_RecordView\_Documents** interface.
    1.  Directly above the call to `rule!CCM_UTIL_DocumentViewer` (round line ~360 of the code), add the following call to **CCM\_DSAI\_ClaimDocumentsSummary\_Display**:

        ![cc_claim_record_document_view_interface.png](images/cc_claim_record_document_view_interface.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...