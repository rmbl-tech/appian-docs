---
source_url: https://docs.appian.com/suite/help/25.3/portals-service-accounts.html
original_path: portals-service-accounts.html
version: "25.3"
title: "Service Accounts in Portals"
page_id: "portals-service-accounts"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Service Accounts in Portals

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

A [service account](User_Roles.html#service-account-role) is a special type of user account in Appian that is a member of the Service Account [system group](System_Groups.html). They are used in portals to authenticate back to Appian. This allows portal users to access information and processes in Appian without having to log in. Using service accounts in this way keeps your Appian environment secure while ensuring your portal users have access to the information and processes that are important to them.

You need to give service accounts the appropriate permissions to act on behalf of the portal. See [Required permissions for portal service accounts](#prodlink-portals-service-account-permissions) for what permissions to grant depending on the portal use case.

The page provides information about using service accounts in portals.

## Creating service accounts

Only system administrators can create service accounts. There are a few different options for creating service accounts:

-   From the [Service Access](portal-object.html#service-access) section in the portal object.
-   When creating an [API key](Appian_Administration_Console.html#creating-an-api-key) in the Admin Console.
-   By creating a user and adding it to the Service Accounts [system group](System_Groups.html).

## Required permissions for portal service accounts

The permissions you give your service account will depend on the use cases for your portal. This table outlines the appropriate permissions to give to the service account based on what your portal does. For step-by-step instructions on setting up a portal service account with the appropriate permissions, see [Create a Portal](portals-create.html#step-4-add-a-service-account-and-set-permissions).

You don't need to give access to every object used in your portal. Only the objects listed below.

| If your portal… | Grant the following permissions… |
| --- | --- |
| [Queries records](portals-data.html#working-with-data-using-record-types) | **Viewer** permission to the record type.

Be sure to configure any necessary [record-level security](record-level-security.html) as well to determine who can see which records. |
| [Adds, updates, or deletes records](portals-data.html#working-with-data-using-record-types) | **Viewer** permission to the record type. Be sure to configure any necessary [record-level security](record-level-security.html) as well to determine who can see which records.

**Initiator** permissions to the [process model](process-model-object.html#process-model-security). See [Start Process Smart Service](Start_Process_Smart_Service.html#permissions-needed) for more information on the difference between Initiator and Viewer permissions. |
| [Starts a process](portals-design.html#working-with-processes) | **Initiator** or **Viewer** permissions to the [process model](process-model-object.html#process-model-security), along with any other permissions required for the smart services used in the process model. See each smart service page for the permissions needed.

If the portal needs access to process model properties, process instance properties, or process variable values, give the service account **Viewer** permissions. See [Start Process Smart Service](Start_Process_Smart_Service.html#permissions-needed) for more information on permissions needed. |
| [Uploads documents](portals-design.html#working-with-documents) | **Editor** permissions to the [document folders](folder-object.html#prodlink-document-folder-security) that files will be uploaded to. |
| [Displays or downloads documents](portals-design.html#working-with-documents) | **Viewer** permissions to the [document folders](folder-object.html#prodlink-document-folder-security) where the documents are stored. |
| [Queries or writes data to a publicly-accessible external database](portals-data.html#working-with-data-in-a-publicly-accessible-external-database) | **Viewer** permissions to the [data store](Data_Stores.html#prodlink-security) for the external database. |
| [Queries or writes data using a CDT](portals-data.html#working-with-data-using-cdts) | Grant the service account that is tied to the API key **Viewer** permissions to the [web API](Web_APIs.html#prodlink-security) and [data store](Data_Stores.html#prodlink-security). |
| Uses a custom integration to use [partially compatible capabilities](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal) | Grant the service account that is tied to the API key **Viewer** permissions to the [web API](Web_APIs.html#prodlink-security) and any other design object that the portal needs access to. |
| Uses a [connected system plug-in](connected-system-plug-in-landing.html) with an associated component plug-in | **Viewer** permissions to the connected system. |

## Making sure your service account has access to the right data

Using service accounts prevents you from unintentionally exposing the wrong data or documents in a portal. As such, we recommend that you only grant the service accounts permissions to the records, documents, and processes that are needed for the portal.

As a best practice, avoid setting **Default (All Other Users)** to have **Viewer** permission on your record types. Service accounts are considered "users" for this setting, which means that this grants viewer access to all service accounts as well as all logged-in users.

You can view and update the record type permissions that the service account can currently access directly from the portal object. Use the **View record type permissions for the service account** link in the Service Access section to make sure the portal service account:

-   Has at least **Viewer** permissions to all of the record types used in your portal.
-   Does not have access to record types that are not used in your portal.

![changing record type permissions for a portal service account](images/portal_service_account_record_permissions.png)

To add permissions to a record type that is not in this list, go to the security settings for the record type.

That being said, portals will only expose data or start processes that are directly called in an interface. Even if the service account has permission to other record types or processes, if the developer does not directly call the record type or process in the portal, they will not be accessible from the portal.

## When a portal service account is required

If one or more of the following scenarios applies to a portal, the portal object must have a service account configured in the Service Access section:

-   Accesses data, documents, or processes in Appian.\*\*
-   Uses a [connected system plug-in](connected-system-plug-in-landing.html) with an associated component plug-in.\*\*
-   References itself or other portals using [a!urlForPortal()](fnc_scripting_urlforportal.html).
-   Uses [encrypted URL parameters](url-parameters.html#using-encrypted-url-parameters).

\*\* Ensure the service account has the [required permissions](#prodlink-portals-service-account-permissions) to view data and perform actions for the portal.

## Setting up service accounts in other environments

Before you deploy a portal to different environments, create the service account in each environment with the same username and group membership. To learn more, see [deploying a portal](portals-manage-portals.html#publish-a-portal-through-deployment).

## Using service accounts for portal and web API permissions

Service accounts can be used for two different types of permissions in a portal:

-   **Portal permissions**: The service account gives permissions to the _portal_ to view data and perform actions in Appian. This is the service account that is selected in the [Service Access](portal-object.html#service-access) section of the portal object.
-   **[Web API](Web_APIs.html) permissions**: The service account gives permission to the _web API_ to view data and perform actions in Appian. This is the service account selected when you [create an API key](Appian_Administration_Console.html#creating-an-api-key) for a web API.

If your portal uses web APIs, you can use the same service account for portal and web API permissions, but you don't have to.

## Rotating portal keys

If necessary, you can rotate the keys that your portal uses. This section outlines how to rotate API keys used for your portal service account, as well as the other keys your portal may use.

### Rotating portal service account API keys

When you add a service account to a portal, an API key is automatically generated when the portal is published. You can see this API key in the [Web API Authentication](Appian_Administration_Console.html#web-api-authentication) page in the Admin Console.

If necessary, system administrators can rotate this API key to invalidate the old one and create a new one.

**Note:**  After you delete the old API key, end users may encounter errors until the portal is republished. Therefore, when rotating API keys in production environments, we recommend waiting for off-peak hours.

To rotate a portal service account API key:

1.  For production environments, wait until off-peak hours.
2.  In the Admin Console, go to the **Web API Authentication** page.
3.  In the **API Keys** tab, find the API key for the portal. Look for the portal [web address identifier](portal-object.html#configurations) in the **Description** column and the portal [service account](portal-object.html#service-access) in the **Service Account** column.
4.  Delete the API key by clicking the red **X**.

    [![identifying a portal API key by the web address identifier](images/portal-sa-rotate-web-id.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img339)

    [![](images/portal-sa-rotate-web-id.png)](#_)

5.  In the portal object, click **REPUBLISH**. As the portal is republished, a new API key is generated, which you can view in the Admin Console Web API Authentication page.
6.  Repeat for all environments that need the API key rotated.

### Rotating other keys used by a portal

Your portal may use other types of keys that require a different method to rotate.

If a portal uses [Web APIs](Web_APIs.html), you can rotate the API key used for the web API by performing the following:

1.  Delete the old API key.
2.  [Create a new API key](Appian_Administration_Console.html#creating-an-api-key).
3.  Update everywhere the API key was used.

[Open a support case](https://community.appian.com/support/) to rotate either of the following keys:

-   **Secure context keys**: Only used in portals that use [encrypted URL parameters](url-parameters.html#using-encrypted-url-parameters) to encrypt the URL parameters.
-   **SAIL encryption keys**: Used by all portals for encrypting data in interfaces.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...