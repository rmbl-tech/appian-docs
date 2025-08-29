---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/docusign-integration.html
original_path: clm-25.2.1.0/docusign-integration.html
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Lifecycle Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Appian Contract Lifecycle Management (CLM) solution comes with an integration with Docusign eSignature software that can be used to facilitate and track the contract signing process automatically. Configuration for this integration will take place in both your Appian CLM application and Docusign.

Please note, that while this guide strives to provide instructions for both the Appian CLM application and Docusign, we strongly recommend consulting the [Docusign documentation](https://developers.docusign.com/platform/) for Docusign-specific tasks as often as possible or to troubleshoot issues with Docusign. You can also contact Appian support if you run into issues.

## Overview

To ensure the integration works properly, you will need to complete the following steps:

-   [Introduction](#introduction)
-   [Overview](#overview)
    -   [Resources](#resources)
-   [Create Applications and Keys in Docusign](#create-applications-and-keys-in-docusign)
-   [Grant Consent for Docusign OAuth JWT](#grant-consent-for-docusign-oauth-jwt)
-   [Create a user account in DocuSign](#create-a-user-account-in-docusign)
-   [Configure the DocuSign Connected System in Appian](#configure-the-docusign-connected-system-in-appian)
-   [Enable Connect in DocuSign](#enable-connect-in-docusign)
-   [Configure Connect Security in DocuSign](#configure-connect-security-in-docusign)
-   [Copy the listener URL from CLM](#copy-the-listener-url-from-clm)
-   [Create a Custom Connect Configuration](#create-a-custom-connect-configuration)
-   [Turn on Docusign feature toggle](#turn-on-docusign-feature-toggle)

### Resources

-   [Docusign Connected System configuration](https://docs.appian.com/suite/help/24.4/docusign-connected-system.html)
-   [Key Docusign Concepts - Appian Community](https://community.appian.com/success/w/guide/3253/integrating-with-docusign)
-   [Docusign Documentation](https://developers.docusign.com/platform/)

## Create Applications and Keys in Docusign

The steps in this section should be completed in your Docusign Admin account for each Appian CLM environment (Dev, Test, Prod).

**Tip:**  Be sure to keep the **RSA key pair**, **Account ID**, and **Integration Key** from this setup in a safe and handy place. You'll need them later on for the Docusign Connected System configuration.

Reference Docusign's [Add Integration Keys](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=lzz1583277395470.html&_LANG=enus) documentation for the most precise and up to date steps.

To create an app:

1.  Login to your **Docusign Admin** account.
2.  Go to **Settings**, and select **Apps and Keys.**
3.  Select **ADD APP AND INTEGRATION KEY**.
4.  Enter a name for your app, such as, "CLM Dev", and select **CREATE APP**.
5.  Select the authentication type: **Service Integration (JSON Web Token Grant)**.

To generate a keypair:

1.  Select **GENERATE RSA** to have Docusign generate a key pair.
2.  **Copy the RSA key pair to a safe location**.
    1.  You will need to paste the private key into the Docusign Connected System in the Appian CLM solution later.
3.  Select **ADD URI** to enter the redirect URI for the Connected Appian CLM environment, which should be the following: `https://[customer-specific-domain]/suite/oauth/callback`
    1.  Update the customer-specific-domain portion of the URL with your organization's domain.
4.  Click **SAVE**.
5.  On the **Apps and Keys** page, copy the **Account ID** for the application you just created.
    1.  You will need this Account ID to populate the API Account ID field for the Docusign Connected System in Appian CLM.
6.  Select the application you created and copy the **Integration Key** to a safe place.
    1.  You will need this Integration Key to populate the Integration Key field on the Docusign Connected System in Appian CLM.

## Grant Consent for Docusign OAuth JWT

The steps in this section should be completed in your Docusign Admin account.

Reference [Docusign OAuth JWT: Granting Consent](https://www.docusign.com/blog/developers/oauth-jwt-granting-consent) documentation for the most precise and up to date steps.

## Create a user account in DocuSign

The steps in this section should be completed in Docusign eSignature Settings.

To facilitate the integration between Appian CLM and Docusign you will need a user account to act as, or impersonate, each user executing a call against Docusign from Appian CLM.

**Tip:**  Be sure to keep the user's **API Username** from this setup in a safe and handy place. You'll need it later on for the Docusign Connected System configuration.

Reference Docusign's [Add Users to Accounts](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=jpz1583277424305.html&_LANG=enus) documentation for the most precise and up to date steps.

To create a user account:

1.  In **DocuSign eSignature Settings**, select **Users**.
2.  Select **ADD USER**.
3.  Enter the email address for the new user, and select **NEXT**.
4.  Enter the profile information for the user, and select **NEXT**.
5.  Select the Permission Profile, **DS Sender**.
6.  Select **ADD USER**.
7.  Complete the steps in the activation email for the user account to be updated to **Active**.
8.  For the newly created user, select **ACTIONS**, then **View**.
9.  Copy the user's **API Username** in a safe place.
    1.  You will need this value later on for configuration of the DocuSign Connected System in Appian CLM.

## Configure the DocuSign Connected System in Appian

The steps in this section should be completed in Appian CLM. This will enable Appian CLM to authenticate with Docusign using the Docusign connected system included in the Appian CLM application.

To configure the DocuSign Connected System:

1.  Login to your Dev environment of Appian CLM.
2.  Go to **Appian** **Designer**.
3.  Select **Objects.**
4.  Search for `CLM DocuSign Connected System`. ![Search for the Docusign Connected System in Appian Designer](images/clm-docusign-cs-search.png)
5.  Select the object to open the configuration modal.
6.  Complete the DocuSign Connected System configuration as follows.
    1.  For Authentication, select **JWT Grant**.
    2.  For Instance URL, enter `https://demo.docusign.net`.
    3.  For API Account ID, copy and paste in the **Account ID** displayed for the App you created in DocuSign eSignature Admin on the Apps and Keys page.
    4.  For API Username, paste in the **API Username** you copied from the user account you created in DocuSign eSignature Settings > Users.
    5.  For Integration Key, paste in the **Integration Key** you copied from the application you created in DocuSign eSignature Settings > Apps and Keys.
    6.  For **Private RSA Key**, paste the enter private key into the field.
    7.  For **DocuSign Environment**, select the appropriate environment based on the Appian CLM environment you're configuring.
7.  Select **TEST CONNECTION** to verify that Appian can successfully authenticate with DocuSign.

See also: [Docusign Connected System](https://docs.appian.com/suite/help/24.4/docusign-connected-system.html)

## Enable Connect in DocuSign

The steps in this section should be completed in Docusign to enable Connect, Docusign's webhook service.

Reference Docusign's [Enable Connect](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=omo1583277385804.html&_LANG=enus) documentation for the most precise and up to date steps.

To enable Connect:

1.  In **DocuSign**, select **Settings**.
2.  Select **INTEGRATIONS**, and select **Connect**.
3.  Select **ENABLE CONNECT**.

## Configure Connect Security in DocuSign

Reference Docusign's [Connect Security Options](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=icz1665166837846.html&_LANG=enus) documentation to determine which authentication method you want to enable for Docusign Connect webhook messages from Docusign to Appian CLM. You'll need to configure Connect for each Appian environment.

## Copy the listener URL from CLM

The steps in this section should be completed in Appian CLM. You need to retrieve the web API listener URL so you can configure it in Docusign.

To retrieve the web API listener URL:

1.  Login to your Appian Development environment as an Administrator.
2.  Go to **Appian Designer**.
3.  Select **Objects**.
4.  Select the **Web API** filter.
5.  Search for `docusign`.
6.  Select the object, `CLM_WEBAPI_Docusign_EventHandling`.
7.  Copy the listener URL, which should look like the following: `https://[customer-specific-domain]/suite/webapi/docuSignConnect`
    1.  You will need this URL value when you configure Connect in Docusign so that Docusign Connect knows where to send webhook messages.

**Caution:**  Your listener URL must be available to the public internet in order for Docusign to send Connect webhook event messages to it successfully. This means if your CLM environment and application are behind a VPN, additional configuration is required. See [Adding Connect webhooks to your application](https://www.docusign.com/blog/developers/dsdev-adding-webhooks-application) for more information.

## Create a Custom Connect Configuration

The steps in this section should be completed in Docusign. You'll need to create a custom Connect configuration for each Appian CLM environment.

Refer to Docusign's [Create a Connect Configuration](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=xwi1583277389681.html&_LANG=enus) for the most up to date and precise steps.

Also reference the following additional Docusign documentation to complete this setup:﻿

-   [Connect Settings and Information](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=qcj1583277388869.html&_LANG=enus)
-   [Connect Events](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=lry1608071169447.html&_LANG=enus)
-   [Recommendations for Receiving Documents from Connect](https://support.docusign.com/s/document-item?language=en_US&bundleId=pik1583277475390&topicId=oza1583277387805.html&_LANG=enus)

To create a custom Connect configuration:

1.  In **DocuSign eSignature**, select **Settings**.
2.  Select **INTEGRATIONS**, and select **Connect**.
3.  Select **ADD CONFIGURATION** > **Custom**.
4.  Complete the configuration web form as follows.
    1.  For Name, name the custom configuration something specific which clearly indicates that the configuration is for webhook messages to Appian CLM and the specific environment. For example, `AppianCLMDev`.
    2.  For URL to Publish, paste in the Web API URL you copied from the `CLM_WEBAPI_Docusign_EventHandling` object in the [previous step](#copy-the-listener-url-from-clm).
    3.  Check **Enable Log**.
    4.  Check **Require Acknowledgement**.
    5.  For Data Format, select **REST v2.1: JSON**.
    6.  For Event Message Delivery Mode, select **Send Individual Messages (SIM)**.
    7.  **For Appian CLM to function properly**, you will need to select the following events in Trigger Events to permit Connect to send messages to Appian CLM:
        1.  Under **Envelope Events**, select **Envelope Signed/Completed** and **Envelope Voided**.
            1.  NOTE: separately in the POST Create Envelope call from Appian, you can define all or some of these enabled events to be returned for each envelope. Out of the box, only the `envelope-completed` event is included in the POST call from Appian CLM.
        2.  Under **Recipient Events**, select the following:
            1.  **Recipient Signed/Completed**
            2.  **Recipient Reassign**
            3.  **Recipient Declined**
    8.  In Envelope and Recipients, select **Include Data**.
        1.  From the dropdown, select **Recipients**.
        2.  Select the attributes you wish to receive in the webhook messages from DocuSign Connect. If you are not concerned about receiving too many concurrent event messages from DocuSign at any one time, you can check **Documents** to receive the signed/completed document in the webhook message.
    9.  In Associated Users/Groups, select **Select Users/Groups to include**, and check the user account created in the [earlier step](#create-a-user-account-in-docusign).
    10.  In Integration and Security Settings, check the authentication method you wish to use to authenticate webhook messages from DocuSign Connect to Appian. See Docusign's [Connect Basic Authentication Configuration](https://support.docusign.com/s/document-item?language=en_US&bundleId=vob1727899215236&topicId=qjq1583277459076.html&_LANG=enus) documentation for specific steps to use Basic Authentication.
5.  Select **ADD CONFIGURATION**.

## Turn on Docusign feature toggle

Make sure the constant `CLM_FEATURE_TOGGLE_DOCUSIGN` is set to `True` in Appian Designer.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...