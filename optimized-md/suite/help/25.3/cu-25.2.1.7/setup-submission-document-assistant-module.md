---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setup-submission-document-assistant-module.html
original_path: cu-25.2.1.7/setup-submission-document-assistant-module.html
version: "25.3"
title: "Setting Up the AI Submission Document Assistant Module"
page_id: "cu-25.2.1.7/setup-submission-document-assistant-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the AI Submission Document Assistant Module

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

After installing the [AI Submission Document Assistant](cu-submission-document-assistant-module-overview.html) module you need to set it up before using it with your Connected Underwriting (CU) P&C solution.

This guide walks you through the required incorporation steps, including:

-   [Adding the AI Summarize Docs subprocess to the Create Submission process](#step-1-add-the-ai-summarize-docs-subprocess-to-the-create-submission-process)
-   [Adding the AI Summarize Docs subprocess to the Upload Document process](#step-2-add-the-ai-summarize-docs-subprocess-to-the-upload-document-process)
-   [Adding the AI Summarize Docs subprocess to the Create Submission From Email process](#step-3-add-the-ai-summarize-docs-subprocess-to-the-create-submission-from-email-process)
-   [Adding the AI Summarize Docs subprocess to the Post-Complete Upload Document Task process](#step-4-add-the-ai-summarize-docs-subprocess-to-the-post-complete-upload-document-task-process)
-   [Enabling AI Document Summary view on the Document Viewer component](#step-5-enable-ai-document-summary-view-on-the-document-viewer-component)
-   [Adding the AI Document Chat to the Submission Documents record tab](#step-6-add-the-ai-document-chat-to-the-submission-documents-record-tab)
-   [Removing Document details from the nested document view](#step-7-remove-document-details-from-the-nested-document-view)

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites).

### System prerequisites

This section details the prerequisites your system must meet to incorporate the AI Submission Document Assistant module with your CU P&C solution.

-   Appian platform running version 25.2 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.7** installed in the target environment.
-   **ISU Add-on: Submission Document AI** imported and installed in the target environment.

## Required incorporation

This section details the incorporation steps you are required to perform in order to utilize the AI Submission Document Assistant module in your CU P&C solution. Complete each set of steps in the order outlined.

### Step 1: Add the AI Summarize Docs subprocess to the Create Submission process

To set up the AI Submission Document Assistant module with your CU P&C, the first step you need to perform to is to add the AI Summarize Docs subprocess to the Create Submission process. Follow the steps in this section to add the subprocess.

1.  Open the **ISU Create New Submission** process model.
    1.  In between the **Write Submission Documents** subprocess node and the **Start Document Extraction** subprocess node, add a new subprocess node called **Summarize Documents**.

        ![add_summarize_documents_subprocess](images/add_summarize_documents_subprocess.png)

        1.  Under the **Setup** tab, configure the subprocess node as shown:

            ![configure_summarize_document_subprcoess](images/configure_summarize_document_subprcoess.png)

            1.  For the Input Variables of the subprocess, pass in `pv!submissionDocs[tp!instanceindex]` for the `document` parameter and `pv!submissionDocs.submissionDocumentId[tp!instanceindex]` for the `documentId` parameter.
    2.  Under the **Other** tab of the subprocess, configure this node to be an **MNI** node by setting it up as shown:

        ![configure_summarize_document_other_tab](images/configure_summarize_document_other_tab.png)

2.  Save and publish the process model.

### Step 2: Add the AI Summarize Docs subprocess to the Upload Document process

Next, you need to add the **AI Summarize Docs** subprocess to the Upload Document process to enable private AI to analyze and process user-uploaded PDF submission documents.

To add the subprocess:

1.  Open the **ISU Upload Documents** process model.
    1.  Add a new subprocess node named **Summarize Document** after the **Write Submission Documents** subprocess node.

        ![add_summarize_document_node](images/add_summarize_document_node.png)

        1.  Under the **Setup** tab, configure the subprocess node as shown:

            ![configure_summarize_document_setup_tab.png](images/configure_summarize_document_setup_tab.png)

            1.  For the subprocess input variables, pass in `pv!submissionDocs[tp!instanceindex]` for the `document` parameter and `pv!submissionDocs.submissionDocumentId[tp!instanceindex]` for the `documentId` parameter.
        2.  Under the **Other** tab of the subprocess, configure this node to be an MNI node by setting it up as shown:

            ![configure_summarize_document_other_tab02](images/configure_summarize_document_other_tab02.png)

2.  Save and publish the process model.

### Step 3: Add the AI Summarize Docs subprocess to the Create Submission From Email process

Perform the steps in this section to add the **AI Summarize Docs** subprocess to the **Create Submission From Email** process.

To add the subprocess:

1.  Open the **ISU Create Submission from Email** process model.
    1.  Add a new subprocess node named **Summarize Document** after the **Classify Documents** subprocess node.

        ![add_summarize_document_subprocess](images/add_summarize_document_subprocess.png)

        1.  Under the **Setup** tab, configure the subprocess node as shown:

            ![configure_summarize_document_setup_tab03](images/configure_summarize_document_setup_tab03.png)

            1.  For the subprocess input variables, pass in `pv!submissionDocs[tp!instanceindex]` for the `document` parameter and `pv!submissionDocs.submissionDocumentId[tp!instanceindex]` for the `documentId` parameter.
        2.  Under the **Other** tab, configure this node to be an MNI node by setting it up as shown:

            ![configure_summarize_document_other_tab03](images/configure_summarize_document_other_tab03.png)

2.  Save and publish the process model.

### Step 4: Add the AI Summarize Docs subprocess to the Post-Complete Upload Document Task process

To enable AI summaries on new doc uploads, you need to add the **AI Summarize Docs** subprocess to the **Post-Complete Upload Document Task** process by performing the steps in this section.

To add the subprocesss:

1.  Open the **ISU Post Complete Task Upload Document** process model.
    1.  Add a new subprocess node named **Summarize Document** after the **Start Document Extraction** subprocess node.

        ![add_new_summarize_document_subprocess03](images/add_new_summarize_document_subprocess03.png)

        1.  Under the **Setup** tab, configure the subprocess node as shown:

            ![configure_summarize_document_setup_tab04](images/configure_summarize_document_setup_tab04.png)

            1.  For the subprocess input variables, pass in `pv!submissionDocs[tp!instanceindex]` for the `document` parameter and `pv!submissionDocs.submissionDocumentId[tp!instanceindex]` for the `documentId` parameter.
        2.  Under the **Other** tab of the subprocess, configure this node to be an MNI node by setting it up as shown:

            ![configure_summarize_document_other_tab04](images/configure_summarize_document_other_tab04.png)

2.  Save and publish the process model.

### Step 5: Enable AI Document Summary view on the Document Viewer component

Next, you need to enable the **AI Document Summary** view on the Document Viewer component by updating the **ISU\_CO\_CP\_documentViewerField** interface.

To update the interface object:

1.  Open the **ISU\_CO\_CP\_documentViewerField** interface.
    1.  After the **Document Name** header display, insert a call to the `ISU_SDAI_SubmissionDocument_DisplaySummary` rule by passing in a call to the `ISU_UTILG_LoadBrandingMap` rule for the `brandingMap` input and `ri!subDocId` the `selectedDocument` input, as shown below:

        ![update_ISU_CO_CP_documentViewerField_interface](images/update_ISU_CO_CP_documentViewerField_interface.png)

2.  Save the interface.

### Step 6: Add the AI Document Chat to the Submission Documents record tab

Next, in order to engage with the AI chatbot for documents uploaded to the Submission record, you need to add the **AI Document Chat** to the **Submission Documents** record tab.

To update the interface object:

1.  Open the **ISU\_submissionRecordViewDocuments** interface.
    1.  Within the **paneLayout**, add a new `a!pane()` to the end of the panes array containing a call to the **ISU\_SDAI\_SubmissionDocument\_DisplayChatAndDetails** rule, as shown below:

        ![update_ISU_submissionRecordViewDocuments_interface](images/update_ISU_submissionRecordViewDocuments_interface.png)

        -   **Note**: Alternatively, you can copy and paste the code shown:

            `sail /*Add On: Submission Document AI - Chat Feature*/ a!pane( accessibilityText: 'translation!{907ed3ea-3967-448e-b0ce-0b8db94ee49f}ISU_SDAI_Translations.{bbec74f5-6450-4fa3-b4c0-02e0be74b6dc}AI Document Chat', contents: rule!ISU_SDAI_SubmissionDocument_DisplayChatAndDetails( brandingMap: local!brandingMap, submissionDocument: local!selectedSubmissionDoc ), width: "MEDIUM_PLUS", backgroundColor: local!brandingMap.Blue0Color, padding: "EVEN_LESS", /*only show if document selected*/ showWhen: a!isNotNullOrEmpty(local!selectedSubmissionDoc) )`

2.  Save the interface.

### Step 7: Remove Document details from the nested document view

Finally, you need to update the **ISU\_viewDocumentDetails** interface to remove document details from the document view.

1.  Open the **ISU\_viewDocumentDetails** interface.
    1.  Remove the entire `a!columnLayout()` containing the call to the `ISU_viewDocumentDetails_metadataCard` rule, as shown:

        ![update_ISU_viewDocumentDetails_interface](images/update_ISU_viewDocumentDetails_interface.png)

2.  Save the interface.

## Next steps

Now that you have set up the [AI Submission Document Assistant](install-submission-document-assistant-module.html) module you can use it in your CU P&C solution to to quickly find the context they need.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...