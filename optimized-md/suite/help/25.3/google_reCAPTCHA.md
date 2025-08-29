---
source_url: https://docs.appian.com/suite/help/25.3/google_reCAPTCHA.html
original_path: google_reCAPTCHA.html
version: "25.3"
title: "Google reCAPTCHA"
page_id: "google_reCAPTCHA"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google reCAPTCHA

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Note:**  This connected system can only be used in a portal.

Appian supports [Google's reCAPTCHA services](https://cloud.google.com/recaptcha-enterprise/docs/overview) for use in [Appian Portals](portals-home.html). The Google reCAPTCHA connected system helps protect your portals from malicious or fraudulent bot activity.

To use this connected system, you must have a Google Service Account. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

For information on how to set up the reCAPTCHA connected system, see [Add Google reCAPTCHA to your portal](portals-create.html#step-5-\(optional\)-add-a-google-recaptcha-connected-system) and [Configuring reCAPTCHA](recaptcha.html).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Google reCAPTCHA connected system has the following properties:

**General properties**

| Field | Description |
| --- | --- |
| Name | Name of the connected system. Use a name that will clearly differentiate this connected system from others in your application. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

**Google reCAPTCHA Configuration properties**

| Connected System Field | Google Cloud Name (and Location)\* | Description |
| --- | --- | --- |
| reCAPTCHA Project ID | **Project ID**
(Project Dashboard) | Project ID for the Google Cloud project. To create a project, see the [Google documentation](https://cloud.google.com/resource-manager/docs/creating-managing-projects). |
| reCAPTCHA Site Key | **Key ID**
(Security > reCAPTCHA Enterprise) | The key ID configured for your portal, also known as the site key. To create a key ID, see the [Google documentation](https://cloud.google.com/recaptcha-enterprise/docs/create-key).

When creating the key:
\- For platform type, choose **Website**.
\- Add your portal's domain to the **Domain list**.

After you create the key, simply copy it and add it to the connected system. No additional set up is required. |
| reCAPTCHA API Key | **API Key**
(APIs & Services > Credentials) | Sensitive. An API key with reCAPTCHA Enterprise API enabled. To create a reCAPTCHA Enterprise-enabled API key, see the [Google documentation](https://cloud.google.com/recaptcha-enterprise/docs/set-up-non-google-cloud-environments-api-keys). |

\*Information from Google is subject to change.

![google-reCAPTCHA-cs.png](images/create_a_connected_system/google-reCAPTCHA-cs.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `recaptchaProjectId`
-   `recaptchaSiteKey`
-   `recaptchaApiKey`

## Test connection

Click the **TEST CONNECTION** button to verify your credentials are valid for getting a reCAPTCHA score.

You will still need to configure the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) behavior in your interface flow. This button only checks to ensure your credentials are valid.

The connection test only checks one credential at a time. If for example, both your project ID and site key are invalid, the error message will only mention the project ID.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...