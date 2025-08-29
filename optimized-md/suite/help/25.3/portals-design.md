---
source_url: https://docs.appian.com/suite/help/25.3/portals-design.html
original_path: portals-design.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Portal Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Appian Portals allows you to reach any audience your organization works with, without requiring them to log in. You can use the low-code tools you already know to create web apps that connect portal users to the information and processes in Appian.

Creating a portal is a bit different from creating a site. Portals run in a service that is separate from your Appian environment, but can be connected to your Appian applications, data, and workflows. Because of this, there are some things you'll need to take into account when planning for and designing the functionality of a portal. This page provides these best practices.

**Note:**  Appian Portals is only supported for Appian Cloud customers. If your environment uses inbound web access over [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html#inbound-web-access-over-privatelink), you must enable [dual inbound access](Configuring_Dual_Inbound_Access.html) and [trusted IPs](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html).

### See also

-   To learn how to write and query data in portals, see [Working with Data in Portals](portals-data.html).
-   For more information on designing the best experience for your portal users, see the [portal design guidelines](sail/ux-portals.html).
-   For a full list of what you can do in a portal, see [Portal Capabilities](portal-capabilities.html).

## Portal compatibility with functions, components, and objects

Functions, components, and objects can be either compatible, partially compatible, or incompatible with portals:

-   **Compatible**: Works with portals without a custom integration.
-   **Partially compatible**: Works with portals using a custom integration to connect the portal to the Appian environment.
-   **Incompatible**: Doesn't work in portals. However, there may be a workaround available that allows you to achieve a similar outcome.

Review this section for how to determine compatibility, as well as how to use partially compatible functions and objects in a portal.

### Determining function and component compatibility

When you're designing an interface for a portal, you can use most of the components and functions that you know and love. However, there are some components and functions that are incompatible with portals.

There are two main ways to determine whether a function or component is compatible with portals: the [Appian All Functions table](Appian_Functions.html) in the docs and [Appian design guidance](appian-recommendations.html) in an interface or expression rule.

#### Using the Appian Functions table to determine compatibility

To find out if a function is compatible with portals using the filters on the Appian All Functions table:

1.  Go to the [All Functions](Appian_Functions.html) page.
2.  Change the **Any Compatibility** dropdown list to **Incompatible**, **Partially Compatible**, or **Incompatible**.
3.  For the next dropdown list, choose **Portals**.
4.  To view the portal compatibility in the table, toggle on the **Compatibility** column.

![Portal compatibility in function table](images/function_table_portals.png)

#### Using design guidance to determine compatibility

If an interface or expression rule that is a precedent of a portal uses an incompatible or partially compatible function, a [design guidance](appian-recommendations.html) recommendation will display. If you see this design guidance:

-   For incompatible functions or components, refactor your expression to remove them.
-   For [partially compatible functions](#using-partially-compatible-functions-and-objects-in-a-portal), create a custom integration to call the function from a web API.
-   If the function or component will not evaluate in the portal, you can dismiss the design guidance. For example, if you have logic that will use an incompatible function in a site but not a portal, the component should not evaluate in the portal so you can dismiss the design guidance.

### Using partially compatible functions and objects in a portal

Some functions and objects are [partially compatible](portal-capabilities.html) with portals. This means you can still use them in a portal, as long as you connect to them with a custom integration using integration and web API objects.

Some examples of partially compatible functions and objects:

-   Functions listed as partially compatible in the [Appian functions table](Appian_Functions.html), such as `a!urlForRecord()`.
-   Function plug-ins.
-   Decision objects.
-   Partially compatible authentication types in an integration object.
-   Pre-built connected system objects.

To use partially compatible functions and objects in a portal, call the function or object in a web API and use an integration object in the portal interface to call the web API.

The integration and web API form a bridge that connects your portal to Appian and allows data to pass through. The integration is on one side—in your portal—and the web API is on the other side—in Appian.

[![diagram of the Portals architecture, depicting the connection between the portal and the Appian applications described above](images/portals-architecture-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img338)

[![](images/portals-architecture-diagram.png)](#_)

These are the high level steps to create a custom integration in a portal. For more detailed steps that outline a similar process, see [working with data using CDTs](portals-data.html#working-with-data-using-cdts).

To use a partially compatible function or object in a portal:

1.  Create a [web API](Web_APIs.html) and call the function or object in the web API.
2.  [Create an API key](Appian_Administration_Console.html#creating-an-api-key) and [service account](portals-service-accounts.html) and give the service account **Viewer** permissions to the web API.
3.  Create an [HTTP connected system](http-connected-system.html) that uses API Key authentication.
    -   For **Header**, enter `appian-api-key`.
    -   For **Value**, use the API key you created.
4.  Create an [integration object](Integration_Object.html).

    -   Select **Use a connected system** and choose the connected system you created.
    -   For **URL**, enter the URL from the web API you created.

    **Note:**  If there are unexpected question marks (?) in the response body of the integration object, it may be because you need to modify the _header_ parameter in the [a!httpResponse()](fnc_system_a_httpresponse.html) function of the web API expression to handle special characters. See this [Knowledge Base](https://community.appian.com/support/w/kb/1306/kb-1851-web-apis-return-special-characters-as-question-marks) article for more information.

5.  In your portal interface, call the integration object using the `rule!` domain prefix.

## Component plug-ins in portals

### Determining if a component plug-in is compatible with portals

You can use most [component plug-ins](component-plugins.html) in portals. This includes component plug-ins that you or your organization create. Additionally, some [connected system plug-ins](connected-system-plug-in-landing.html) can be used with their associated component plug-in.

Because plug-ins can have a wide variety of capabilities, some of them may not be compatible with portals.

Before using a component plug-in, review the following to help determine if it will work in your portal.

**Tip:**  If you are building a component plug-in, see [Develop Component Plug-ins for Portals](component-portals.html) for guidelines on creating component plug-ins that will be compatible with portals.

#### Check if the plug-in relies on a connected system plug-in

If a component plug-in relies on a connected system plug-in, there is a chance that the connected system may not be compatible with portals.

For example:

-   Connected system plug-ins that use an [integration template](adding-templates-to-a-plug-in.html#adding-a-new-integration-template) won't work in a portal.
-   Plug-ins that link to documents stored in Appian won't work since portal users won't have permission to view them. See [Working with documents](#working-with-documents) for information on how to correctly work with documents in portals.

If you are unsure if a connected system plug-in is compatible with portals, test it in a published portal or contact the plug-in developer. See [Using connected system plug-ins in a portal](#using-connected-system-plug-ins-in-a-portal) for more information.

#### Check the plug-in file size

In order to publish successfully, portals must be under 25 MB. When you use a plug-in in a portal, the size of the plug-in file affects the size of the portal. Using a plug-in with a large file size may cause the portal to fail to publish.

You can check the size of a plug-in by downloading it from the [Appian AppMarket](https://community.appian.com/b/appmarket) or the [Admin Console](Appian_Administration_Console.html#download-plug-ins).

### Using connected system plug-ins in a portal

Some component plug-ins work with [connected system plug-ins](https://community.appian.com/b/appmarket?tags=Connected%20System%20Plug-in%2C). See [Check if the plug-in relies on a connected system plug-in](#check-if-the-plug-in-relies-on-a-connected-system-plug-in) for information on determining if the connected system plug-in will work in a portal.

When you use any connected system plug-in in a portal, be sure to add a [service account](portals-service-accounts.html) to the portal that has **Viewer** permissions to the connected system.

### Testing plug-ins in a published portal

While many component plug-ins will work in a portal, some are not compatible with portals for various reasons. For example, since you can't access group information in a portal, a plug-in that relies on groups won't work in a portal.

Be sure to fully test component plug-ins in a published portal to make sure they work correctly. If the plug-in does not work in the portal, contact the plug-in developer.

If you are using a connected system plug-in with a component plug-in in a portal:

-   **Be sure to load test your portal**, especially if you are using multiple component plug-ins on one page. Connected system plug-ins have [protections](portals-security.html#user-experience-when-portal-traffic-is-high) that may cause requests to Appian to be throttled, which could cause slow performance.
-   **Log out of Appian**, or use a private browsing mode, such as Incognito mode in Chrome. If the connected system plug-in uses document IDs or links to documents or other objects stored in Appian, this should cause an error in your portal. However, if you are logged in to the same Appian environment, it may not error for you, but it could error for unauthenticated portal users.

### Popular component plug-ins that can be used in portals

The following is a list of some of the most popular component plug-ins that can be used in a portal, along with some information about how to use them in a portal.

-   [Rich Text Editor component plug-in](https://community.appian.com/b/appmarket/posts/rich-text-editor).
    -   Do not enable image uploads in the rich text editor. The Rich Text Editor connected system that is required for image uploads is not compatible with portals.

        **Tip:**  We recommend using the [styled text editor](Styled_Text_Editor_Component.html) component to allow users to input and format text.

-   [Google Maps component plug-in](https://community.appian.com/b/appmarket/posts/google-maps-component-plug-in).
    -   You can use the [Google Maps connected system plug-in](https://community.appian.com/b/appmarket/posts/google-maps-connected-system-plug-in) to store the Google Map API key. Be sure to add a [service account](portals-service-accounts.html) to the portal that has **Viewer** permissions to the connected system.
    -   However, to use any of the other functionality of the connected system such as transit directions or autocomplete for addresses, [connect to a web API object using an integration object](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal). From the web API, call an integration object using the Google Map connected system.
-   ESRI ArcGIS Map [component](https://community.appian.com/b/appmarket/posts/esri-map-component) and [connected system](https://community.appian.com/b/appmarket/posts/esri-helper-connected-system) plug-ins. Be sure to add a [service account](portals-service-accounts.html) to the portal that has **Viewer** permissions to the connected system.
-   [Slider Field component plug-in](https://community.appian.com/b/appmarket/posts/slider-field-component).

## Working with processes

Portals can use [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) in an interface to start a process. However, they cannot use any other method to start a process, such as through a start form or record action.

The [portal service account](portals-service-accounts.html#prodlink-portals-service-account-permissions) must have at least **Initiator** permissions to the process model in order to start the process.

For more information, see [Working with Data in Appian](portals-data.html#write-record-data).

## Working with documents

The developer and user experience for downloading files and viewing document images in a portal is the same as it is in the rest of Appian. Simply use the following components as you normally would.

-   To download documents, use the [document download link](Document_Link_Component.html) component.
-   To display images such as PNGs, use the [document image](Document_Image_Component.html) component.
-   To display documents such as PDFs, use the [document viewer](Document_Viewer_Component.html) component.
-   To display documents from another system, use the [web content field](Web_Content_Component.html) component.
-   To use the property information for a document, such as displaying a document name, use the [document()](fnc_scripting_document.html) function.
-   To upload a file or signature using a [file upload](File_Upload_Component.html) or [signature](Signature_Component.html) component, use the [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) function. See the linked pages for more information and examples.

There are a few things to keep in mind when uploading files in a portal, which are documented in the following sections.

### Give the portal service account access to the documents

Whether you are setting up your portal to view, download, or upload documents, make sure you set up the [service account permissions](portals-service-accounts.html#prodlink-portals-service-account-permissions) correctly so that the portal has the required access.

### To download or view documents in a portal, use a document constant

When referencing documents in a portal, we recommend that you use a constant to serve the document directly from the portal. The constant must be of type **Document**. You can use the document ID instead, but that method is less performant than using a constant because the portal must query Appian for the document.

See the [document download link](Document_Link_Component.html#configure-a-link-using-a-constant), [document image](Document_Image_Component.html#displaying-a-document-image-using-a-constant), and [document viewer](Document_Viewer_Component.html#displaying-a-document-image-using-a-constant) pages for specific examples of using a constant to download and view documents.

### Uploading files in a portal

The following are some things to keep in mind when using file upload and signature components in a portal.

-   To make sure files will be uploaded correctly in a portal, publish the portal and test the file upload on the portal website. See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#testing-and-troubleshooting-asubmituploadedfiles-in-portals) for more information on testing and troubleshooting uploading documents in portals.
-   In portals, the size limit for uploaded files is 10 MB.

### To write document IDs through an integration, use the correct integration input

To write document IDs from uploaded files to a database [through an integration](portals-data.html#writing-data-using-cdts), the integration input that you're writing must be of type **Number(Integer)**, not **Document**. An incorrect type can cause the data and document IDs to not save properly.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...