---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-submission-ai.html
original_path: cu-25.2.1.7/setting-up-submission-ai.html
version: "25.3"
title: "Setting Up Submission AI"
page_id: "cu-25.2.1.7/setting-up-submission-ai"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Submission AI

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

After [installing](install-submission-ai.html) the Submission AI module, you need to set it up before using it with your Connected Underwriting (CU) P&C Base application.

This guide walks you through the required incorporation steps in order, including:

-   [Exposing the Record Chat component on the Submission summary](#step-1-expose-the-record-chat-component).
-   [Adding the Refresh Summary record action the the Submission record](#step-2-add-the-refresh-summary-record-action-to-the-submission-record)

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System Prerequisites

This section details the prerequisites your system must meet to run the InsureMO Excel Rater module.

-   Appian platform running version 25.2 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.7** imported.
-   **ISU Add-On: Submission AI (ISU\_SAI)** application imported and installed in the target environment.

## Step 1: Expose the Record Chat component

To allow users to engage with the AI chatbot in the context of the Submission record you need to expose the [Record Chat Component](../Records_Chat_Component.html) on the Submission record summary.

To update the Submission Summary interface:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Connected Underwriting (ISU)** application.
    1.  Search for and open the **ISU\_submissionRecordViewSummary** interface.
        1.  Add **ISU\_SAIC\_submissionRecordChatCard** above **ISU\_alertsList** by inserting the code block as shown:

            ![submission_summary_interface_updates](images/submission_summary_interface_updates.png)

            -   **Note**: Alternatively, you can copy and paste the code block:

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
                13
                14
                  /*Submission AI Chat Pane*/
                 a!pane(
                   accessibilityText: 'translation!{56f2b585-c3d1-48fc-9589-dbacc1a5f545}ISU_SAI Translations.{3da0af57-b4a1-4dbe-b18d-02bf20bfd68f}AI Chat',
                   showWhen: local!showSubmissionAIChatPane,
                   width: "NARROW_PLUS",
                   padding: "LESS",
                   backgroundColor: local!brandingMap.Blue0Color,
                   contents: rule!ISU_SAI_Submission_DisplayChat(
                     brandingMap: local!brandingMap,
                     submission: ri!submission,
                     showWhenCollapseIcon: true,
                     collapseSaveTarget: local!showSubmissionAIChatPane
                   )
                 )
                ```

    2.  Click **SAVE**.

## Step 2: Add the Refresh Summary record action to the Submission record

1.  From **Appian Designer**, search for and open the **ISU\_Record\_Submission** record type.
    1.  Click the **Actions** tab.
        1.  Under the **Related Actions** section, click **Configure New Action Manually**.
            1.  Configure the **Refresh Summary** related action as shown:

                ![refresh_summary_related_action](images/refresh_summary_related_action.png)

                ![refresh_summary_related_action_context](images/refresh_summary_related_action_context.png)

            2.  For **Display Name**, use the `Refresh` translation string contained in the `ISU_SAI Translations` translation set.
            3.  Click **DONE**.
    2.  From the side menu, click the **Views and Actions Security** tab.
        1.  Click the **Actions** tab.

            ![submission_record_views_security_actions_tab](images/submission_record_views_security_actions_tab.png)

            1.  Locate the **Refresh** action you previously created.
                1.  Click the **Edit icon** to update the security of the record action.
                    1.  Configure the record security of this action as shown:

                        ![edit_action_refresh_dialog](images/edit_action_refresh_dialog.png)

    3.  Save the changes.
2.  Open the **ISU\_SAI\_Submission\_DisplaySummary** interface.
    1.  Locate the `sideBySideItem()` function containing `recordActionField()` around **line 177**, and reference the **Refresh** record action created in the previous steps, as shown:

        ![update_submission_display_summary_record_action](images/update_submission_display_summary_record_action.png)

3.  Save the changes.

## Step 3: Add AI Summary Section to Submission Summary

1.  From **Appian Designer**, search for and open the **ISU\_submissionRecordViewSummary** interface.
    1.  Below the call to the `ISU_bannerAlertsList` rule, insert a call to the `ISU_SAI_Submission_DisplaySummary` rule, as shown:

        ![submission_record_vew_summary_updates](images/submission_record_vew_summary_updates.png)

        -   **Note**: Alternatively, you can copy and paste the code block:

            ```
            1
            2
            3
            4
            5
            6
            7
             /*Submission AI Summary Section*/
                  rule!ISU_SAI_Submission_DisplaySummary(
                    brandingMap: local!brandingMap,
                    submission: ri!submission,
                    showWhenExpandChatLink: true,
                    expandChatSaveTarget: local!showSubmissionAIChatPane
                  )
            ```

## Step 4: Add the Update Summary node to the manual Create Submission process

1.  From **Appian Designer**, search for and open the **ISU Create New Submission** process model.
    1.  Directly before the **isEmailSupported?** XOR node, add a new asynchronous subprocess node called **AI Submission Summary**.

        ![ai_submission_summary_subprocess_node](images/ai_submission_summary_subprocess_node.png)

    2.  Under the Setup tab of the subprocess node, configure the node as shown:

        ![configure_ai_summary_subprocess](images/configure_ai_summary_subprocess.png)

2.  Save and publish the process model.

## Step 5: Add the Update Summary node to the Complete Submission Processing process

1.  From **Appian Designer**, search for and open the **ISU Complete Submission Processing** process model.
    1.  Directly before the **Dummy; for incorp - do not remove** script task node, add a new asynchronous subprocess node called **AI Submission Summary**”\*\* as shown:

        ![ai_submission_summary_subprocess02](images/ai_submission_summary_subprocess02.png)

        1.  Under the **Setup** tab of the subprocess node, configure the node as shown:

            ![configure_ai_submission_summary02](images/configure_ai_submission_summary02.png)

## Next steps

Now that you have set up the [Submission AI](cu-submission-ai-overview.html) module you can use it in your CU P&C solution to gain additional insights about the Submission record and reduce your processing time.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...