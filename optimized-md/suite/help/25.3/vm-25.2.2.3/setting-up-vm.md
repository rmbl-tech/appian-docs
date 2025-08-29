---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/setting-up-vm.html
original_path: vm-25.2.2.3/setting-up-vm.html
version: "25.3"
title: "Setting up VM"
page_id: "vm-25.2.2.3/setting-up-vm"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up VM

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Vendor Management (VM) is as flexible as any application developed on the Appian Platform. In order to make sure your application remains scalable and aligns with best practices, we have provided instructions to guide you through some of the most common changes.

After you have installed VM, there are several configurations you will likely perform to customize the application for your organization’s processes.

This page outlines the order we recommend for configuring the default application to work for your organization after installing VM. However, all of these instructions can be used to modify the application at any time.

Updates in Appian Designer should be done with caution by someone familiar with Appian development.

### Step 1: Configure user groups and security

Configuring user groups and security is a good place to start.

You will need to know:

-   If your organization has any additional business roles that are not covered in the default business groups.
-   What users should be members of each business group.

For more information on groups and security, see [Groups Reference Page](groups-reference-page.html).

### Step 2: Configure set up opportunity management process

You can modify the solution to fit your organization's processes and data requirements by configuring fields, labels, and document templates.

#### Configure fields and UI text

It is likely certain fields and UI text throughout the set up process will not exactly match your organization's terms. You can configure a number of them.

The following fields and UI text are configurable:

-   Accept and Reject buttons.
-   Contracting personnel labels.
-   Tasks and Approach item labels.

#### Configure document templates

The solution provides an example document template that will not exactly match your organization's templates. You can add your own templates into VM.

You will need to know:

-   What templates are needed
-   What type of document the template is

Each document template will need to be added to a knowledge center. Add each template to the document template reference table as described on the [Reference Data Tables](reference-data-tables.html) page.

### Step 3: Create opportunity approach

After you have configured your application, you can create the opportunity approach to be used during the opportunity management process. The opportunity approach determine which tasks will be assigned by default for each new opportunity that is set up.

You will need to understand your organization's current opportunity processes including:

-   What phases of the opportunity can occur.
-   The distinct types of opportunities that have a standard set of tasks.
-   All of the tasks required to complete the various types of opportunities.
-   What types of tasks your organization will need.
-   Which business groups are responsible for each task.
-   What tasks rely on other tasks to be completed first.
-   What timeframe does the task start in the opportunity management process.

When users create new tasks, they can choose from: Create Document from Template, Attach Document, Review, or Confirmation.

### Step 4: Set up SAM.gov integration

Vendor Management comes with an integration to SAM.gov, which allows you to retrieve vendor data from the SAM.gov website. In order to set up this integration, you will need to register for a key from SAM.gov and configure the application to use the key provided. This section provides instructions for registering for your key and configuring your application.

**Caution:**  If you do not plan to use this integration, you must toggle the `AS_VM_BOL_IMPORT_FROM_SAMGOV_TOGGLE` constant value to `False` in Designer.

#### Register for SAM.gov key

To set up this integration, you will need to register for an API key:

