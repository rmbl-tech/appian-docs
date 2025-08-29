---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-case-doc-summary-setup.html
original_path: cl-24.3.1.2/cul-case-doc-summary-setup.html
version: "25.3"
title: "Setting Up the Case Document Summary Module"
page_id: "cl-24.3.1.2/cul-case-doc-summary-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Case Document Summary Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Now that you have installed the Case Document Summary add-on module, you must incorporate the application with your CU Life Workbench Base application to utilize. This guide walks you through the required incorporation steps, including:

1.  [Display the AI Summary in the Document record view](#step-1-display-ai-summary-in-the-document-record-view).
2.  [Incorporate the Document Summary module in the Create Case Process](#step-2-incorporate-the-document-summary-module-in-the-create-case-process).
3.  [Incorporate the Document Summary module in the Mark Requirement As Received Process](#step-3-incorporate-the-document-summary-module-in-the-mark-requirement-as-received-process).

## Required incorporation

These steps are required to incorporate the Case Document Summary add-on module with the CU Life Workbench.

### Step 1: Display AI Summary in the Document Record View

To set up the Case Document Summary module with the CU Life Workbench, you need to modify the **ISL\_UTIL\_DocumentViewer** interface to display the AI doc summary.

1.  Log in to the target environment as a deployment user.
2.  Navigate to **Appian Designer**.
3.  Navigate to the **Insurance Life Underwriting (ISL)** application.
4.  Navigate to the **ISL\_UTIL\_DocumentViewer** interface object:

    -   Add **ISL\_DOC\_AI\_CaseDocumentsSummary\_Display** above the interface Document Viewer Field Logic.

        ![case_document_view_field_logic_01](images/case_document_view_field_logic_01.png)

### Add the Document Summary module to the Create Document process model

Next, you need to add the Document Summary to the Create Document process model.

1.  From **Appian Designer**, search for and open the **ISL\_Document\_Create** process model.
2.  Before the **End** node, add a synchronous subprocess node labeled **Summarize Document** as shown:

    ![document_summary_subprocess_model_03](images/document_summary_subprocess_model_03.png)

3.  Open the new subprocess node, and go to **Properties**.
    1.  Navigate to the **Setup** tab and select the following settings as shown:

        ![configure_summarize_document_02](images/configure_summarize_document_02.png)

        1.  In the **Subprocess Setup** section, select **Synchronously** and the **Enable activity chaining into all initial nodes in the subprocess** checkbox.
        2.  In the **Run this process model** field:
            1.  Select **ISL\_DOC\_AL\_CaseDocumentSummary\_Update** as the process to run.
            2.  To include data from this subprocess in the parent process model reports, select the **Reporting** checkbox.
        3.  In the **Input Variables** section, enter `documents` in the **document (ISL\_Document (Record Type))** field .
    2.  Navigate to the **Properties > Other** tab and configure the **Multiple Instances** of the **Summarize Document** subprocess as shown:

        ![configure_summarize_document_other_04](images/configure_summarize_document_other_04.png)

        1.  Select the **Automatically run multiple instances of this node** checkbox.
        2.  Select **Run one instance for each item in** and **Documents** in the dropdown.
            1.  Select **Spawn all**.
        3.  Select **Run all instances at the same time**.
            1.  Select **All instances are done** to move on when done.
        4.  Click **OK**.
    3.  From the **File** menu, click **Save & Publish**, then **Exit**.

### Step 2: Incorporate the Document Summary module in the Create Case Process

In this step, you will add the Document Summary node to the ISL\_Case\_Create process model.

1.  From **Appian Designer**, search for and open the **ISL\_Case\_Create** process model.
2.  Add a start process node labeled **Summarize Document** before the **End** node.

    ![ai_document_summary_pm_05](images/ai_document_summary_pm_05.p
    ng)

    1.  **Process Model**: `cons!ISL_DOC_AI_PM_CASE_DOCUMENT_SUMMARY_UPDATE`
    2.  **Process Parameters**:

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
        12
        {
          document: a!localVariables(
            local!documents: a!flatten(
              pv!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f-isl}ISL_Case.relationships.{341720e1-0b79-4f0c-ac48-789ee3fbeae3-isl}documents']
            ),
            if(
              a!isNullOrEmpty(local!documents),
              local!documents,
              /*can't index if the documents is null*/local!documents[tp!instanceindex]
            )
          )
        }
        ```

    3.  In the new subprocess node, go to **Properties > Other** and configure the **Multiple Instances** of the Configure AI Document Summary subprocess as shown.

        ![configure_ai_document_summary_06](images/configure_ai_document_summary_06.png)

        1.  Select the **Automatically run multiple instances of this node** checkbox.
        2.  Select **Run this many** and **Documents**, then click the expression editor and enter the following code:

            ```
            1
            2
            3
            4
            5
            6
            7
            8
             a!localVariables(
              local!count: count(
                a!flatten(
                  pv!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f-isl}ISL_Case.relationships.{341720e1-0b79-4f0c-ac48-789ee3fbeae3-isl}documents']
                )
              ),
              /*the model errors out if the count is zero*/if(tointeger(local!count) = 0, 1, local!count)
            )
            ```

        3.  Select **Run all instances at the same time**.
            1.  Select **All instances are done** to move on when done.
    4.  In the **Deadlines** section, select **The deadline for all tasks is** and leave the associated field empty as shown.
        1.  Select **Minutes** in the dropdown menu.
    5.  Click **OK**.
    6.  From the **File** menu, click **Save & Publish**, then **Exit**.

### Step 3: Incorporate the Document Summary module in the Mark Requirement As Received Process

1.  From **Appian Designer**, search for and open the **ISL\_CaseRequirement\_MarkAsReceived** process model.
2.  Add a start process node labeled **Summarize Document** before the **End** node.

    ![ai_document_summary_end_07](images/ai_document_summary_end_07.png)

    1.  Open the newly created process node and go to the **Data > Input** tab.
        1.  Under New Input, select Process Model.
        2.  Under **Field Properties**, enter `cons!ISL_DOC_AI_PM_CASE_DOCUMENT_SUMMARY_UPDATE` in the **Value** field.
        3.  Under **New Input**, select **Process Parameters** and enter the following code in the **Value** field:

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
            = {
              document: a!localVariables(
                local!documents: a!flatten(
                  pv!caseRequirement['recordType!{3fc25321-de51-427b-936d-862710494d15}ISL_CaseRequirement.relationships.{c4982e11-63fc-4e25-bad9-869982db127d}requirementDocMap.relationships.{3f075e87-4766-450c-9773-3f2252104196}document']
                ),
                if(
                  a!isNullOrEmpty(local!documents),
                  local!documents,
                  /*can't index if the documents is null*/local!documents[tp!instanceindex]
                )
              )}
            ```

    2.  In the new subprocess node, go to **Properties > Other** and configure the **Multiple Instances** as shown.

        ![ai_document_summary_other_09](images/ai_document_summary_other_09.png)

        1.  Select the **Automatically run multiple instances of this node** checkbox.
        2.  Select **Run this many**, then open the expression editor and enter the following code:

            ```
            1
            2
            3
            4
            5
            6
            7
            8
            = a!localVariables(
              local!count: count(
                a!flatten(
                  pv!caseRequirement['recordType!{3fc25321-de51-427b-936d-862710494d15}ISL_CaseRequirement.relationships.{c4982e11-63fc-4e25-bad9-869982db127d}requirementDocMap.relationships.{3f075e87-4766-450c-9773-3f2252104196}document']
                )
              ),
              /*the model errors out if the count is zero*/if(tointeger(local!count) = 0, 1, local!count)
            )
            ```

        3.  Click **OK**.
    3.  From the **File** menu, click **Save & Publish**, then **Exit**.

### Step 4: Incorporate the Document Summary module in the Complete Task Process

Finally, complete the steps in this section only when configuring the Tasking add-on module.

1.  From **Appian Designer**, search for and open the **ISL\_TSK\_CaseTask\_RecordAction\_Complete** process model.
2.  Add a start process node labeled **Summarize Document** before the **End** node as shown.

    ![ai_document_summary_pm_end_10](images/ai_document_summary_pm_end_10.p
    ng)

    1.  Open the newly created process node and go to the **Data > Input** tab.
        1.  Under New Input, select Process Model.
        2.  Under **Field Properties**, enter `cons!ISL_DOC_AI_PM_CASE_DOCUMENT_SUMMARY_UPDATE` in the **Value** field.
        3.  Under **New Input**, select **Process Parameters** and enter the following code in the **Value** field:

            ```
            1
            2
            3
              {
                document: pv!completedTaskDocuments[tp!instanceindex]
              }
            ```

    2.  In the new subprocess node, go to **Properties > Other** and configure the **Multiple Instances** as shown.

        ![configure_mni_start_pm_11](images/configure_mni_start_pm_11.png)

        1.  Select the **Automatically run multiple instances of this node** checkbox.
            1.  Select **Run one instance for each item in** and **completedTaskDocuments** in the dropdown.
                1.  Select **Spawn all**.
            2.  Select **Run all instances at the same time**.
                1.  Select **All instances are done** to move on when done.
    3.  In the **Deadlines** section, select **The deadline for all tasks is** and leave the associated field empty as shown.
        1.  Select **Minutes** in the dropdown menu.
    4.  Click **OK**.
    5.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...