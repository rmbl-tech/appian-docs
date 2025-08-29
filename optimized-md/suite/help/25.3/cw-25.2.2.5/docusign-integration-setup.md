---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/docusign-integration-setup.html
original_path: cw-25.2.2.5/docusign-integration-setup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Docusign Integration Setup Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Writing, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Appian Contract Lifecycle Management (CW) solution comes with an integration with Docusign eSignature software that can be used to facilitate and track the contract signing process automatically. Configuration for this integration will take place in both your Appian CW application and Docusign.

Please note, that while this guide strives to provide instructions for both the Appian CW application and Docusign, we strongly recommend consulting the [Docusign documentation](https://developers.docusign.com/platform/) for Docsusign-specific tasks as often as possible or to troubleshoot issues with Docusign. You can also contact Appian support if you run into issues.

**Note:**  You must have your own Docusign account and licensing to use this integration.

## Overview

To ensure the integration works properly, you will need to complete the following steps:

1.  [Create application(s) and keys in Docusign](#create-applications-and-keys-in-docusign)
2.  [Create user account in Docusign](#create-a-user-account-in-docusign)
3.  [Configure Docusign Connected System in Appian CW](#configure-the-docusign-connected-system-in-appian)
4.  [Enable Docusign Connect webhook service in Docusign](#enable-connect-in-docusign)
5.  [Configure Connect security in Docusign](#configure-connect-security-in-docusign)
6.  [Copy listener URL from Appian CW](#copy-the-listener-url)
7.  [Create custom Connect configuration in Docusign](#create-a-custom-connect-configuration)
8.  [Configure brand resource file](#configure-brand-resource-file)
9.  [Turn on Docusign feature toggle](#turn-on-docusign-feature-toggle)

### Resources

-   [Docusign Connected System configuration](https://docs.appian.com/suite/help/24.4/docusign-connected-system.html)
-   [Key Docusign Concepts - Appian Community](https://community.appian.com/success/w/guide/3253/integrating-with-docusign)
-   [Docusign Documentation](https://developers.docusign.com/platform/)

## Create Applications and Keys in Docusign

The steps in this section should be completed in your Docusign Admin account for each Appian CW environment (Dev, Test, Prod).

**Tip:**  Be sure to keep the **API Account ID**, and **Integration Key** from this setup in a safe and handy place. You’ll need them later on for the Docusign Connected System configuration.

Reference Docusign’s [Add Integration Keys](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=lzz1583277395470.html&_LANG=enus) documentation for the most precise and up to date steps.

To create an app:

1.  Login to your **Docusign Admin** account.
2.  Go to **Settings**, and select **Apps and Keys.**
3.  Select **ADD APP AND INTEGRATION KEY**.
4.  Enter a name for your app, such as, “CW Dev”, and select **CREATE APP**.
5.  Select the authentication type: **Service Integration (JSON Web Token Grant)**.

To generate a keypair:

1.  Select **GENERATE RSA** to have Docusign generate a key pair.
2.  **Copy the RSA key pair to a safe location**.
    1.  You will need to paste the **private key** into the Docusign Connected System in the Appian CW solution later.
3.  Select **ADD URI** to enter the redirect URI.
4.  The redirect URI is the URI (URL) to which Docusign will redirect the browser after authentication.
    1.  Follow the [steps](https://developers.docusign.com/platform/auth/consent/obtaining-individual-consent/) required to **grant consent individually** for your application to act on a user’s behalf. This is an important step for integration to work properly.
        1.  More information on granting consent can be found [here](https://www.docusign.com/blog/developers/oauth-jwt-granting-consent).
    2.  Click **SAVE**.
5.  On the **Apps and Keys** page, copy the **API Account ID** for the application you just created.
    1.  You will need this API Account ID to populate the API Account ID field for the Docusign Connected System in Appian CW.
6.  Select the application you created and copy the **Integration Key** to a safe place.
    1.  You will need this Integration Key to populate the Integration Key field on the Docusign Connected System in Appian CW.

## Create a user account in Docusign

The steps in this section should be completed in Docusign Settings.

To facilitate the integration between Appian CW and Docusign you will need a user account to act as, or “impersonate”, each user executing a call against Docusign from Appian CW.

**Tip:**  Be sure to keep the user’s **User ID** from this setup in a safe and handy place. You’ll need it later on for the Docusign Connected System configuration.

Reference Docusign’s [Add Users to Accounts](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=jpz1583277424305.html&_LANG=enus) documentation for the most precise and up to date steps.

To create a user account:

1.  In **DocuSign Settings**, select **Users**.
2.  Select **ADD USER**.
3.  Enter the email address for the new user, and select **NEXT**.
4.  Enter the profile information for the user, and select **NEXT**.
5.  Select the Permission Profile, ideally **DS Admin**.
6.  Select **ADD USER**.
7.  Complete the steps in the activation email for the user account to be updated to **Active**.
8.  For the newly created user, select **ACTIONS**, then **View**.
9.  Copy the user’s **User ID** in a safe place.
    1.  You will need this value later on for configuration of the Docusign Connected System in Appian CW.

## Configure the Docusign Connected System in Appian

The steps in this section should be completed in Appian CW. This will enable Appian CW to authenticate with Docusign using the Docusign connected system included in the Appian CW application.

To configure the DocuSign Connected System:

1.  Login to your Dev environment of Appian CW.
2.  Go to **Appian Designer**.
3.  Select **Objects**.
4.  Select Connected System in the left panel under object type
5.  Search for AS CW CS Docusign

![Search for the docusign connected system in Appian Designer](images/docusign-cs-appian-designer.png)

1.  Select the object to open the configuration modal.
2.  Complete the Docusign Connected System configuration as follows.
    1.  For Authentication, select **JWT Grant**.
    2.  For Instance URL, enter [https://demo.docusign.net](https://demo.docusign.net). For production, use the production url.
    3.  For API Account ID, copy and paste in the **API Account ID** displayed for the App you created in DocuSign Admin on the Apps and Keys page.
    4.  For API Username, paste in the **User ID** you copied from the user account you created in DocuSign Settings > Users.
    5.  For the Integration Key, paste in the **Integration Key** you copied from the application you created in DocuSign Settings > Apps and Keys.
    6.  For **Private RSA Key**, paste the entire private key into the field.
    7.  For **DocuSign Environment**, select the appropriate environment based on the Appian CW environment you’re configuring.
3.  Select **TEST CONNECTION** to verify that Appian can successfully authenticate with DocuSign.

See also: [Docusign Connected System](https://docs.appian.com/suite/help/24.4/docusign-connected-system.html)

## Enable Connect in Docusign

The steps in this section should be completed in Docusign to enable Connect, Docusign’s webhook service.

Reference Docusign’s [Enable Connect](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=omo1583277385804.html&_LANG=enus) documentation for the most precise and up to date steps.

To enable Connect:

1.  In **DocuSign**, select **Settings**.
2.  Select **INTEGRATIONS**, and select **Connect**.
3.  Select **ENABLE CONNECT**.

## Configure Connect Security in Docusign

Reference Docusign’s [Connect Security Options](https://developers.docusign.com/platform/webhooks/connect/validation-and-security/) documentation to determine which authentication method you want to enable for Docusign Connect webhook messages from Docusign to Appian CW. You’ll need to configure Connect for each Appian environment.

## Copy the listener URL

The steps in this section should be completed in Appian CW. You need to retrieve the web API listener URL so you can configure it in Docusign.

To retrieve the web API listener URL:

1.  Login to your Appian Development environment as an Administrator.
2.  Go to **Appian Designer**.
3.  Select **Objects**.
4.  Select the **Web API** filter.
5.  Search for `docusign`.
6.  Select the object, `AS CW WA STARTPROCESS Release Award`.
7.  Copy the listener URL, which should look like the following: `https://customer-specific-domain/suite/webapi/releaseAwardOnDocuSign`
    1.  You will need this URL value when you configure Connect in Docusign so that Docusign Connect knows where to send webhook messages.

## Create a Custom Connect Configuration

The steps in this section should be completed in Docusign. You’ll need to create a custom Connect configuration for each Appian CW environment.

Refer to Docusign’s [Create a Connect Configuration](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=xwi1583277389681.html&_LANG=enus) for the most up to date and precise steps.

Also reference the following additional Docusign documentation to complete this setup:

-   [Connect Settings and Information](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=qcj1583277388869.html&_LANG=enus)
-   [Connect Events](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=lry1608071169447.html&_LANG=enus)
-   [Recommendations for Receiving Documents from Connect](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=oza1583277387805.html&_LANG=enus)

To create a custom Connect configuration:

1.  In **DocuSign**, select **Settings**.
2.  Select **INTEGRATIONS**, and select **Connect**.
3.  Select **ADD CONFIGURATION** > **Custom**.
4.  Complete the configuration web form as follows.
    1.  For Name, name the custom configuration something specific which clearly indicates that the configuration is for webhook messages to Appian CWand the specific environment. For example, ‘AppianCWDev’.
    2.  For URL to Publish, paste in the Web API URL you copied from the ‘CW\_WEBAPI\_Docusign\_EventHandling’ object in the [previous step](#copy-the-listener-url).
    3.  Check **Enable Log**.
    4.  Check **Require Acknowledgement**.
    5.  For Data Format, select **REST v2.1: JSON**.
    6.  For Event Message Delivery Mode, select **Send Individual Messages (SIM)**.
    7.  **For Appian CW to function properly**, you will need to select the following events in Trigger Events to permit Connect to send messages to Appian CW:
        1.  Under **Recipient Events**, select the following:
            1.  **Recipient Signed/Completed**
    8.  In Associated Users/Groups, select **Select Users/Groups to include**, and check the user account created in the [earlier step](#create-a-user-account-in-docusign).
    9.  In Integration and Security Settings, check the authentication method you wish to use to authenticate webhook messages from DocuSign Connect to Appian. See Docusign’s [Connect Basic Authentication Configuration](https://support.docusign.com/s/document-item?language=en_US&bundleId=vob1727899215236&topicId=qjq1583277459076.html&_LANG=enus) documentation for specific steps to use Basic Authentication.
5.  Select **ADD CONFIGURATION**.

## Configure brand resource file

**Caution:**  Proper configuration of the brand resource file in Docusign is an important step to ensure the signing workflow works properly in the Contract Writing solution.

Use the brand resource file to control what recipients see in the email communications from the Docusign account and during the recipient signing session.

To properly configure the brand resource file:

1.  Create an xml resource file with the [code](#resource-file-code) in this section.
    1.  This code will hide:
        -   Fax option from Print & Sign
        -   Decline to Sign
        -   Finish Later
2.  Go to **Brands** in your Docusign account.
3.  Upload the Changes File into the appropriate custom resource file (Signing Resource File) box.

**Caution:**  You must hide these options to continue with the bilateral flow of document signing in CW.

### Resource file code

```
1
2
3
4
5
6
7
8
<root>
<language twoletterisoname="">
    <data name="DocuSign_FinishLaterAllow">false</data>
 <data name="DocuSign_FinishLaterAllowForLoggedIn">false</data>
    <data name = "DocuSign_DeclineAllow" >false</data>
    <data name="DocuSign_FaxAllowForSignOnPaper">false</data>
</language>
</root>
```

### Additional Docusign branding resources

To learn more, consult the following resources from the Docusign documentation on brands and resource file configuration:

-   [Best Practice Guide](https://dsucustomers.docusign.com/km-guide-best-practices-for-branding-resource-files/2135878)
-   [Branding concepts](https://developers.docusign.com/docs/esign-rest-api/esign101/concepts/branding/)
-   [How to apply a brand to an envelope](https://developers.docusign.com/docs/esign-rest-api/how-to/apply-brand-to-envelope/)
-   [AccountBrands Resource](https://developers.docusign.com/docs/esign-rest-api/reference/accounts/accountbrands/)
-   [DocuSign Signing Resource File Guide](https://support.docusign.com/s/document-item?language=en_US&rsc_301&bundleId=docusign-signing-resource-file-guide&topicId=docusign-signing-resource-file-guide.pdf&_LANG=enus)

## Turn on Docusign feature toggle

Make sure the Docusign is Enabled in the Contract Writing Settings site.

![Enable Docusign in the Contract Writings Settings site](images/docusign-integration-toggle.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...