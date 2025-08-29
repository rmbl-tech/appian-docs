---
source_url: https://docs.appian.com/suite/help/25.3/setup-case-creation-via-email.html
original_path: setup-case-creation-via-email.html
version: "25.3"
title: "Setting Up Case Creation via Email Module"
page_id: "setup-case-creation-via-email"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Case Creation via Email Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  At this time, the Case Creation via Email module is not compatible with Case Management Studio 2.0.

## Introduction

After installing the Case Creation via Email module, you need to set it up before using it with the Case Management Studio Base application. This guide walks you through the setup steps, including:

-   [Set up the email poller](#step-1-set-up-the-email-poller).
-   [Surface the Triage Emails page](#step-2-surface-the-triage-emails-page).
-   [Add the Emails view on the Case record](#step-3-add-the-emails-view-on-the-case-record).
-   [Add the Emails section on the Case Summary](#step-4-add-the-emails-section-on-the-case-summary).
-   [Add the Email Triage actions to the Case Audit framework](#step-5-add-the-email-triage-actions-to-the-case-audit-framework).
-   [Customize the email sent upon triage](#step-6-customize-the-email-sent-upon-triage).
-   [(_Optional_) Update the time interval for polling emails](#step-7-update-the-time-interval-for-polling-emails).
-   [(_Optional_) Add automation to pre-populate the case type of the email](#step-8-add-automation-to-pre-populate-the-case-type-of-the-email).

## Step 1: Set up the email poller

The Case Creation via Email module needs to connect to a Microsoft email account in order to pull in incoming emails to the triage experience. Follow the steps below **for each desired environment** (Dev, Test, Production, etc.) to create a new Microsoft email account and share its credentials with Appian.

### Creating an account

To create an inbox for inbound email polling:

1.  Navigate to **[Microsoft Azure](https://portal.azure.com)** and create a new account in Azure AD with the desired username that matches the desired email address.
    -   **Note:** A global admin may be required to do this.
2.  Navigate back to **[Microsoft Azure](https://portal.azure.com)** and log in with your new account.
3.  In the **Search** field, enter **App Registrations** and follow the instructions to create a new registration.
4.  Once the application is created, navigate to the **API permissions** page.
    1.  Select **\+ Add a permission**.
        1.  Select **Microsoft Graph**.
        2.  Select **Application Permissions**.
        3.  Select **Mail.ReadWrite**.
    2.  Add permission.
5.  Navigate back to the **API permissions** page.
    1.  Select **Grant Admin Consent** for Appian.
        -   **Note:** A global admin may be required to do this.
6.  Navigate to the **Certificates & Secrets** page.
    1.  Select **\+ New Client Secret**.
        1.  Add a description and select an expiration.
        2.  Save the Value for your records.
            -   **Note:** This value will be input as secret in Appian Third-Party Credentials.

### Appian polling configurations

1.  Login to the desired Appian environment.
2.  Navigate to the **Admin Console**.
    1.  Click **IMPORT > UPLOAD** and choose the `CaseCreationViaEmailv1.0.0-AdminConsole.zip` file that was downloaded in [step 1](install-case-creation-via-email.html#step-1-downloading-the-software-package) of the [Case Creation via Email Installation Guide](install-case-creation-via-email.html).
    2.  Select **Include related import customization file**.
    3.  Click **UPLOAD**.
    4.  Select the `CaseCreationViaEmailv1.0.0-AdminConsole.properties` file that was downloaded in [step 1](install-case-creation-via-email.html#step-1-downloading-the-software-package) of the [Case Creation via Email Installation Guide](install-case-creation-via-email.html).

        ![cms_import_settings](images/cms_import_settings.png)

    5.  Click **INSPECT** to ensure that there will be no complications on import.
    6.  Click **IMPORT** and review the import results to ensure there are no errors.
3.  Navigate to **Third-Party Credentials** in the Admin Console and verify the item labeled `cmgt-mail-poller-msgraph` exists.
    1.  Click `cmgt-mail-poller-msgraph` and provide the **Azure secret**, **tenet**, and **applicationID** configured when enabling a polling inbox.
        -   **Note:** Do not modify `customMailPollerTableName` and `customMailPollerDocTableName` unless you intend to modify the Appian Poller table names (not recommended).
    2.  Click **SAVE**.
4.  Navigate to **Appian Designer** and use the global search to find and open the **CMGT\_EML\_TRI\_MAILBOX\_EMAIL\_ADDRESS** constant.
    1.  Update this constant to match the full email address that will be polled (i.e., test@microsoft.com).

        ![cms_constant_properties](images/cms_constant_properties.png)

    2.  Click **SAVE**.

5.  Navigate back to **Appian Designer** and use global search to find and open the **CMGT\_EML\_TRI\_ENABLE\_MAIL\_POLLER** constant.
    1.  Set the **Value** to _True_ if not set already.

        -   **Note:** Use this constant when you want to turn poller operations _on_ or _off_.

        ![cms_poller_value_true](images/cms_poller_value_true.png)

For additional support on the Microsoft Email Poller, visit the [MSGraph Email Poller](https://community.appian.com/b/appmarket/posts/msgraph-email-poller) on Appian Community.

## Step 2: Surface the Triage Emails page

After setting up the email poller, you need to surface the Triage Emails page in Case Management Studio. This will allow case managers to see incoming emails and triage them accordingly. The Triage Emails page can be accessed in one of two ways:

1.  As a page within a page group on the Workspace site.
2.  As a standalone site.

Both options restrict the Triage Emails page to case managers by default. For the standalone site option, no additional setup steps are required. If you choose this option, you can move on to [step 3](#step-3-add-the-emails-view-on-the-case-record). If you choose option 1, follow the steps below:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **CMGT Case Management Studio Base** application.
4.  Search for and open the **CMGT\_WorkspaceSite** site object.
    1.  In the **Pages** section, click **Add Page Group**.
        1.  In the **Title** field, select Expression.
        2.  Copy and paste the following code snippet into the expression editor.

            ```
            1
            'translation!{765a2893-6d2c-4330-8d7a-ac85f4a6f417}CMGT_BaseTranslations.{c750f1f2-e7b8-4b75-b1b3-017fc218be26}Cases'
            ```

        3.  In the **Web Address Identifier** field, enter `cases-group`.
        4.  In the **Icon** field, select the **Table** icon.
        5.  In the **Visibility** field, select **Always show**.

            ![cms_workspace_add_page_group](images/cms_workspace_add_page_group.png)

        6.  Click **ADD**.
    2.  In the newly created **Cases** page group, click the **Add Page** link to add the Cases page.
        1.  In the **Title** field, select Expression.
        2.  Copy and paste the following code snippet into the expression editor.

            ```
            1
            'translation!{765a2893-6d2c-4330-8d7a-ac85f4a6f417}CMGT_BaseTranslations.{c750f1f2-e7b8-4b75-b1b3-017fc218be26}Cases'
            ```

            ![cms_add_page](images/cms_add_page.png)

        3.  In the **Web Address Identifier** field, enter `cases`.
        4.  In the **Interface Content** field, call the `CMGT_SitePage_Cases` interface.
        5.  In the **Width** field, select **Full**.
        6.  In the **Visibility** field, select **Always show**.
        7.  Click **ADD**.
    3.  In the newly created **Cases** page group, click the **Add Page** link and follow these steps to add the **Triage Emails** page:

        1.  In the **Title** field, select Expression.
        2.  Copy and paste the following code snippet into the expression editor:

            ```
            1
            'translation!{9ccd1bc4-9914-437c-8daf-e4f4b64bf756}CMGT_EML_TRI_Translations.{913cbe12-d23c-4542-b556-f0a24df13ff0}Triage Emails'
            ```

        3.  In the **Web Address Identifier** field, enter `triage-emails`.
        4.  In the **Interface Content** field, call the `CMGT_EML_TRI_SitePage_TriageEmail` interface.
        5.  In the **Width** field, select **Full**.
        6.  In the **Visibility** field, select **Only show when…** and copy and paste the following code snippet into the expression editor.

        ```
        1
        2
        3
        4
        5
        6
          a!isUserMemberOfGroup(
            username: loggedInUser(),
            groups: {
              cons!CMGT_GRP_CASE_MANAGERS
            }
          )
        ```

        1.  Click **ADD**.
5.  Lastly, click the **up arrow** on the newly created **Cases** page group until it is directly after the **Workspace** page.

    ![cms_case_site_page](images/cms_case_site_page.png)

6.  Click **SAVE**.
7.  Search for and open the **CMGT\_SITE\_PAGE\_CASES** expression rule.
    1.  Replace the old **Cases** page reference with the new **Cases** page reference.
        -   **Note:** The page reference is different now that it was recreated as part of a site page group.
    2.  Click **SAVE** on the expression rule.

## Step 3: Add the Emails view on the case record

To display the email threads that are associated with a case in their own record view:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **CMGT Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Case** record type.
5.  Select **Views** and click **ADD VIEW MANUALLY**.
    1.  For the **View Name** field, copy and paste the following code snippet into the expression editor:

        ```
        1
        'translation!{9ccd1bc4-9914-437c-8daf-e4f4b64bf756}CMGT_EML_TRI_Translations.{297cf25d-abb6-4d91-b9ed-ab0139f56398}Emails'
        ```

        ![cms_rtviews_create_newview](images/cms_rtviews_create_newview.png)

    2.  For the **Interface** field, copy and paste the following code snippet into the expression editor:

        ```
        1
        rule!CMGT_EML_TRI_Case_RecordView_Emails(caseId: rv!identifier)
        ```

    3.  Click **OK**.
    4.  Copy the **URL stub** that was generated for the new view.
    5.  Navigate to **Views and Actions Security** and select the **edit** icon in the **Emails** section.
        1.  Configure the security so that only users in the **CMGT Internal Users** group can see the view, as shown.

            ![cms_security_internal_group](images/cms_security_internal_group.png)

        2.  Click **OK**.
        3.  Click **SAVE** on the record type.
6.  Search for and open the `CMGT_EML_TRI_TXT_URL_STUB_CASE_RECORD_EMAILS_TAB` constant.
    1.  Paste the value of the URL stub for the new view in the **Value** field.
    2.  Click **SAVE**.

## Step 4: Add the Emails section on the case summary

To display a preview of the email threads that are associated with a case on the case summary:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **CMGT Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Case\_RecordView\_Summary** interface.
    1.  In expression mode, find the section layout that contains `CMGT_Case_CaseDetailsSummary`.
    2.  Copy and paste the following code snippet in `CMGT_Case_CaseDetailsSummary` as shown.

        ```
        1
        2
        3
        4
        5
        rule!CMGT_EML_TRI_CaseSummary_Emails(
                        caseId: ri!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f}CMGT_Case.fields.{f4bdff4d-4087-4519-bf34-34a1139e5c3d}caseId'],
                        brandingMap: local!brandingMap,
                        triggerRefresh: local!triggerRefresh
                      ),
        ```

        ![cms_email_trl_expression_rule](images/cms_email_trl_expression_rule.png)

    3.  Click **SAVE**.

## Step 5: Add the email triage actions to the case audit framework

The action of associating an email to a case should be included in the case history. To include this new action in the case history:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **CMGT Case Management Studio Base** application.
4.  Search for and open the **CMGT\_EventHistory\_Case\_FormatDetails** expression rule.
    1.  Copy and paste the following code block above the default condition in the `match()` statement, as shown.

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
        whenTrue: fv!value = cons!CMGT_EML_TRI_REFID_EVENT_TYPE_LINKED_THREAD,
            then: 'translation!{9ccd1bc4-9914-437c-8daf-e4f4b64bf756}CMGT_EML_TRI_Translations.{65c8bfe4-e5b7-48d1-b95f-7ff19b102d5c}Thread: {subjectName}'(
              'translation!{9ccd1bc4-9914-437c-8daf-e4f4b64bf756}CMGT_EML_TRI_Translations.{65c8bfe4-e5b7-48d1-b95f-7ff19b102d5c}Thread: {subjectName}.translationvariables.{df0a14e0-2a2f-456a-a64b-d14a5258f50d}subjectName': index(
                rule!CMGT_EML_TRI_QR_GetThreads(
                  threadIds: local!details.threadId,
                  fields: 'recordType!{53d3f93d-ccb6-423d-9238-2edf8811d08f-cmgt_eml_tri}CMGT_EML_TRI_Thread.fields.{2a95571a-53a9-490b-9322-b32712e2fa2a-cmgt_eml_tri}subject',
                  executeWhen: a!isNotNullOrEmpty(value: local!details.threadId)
                ),
                'recordType!{53d3f93d-ccb6-423d-9238-2edf8811d08f-cmgt_eml_tri}CMGT_EML_TRI_Thread.fields.{2a95571a-53a9-490b-9322-b32712e2fa2a-cmgt_eml_tri}subject',
                null
              )
            ),
        ```

        ![cms_email_tri_getthreads_rule](images/cms_email_tri_getthreads_rule.png)

    2.  Click **SAVE**.

## Step 6: Customize the email sent upon triage

When an email is linked to an existing case or created as a new case, the original email sender will receive a notification that an action has been taken on their email. The notification will include the case identifier for reference. By default, the message on this email states “If you have any questions or need assistance, please reach out to your system administrator.” You can tailor this message to match the needs of your organization, team, or process.

To change this message:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **CMGT Add-On - Case Creation via Email** application.
    1.  Search for and open the **CMGT\_EML\_TRI\_Translations** translation set.
        1.  Find the string with the English value `If you have any questions or need assistance, please reach out to your system administrator.`
        2.  Edit the value of the string to something that makes sense for your organization. See the image below for reference as to where this string appears.

            ![cms_case_creation_confirmation](images/cms_case_creation_confirmation.png)

        3.  Click **SAVE**.

## Step 7: Update the time interval for polling emails

By default, the email poller checks the connected email inbox every ten minutes for new emails to retrieve. You can customize this process to run less frequently. This is an optional step.

We do not recommend that the process run more frequently, to avoid potential performance issues.

To decrease the frequency:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **CMGT Add-On - Case Creation via Email** application.
    1.  Search for and open the **CMGT\_EML\_TRI\_EMAIL\_POLLER\_TIME\_INTERVAL\_IN\_MINUTES** constant.
        1.  Update the value to an integer for how often the email poller should run. Be sure the value is in minutes.
        2.  Click **SAVE**.
    2.  Search for and open the **CMGT\_EML\_TRI\_IngestMailViaPoller** process model.
        1.  From the **File** menu, click **Save & Publish**.

## Step 8: Add automation to pre-populate the case type of the email

When converting an email into a case, the case manager must enter the appropriate case type, then enter the rest of the required details before submitting the case. By default, the case type selection is manual. To add a customization that automatically sets the case type based on the email content, you can customize **CMGT\_EML\_TRI\_InitializeCaseDetails** using your own custom AI Skills object or expression rule. This is an optional step.

For additional guidance, open the expression rule in the **Appian Designer** and read the in-line comments.

## Next step

Now that you have set up the [Case Creation via Email](cms-case-creation-via-email-overview.html) module, you can create a case via email and link the corresponding email to the newly created case.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...