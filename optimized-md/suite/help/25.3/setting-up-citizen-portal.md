---
source_url: https://docs.appian.com/suite/help/25.3/setting-up-citizen-portal.html
original_path: setting-up-citizen-portal.html
version: "25.3"
title: "Setting Up Public Portal Module"
page_id: "setting-up-citizen-portal"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Public Portal Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

After [installing the Public Portal](installing-citizen-portal.html), you need to set it up before using it with Case Management Studio. This guide walks you through the required setup steps in the order you should complete them and optional configurations, including:

-   [Setting up the Portal Intake Form in the Control Panel](#step-1-set-up-the-portal-intake-form-in-the-control-panel).
-   [Collecting portal case contacts](#step-2-collect-the-portal-case-contacts).
-   [Updating portal case contacts](#step-3-update-the-portal-case-contact).
-   [Removing Google reCAPTCHA](#step-4-remove-google-recaptcha).
-   [Managing file uploads](#step-5-manage-files-uploaded-to-portal).
-   [Setting up the Public Portal site](#step-6-set-up-the-service-account-and-publish-the-portal).
-   [Performing optional configurations](#perform-optional-configurations).
    -   [Sending Case Creation emails](#step-1-send-case-creation-emails).
    -   [Translating the application](#step-2-translate-the-application).
    -   [Renaming the portal service account](#step-3-rename-the-portal-service-account).
    -   [Monitoring your portal](#step-4-monitor-your-portal).

Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System Prerequisites

This section details the prerequisites your system must meet to run the Public Portal module.

-   Appian platform running version 25.2 or greater.
-   A supported version of [MariaDB](System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](System_Requirements.html#web-browsers).
-   Imported **Case Management Studio Base** application version 2.0 or higher, which includes the following application containers:
    -   `CMGT Case Management Studio Base (CMGT)`
    -   `CMGT Control Panel Generated Objects (CMGT)`
-   `CMGT Portal Module (CMGT)` application container imported and installed in the target environment.

## Step 1: Set up the Portal Intake Form in the Control Panel

This is a required step to surface the portal intake form on the Control Panel, and call the form in the correct portal interface object.

1.  In **Appian Designer**, go to the **CMGT Case Management Studio Base** application.
2.  Search for and open the `CMGT_ControlPanel` control panel object.
    1.  Go to **Standard Configurations** and scroll down to the Interfaces section.
    2.  Click **Add Interface** to add a new business user configurable interface, and enter the following values for each field:
        -   Intent: `Create`
        -   Display Name: `Portal Intake Form`
        -   Web Address Identifier: `portal-intake-form`
        -   Description: (optional)
    3.  Click **Submit**.
    4.  Go to **Cases** within the **Hierarchy** and locate the **Forms and Interfaces** section.
        1.  In the Portal Intake form, select the `CMGT_Portal_Case_IntakeForm` interface.
            -   **Note**: The same way an Intake Form is created in the Control Panel workspace for each category and type, a Portal Intake Form will need to be created in the Control Panel workspace for each category and type.
        2.  Click **SAVE**.
3.  Search for and open the `CMGT_Portal_Case_CreateCase_FormDisplayWrapper` interface.
    1.  In the `steps` parameter of the wizard layout, call the `Control Panel` reference to the portal intake form after the existing wizard step, as shown:.

        ![cms_PublicPortalSetup_PortalIntakeFormReference](images/cms_PublicPortalSetup_PortalIntakeFormReference.png)

    2.  Click **SAVE**.

## Step 2: Collect the Portal Case Contacts

This is a required step to capture case contact information.

1.  In **Appian Designer**, go to the **CMGT Case Management Studio Base** application.
2.  Search for and open the `CMGT_Case` record type.
3.  In the **Data Model** section, click **Add Relationship**.
    1.  Select the `CMGT_Portal_CaseContact` record type.
    2.  Enter a **Relationship Name** such as `portalCaseContact`.
    3.  Select **One to Many** for the **Relationship Type**.
    4.  Select `caseId` for the common record fields.
    5.  In the **Write and Delete Related Records** section, select **Write or delete CMGT\_Portal\_CaseContacts when modifying Cases**.

        ![cm_portalCaseContact_record_relationship](images/cm_portalCaseContact_record_relationship.png)

4.  Search for and open the `CMGT_Case_SetMetaData` expression rule.
    1.  Add the following map statement below the last map in the `childRelationships` array:

        ```
        1
        2
        3
        4
        5
        6
        7
        a!map(
           field: recordType!CMGT_Case.relationships.portalCaseContact,
           value: rule!CMGT_Portal_CaseContact_SetMetaData(
              portalCaseContacts: fv!item[recordType!CMGT_Case.relationships.portalCaseContact],
              initiator: ri!initiator
           )
        )
        ```

        **Note:**  When using the provided code snippet, remember to update the portalCaseContact record relationship's reference UUID. The UUID in the code snippet will differ from the one you created in the previous step, so you must replace it with your new portalCaseContact relationship's UUID.

5.  Search for and open the `CMGT_Portal_Case_IntakeForm`.
    1.  In the contents of the a!wizardStep, below the Case description input, call the interface `CMGT_Portal_CreateCase_Sub_ContactsSection` as follows:

        ```
        1
        2
        3
        4
        rule!CMGT_Portal_CreateCase_Sub_ContactsSection(
               brandingMap: local!brandingMap,
               caseContact: ri!case['recordType!{d81cdd0e-c54d-4b8e-beec-b7ae37fefe7f}CMGT_Case.relationships.{2ecd0ec6-d2c2-44ed-8b03-83ee5654cfe4}portalCaseContact']
             ),
        ```

6.  Search for and open the **CMGT\_Case\_CaseSummary** interface.
    1.  In the `a!studio_displayStyle()` contents, after the **Control Panel** summary page reference, call the `CMGT_Portal_CaseSummary_PortalFields` interface as shown:

        ```
        1
        2
        3
        4
        rule!CMGT_Portal_CaseSummary_PortalFields(
        caseContact: ri!case[recordType!CMGT_Case.relationships.portalCaseContact],
        brandingMap: ri!brandingMap
        ),
        ```

        **Note:**  When using the provided code snippet, remember to update the portalCaseContact record relationship's reference UUID. The UUID in the code snippet will differ from the one you created in the previous step, so you must replace it with your new portalCaseContact relationship's UUID.

7.  Search for and open the `CMGT_EventHistory_Case_FormatDetails` expression rule.
    1.  Add another condition to the `match()` statement that formats the audits related to the case contact by copying the code snippet and pasting as shown.

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
        15
        16
        17
        18
        19
        20
        21
        22
        23
        24
        25
        26
        27
        28
        29
        30
        31
        32
        33
        34
        35
        36
        37
        whenTrue: fv!value = cons!CMGT_PORTAL_REFID_EVENT_TYPE_UPDATE_CASE_CONTACT,
        then: joinarray(
        rule!CMGT_UTIL_RejectBlank(
        array: {
        if(
        rule!CMGT_UTIL_IsBlank(
        local!details.firstName
        ),
        null,
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{91fffdbd-a177-4f4f-b0e0-769b9475604b}First Name: {value}'(
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{91fffdbd-a177-4f4f-b0e0-769b9475604b}First Name: {value}.translationvariables.{e6f9ee42-d08f-46cd-90ce-29e1ce3a8e07}value': local!details.firstName
        )
        ),
        if(
        rule!CMGT_UTIL_IsBlank(
        local!details.lastName
        ),
        null,
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{33ebde45-da93-4bff-813c-aafee5c65dd6}Last Name: {value}'(
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{33ebde45-da93-4bff-813c-aafee5c65dd6}Last Name: {value}.translationvariables.{d44e0b68-4130-4944-a35b-19ac9d247a9d}value': local!details.lastName
        )
        ),
        if(
        rule!CMGT_UTIL_IsBlank(
        local!details.email
        ),
        null,
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{8a2f3918-6edc-4aef-b7eb-eb84fd4d95ac}Email: {value}'(
        'translation!{3901b96b-7990-4002-b073-5b601b7d9be9}CMGT_Portal_Translations.{8a2f3918-6edc-4aef-b7eb-eb84fd4d95ac}Email: {value}.translationvariables.{325eca9c-740e-49e3-9a9f-6541520f32f8}value': local!details.email
        )
        )
        }
        ),
        char(
        10
        )
        ),
        ```

        ![cms_CMGT_EventHistory_Case_FormatDetails](images/cms_CMGT_EventHistory_Case_FormatDetails.png)

    2.  Click **SAVE**.

## Step 3: Update the portal case contact

Follow the steps in this section to allow case workers to update the portal case contact.

1.  In **Appian Designer**, go to the **CMGT Case Management Studio Base** application.
2.  Search for and open the **CMGT\_Case** record type.
    1.  Navigate to the **Actions** tab on the record type.
        1.  Click **CONFIGURE ACTION MANUALLY** under the **Related Actions** section.
            1.  In the **Create New Related Action** dialog, select **Use Expression** for the **Display Name** field.
            2.  In the expression editor, use the translation string for `Update Contact` from the `CMGT_Portal_Translations` translation set.
            3.  Complete the remaining fields in the **Create New Action** dialog, as follows:
                -   **Key**: updateContact
                -   **Icon**: pencil-square-o
                -   **Dialog Height**: Short
                -   **Dialog Width**: Medium
                -   **Process Model**: `CMGT_Portal_Case_UpdateContact`
                -   **Context**: Copy and paste the following code snippet:

                    ```
                    1
                    2
                    3
                    4
                    5
                    {
                    caseContacts: rule!CMGT_QR_GetPortalCaseContact(
                      caseId: rv!identifier,
                    )
                    }
                    ```

        2.  Click **OK**.
    2.  On the record type, navigate to the **Views and Actions Security** tab.
        1.  Click the **Actions** tab.
        2.  Locate the **Update Contact** action and click the edit icon.
        3.  For **Who can see this action?**, select **All users who can see the record**.
        4.  For **When can they see this action?**, select **Only when…**.
            1.  Enter `source = CMGT_TXT_SOURCE_PORTAL` as shown:

                ![cms_portal_update_contact_security_config](images/cms_portal_update_contact_security_config.png)

    3.  Click **OK** and **SAVE** to save the record type.
3.  Search for and open the **CMGT\_Case\_CaseSummary** interface.
    1.  Following the **Update Case** action in the record action field, add the **Update Contact** action as shown.

        ![cms_PublicPortalSetup_UpdatePortalContactSailIncorporation](images/cms_PublicPortalSetup_UpdatePortalContactSailIncorporation.png)

    2.  Click **SAVE**.

## Step 4: Remove Google reCAPTCHA

By default, the portal ships with Google reCAPTCHA enabled. Appian considers reCAPTCHA services essential for unauthenticated Appian Portals usage. See [Google reCAPTCHA](google_reCAPTCHA.html) to learn more about Google reCAPTCHA.

If you wish to remove Google reCAPTCHA, complete the following steps:

1.  In **Appian Designer**, go to the **CMGT Portal Module** application.
2.  Search for and open `CMGT_Portal` portal object.
    1.  In the **Service Access** section, remove the connected system in the **Google reCAPTCHA** field.
    2.  Click **SAVE**.
        -   **Note**: A design guidance warning about missing Google reCAPTCHA configuration will appear.

If this is a permanent removal of reCAPTCHA, navigate to the interfaces specified in the design guidance warning that calls `a!verifyRecaptcha()`. Follow the inline comments in each interface to remove the `a!verifyRecaptcha()` call.

-   **Note**: This is not a _necessary_ step but will clean up design guidance warnings and make the code cleaner.

## Step 5: Manage files uploaded to Portal

**Note:**  If uploaded documents are expected to contain sensitive information (e.g., PII, financial, medical, etc.), we recommend Appian HIPAA Cloud to ensure potential sensitive user data is protected.

Appian recommends that customers restrict the Portal-exposed file upload fields to a set of permitted file extensions. This is configurable via the [admin console](Appian_Administration_Console.html#file-upload).

Portals natively have a [file size restriction](File_Upload_Component.html#uploaded-file-size-limit) per document upload.

## Step 6: Set up the service account and publish the Portal

This is a required step.

1.  Log in to the target environment.
2.  Navigate to the **Admin Console**.
3.  Navigate to **Web API Authentication**:
    1.  Create a service account.
    2.  Create an API Key for this service account.
    3.  Copy the API key for later use.

        ![pp_create_web_api_sa](images/pp_create_web_api_sa.png)

4.  In **Appian Designer**, go to the **CMGT Case Management Studio Base** application.
5.  Search for and open the **CMGT Service Accounts** group.
    -   Add the service account to the group.
6.  In **Appian Designer**, go to the **CMGT Portal Module** application.
7.  Search for and open **CMGT Portal Connected System**.
    1.  Update the **Base URL** to your environment's Web API URL. The URL should end in `/webapi/`.
    2.  Add the **API key** you created in **Step 3**.
8.  In **Appian Designer**, go to the **CMGT Studio Module** application.
9.  Search for and open `CMGT_Portal`:
    1.  Add your service account to the **Service Account** field.
    2.  Note the **Portal UUID**.
10.  Search for and update `CMGT_PORTAL_TXT_URL_UUID` with **Portal UUID**.
11.  Toggle the **Published** field on and save changes.
     -   **Note**: Ignore any design guidance warnings due to shared interface objects. These warnings will not impact the portal publishing or functionality.
12.  Verify the **Public Portal** is working as expected.

## Perform optional configurations

In addition to the required setup steps, you can perform these optional configurations to meet your specific use case and workflow needs, including:

-   [Sending case creation emails](#step-1-send-case-creation-emails).
-   [Translating the application](#step-2-translate-the-application).
-   [Renaming the Portal service account](#step-3-rename-the-portal-service-account).
-   [Monitoring your Portal](#step-4-monitor-your-portal).

### Step 1: Send case creation emails

This is an optional step. Complete the following steps to send case creation emails to the contact provided in the portal case submission:

1.  In **Appian Designer**, go to the **CMGT Case Management Studio Base** application.
2.  Search for and open the **CMGT\_Email\_CaseCreationEmails** expression rule.
    1.  Add the following to the existing array of email creation rules.

        ```
        1
        2
        3
        rule!CMGT_Portal_Email_EmailSettingMap_CreateCase(
        case:ri!case
        )
        ```

    2.  Click **SAVE**.

3.  Search for and open the **CMGT\_Portal\_Email\_EmailSettingMap\_CreateCase** expression rule.
    1.  Locate the `recipientEmailAddress` parameter in the `map()` function on line 4 and copy and paste the following:

        ```
        1
        2
        3
        4
        5
        6
        toemailaddress(
        rule!CMGT_QR_GetPortalCaseContact(
        caseId: ri!case[recordType!CMGT_Case.fields.caseId],
        fields: recordType!CMGT_Portal_CaseContact.fields.email
        )[recordType!CMGT_Portal_CaseContact.fields.email]
        ),
        ```

    2.  Click **SAVE**.

4.  Verify the portal case contact receives a case confirmation email.

### Step 2: Translate the application

This is an optional step. Refer to [Exporting translation strings for translation](translation-set-object.html#exporting-translation-strings-for-translation) for information on translating the Public Portal module to other languages.

### Step 3: Rename the Portal service account

This is an optional step that allows the portal service account to reflect a user-friendly name on the front end.

1.  In **Appian Designer**, go to the **Objects** tab.
2.  Search for the `CMGT_TXT_AUTOMATED_SYSTEM` constant.
    1.  Update the constant to match the text you want displayed for the service account in the front end.

### Step 4: Monitor your Portal

Portals are publicly accessible to users on the open internet. Appian recommends actively monitoring your Portal to prevent cyber attacks, like a flood of fake submissions. See [Appian Portals](portals-home.html) for more details and recommendations on using Appian Portals.

## Next step

Now that you have set up the [Public Portal](cms-amd-portal-overview.html) module, unauthenticated users will be able to create cases in your case management system from a public facing URL.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...