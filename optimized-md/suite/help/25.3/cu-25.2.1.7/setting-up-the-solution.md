---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-the-solution.html
original_path: cu-25.2.1.7/setting-up-the-solution.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set Up Connected Underwriting P&C

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

After installing Connected Underwriting P&C, there are several configurations you will likely perform to customize the solution for your organization's processes. To ensure your solution remains flexible and aligns with best practices, we have provided instructions to guide you through some common configurations, including:

-   [Modifying objects](#step-1-modify-objects).
-   [Configuring user groups and security](#step-2-configure-user-groups-and-security).
-   [Configuring the email poller](#step-3-configure-the-email-poller).
-   [Configuring document classification](#step-4-configure-document-classification).
-   [Creating scoring tables and submission score rules](#step-5-create-scoring-tables-and-submission-score-rules).
-   [Importing existing data](#step-6-import-existing-data).
-   [Configuring the Microsoft PowerBi connected system](#step-7-configure-the-microsoft-powerbi-connected-system).
-   [Deploying modules](#step-8-deploy-modules)

This page outlines the order we recommend for configuring the default solution in Appian Designer to work for your organization after installation. However, these instructions can be used to modify the solution at any time.

## Configure Connected Underwriting P&C

To perform the configuration steps below, log in to the target environment, navigate to the **Appian Designer**, then follow the recommended step order.

**Note:**  Updates in Appian Designer should be done cautiously by someone familiar with Appian development.

### Step 1: Modify objects

To ensure you always have the default interfaces, expression rules, and process models to refer back to, we suggest performing the following steps if you need to customize the solution:

-   Create copies of the interfaces, expression rules, and process models you want to update.
-   Name them with the suffix of `CUSTOM`. For example, something different than `AS_IO_FM_UnderwritingSummary_CUSTOM`.
-   Use your new objects instead of the original objects.

**Note:**  Do not create copies of CDTs. This would require you to update every reference to the CDT throughout the application. Instead, modify the default CDTs provided in the application.

Following these steps will reduce the time and effort required to upgrade or add an additional solution to your environment.

### Step 2: Configure user groups and security

First, you need to configure user groups and security. Here’s what you need to know:

-   If your organization has additional business roles not covered in the default groups.
-   What users should be members of each group?

For more information on how to configure groups and security, see the following pages:

-   See [Modify Groups](modifying-groups.html) to understand how to modify groups to fit your organization and add users to the appropriate groups.
-   See [Groups Reference Page](groups-reference-page.html) for more information about the default groups in Connected Underwriting P&C and what they provide access to.
-   See [Set up Users and Groups](setting-up-users-and-groups.html) for instructions on adding users to groups from the front-end Connected Underwriting P&C Settings site.

### Step 3: Configure the email poller

**Note:**  The email poller pulls files and emails directly from your Outlook inbox. It is important to ensure that security best practices, such as virus scanning, are correctly configured in Outlook before installing the plugin to your environment.

An email account must be created for Connected Underwriting P&C inbound email polling to function correctly. Follow the steps below to create new MS accounts and share credentials.

**Note:**  One inbox should be created for each Appian environment. The following steps must be completed for **each inbox**.

#### Create an account

To create an inbox for inbound email polling:

1.  Create a new account in Azure AD with the desired username matching the desired email address.
    -   **Note**: A global admin may be required to do this.
2.  Navigate to [https://portal.azure.com/](https://portal.azure.com/) and login with a new account.
3.  Search for **App Registrations**.
4.  Create a new registration.
5.  Once the application is created, navigate to **API permissions**.
6.  Select **\+ Add a permission**.
7.  Select **Microsoft Graph**.
8.  Select **Application Permissions**.
9.  Select **Mail.ReadWrite**.
10.  Add Permission.
11.  Navigate back to the API permissions page.
12.  Select **Grant Admin Consent** for Appian.
     -   **Note**: A global admin may be required to do this.
13.  Navigate to **Certificates & Secrets**.
14.  Select **\+ New Client Secret**.
15.  Add a description and select an expiration.
16.  Save Value for your records
     -   **Note**: This Value will be input as secret in Appian Third Party Credentials

#### Appian polling configuration

It is recommended to import the included Connected Underwriting P&C Admin Console .zip package and import the customization properties file before configuring the integration credentials. Details are in the [Install CU P&C](installing-the-solution.html) document.

After the admin console import, the following steps can be repeated to change credentials:

1.  From the desired environment, navigate to **Appian Admin Console**.
2.  Navigate to **Third-Party Credentials** on the Admin Console. There should now be an item there labeled `isu-mail-poller-msgraph`.
3.  Click **isu-mail-poller-msgraph** and provide the Azure secret, tenet, and applicationID configured when enabling a polling inbox.
    -   **Note**: Do not modify `customMailPollerTableName` and `customMailPollerDocTableName` unless you intend to modify the Appian Poller table names (not recommended).
4.  Click **SAVE**.
5.  Once Admin Console configurations are complete, use Global Search to find and open `ISU_EMAIL_POLLER_CONF_TEXT_MAILBOX`. Update this constant to match the full email address that will be polled (i.e., test@microsoft.com).
6.  Finally, use Quick Search to open the constant: `ISU_EMAIL_POLLER_AND_PROCESSOR_ENUM_BOOL_RUN_EMAIL_POLL_AND_PROCESSOR_PM` and set it to True if not set already. Use this constant when you want to turn poller operations on or off.

#### Update group membership

For the system to automatically process emails into accurate submissions, the Email Consumption process model needs access to all existing submissions, brokers, and customers. Perform these steps in this section to add the user responsible for publishing this process model to the ISU Internal Users group. This will ensure row-level record security does not interfere with email processing.

This step is critical in environments where the process is published by a deployment account rather than an internal user.

1.  Locate the **ISU AUTO Poll and Process Emails** process model.
2.  Identify the user listed under **Last Modified**.
3.  Navigate to the **All Objects** tab and select **Group** as the object type
4.  Locate the **ISU Internal Users** group.
5.  Click **ADD MEMBERS** and add the user you identified in **step 2** to the group.
6.  Click **ADD**.

For additional support on the Microsoft Email Poller, visit the [MS Graph Poller](https://community.appian.com/b/appmarket/posts/msgraph-email-poller) on Appian Community.

### Step 4: Configure document classification

Connected Underwriting P&C uses a document classification AI skill and machine learning to quickly identify and analyze documents polled from email and classify them by document type (ACORD 125, ACORD 127, and ACORD 140) before progressing to document extraction.

**Note:**  Connected Underwriting P&C provides extraction support for up to 125,000 documents per month. Contact Appian Support for assistance if you expect to exceed this document extraction threshold.

Designers can configure the confidence threshold that defines whether the document goes to the classification exception queue or data extraction using the ISU\_INT\_DOCUMENT\_CLASSIFICATION\_CONFIDENCE\_THRESHOLD constant.

**Note:**  We recommend training a model with a large data set of example documents to improve your document classification accuracy and confidence scoring.

For more information on creating a classification or extraction AI skill, see the following topics:

-   [Create a Document Classification AI Skill](../create-skill-doc-classify.html)
-   [Create a Document Extraction AI Skill](../create-skill-doc-extraction.html)

### Step 5: Create Scoring Tables and Submission Score Rules

After installing Connected Underwriting P&C, business users can set up their scoring tables and submission score rules so that their submissions can have a score to help underwriters evaluate and triage what to focus on. Please review [Configure Submission Score and Scoring Tables](configure-submission-score-and-tables.html) to set up scoring tables and the submission score rules.

There may be additional fields your organization would like to use with the Submission Score rules and scoring tables, or you may want to relabel some fields. For instructions on how to modify those fields, see the following pages:

-   See [Configuring Priority Scoring](modifying-priority-scoring.html) for instructions on adding or modifying the fields that appear in those areas.
-   See the [Solutions Hub User Guide](sol-custom-suite-user-guide.html) for instructions on how to modify UI text.

### Step 6: Import existing data

You can migrate data like customer and broker information into Connected Underwriting P&C from other systems your organization uses. This process is generally unique and has nuances that depend on many factors.

[Migrating Customer and Broker Data](migrating-data.html) provides the general steps to move customers and broker data into Connected Underwriting P&C.

### Step 7: Configure the Microsoft PowerBI connected system

The Connected Underwriting P&C solution provides a native integration with Microsoft PowerBI, allowing users to connect their customer data and reports directly with their CU solution. When configuring the PowerBI connected system, users can quickly surface historical claims information related to your submission records and other information from downstream processes directly in the CU solution.

See [Integrate with Microsoft PowerBI](managing-integrations.html#integrating-with-microsoft-powerbi) for information on configuring this connected system.

### Step 8: Deploy modules

Choose and download the software packages for any modules you want to deploy and set up with your CU P&C solution. Follow the guidance in each module-specific documentation to incorporate it with your CU P&C base application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...