---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-automated-routing.html
original_path: cu-25.2.1.7/setting-up-automated-routing.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Automated Routing Module

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

After [installing](install-automated-routing.html) the Automated Routing module, you need to set it up before using it with the Connected Underwriting P&C Base application. This guide walks you through the required incorporation steps.

-   [Add the Assignment Rules tab to the Settings Site](#step-1-add-the-assignment-rules-tab-to-the-settings-site).
-   [Enable automatic case assignment for manual submission creation](#step-2-enable-automatic-case-assignment-for-manual-submission-creation).
-   [Enable automatic case assignment for submission creation via email](#step-3-enable-automatic-case-assignment-for-submission-creation-via-email).
-   [Remove assignment from manual submission creation](#step-4-remove-assignment-from-manual-submission-creation).
-   [Remove existing assignment from Submission processing completion rule](#step-5-remove-existing-assignment-from-submission-processing-completion-rule).

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System Prerequisites

This section details the prerequisites your system must meet to run the InsureMO Excel Rater module.

-   Appian platform running version 24.2 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.6** imported.
-   **ISU Add-On: Auto-Assignment (ISU\_AA)** application imported and installed in the target environment.

## Step 1: Add the Assignment Rules tab to the Settings Site

To set up the Automated Routing module with Connected Underwriting P&C, you first need to add the Assignment Rules tab to Connected Underwriting Settings Site.

To add the Assignment Rules tab:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Connected Underwriting (ISU)** and open the application.
4.  Search for and open the **ISU\_CONS\_settingsSiteSelectablePages** expression rule.
5.  Append the **ISU\_AA\_settingsSitePageMapAssignmentRules** expression rule to the end of the existing array, as shown.

![ISU_CONS_settings_site_selectable_pages_rule](images/ISU_CONS_settings_site_selectable_pages_rule.png)

1.  Open the **ISU\_configurationSitePage** interface.
2.  In the existing `a!match()` function that selects the interface for the selected tab in the side navigation, add a new condition to match on the newly-added **Assignment Rules** tab. Be sure to use the same Assignment Rules translation set string contained in the **ISU\_AA\_settingsSitePageMapAssignmentRules** expression rule as shown:

    ![ISU_configurationSitePage](images/ISU_configurationSitePage.png)

3.  Click **SAVE**.

## Step 2: Enable automatic case assignment for manual submission creation

Next, you will need to you enable automatic case assignment when users manually create a submission.

To enable case assignment:

1.  Navigate to **Appian Designer**.
2.  Go to **Connected Underwriting (ISU)** and open the application.
3.  Search for and open the **ISU Create New Submission** process model.
4.  Add a new synchronous subprocess node called **Configure Auto Assign Submission** in between the **Write Line of Business Write Records** node and the **Write Submission Event Audit Write Records** node. Be sure to continue activity chaining through this node:

    ![isu_create_new_submission.png](images/isu_create_new_submission.png)

5.  In the new subprocess node, go to the **Setup** tab and select the following settings:

    ![configure_auto_assignment_submission](images/configure_auto_assignment_submission.png)

    1.  In the **Subprocess Setup** section, select **Synchronously**.
    2.  In the **Run this process model** section, select **ISU\_AA Auto Assign Submission** as the process to run.
        1.  Select the **Reporting** checkbox to include data from this subprocess in the parent process model reports.
    3.  In the **Input Variables** section, pass submission into the **ISU\_Record\_Submission** record type.
    4.  In the **Output Variables** section, click **Add**.
        1.  In the **Pick a process variable** drop down, select **Submission**.
        2.  In the **Pick a subprocess variable..** drop down, select **submission**.
6.  Click **OK**.
7.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 3: Enable automatic case assignment for submission creation via email

You will also need to enable case assignment automation on submissions created via email by updating the ISU Complete Submission Processing\*\* process model.

To update the ISU Complete Submission Processing\*\* process model:

1.  Navigate to the **Appian Designer**.
2.  Navigate to **Connected Underwriting (ISU)** and open the application.
3.  Search for and open the **ISU Complete Submission Processing** process model.
    1.  Add a new synchronous subprocess node called **Auto Assign Submission** in between the **Change Occurred? XOR** node and the **Write to Submission Write Records** node.

        ![complete_submission_processing](images/complete_submission_processing.png)

4.  In the new subprocess node, go to the **Setup** tab and select the following settings:

    ![configure_auto_assignment_submission_pm](images/configure_auto_assignment_submission_pm.png)

    1.  In the **Subprocess Setup** section, select **Synchronously**.
    2.  In the **Run this process model** section, select **ISU\_AA Auto Assign Submission** as the process to run.
        1.  Select the **Reporting** checkbox to include data from this subprocess in the parent process model reports.
    3.  In the **Input Variables** section, pass submission into the **ISU\_Record\_Submission** record type.
    4.  In the **Output Variables** section, click **Add**.
        1.  In the **Pick a process variable** drop down, select **Submission**.
        2.  In the **Pick a subprocess variable..** drop down, select **submission**.
5.  Click **OK**.
6.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 4: Remove assignment from manual submission creation

The next step involves removing the Assignment from the manual submission creation process so the Automated Routing module can manage this step.

To remove the Assignment rule input:

1.  Navigate to the **Appian Designer**.
2.  Navigate to **Connected Underwriting (ISU)** and open the application.
3.  Search for and open the **ISU\_createSubmission** interface object.
    1.  In expression mode, where **ISU\_submissionGeneralInformation** is called, pass in _false_ for the `showWhenAssignee` rule input.

## Step 5: Remove existing assignment from Submission processing completion rule

Finally, you will need to remove the existing assignment from the Submission processing completion rule.

To update the expression rule:

1.  Navigate to the **Appian Designer**.
2.  Navigate to **Connected Underwriting (ISU)** and open the application.
3.  Search for and open the **ISU\_updateSubmissionOnProcessingComplete** expression rule.
    1.  Remove the `local!assigneeUpdate` and the `local!assigneeUpdate` variables, as shown:

        ![submission_processing_complete](images/submission_processing_complete.png)

    2.  Return `local!statusUpdate` as shown:

        ![update_submission_processing_complete](images/update_submission_processing_complete.png)

## Next steps

Now that you have set up the [Automated Routing](cu-automated-routing-overview.html) module, you can begin using it to create automation rules that automatically assigns and routes submissions to your teams based on the submission type.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...