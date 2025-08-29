---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-guidewire.html
original_path: cu-25.2.1.7/setting-up-guidewire.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Guidewire

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

After installing the Guidewire Quoting module, you must set it up before utilizing it with your Connected Underwriting P&C solution. Once the setup is complete, your CU P&C submission process flow connects to the Guidewire quote generation process flow, allowing your underwriters to generate quotes using your submission data.

[![CU P&C Process Flow](images/cu-process-flow-guidewire.drawio.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1578)

[![](images/cu-process-flow-guidewire.drawio.png)](#_)

This guide walks you through the setup steps to incorporate the module with your CU P&C solution, including:

-   [Configuring the connected system](#step-1-configuring-the-connected-system).
-   [Incorporating the application](#step-2-incorporating-the-application).
    -   [Adding the Create Quote subprocess](#adding-the-create-quote-subprocess).
    -   [Adding the Guidewire Job ID to the Submission Summary](#adding-the-guidewire-job-id-to-the-submission-summary).
    -   [Adding the Resend action to the Submission record](#adding-the-resend-action-to-the-submission-record).
    -   [Adding the producer code to the Create Quote process](#adding-the-producer-code-to-the-create-quote-process).

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System Prerequisites

This section details the prerequisites your system must meet to run the InsureMO Excel Rater module.

-   Appian platform running version 23.4 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.5** imported.
-   **ISU Add-On: Guidewire Create Quote (ISU\_GWQ)** application imported and installed in the target environment.

## Step 1: Configuring the connected system

1.  Navigate into the new **ISU Add-On: Guidewire Create Quote (ISU\_GWQ)** application and open the **ISU\_GWQ\_CS\_PolicyCenter** connected system.
2.  Update the Base URL, Version, Username, and Password fields in the connected system to match those of your Guidewire PolicyCenter instance.
    -   **Note**: For initial import and development, basic authentication steps are detailed here. Production usage of this connector should utilize a Standalone Service or Service with Service Account Mapping Authentication.

## Step 2: Incorporating the application

The following steps are _required_ to incorporate the Guidewire Quoting module.

### Adding the Create Quote subprocess

To add the Create Quote subprocess to the Submit Decision process:

1.  Log in to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Underwriting (ISU)** application.
4.  Open the **ISU Submit Submission Decision** process model.
5.  Add a synchronous subprocess node calling the process **ISU\_GWQ Create Quote Submission** in the activity chained path from the AND node in this process.
6.  Set up the subprocess node as shown:

    ![configure_create_quote_submission.png](images/configure_create_quote_submission.png)

7.  Save and publish the **ISU Submit Submission Decision** process model.

### Adding the Guidewire Job ID to the Submission summary

To add the Guidewire Job ID to the Submission Summary display:

1.  Still logged in, navigate to the **Appian Designer**.
2.  Navigate to **Insurance Underwriting (ISU)** Application.
3.  Open the **ISU\_submissionRecordGeneralInformation** interface.
4.  In the main content section, call the **ISU\_GWQ\_SubmissionJobSideBySideDisplay** interface to display the Guidewire Job ID below the **Status sideBySideLayout**.

    ```
    1
    2
    3
    4
    ISU_GWQ_SubmissionJobSideBySideDisplay(
      brandingMap: ri!brandingMap,
      submission: ri!submission
    ),
    ```

    ![add_job_id_submission_summary.png](images/add_job_id_submission_summary.png)

### Adding the Resend action to the Submission record

To add the Resend action to the Submission record:

1.  Still logged in, navigate to the **Appian Designer**.
2.  Navigate to **Insurance Underwriting (ISU)** application.
3.  Open the **ISU\_Record\_Submission** record type.
4.  Navigate to the **Actions** page.
5.  Use the **ISU\_GWQ Create Quote Submission** process model to create a new related action for **Resending the Submission to Guidewire**.
    -   **Note**: You can set this action up as shown or copy and paste the code to set the context for the process model of the related action.

        ![cu_edit_related_action_resend](images/cu_edit_related_action_resend.png)

        ![isu_gwq_create_qs_process_model.png](images/isu_gwq_create_qs_process_model.png)

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
        {
          submission: rule!ISU_QR_getSubmissions(
            fields: {
              'recordType!{5fe0206a-69a4-4eae-9558-a864330360f6}ISU_Record_Submission.relationships.{62944356-6ee4-4b0a-8af0-05d51fe14082}submissionDecision'
            },
            submissionId: rv!identifier,
            returnType: cons!ISU_CO_ENUM_QE_RETURN_TYPE_SINGLE_OBJECT
          )
        }
        ```

6.  Navigate to the **Views and Actions Security** page.
7.  Click the **Actions** tab.
8.  Scroll down to the **Resend action security** and click the **edit icon**.
9.  Configure security on the record action by copying the following code into the **Resend Security** expression rule:

    ```
    1
    2
    3
    rule!ISU_GWQ_actionVisiblityResendToGuidewire(
      submission: rv!record
    )
    ```

    ![cm_edit_resend_expression_rule.png](images/cm_edit_resend_expression_rule.png)

### Adding the Guidewire mapping to the Settings Site

1.  Still logged in, navigate to the **Appian Designer**.
2.  Open **ISU\_CONS\_settingsSiteSelectablePages** in the **ISU Base** application.
    1.  Add the **ISU\_GWQ\_settingsSitePageMapGuidewireMappings** rule as shown:

        ![cm_ISU_CONS_settingsSiteSelectablePages_rule.png](images/cm_ISU_CONS_settingsSiteSelectablePages_rule.png)

3.  Open the **ISU\_configurationSitePage** interface and navigate to the main `a!match()` statement that chooses the correct tab to display.
    1.  If running Connected Underwriting P&C Base application version 1.4 or 1.5, add **ISU\_GWQ\_settingsPageGuidewireMappings** to the existing match as shown below:

        ![match_updates_option_a](images/match_updates_option_a.png)

    2.  If running Connected Underwriting P&C Base application version 1.6 or greater, add **ISU\_GWQ\_settingsPageGuidewireMappings** to the existing match as shown:

        ![match_updates_option_b](images/match_updates_option_b.png)

### Adding coverage validations to the Property Subject grid

1.  Still logged in, navigate to the **Appian Designer**.
2.  Add the **ISU\_GWQ\_validateRuntimeCoverableRecords** rule to the validations input for the **Subjects Grid Layout** to configure this rule or copy the following code into to the validations input for the **Subjects Grid Layout** as shown.

    ![cu_add_ISU_GWQ_validateRuntimeCoverableRecords_rule](images/cu_add_ISU_GWQ_validateRuntimeCoverableRecords_rule.png)

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
    /*GWQ Coverage validations*/
    rule!ISU_GWQ_validateRuntimeCoverableRecords(
                coverableRecords: rule!ISU_CO_Filter(
                  records: ri!propertySubjects,
                  field: 'recordType!{8b9b5525-16ce-4c1f-b1fb-d7c00cb33ef8}ISU_Record_PropertySubject.fields.{59a540f9-0111-415e-af59-5ddf7bf75577}isDeleted',
                  value: false
                ),
                lineUrlIntegrationCodeId: cons!ISU_GWQ_REFID_INTEGRATION_CODE_LINE_URL_GO_COMMERICAL_PROPERTY
              )
    ```

### Prevent decision if the Submission Risk Details has an invalid coverage configuration

1.  Still logged in, navigate to the **Appian Designer**.
2.  Navigate to the **ISU\_submitDecisionForSubmission** rule in the **ISU Base** application.
3.  Add a new condition to `a!match` to define `local!decisionPreventedValidation` or copy the following code as shown.

    ![cu_define_local!decisionPreventedValidation](images/cu_define_local!decisionPreventedValidation.png)

    ```
    1
    2
    3
    4
    equals: rule!ISU_GWQ_checkIfCoverableRecordsAreInvalidForSubmission(
          submission: ri!submission
        ),
        then: "GW_COVERAGE_VALIDATION"
    ```

4.  Add a new condition to `a!match` to define form contents when `local!decisionPreventedValidation` is not _null_. Make sure that the **GW\_COVERAGE\_VALIDATION** code matches the value set in **step 4** or copy the following code as shown.

    ![cu_add_nc_GW_COVERAGE_VALIDATION_code](images/cu_add_nc_GW_COVERAGE_VALIDATION_code.png)

    ```
    1
    2
    equals: "GW_COVERAGE_VALIDATION",
              then: rule!ISU_GWQ_invalidCoverageSelectionValidationInSubmissionDecision()
    ```

### Adding the producer code to the Create Quote process

The Guidewire Quoting module ships with a single producer code tracked in the `ISU_GWQ_ENUM_PRODUCER_CODE_APPIAN` constant. For initial development, updating this constant with a valid producer code from your Guidewire instance will suffice to execute calls successfully.

**Note:**  The producer code is required in the account and job creation rules: `ISU_GWQ_constructRequestBodyCompositeAccountCreateWithContact` and `ISU_GWQ_constructRequestBodyCompositeJobCreateAndQuote`.

This can be done with the following steps:

1.  Navigate to the **Appian Designer**.
2.  Navigate to **ISU Add-On: Guidewire Create Quote (ISU\_GWQ)** application.
3.  Open the **ISU\_GWQ\_ENUM\_PRODUCER\_CODE\_APPIAN** constant and update the constant value with a valid producer code.
4.  Click **SAVE**.

## Next steps

Creating a quote and implementing Guidewire can differ for each customer. Now that you have set up the [Guidewire Quoting](cu-guidewire-overview.html) module, it is important to review your producer code creation process with your Guidewire representative before utilizing it in your production environment. This will help ensure you have accurately updated the account and job creation rules with the producer code data from Guidewire.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...