1.  Navigate to [Sam.gov](https://sam.gov/content/home).
2.  Create a new account by choosing to sign up.
3.  Go to the **Workspace** tab.
4.  Select the **Profile** link above your user name and icon.

    ![samgov apikeygen](images/samgov_apikeygen.png)

5.  You can then request an API key. Copy this API key when it is generated.

#### Configure application

After receiving your email from SAM.gov, you will need to configure your application to use the saved API key.

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  On the left side under object type, select **Connected System**.
4.  Select `AS VM Get Opportunities from SAM GOV Public API`.
5.  Find the **Value** field and click the **Clear** link next to it.
6.  In the cleared **Value** field, paste the saved API key.
7.  Click **SAVE**.

    ![configure_api_system_properties.png](images/configure_api_system_properties.png)

### Step 5: Set up SLG or Federal toggle

**Note:**  The VM solution will be either Federal specific or State and Local Government (SLG) specific depending upon this customization. Appian recommends performing this customization as a one-time activity after the VM solution is installed.

You can customize the type of registration for your vendors depending on whether you are a federal or state agency. When vendors register themselves, they will be defaulted to the type of registration you configured.

Go to [Enable or disable State and Local Government Toggle](sol-custom-suite-user-guide.html#business-logic) to learn more about enabling or disabling the SLG toggle.

### Step 6: Set up the questionnaire toggle

**Note:**  When you enable the questionnaire toggle, the Additional Information section will be visible in the vendor registration portal. Vendors must answer the questions to complete the registration. Based on the vendors responses, the contracting personnel can take informed decisions about vendors registration. By default, the questionnaire toggle is disabled. When questionnaire is disabled, vendors registering on Vendor Portal get immediate access to VM solution without requiring approval from contracting personnel. Appian recommends performing this customization as a one-time activity after the VM solution is installed.

You can customize the type of registration for your vendors depending on whether you want to have an approval flow or provide them immediate access upon registration.

Go to [Enable or disable questionnaire](sol-custom-suite-user-guide.html#business-logic) to learn more about enabling or disabling the questionnaire.

### Step 7: Set up the documents cleanup toggle

**Caution:**  This set up is mandatory only when you have both VM and Award Management (AM) solutions in same environment for seamless integration.

The document cleanup toggle needs to be enabled after VM deployment and only when the integration with AM is enabled. When using the AM integration, temporary documents get created when retrieving data and documents from AM. Appian recommends to cleanup these temporary documents for easy maintenance.

To enable the documents cleanup toggle:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_BOL_NIGHTLY_CLEANUP_TOGGLE`.
5.  In the **Value** field, select **True**.
6.  Click **SAVE**.

### Step 8: Set up ESBD integration

**Note:**  This set up is mandatory only when your agency is within Texas, USA.

Posting the public opportunities in VM to the Texas ESBD site involves the following:

1.  Enabling the State and Local Government (SLG) toggle in Solutions Hub and the ESBD toggle in VM solution.
2.  Specifying the allowed special characters for the procurement ID (opportunity ID) in the DAT file.
3.  Specifying your agency code to indicate which office is submitting the opportunity to ESBD.
4.  Configuring the details of your Secure File Transfer Protocol (SFTP) for file transfer.

#### Enable SLG and ESBD toggle

To enable the SLG and ESBD toggle:

1.  Make sure to **enable** the [SLG Toggle](sol-custom-suite-user-guide.html#business-logic) in the **Solutions Hub**.
2.  Access your **Appian Designer**.
3.  In your application, select `AS VM Full Application`.
4.  Under **Object Type**, select **Constant**.
5.  Select `AS_VM_TOGGLE_SLG_ESBD_INTGN_ENABLED`.
6.  In the **Value** field, select **True**.
7.  Click **SAVE**.
8.  Continue with [Specify special characters in DAT file](#specify-special-characters-in-dat-file).

#### Specify special characters in DAT file

**Note:**  This is an optional step for the opportunity IDs to be in compliance with the agencies requirements.

You can customize the allowed special characters for the procurement ID (opportunity ID) in the DAT file.

To specify the allowed special characters for the procurement ID in the DAT file:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_TXT_LIST_OF_SPECIAL_CHARACTERS`.
5.  Perform any one of the following steps:

    -   To allow one special character, specify that character in the **Value** field.

    OR

    -   To allow multiple special characters, select **Array (multiple values)** checkbox and specify each special character on a separate line in the **Values** field.
6.  Click **SAVE**.
7.  Continue with [Specify your agency code](#specify-your-agency-code).

#### Specify your agency code

You must specify your agency code to indicate from which office the opportunity is being submitted to ESBD.

To specify your agency code in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_TXT_SLG_SOLUTION_OWNING_AGENCY_CODE`.
5.  Specify the agency code in the **Value** field.
6.  Click **SAVE**.
7.  Continue with [Configure the SFTP for file transfer](#configure-the-sftp-for-file-transfer).

#### Configure the SFTP for file transfer

Configuring your SFTP for receiving the DAT files from VM solution, involves the following:

-   Creating third-party credentials for your SFTP in Appian Admin Console
-   Uploading your SFTP security key in Appian Designer
-   Updating your SFTP server hostname in Appian Designer
-   Enabling the SFTP toggle in Appian Designer

##### Create third-party credentials for your SFTP

You must create third-party credentials to connect to you SFTP from VM solution.

To create third-party credentials for your SFTP in Appian Admin Console:

1.  From the **Vendor Management** site, select \> **Admin Console**.

    1.  On the **Appian Administration Console**, click **Third-Party Credentials**.
    2.  On the **Third-Party Credentials** page, click **CREATE**.
    3.  On the **Create Third-Party Credentials** page, in the **Identity** section, in **Name** field, enter `VM_EsbdSftpTransfer`.
    4.  In the **Plug-ins List** section, in the **Plug-ins** field, search for `SFTP Functions` and select it.
    5.  In the **Credentials** section, click **+Add field**.

        1.  In **Field name**, enter `Username`.
        2.  In **Value**, copy and paste your SFTP host user name.
        3.  Select the **Allow users to set personal credential field values on the Third-Party Credentials settings page** checkbox.
        4.  Click **SAVE**.

    [![Add third-party credentials for SFTP](images/vm_esbd_sftp_configure_01.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1451)

    [![](images/vm_esbd_sftp_configure_01.png)](#_)

2.  Continue with [Upload your SFTP security key](#upload-your-sftp-security-key).

##### Upload your SFTP security key

You must have your SFTP security key (PEM file) downloaded from your SFTP before performing this step.

To uploading your SFTP security key in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Document**.
4.  Select the checkbox associated with `AS VM SLG SFTP Secure Key For Esbd`.
5.  Click **MORE** > **New Version**.

    ![Upload new version of document](images/vm_esbd_sftp_configure_02a.png)

    1.  On the **Upload New Version** dialog, click **UPLOAD**.
    2.  Select the **PEM file** that contains the public key for your SFTP.
    3.  Click **UPLOAD**.

    ![Upload public key for SFTP](images/vm_esbd_sftp_configure_02b.png)

6.  Continue with [Update your SFTP server hostname](#update-your-sftp-server-hostname).

##### Update your SFTP server hostname

You must have your SFTP host name ready or copied before performing this step.

To update your SFTP server hostname in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Expression Rule**.
4.  Select `AS_VM_SLG_sftpConfigurationForEsbdFileTransfer`.

    1.  In the expression rule, for the **serverHostName** key, include your SFTP host name within the double quotes.

        ![Update SFTP host name](images/vm_esbd_sftp_configure_03.png)

    2.  Click **SAVE**.

5.  Continue with [Enable the SFTP toggle](#enable-the-sftp-toggle).

##### Enable the SFTP toggle

You must enable the SFTP toggle to allow VM solution to store opportunity files on your SFTP.

To enable the SFTP toggle in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_SLG_TOGGLE_ESBD_SFTP_TRANSFER_ENABLED`.
5.  In the **Value** field, select **True**.
6.  Click **SAVE**.

![Enable SFTP toggle](images/vm_esbd_sftp_configure_04.png)

### Step 9: Enable SAM.gov toggle

**Note:**  This set up is mandatory for federal agencies only.

You must enable the SAM.gov toggle to post opportunities from VM solution to SAM.gov.

To enable the SAM.gov toggle in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_BOL_TOGGLE_POST_TO_SAMGOV_ENABLED`.
5.  In the **Value** field, select **True**.
6.  Click **SAVE**.
7.  Continue with [Specify your agency code](#step-10-specify-your-agency-code-for-samgov).

### Step 10: Specify your agency code for SAM.gov

**Note:**  This set up is mandatory for federal agencies only.

You must specify your agency code to indicate from which office the opportunity is being submitted to SAM.gov.

To specify your agency number in Appian Designer:

1.  Access your **Appian Designer**.
2.  In your application, select `AS VM Full Application`.
3.  Under **Object Type**, select **Constant**.
4.  Select `AS_VM_TXT_FED_SOLUTION_OWNING_ORG_ID_OR_AAC_CODE`.
5.  Specify the agency code in the **Value** field.
6.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...