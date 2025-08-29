---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/microsoft365-integration.html
original_path: clm-25.2.1.0/microsoft365-integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Microsoft 365 Integration Setup Guide

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

Contract Lifecycle Management (CLM) supports inline editing and collaboration in contract documents, which relies on an integration to Microsoft 365.

This guide walks you through the set up required to use this integration. You will need to [set up your Microsoft Azure environment](#set-up-microsoft-azure), [establish a SharePoint folder](#set-up-microsoft-office-document-folder) to store the contract documents, and [configure the CLM application](#configure-clm) to turn on inline editing.

## Set up Microsoft Azure

In order to use inline editing, the CLM solution will need to be registered with your Microsoft Azure environment so users can securely navigate to contract documents from the CLM solution.

To set up the CLM application to access Microsoft Azure:

1.  Access your [Azure environment](https://portal.azure.com/) and [register an application](https://learn.microsoft.com/en-us/power-apps/developer/data-platform/walkthrough-register-app-azure-active-directory#public-client-app-registration).
    -   Copy the **Application (client) ID** and the **Directory (tenant) ID** of the registered application.
2.  Add [API permissions](https://learn.microsoft.com/en-us/power-apps/developer/data-platform/walkthrough-register-app-azure-active-directory#public-client-app-registration) to the registered application.
    -   Add the **Files.ReadWrite.All** permission to the **Microsoft Graph** API.
3.  Add a [client secret](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=client-secret%2Cexpose-a-web-api#add-credentials) to the registered application.
    -   Copy the client secret **Value**.

## Set up Microsoft Office Document Folder

After setting up the Azure environment, establish a folder on Sharepoint to store the documents Appian is opening for inline editing.

1.  Create a [folder](https://support.microsoft.com/en-us/office/create-a-folder-in-a-document-library-3d6a8c11-2490-4d6b-8837-f25649a69c56) that can be associated easily with the CLM solution.
2.  Get the [Site ID](https://docs.microsoft.com/en-us/graph/api/site-get?view=graph-rest-1.0&tabs=http) for the site where the drive for the folder resides.
3.  Get the [Drive ID](https://docs.microsoft.com/en-us/graph/api/drive-get?view=graph-rest-1.0&tabs=http) of the drive storing your documents using the Site ID retrieved in the previous step.
4.  Get the [Folder ID](https://docs.microsoft.com/en-us/graph/api/resources/drive?view=graph-rest-1.0) of the folder established in step one.

You can also use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) for an easy way to create and run these queries.

## Configure CLM

1.  Set the constant `CLM_FEATURE_TOGGLE_OFFICE_365` as _true_ to enable the Microsoft 365 integration. The default value is _false_.
2.  Within the CLM Contract Management Studio Base application, open `CLM Microsoft Graph` connected system.
3.  Update the **Client ID** field with the Client ID of the application created in [Microsoft Azure set up step.](#set-up-microsoft-azure)
4.  Update the **Token Request Endpoint** with the Tenant ID found on the Azure application overview from [Microsoft Azure set up step](#set-up-microsoft-azure).
5.  Enter the **Client Secret** saved during the [Microsoft Azure set up step](#set-up-microsoft-azure).
6.  Click **Authorize** to confirm successful authorization.
7.  Update the `CLM_SHAREPOINT_DRIVE_ID` constant with the Drive ID from [Microsoft Office Document setup](#set-up-microsoft-office-document-folder).
8.  Update the `CLM_SHAREPOINT_FOLDER_ID` constant with the Folder ID from [Microsoft Office Document setup](#set-up-microsoft-office-document-folder).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...