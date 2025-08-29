---
source_url: https://docs.appian.com/suite/help/25.3/portals-create.html
original_path: portals-create.html
version: "25.3"
title: "Create a Portal"
page_id: "portals-create"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Portal

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Build an Appian Portal

Check out this video from [Academy Online](https://academy.appian.com/) that walks you through creating a portal.

## Overview

Every portal needs at least a portal object and an interface, but a portal can contain that and so much more. This page walks you through creating a portal, from the very beginning of development through deployment.

For more information on creating, publishing, and deploying portals see the [Portal Object](portal-object.html) and [Manage a Portal](portals-manage-portals.html) pages.

**Tip:**  This walk-through uses record types to seamlessly connect your Appian data to your portal. This is the recommended way to work with data in a portal.

However, you can also write and query data using [CDTs](portals-data.html#working-with-data-using-cdts) if necessary. And, if you have a [publicly-available external database](portals-data.html#working-with-data-in-a-publicly-accessible-external-database), you can directly write to or query from that database.

## Step 1: Create a portal object

The [portal object](portal-object.html) contains the settings that are used to publish a portal. When a portal is published, Appian bundles up the portal object and all the precedents of the portal object to create the portal.

To create a portal object:

1.  In your application, go to the [**Build** view](build-view.html).
2.  Click **NEW** > **Portal**.
3.  In the **Create Portal** dialog, configure the following properties:

| Property | Action |
| --- | --- |
| **Name** | Enter a name for the object. We recommend following the [Standard Object Names](Standard_Object_Names.html) convention. Not visible to end users. |
| **Display Name** | Enter the website name to display in the browser tab. Optionally, this name can also be displayed in the [navigation bar](portal-object.html#navigation-bar). Visible to end users. Follow the [recommended naming standard](Standard_Object_Names.html#user-objects) for display names. |
| **Web Address Identifier** | Enter a unique identifier that will be part of the portal's web address. Appian uses this identifier to construct the web address where published portals are available to end users. The web address identifier must be unique in the current environment and any environments that you deploy the portal object to. For more information on web address identifiers, see [Configurations](portal-object.html#configurations). |
| **Description** | (Optional) Enter a description for the object. |

1.  Click **CREATE**.

## Step 2: Add a page to your portal

Pages are the interfaces that display to your portal users. You can have up to 10 pages or [page groups](#step-2a-optional-add-a-page-group-to-your-portal) in a portal and can choose one interface object to display on each page. If you have more than one page, they display in a [navigation bar](#step-3-configure-a-navigation-bar-and-branding).

[![pages in a portal](images/portal_pages.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img335)

[![](images/portal_pages.png)](#_)

Make sure that you aren't using any [incompatible functions or components](portals-design.html#portal-compatibility-with-functions-components-and-objects) in your interface. For more information about the functional design considerations to keep in mind when creating a portal, see [Portal Best Practices](portals-design.html).

To add a page:

1.  In the portal object, go to the **Pages** section.
2.  Click **ADD PAGE**.
3.  Enter the [page properties](portal-object.html#pages):
    -   Enter a page **Title**. When a portal has more than one page, this displays in the navigation bar.
    -   The **Web Address Identifier** automatically populates based on the title. You can update it if necessary.
    -   Select an **Icon** to display with the page title in the [navigation bar](portal-object.html#navigation-bar) when using a SIDEBAR layout. Icons will not display in HEADER BAR layouts. The file-o icon is selected by default.
    -   Select an interface, or click to create a new interface.
    -   If the interface has [rule inputs that work with URL parameters](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters), you can optionally [configure the rule inputs](url-parameters.html#step-3-configure-the-rule-input-configuration-for-the-page).
4.  Click **ADD**.
5.  Repeat these steps to add up to ten pages. Use the and arrows to reorder the pages.

### Step 2a: (Optional) Add a page group to your portal

[Page groups](portal-object.html#add-a-page-group) allow you to create a nested menu of pages under a page group title in your portals's navigation bar for an additional level of navigation. Each page group can have up to ten pages.

[![page group in a portal](images/portal_page_groups.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img336)

[![](images/portal_page_groups.png)](#_)

Before you can start adding and configuring page groups, you must [add at least one page](portals-create.html#step-2-add-a-page-to-your-portal) to your portal.

To add a page group:

1.  Click **ADD PAGE GROUP** in the page section after you add at least one page to your portal.
2.  Configure the page group properties:
    -   Enter a page group **Title**. This displays in the navigation bar bar.
    -   The **Web Address Identifier** automatically populates based on the title. You can update it if necessary.
    -   Select an **Icon** to display with the page group title in the [navigation bar](portal-object.html#navigation-bar) when using a SIDEBAR layout. Icons will not display in HEADER BAR layouts. The file-o icon is selected by default.
3.  Click **ADD**.

To add pages to a page group:

1.  Click **Add Page** in the page group card.
2.  Follow the steps to add a page.
3.  Repeat as necessary.

## Step 3: Configure a navigation bar and branding

If you add more than one page to your portal, the navigation bar is automatically enabled. If your portal has only one page, the navigation bar is optional. Showing a navigation bar in your portal allows you to choose a color and logo to display in the navigation bar to help your users recognize that the portal belongs to your brand.

When the navigation bar is enabled, you also have the option to choose between two different layout options: HEADER BAR and SIDEBAR.

[![Portal sidebar comparison with portal header bar](images/portal_sidebar_vs_headerbar.png)](images/portal_sidebar_vs_headerbar.png)

Additionally, you can make changes to any of the default branding configurations, such as input and button shape, to fit your organization's branding guidelines.

To configure the navigation bar and branding:

1.  In the portal object, go to the **Navigation Bar** section.
2.  **Show navigation bar** is automatically selected. You can choose to deselect it, but if you only have more than one page, the additional pages will be removed from the portal.
3.  For the navigation bar **Layout**, select **HEADER BAR** or **SIDEBAR** options. This determines where the navigation bar displays.
4.  Configure the rest of the [navigation bar](portal-object.html#navigation-bar) settings.
5.  **Show portal display name in navigation bar** is automatically selected. You can deselect it if you don't want the display name from the [configurations](portal-object.html#configurations) section to display.
6.  Go to the **Branding** section and configure the [branding](portal-object.html#branding) settings. The changes you make display in the [Branding Preview](portal-object.html#branding-preview).

## Step 4: Add a service account and set permissions

Service accounts are used in portals to give access to certain objects. Instead of an Appian user being granted access to objects in a site, the service account is given access to objects in a portal so it can act on behalf of users that aren't logged in. The records, processes, and documents stored in Appian won't be available in your portal until you give your service account access to them. This helps keep your Appian environment secure and ensures your portal users can still connect to the information and processes that are important to them.

System administrators can create a service account directly from the portal object.

To add a service account:

1.  In the portal object, go to the **Service Access** section.
2.  Next to the **Service Account** picker, click to create a new service account. Optionally, you can select an existing service account.
    -   If you don't see , contact a system administrator to create a service account for you.
3.  Enter a unique username for your service account.
4.  Select the group(s) to which you want to add this service account.
    -   To have permission to portal objects, your service account must be granted access to the object or folder, or be in a group that has access to the object.
    -   Remember to give the group the [required permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) to the objects used in your portal.
5.  Click **CREATE**.
6.  Click **View record type permissions for the service account** to see which record types the service account can access. Make sure the service account doesn't have access to record types that aren't used in your portal.

    -   To remove permissions for a record type, click **Security** next to the record type name. See [Required permissions for portal service accounts](portals-service-accounts.html#prodlink-portals-service-account-permissions) for more information on the appropriate permissions for service accounts.

    ![changing record type permissions for a portal service account](images/portal_create_record_permissions.png)

## Step 5: (Optional) Add a Google reCAPTCHA connected system

Optionally, you can add [Google reCAPTCHA](recaptcha.html) to your portal to help you monitor your portal for spam or potentially malicious activity. Not every portal needs Google reCAPTCHA, but we recommend using it if your portal is high profile, highly publicized, or if you have had issues with spam messages in your portal.

To add a reCAPTCHA connected system:

1.  In the portal object, go to the **Service Access** section.
2.  Next to the **Google reCAPTCHA** picker, click to create a new Google reCAPTCHA connected system. Optionally, you can select an existing Google reCAPTCHA connected system.
3.  Enter a **Name** and optional **Description**.
4.  Enter the Google reCAPTCHA credentials.

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

5.  Click **Test Connection** to test that your credentials are valid for getting a reCAPTCHA score.
6.  Click **CREATE**.

See [step 7](#step-7-create-the-rest-of-your-portal) for more information on how to use reCAPTCHA in your portal interface.

## Step 6: (Optional) Configure your portal as a progressive web app

You can configure your portal to be a Progressive Web App (PWA). A PWA looks and behaves like a native application and allows your users to install the portal on their device for easy and frequent access.

See the [portal object](portal-object.html#progressive-web-app-pwa) page for more information about PWAs.

To configure your portal as a PWA:

1.  In the portal object, go to the **Progressive Web App** section.
2.  Select **Configure portal as a progressive web app**.
3.  Configure the [Progressive Web App](portal-object.html#progressive-web-app-pwa) settings.

## Step 7: Create the rest of your portal

This step will depend on your portal use case. This table lists common capabilities of portals along with the high-level steps to accomplish them.

|
If you want your portal to ...

 |

Then...

 |
| --- | --- |
|

Query data.

 |

1.  Create a [record type](Create_a_Record_Type.html).
2.  Query the record type in a portal interface using [a!queryRecordType()](fnc_system_queryrecordtype.html).

 |
|

Query a single record and its related data.

 |

1.  Create a [record type](Create_a_Record_Type.html) with [record type relationships.](record-type-relationships.html)
2.  Query the record type in a portal interface using [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html).

 |
|

Use record-powered [grids](read-only-grid-configuration.html), [charts](Chart_Configuration_Using_Records.html), and [card choices](card-choices-component.html) components.

 |

1.  Create a [record type](Create_a_Record_Type.html).
2.  Use the record type as the source for the grid, charts, or card choices component.

 |
|

Allow portal users to upload files.

 |

1.  Create a constant of type **Folder** for the folder that the files will be uploaded to.
2.  In your portal interface, add a [File Upload](File_Upload_Component.html) or [Signature](Signature_Component.html) component. For the _target_ parameter, use the folder constant.
3.  In the _saveInto_ parameter of a submit link or button, use the [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html)function.

    **Note:** Uploaded files can be no larger than 10 MB.

 |
|

Allow portal users to download or view files.

 |

1.  In your portal interface, use the [a!documentDownloadLink](Document_Link_Component.html), [a!documentImage](Document_Image_Component.html), and/or [a!documentViewerField](Document_Viewer_Component.html) components.
2.  In the _document_ parameter of the components, use a constant of type document or a document ID.

 |
|

Add, update, or delete record data.

 |

1.  In a _saveInto_ parameter on your portal interface, use [a!startProcess()](Start_Process_Smart_Service.html#a!startprocess\(\)).
2.  In your process model, use the [Write Records](Write_Records_Smart_Service.html) and [Delete Records](Delete_Records_Smart_Service.html) smart services.

 |
|

Create a user, update data using a CDT, send an email, or start another Appian process.

 |

1.  In a _saveInto_ parameter on your portal interface, use [a!startProcess()](Start_Process_Smart_Service.html#a!startprocess\(\)).
2.  In your process model, use the appropriate [smart service](Smart_Services.html#-automation-smart-services).

 |
|

Use reCAPTCHA to determine what to do if a bot is likely trying to use your portal.

 |

1.  Create and add a [Google reCAPTCHA connected system](#step-5-\(optional\)-add-a-google-recaptcha-connected-system) to your portal.
2.  In a submission button on your portal interface, use the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) function in the _recaptchaSaveInto_ parameter.
    **Note**: Whenever the submission button is used, Google reCAPTCHA returns a score that determines how likely it is that a bot is trying to use your portal. Configure the `a!verifyRecaptcha()` function to determine what to do based on the score using `fv!score`.
3.  Publish your portal and test it to make sure the reCAPTCHA works the way you expect. The `a!verifyRecaptcha()` function only works in a published portal, so you must publish the portal in order to [test it](#step-9-test-your-published-portal).

    For more information and examples, see [Configuring reCAPTCHA](recaptcha.html).

 |

## Step 8: Publish your portal object

With your supporting objects and portal object all created and configured, your portal object is now ready for publishing!

To publish your portal object:

1.  In the portal object, go to the **Configurations** section and turn on **Published**.
2.  Click **SAVE**. The portal won't be published until you save.
3.  After the portal status updates to **Published**, click the URL under **Web Address** to see your published portal.

For more information on publishing, see [Manage a Portal](portals-manage-portals.html#publishing-portals).

## Step 9: Test your published portal

Now that your portal is published, it's time to test it. It's important to test both your individual objects and the published portal as a whole with production-level usage. Some connections can't be tested until after publishing.

Navigate to the published portal using the URL under **Web Address** and test your portal as a user would interact with it.

If your portal publishes, but it can't be displayed because of errors, a **Service Unavailable** message will display. This may happen while you're developing your portal, similar to how site pages display expression validation errors when you're developing a site. To see the cause of the error and how to fix it, go to the portal object.

![published-portal-error](images/published-portal-error.png)

To make sure that everything is functioning correctly, fully test all of the objects and connections that are precedents of your portal, including the following:

-   Interface components, including:
    -   Input and selection components.
    -   File upload and signature components using the `a!submitUploadedFiles()` function.
    -   Document download link components.
    -   Document viewer and document image components.
    -   Web content field components.
-   [Google reCAPTCHA](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha) connection on your interface.
-   Expression rules.
-   Constants.
-   All other objects and connections.
-   Web API, connected system, and integration objects, as well as any connections to them in interfaces.
-   Data source connected systems for external databases and connections to them in interfaces.

Be sure to fill out all of the fields, whether they are required or not, and go through all of the steps in your portal. If you run into any issues while testing, see [Troubleshoot a Portal](portals-troubleshooting.html#portal-server-log).

As you test and interact with your portals during development, use the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view of Appian Designer to view key metrics related to portal interactions. These metrics will help you optimize performance and response times, ensure availability, and deliver a pleasant user experience.

For more information about testing and to learn about who can see your portal during testing, see [Manage a Portal](portals-manage-portals.html#testing-portals).

### Making changes to your published portal

If you found any problems with your portal during testing, go ahead and make the necessary changes to your objects. When you save changes to your portal object or portal object precedents, the portal automatically republishes to stay up-to-date with the latest changes.

For more information on automatic republishing, see [Manage a Portal](portals-manage-portals.html#).

## Step 10: Deploy your portal

When you are ready to publish your portal for production use, you can prepare to have it automatically publish in your production environment through a deployment.

When you deploy a published portal to another environment, Appian will attempt to publish the portal in the target environment.

In order for the portal to publish successfully, before deploying your portal for the first time, you will need to set up the following in your target environment:

-   Create a service account in the target environment.
-   Give the service account the same [permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) in both environments.
-   If you are using plug-ins in the portal, make sure the plug-ins are in your target environment before deploying the portal.

After the portal publishes successfully in the target environment for the first time, whenever you deploy the portal or its precedents from your source environment, it will update and republish the portal in your target environment. See [Manage a Portal](portals-manage-portals.html) for more information about publishing and deploying portals.

Follow the steps below to set up your portal to publish successfully in another environment.

### Step 10a: Deploy groups and plug-ins

1.  In your source environment, open the the portal object and make sure that the portal is successfully published with your latest changes.
2.  Deploy all groups that you are using to grant access to your portal to the target environment.
3.  If there are any plug-ins you are using in the portal that aren't in your target environment, include the plug-ins in the deployment.
    -   **Note**: If you aren't using [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy-across-connected-environments), an administrator will need to add the plug-ins to the environment manually.

### Step 10b: Set up the service account

1.  In your target environment, [create a service account](portals-service-accounts.html#creating-service-accounts) with the same username as the portal service account.
    -   **Note**: Only administrators can add service accounts to an environment.
2.  Add the service account to the groups you deployed from the source environment.

### Step 10c: Deploy and publish the portal

1.  Deploy the portal and all its precedents to the target environment. If necessary, include an [import customization file](portals-manage-portals.html#import-customization-files-for-portals).
2.  Check the [deployment details](deployments-view.html#view-deployment-details) to make sure there are no publishing errors.

## Step 11: Share your portal and celebrate!

Congratulations! You created a nice and shiny new portal!

After a successful deployment to your production environment, you can now share your portal with your users at the web address specified in the portal object and celebrate.

Once users start interacting with your portal, don't forget to monitor those interactions using the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view of Appian Designer. This tab alerts you to any potential issues with response times or availability so you can avoid serving slow or inaccessible portals to your users.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...