---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setup-insuremo-excel-rater-module.html
original_path: cu-25.2.1.7/setup-insuremo-excel-rater-module.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the InsureMO Excel Rater Module

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

After installing the [InsureMO Excel Rater](install-insuremo-excel-rater-module.html) module you need to set it up before using it with your Connected Underwriting (CU) P&C solution. This guide walks you through the minimum incorporation steps required to utilize the full functionality of this module, including:

-   [Adding the Calculate Premium action to the Submission record](#step-1-add-the-calculate-premium-action-to-the-submission-record)
-   [Adding the InsureMO Premium display to Submission summary](#step-2-add-the-insuremo-premium-display-to-the-submission-summary)

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System Prerequisites

This section details the prerequisites your system must meet to run the InsureMO Excel Rater module.

-   Appian platform running version 25.2 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.7** imported.
-   **ISU Add-On: Insuremo Excel Rater** application imported and installed in the target environment.

## Required Incorporation

This section details the incorporation steps you are required to perform in order to utilize the InsureMO Excel Rater module in your CU P&C solution. Complete each set of steps in the order outlined.

### Step 1: Add the Calculate Premium action to the Submission record

Perform the following steps to configure the Calculate Premium related action, including setting up its display name, parameters, and security, then referencing it in the **ISU\_IER\_SubmissionPremiumCalculationSummary** interface.

To configure the Calculate Premium related action:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Search for and open the **ISU\_Record\_Submission** record type.
    1.  Click the **Actions** tab.
        1.  Under the **Related Actions** section, click the **Configure New Action Manually**.

            1.  Configure the **Calculate Premium** related action as shown:

            ![calculate_premium_ra_display_name_setup](images/calculate_premium_ra_display_name_setup.png)

        2.  For **Display Name**, use the **Calculate Premium** translation string contained in the `ISU_IER_Translations` translation set.
        3.  Use the `ISU_IER_GetSubmissionForCalculatePremiumRecordActionContext` rule to set the `Submission` parameter of the `ISU_IER Calculate Insuremo Premium` process model.

            ![configure_SU_IERconfigure_calculate_insuremo_premium_pm](images/configure_SU_IERconfigure_calculate_insuremo_premium_pm.png)

        4.  Click **DONE**.
    2.  Click the **Views and Actions Security** tab.
        1.  Click the **Actions** tab.
            1.  Locate the **Calculate Premium** action you created in **step 4**.
            2.  Click the **Edit icon** to update the security of the record action.
            3.  Set the record security of this action as shown:

                ![edit_action_security_calculate_premium](images/edit_action_security_calculate_premium.png)

        2.  Save the **ISU\_Record\_Submission** record.
4.  Open the **ISU\_IER\_SubmissionPremiumCalculationSummary** interface and scroll to line 45.
    1.  In the `sideBySideItem()` function containing `recordActionField()`, reference the `Calculate Premium` record action created in step as shown:

        ![update_ISU_IER_SubmissionPremiumCalculationSummary_interface](images/update_ISU_IER_SubmissionPremiumCalculationSummary_interface.png)

### Step 2: Add the InsureMO Premium display to the Submission summary

Configure the **Submission Record General Information** interface to display the P**remium Calculation** summary.

1.  In **Appian Designer**, search for and open the **ISU\_submissionRecordGeneralInformation** interface.
    1.  Locate the `ISU_displayCardLayout` rule `contents` parameter and call the `ISU_IER_SubmissionPremiumCalculationSummary` rule.
        1.  Pass in `ri!submission` and `ri!brandingMap` for the respective inputs to this rule as shown:

            ![update_ISU_IER_SubmissionPremiumCalculationSummary_interface02](images/update_ISU_IER_SubmissionPremiumCalculationSummary_interface02.png)

## Next steps

Now that you have set up the [InsureMO Excel Rater](cu-insuremo-excel-rater-module-overview.html) module you start using it with your CU P&C solution to improve your underwriting team’s productivity, and support your organization’s strategic goals around quoting and configurability.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...