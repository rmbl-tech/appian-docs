---
source_url: https://docs.appian.com/suite/help/25.3/google_service_account_authentication.html
original_path: google_service_account_authentication.html
version: "25.3"
title: "Google Service Account Authentication"
page_id: "google_service_account_authentication"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google Service Account Authentication

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Customers who wish to use Google services in Appian will need to bring their own Google Cloud credentials to do so.

## Overview

This page provides detailed information about how Appian can connect to the [Google Cloud APIs](https://console.cloud.google.com/apis/library) that leverage Google Service Account authentication. Designers can configure these integrations using an [HTTP](http-connected-system.html) and [OpenAPI](openapi-connected-system.html) connected systems.

Google Service Account authentication refers to [Google's implementation](https://developers.google.com/identity/protocols/oauth2/service-account) of the [OAuth 2.0 JWT Bearer grant type](https://tools.ietf.org/html/rfc7523#section-2.1).

## Google Cloud configuration

A [service account](https://cloud.google.com/iam/docs/understanding-service-accounts) is a special kind of Google account that represents a non-human user. Appian can use these service accounts to call Google APIs so that end users don't need to be directly involved.

There are several steps that must take place in order to generate the service account key

### Creating and managing Google service accounts

To use Google Service Account authentication, you will need a service account in Google.

To learn about creating and managing service accounts, see the Google IAM documentation on [creating and managing service accounts](https://cloud.google.com/iam/docs/creating-managing-service-accounts).

### Granting roles to service accounts

In order to be authorized to access data in a specific Google API, your service account must have the proper roles.

To learn about granting roles to service accounts, see the Google IAM documentation on [granting roles to service accounts](https://cloud.google.com/iam/docs/granting-roles-to-service-accounts).

### Generating a service account key

To use Google Service Account authentication, you will need a service account key for your service account. This file should be download in **JSON format**.

To learn about creating and managing service account keys, see the Google IAM documentation on [creating and managing service account keys](https://cloud.google.com/iam/docs/creating-managing-service-account-keys).

### Performing G Suite domain-wide delegation of authority (Optional)

In some cases, you may want to take advantage of [domain-wide delegation of authority](https://developers.google.com/identity/protocols/OAuth2ServiceAccount#delegatingauthority). Google allows G Suite administrators to configure domain-wide delegation in order to grant Google Service Accounts permission to impersonate specific G Suite users. This can be used with a number of G Suite services such as Google Groups (the Admin SDK Directory API), Google Calendar, and Gmail.

![diagram of G Suite services that can be managed by a service account](images/g_suite_dwd.png)

To learn more about configuring domain-wide delegation of authority for an API, you should view the documentation for that service.

**Note:**  Different services have slightly different documentation to explain domain-wide delegation of authority. For example, there are different pages for the [Admin SDK Directory API](https://developers.google.com/admin-sdk/directory/v1/guides/delegation), the [Google Calendar API](https://developers.google.com/calendar/auth#perform-g-suite-domain-wide-delegation-of-authority), the [Google Drive API](https://developers.google.com/drive/api/v3/about-auth#perform_g_suite_domain-wide_delegation_of_authority), and the [Gmail API](https://developers.google.com/gmail/api/guides/delegate_settings).

## Appian configuration

Once you have configured your service account in Google and exported your service account key, you are ready to set up your connected system.

### Using your service account key

When creating a connected system with Google Service Account authentication, Appian allows designers to upload a service account key JSON file rather than manually filling out each field.

![screenshot of blank form to upload a Google service account key ](images/gsa_image.png)

This will populate the **Project ID**, **Client ID**, and **Client Email** fields.

![screenshot of filled form to upload a Google service account key](images/gsa_image_filled.png)

**Note:**  These field values will need to be manually specified using an [import customization file](Managing_Import_Customization_Files.html) when deploying to higher environments.

### Setting the scope

In order to successfully call an API, you will also need to set the required scopes for your connected system. Several scopes can be entered and separated by spaces. If left empty, the default scope is `https://www.googleapis.com/auth/cloud-platform`.

To find the required scopes for an API, you should view the documentation for that service. For example, when using Google Calendar refer to the documentation on [authorizing requests to the Google Calendar API](https://developers.google.com/calendar/auth) and the documentation for each API endpoint. In this case, to call the [Calendars: update](https://developers.google.com/calendar/v3/reference/calendars/update?hl=en_US) endpoint you will need to request a scope of `https://www.googleapis.com/auth/calendar`.

### Impersonating a G Suite domain user (optional)

If you have configured [domain-wide delegation](#performing-g-suite-domain-wide-delegation-of-authority-optional), Appian supports the ability for your service account to impersonate a G Suite domain user. To do so, simply check **Impersonate G Suite domain user** on the connected system and provide the email address of the G Suite domain user to impersonate. All integrations leveraging your connected system will be executed as this user in accordance with the permissions they have been granted to your G Suite domain.

### Parameters set in the connected system

The following properties are available for configuration when Google Service Account is selected as the authentication type:

| Field | Description |
| --- | --- |
| Service Account Key\* | **Optional**. A JSON file containing service account information. This file is obtained from the Google Cloud Platform (GCP) Console. |
| Project ID\* | **Required/Read-Only**. The Project ID for the service account key. |
| Client ID\* | **Required/Read-Only/Sensitive**. The Client ID for the service account key. |
| Client Email\* | **Required/Read-Only**. The Client Email for the service account key. |
| Private Key ID\* | **Required/Sensitive**. The Private Key ID for the service account key. |
| Private Key\* | **Required/Sensitive**. The Private Key for the service account key.

The Private Key starts with/includes the string `-----BEGIN PRIVATE KEY-----\n` and ends with/includes the string `\n-----END PRIVATE KEY-----\n` |
| Scope | **Optional**. The permissions that will be requested from the protected resource. If left empty, the default scope is `https://www.googleapis.com/auth/cloud-platform`. |
| Impersonate G Suite domain user | **Optional**. Checking this allows integrations to impersonate a specific G Suite domain user. Requires a service account with domain-wide delegation of authority. |
| G Suite Domain User Email\* | **Required (Conditionally)**. When using domain-wide delegation, this is the email for the G Suite Domain User that should be impersonated. This field is only exposed if **Impersonate G Suite domain user** is selected. Included in [import customization files](Managing_Import_Customization_Files.html) so that you can specify a different value for each environment. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...