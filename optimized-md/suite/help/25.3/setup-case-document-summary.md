---
source_url: https://docs.appian.com/suite/help/25.3/setup-case-document-summary.html
original_path: setup-case-document-summary.html
version: "25.3"
title: "Setting Up Case Document Summary Module"
page_id: "setup-case-document-summary"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Case Document Summary Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

After installing the [Case Document Summary module](install-case-document-summary-module.html), you need to set it up before using it with the Case Management Studio Base application. This guide walks you through the setup steps, which include:

1.  [Update the CMGT\_Document\_Create process model](#step-1-update-the-cmgt_document_create-process-model).
2.  [Update the Submit Case process model](#step-2-update-the-submit-case-process-model).
3.  [Update the CMGT\_Task\_Complete process model](#step-3-update-the-cmgt_task_complete-process-model).
4.  [Update the CMGT\_Document\_Delete process model](#step-4-update-the-cmgt_document_delete-process-model).
5.  [Update the CMGT\_Case\_RecordView\_Documents interface](#step-5-update-the-cmgt_case_recordview_documents-interface).

**Note:**  These setup steps apply to Case Management Studio v1.7 and later. If you are setting up this module with Case Management Studio v1.6 or earlier, see [Setting Up Case Document Summary Module](https://docs.appian.com/suite/help/24.4/setup-case-document-summary.html).

## Step 1: Update the CMGT\_Document\_Create process model

To set up the Case Document Summary module with Case Management Studio you need to first update the process model to automate the creation of a document summary when a document is uploaded to a case.

To update the process model:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Document\_Create** process model.
5.  Add a subprocess node after the **Move Documents** node and name it `Summarize with AI`.
    -   **Note**: The incoming path should be chained, but the outgoing path should not be chained.
6.  In the new subprocess node, go to **Properties**.
    1.  Navigate to the **Setup** tab and select the following settings:

        ![cms_case_doc_summary_setup_tab_step_1](images/cms_case_doc_summary_setup_tab_step_1.png)

        1.  In the **Subprocess Setup** section, select **Synchronously** and the **Enable activity chaining into all initial nodes in the subprocess** checkboxes in **The subprocess will run** section.
        2.  In the **Run this process model** section:
            1.  Select **CMGT\_DOC\_AI\_CaseDocumentSummary\_Update** as the process to run.
            2.  Select the **Reporting** checkbox to include data from this subprocess in the parent process model reports.
        3.  In the **Input Variables** section, click the **Expression Editor** for the **document** variable and paste the following code snippet.

            ```
            1
            pv!documents[tp!instanceindex]
            ```

            -   **Note**: You can ignore the **documentId** variable.
7.  In the new subprocess node, go to **Properties** > **Other** and select the following settings:

    ![cms_case_doc_summary_other_tab_step_1](images/cms_case_doc_summary_other_tab_step_1.png)

    1.  Select the **Automatically run multiple instances of this node** checkbox.
    2.  Select **Run one instance for each item in** and **Documents** in the dropdown.
    3.  Select **All instances are done** to move on when done.

    4.  Click **OK**.
8.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 2: Update the Submit Case process model

Next, you need to update the **CMGT\_SUB\_SubmitCase\_ParallelProcesses** process model to generate a summary for a document added during case creation.

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_SUB\_SubmitCase\_ParallelProcesses** process model.
5.  After the **Store Documents** node, add a subprocess node and name it `Summarize Docs with AI`.
6.  In the new subprocess node, go to **Properties**.
7.  Navigate to the **Setup** tab and select the following settings:

    ![cms_case_doc_summary_setup_tab_step_2.png](images/cms_case_doc_summary_setup_tab_step_2.png)

    -   In the **Subprocess Setup** section:
        -   Select **Asynchronously**.
    -   In the **Run this process model** section:
        -   Select **CMGT\_DOC\_AI\_CaseDocumentSummary\_Update** as the process to run.
    -   In the **Input Variables** section, click into the Expression Editor for the **document** variable and paste the following code snippet:

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
        a!localVariables(
        local!documents: pv!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f}CMGT_Case.relationships.{341720e1-0b79-4f0c-ac48-789ee3fbeae3}documents'],
        if(
        a!isNullOrEmpty(local!documents),
        local!documents,
        /*can't index if the documents is null*/
        local!documents[tp!instanceindex]
        )
        )
        ```

        -   **Note**: You can ignore the **documentId** variable.
8.  In the **Properties** of the new subprocess node, navigate to the **Other** tab and select the following settings:

    ![cms_case_doc_summary_other_tab_step_2](images/cms_case_doc_summary_other_tab_step_2.png)

    -   Select the **Automatically run multiple instances of this node** checkbox.
    -   Select **Run this many** and click the adjacent icon link to open the Expression Editor.
    -   Paste the following code snippet:

        ```
        1
        2
        3
        4
        5
        6
        a!localVariables(
        local!count: count(
        pv!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f}CMGT_Case.relationships.{341720e1-0b79-4f0c-ac48-789ee3fbeae3}documents']
        ),
        /*the model errors out if the count is zero*/if(tointeger(local!count) = 0, 1, local!count)
        )
        ```

        -   Select **All instances are done** to move on when done.
9.  Click **OK**.
10.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 3: Update the CMGT\_Task\_Complete process model

For this step, you must update the CMGT\_Task\_Complete process model to generate a summary for a document uploaded to a task.

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Task\_Complete** process model.
5.  After the **Store Task Documents** node, add a subprocess node and name it `Summarize Docs with AI`.
    -   **Note**: The incoming path should be chained, but the outgoing path should not be chained.
6.  In the new subprocess node, go to **Properties**.
7.  Navigate to the **Setup** tab and select the following settings:

    ![cms_case_doc_summary_setup_tab_step_3.png](images/cms_case_doc_summary_setup_tab_step_3.png)

    -   In the **Subprocess Setup** section:
        -   Select **Asynchronously**.
        -   Select **CMGT\_DOC\_AI\_CaseDocumentSummary\_Update** as the process to run.
    -   In the **Input Variables** section, click into the Expression Editor for the **document** variable and paste the following code snippet:

        ```
        1
        2
        a!flatten( pv!tasks['recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0}CMGT_Task.relationships.{bf3a1217-449b-4c06-919b-17b69b7be94d}documents']
        )[tp!instanceindex]
        ```

        -   **Note**: You can ignore the **documentId** variable.
8.  In the **Properties** of the new subprocess node, navigate to the **Other** tab and select the following settings:

    ![cms_case_doc_summary_other_tab_step_3](images/cms_case_doc_summary_other_tab_step_3.png)

    -   Select the **Automatically run multiple instances of this node** checkbox.
    -   Select Run this many and click the adjacent icon link to open the Expression Editor.
    -   Paste the following code snippet:

        ```
        1
        2
        3
        4
        5
        count(
        a!flatten(
        pv!tasks['recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0}CMGT_Task.relationships.{bf3a1217-449b-4c06-919b-17b69b7be94d}documents']
        )
        )
        ```

9.  Select **All instances are done** to move on when done.
10.  Click **OK**.
11.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 4: Update the CMGT\_Document\_Delete process model

For this step, you need to update the process model to automatically delete the document summary associated with a deleted document.

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Document\_Delete** process model.
5.  After the **Set Inactive** node and before the XOR node, add a **Delete Records** node.
    -   **Note**: Make sure the incoming path and outgoing path are chained.
6.  In the new node, go to **Properties**.
7.  Navigate to the **Data** tab, and select the **Records** node input.
8.  In the **Field Properties** box, click into the **Expression Editor** for the value, and paste the following code snippet.

    ```
    1
    2
    3
    4
    rule!CMGT_DOC_AI_QR_GetDocumentSummary(
    documentId: pv!documents['recordType!{4fcbf8d2-f6f9-4a38-bbf1-d2722635282a}CMGT_Document.fields.{11173308-3bb1-43ad-b63a-4ff680227037}documentId'],
    returnType: "SINGLE_OBJECT"
    )
    ```

    -   **Note**: The code snippet uses **CMGT\_DOC\_AI\_QR\_GetDocumentSummary** to query for the document summaries of the documents that are being deleted.
9.  Click **OK**.
10.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 5: Update the CMGT\_Case\_RecordView\_Documents interface

Finally, you need to update the CMGT\_Case\_RecordView\_Documents interface to display document summaries on the Document tab.

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Case\_RecordView\_Documents** interface.
5.  In expression mode, find the section layout that contains **CMGT\_UTIL\_DocumentViewer**.
6.  In the contents of the section layout, paste the following code snippet directly above **CMGT\_UTIL\_DocumentViewer** as shown.

    ![cms_view_ai_generated_doc_summary](images/cms_view_ai_generated_doc_summary.png)

    ```
    1
    2
    3
    4
    rule!CMGT_DOC_AI_CaseDocumentsSummary_Display(
    brandingMap: local!brandingMap,
    selectedDocument: local!selectedDocument
    ),
    ```

7.  Click **SAVE**.

## Next step

Now that you have set up the [Case Document Summary](cms-case-document-summary-overview.html) module, you can leverage AI to generate a summary of PDF documents uploaded to your cases.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...