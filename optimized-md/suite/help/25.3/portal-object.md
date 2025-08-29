---
source_url: https://docs.appian.com/suite/help/25.3/portal-object.html
original_path: portal-object.html
version: "25.3"
title: "Portal Object"
page_id: "portal-object"
section: "What is a portal object?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Portal Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How Do Sites and Portals Work Together in Appian?

This video from [Academy Online](https://academy.appian.com/) shows how to use a portal and a site to accomplish a complete workflow.

This page provides detailed information on how to create and configure a portal object.

## What is a portal object?

A portal is a public web app that users can access without signing in to Appian. A portal object allows you to define and customize the settings and content for your portal. This includes configurations, service access information, branding, and progressive web app (PWA) settings. The portal object makes it easy to both build and troubleshoot a portal in one place.

A portal object can be referenced in other objects. To learn more about this concept, see [Referencing Objects in Expressions](reference-objects.html).

## When to use this object

Use a portal when you need to:

-   Provide anonymous access to an Appian application.
-   Create a simple, branded web experience for external users.
-   Expose specific interfaces or forms publicly without requiring an Appian license for every user.
-   Create a Progressive Web App (PWA) that can be installed on a user's device.

To create a web app designed for specific users who sign in to Appian, create a [site object](sites_object.html) instead.

## Elements of this object

This object contains the following elements:

[![a screenshot of the Build tab in a portal object with numbers to indicate where each section is](images/portal-object-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img331)

[![](images/portal-object-annotated.png)](#_)

| # | Section | Actions |
| --- | --- | --- |
| 1 | **Publication status banner** | The publication status of the portal. Potential status can be:
-   Not published
-   Publish in progress
-   Published

If the publication status says **Published with errors**, it means the portal published, but it can't be displayed because of an error. A detailed error message will display below the publication status and a **Service Unavailable** message will display in the portal. |
| 2 | **Build tab** | Configure the basic elements of your portal object. |
| 3 | [Troubleshoot tab](#troubleshoot-tab) | View error details to help debug issues with the portal. |
| 4 | Customization settings |

-   [Configurations](#configurations): Modify the primary portal settings that determine how users experience the portal.
-   [Pages](#pages): Add, remove, modify, and organize the pages and page groups displayed in the navigation bar.
-   [Navigation Bar](#navigation-bar): Configure the layout, style, and branding of the navigation bar.
-   [Branding](#branding): Define the look and feel of the site, including colors, shapes, and logos.
-   [Service Access](#service-access): Add a service account to give the portal permissions to information and processes in Appian; Add a [reCAPTCHA connected system](google_reCAPTCHA.html) for portal pages that are configured to use [reCAPTCHA](recaptcha.html).
-   [Progressive Web App](#progressive-web-app-pwa): Configure the portal as a progressive web app to control the branding when users install the portal object as an app on their device.

 |
| 5 | [Branding Preview](#branding-preview) | View what the navigation bar and branding configurations will look like. |

### Configurations

The **Configurations** section allows you to publish the portal and edit its display name and web address.

You can configure the following fields in this section:

| Field | Action |
| --- | --- |
| **Published** | Toggle whether your portal is available to end users at the specified web address. For more information on publishing, see [Manage a Portal](portals-manage-portals.html#publishing-portals). |
| **Display Name** | Edit the website name displayed in the browser tab and optionally in the [navigation bar](#navigation-bar). Visible to end users. Follow the [recommended naming standard](Standard_Object_Names.html#user-objects) for display names. |
| **Domain for portal URL** (if configured) | Select a [custom domain](portals-custom-domain.html) for the portal if multiple are configured for the environment. This allows you to publish multiple portals at different domains, such as `quote.insurecorp.com` and `claims.insurecorp.com`.

_This configuration is only visible when multiple custom portal domains are configured for this environment._ |
| **Web Address** | Click **Edit** to edit the **Web Address Identifier** used to construct the portal's public URL.

Web addresses in your environment can contain a UUID to help you restrict access to portals that are intended for development and testing. This setting is applied at the environment level in the [Admin Console](Appian_Administration_Console.html#portals). For more information on UUIDs, see [Manage a Portal](portals-manage-portals.html#testing-portals). |

By default, portal web addresses use the Appian environment name for the subdomain and `appianportals.com` for the domain. For example, if an environment is called `insurecorp`, the URLs for portals published from the environment will use `insurecorp.appianportals.com`. If you would like to configure custom domains to use for portals in your environment, see [Configuring Custom Domains for Portals](portals-custom-domain.html).

### Pages

The **Pages** section allows you to add up to ten pages (or page groups) to your portal. Adding more than one page automatically turns on the **Show navigation bar** option in the [Navigation Bar](#navigation-bar) section.

The order of the page titles in the portal object determines the order of the page titles in the navigation bar. To reorder the pages, use the and arrows.

#### Add a page

To add a page to the portal:

1.  In the **Pages** section, click **ADD PAGE**.
2.  In the **Add Page** dialog, configure the following fields.

    | Field | Action |
    | --- | --- |
    | **Title** | Enter the page title to display in the navigation bar and browser tab. Only displays when you add more than one page. |
    | **Web Address Identifier** | Enter the unique URL identifier for the page. If left blank, a random alphanumeric string will be generated. |
    | **Icon** | Select an icon to display with the page title when the [navigation bar](#navigation-bar) uses a SIDEBAR layout. By default, the **file-o** icon is selected. |
    | **Content** | Select the interface to display on the page. You can select an existing interface or click to create a new one. |
    | **Rule Input Configuration** | If the page uses an interface object with [URL parameter-compatible rule inputs](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters), configure default values and URL behavior.See [Rule Input Configuration](#rule-input-configuration) for more information. |

3.  Click **ADD**.
4.  Reorder pages using the and arrows.

##### Rule input configuration

The interface you select for a portal page can use rule inputs of any type. However, certain [types of rule inputs](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters) can use [URL parameters](url-parameters.html#how-url-parameters-work-with-rule-inputs) to set their value. Portal pages that use these types of rule inputs will display **Has rule input configurations** under the interface name. When you edit the page, the Rule Input Configuration displays, which allows you to configure the rule inputs.

To link to portal pages using URL parameters, use [a!urlForPortal()](fnc_scripting_urlforportal.html).

For more information on using URL parameters, see [Use URL Parameters for Site and Portal Navigation](url-parameters.html).

You can configure the following fields in this section:

| Property | Description | Default |
| --- | --- | --- |
| Encrypt URL parameters | Determines whether to use encrypted or plaintext URL parameters. To help keep data secure, URL parameters are encrypted by default. See [Determine whether to encrypt url parameters](url-parameters.html#determine-whether-to-encrypt-url-parameters) for more information about when to use encrypted versus plaintext URL parameters. | Selected |
| Rule Input | The rule inputs from the selected interface. Only certain [types of rule inputs that work with URL parameters](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters) will appear. | Read only |
| Enable in URLs | This only appears when **Encrypt URL parameters** is deselected. It allows you to opt in to using only the URL parameters that are safe to display in plaintext. To help [keep your data secure](url-parameters.html#using-plaintext-url-parameters), only enable the rule inputs that you need to use with URL parameters. | Toggled off |
| URL Parameter Name | The name used when [constructing links to the page](url-parameters.html#link-to-a-page-using-url-parameters).

You can change this if you want to [rename a rule input](url-parameters.html#rename-a-rule-input) and make sure existing links don't break, or if you just want to make the name shorter or more clear. | Rule input name |
| Default Value (optional) | The value to use whenever the URL doesn't provide a value. See [Determine whether to use a default value](url-parameters.html#determine-whether-to-use-a-default-value) for more information. The evaluated default value must be 100 characters or less. Otherwise, the default value will be ignored. | Null |
| Update URL when rule input values change | [Determines whether to update the web address when rule input values change](url-parameters.html#determine-whether-to-update-the-web-address-when-rule-input-values-change). For example, on page that has filters that work with URL parameters, the URL parameters in the web address will update with the selected filter value. | Selected\* |

\*If the portal object was originally created in an environment earlier than Appian 21. 2, **Update URL when rule input values change** will be deselected by default.

#### Add a page group

Page groups allow you to group pages under a single navigation menu item. Each page group can have up to ten pages.

Before you can start adding and configuring page groups, you must add at least one page to the portal object.

To add a page group to the portal:

1.  In the **Pages** section, click **ADD PAGE GROUP**.
2.  In the **Add Page Group** dialog, configure the following fields.
3.  Click **ADD**.

    | Field | Description |
    | --- | --- |
    | **Title** | Enter a page group title to display in the navigation bar. |
    | **Web Address Identifier** | Enter the unique URL identifier for the page group that will be a part of the URL for all pages in the group. If left blank, a random alphanumeric string will be generated. |
    | **Icon** | Select an icon to display with the page group title when the [navigation bar](#navigation-bar) uses a SIDEBAR layout. By default, the **file-o** icon is selected. |

4.  In the page group card, click **Add Page** to add pages to the page group. Only Interface page types can be added to page groups.
5.  Reorder page groups or pages within the group using the and arrows.

**Note:**  To move a page into a group, delete the page and recreate it within the applicable page group.

#### Delete pages and page groups

To delete a page or page group, click the icon in the page or page group.

Deleting a page group will also delete all page configurations within that group. The interface objects themselves will not be deleted.

### Navigation Bar

This section allows you to configure the appearance and layout of the portal navigation menu.

There are two different layout options that determine the styling and positioning of your site's navigation bar:

-   **HEADER BAR**: Displays at the top of the site and offers two different style options. The navigation bar layout only applies to browsers. It doesn't affect sites in Appian Mobile.
-   **SIDEBAR**: Displays on the side of the site. Page titles display with icons.

[![images/site_sidebar_vs_headerbar.png](images/site_sidebar_vs_headerbar.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img332)

[![](images/site_sidebar_vs_headerbar.png)](#_)

You can configure the following fields in this section:

| Field | Action |
| --- | --- |
| **Show navigation bar** | Determines whether a navigation bar is displayed for single-page portals. |
| **Layout** | Select **HEADER BAR** or **SIDEBAR** to determine the position and style of the navigation bar. |
| **Background Color** | Set the background color of the navigation bar. |
| **Selected Page Highlight Color** | Set the highlight color for the selected page in the navigation bar. |
| **Logo** | Select an image with a transparent background to display as a logo in the navigation bar. |
| **Logo Alternative text** | Provide descriptive text for the logo for accessibility. We recommend updating the default value to convey the same information as the logo, such as the organization name or text used in the logo. |
| **Show portal display name in navigation bar** | Choose whether to display the **Display Name** from the [Configurations](#configurations) section in the navigation bar. |

### Branding

When you edit these configurations, the portal object's [branding preview](#branding-preview) automatically updates with your changes.

![branding_preview_configuration](images/branding_preview_configuration.gif)

To ensure you are working with the most accurate representation of your interfaces, we recommend configuring the branding in the portal object early on in your app development. This allows you to take full advantage of the interface object [Branding preview](interface_object.html#branding-preview) ![branding preview icon](images/branding-preview-icon.svg) throughout your design process. When you are editing interface objects, use this menu to select the portal object that the interface will display in and see how your branding applies while you are designing.

![branding_preview_selection](images/branding_preview_selection.gif)

For further information on configuring portal branding, see [Designing Sites and Portals](sail/ux-site-branding.html#branding).

The **Branding** section allows you to configure a consistent look and feel for your portal.

You can configure the following fields in this section:

| Field | Action | Default Value |
| --- | --- | --- |
| **Input Shape** | Set the shape for input, selection, and picker fields, as well as tooltips, on all pages in the portal (Squared or Semi-rounded). | Squared |
| **Dialog Shape** | Set the shape for all dialogs displayed in the portal (Squared, Semi-rounded, or Rounded). | Squared |
| **Button Shape** | Set the shape for all buttons in the portal (Squared, Semi-rounded, or Rounded). | Squared |
| **Use uppercase capitalization for button labels** | Choose whether to use uppercase letters for all button labels. Turn this off if you want to control capitalization for each button component. | Turned on |
| **Accent Color** | Set the primary color for buttons, links, and other key elements. Avoid grayscale colors (black, white, and gray) as the accent color, since these are similar to colors used for interface elements. Avoid green/red colors as the accent color, since these are commonly used to indicate positive/negative values. | #1d659c |
| **Loading Bar Color** | Set the color for the loading indicator. Select a loading bar color with sufficient contrast against the navigation bar color to ensure users notice it. | Accent color |
| **Favicon Image** | Upload an ICO file to be used as the browser tab icon. The file must be 16x16 or 32x32 pixels and smaller than 100 KB. | Appian "a" icon |
| **Typeface** | View the current typeface for all sites and portals in the environment. Administrators can configure the typeface in the [Admin Console](Appian_Administration_Console.html#typefaces). | Open Sans |

### Service Access

The **Service Access** section allows you to configure access to two different services:

-   The platform service via a **Service Account**.
-   The **Google reCAPTCHA** service via a connected system.

You can configure the following fields in this section:

| Field | Action |
| --- | --- |
| **Service Account** | Select the service account used to give the portal permissions to data and processes in Appian. Make sure the service account is in a group that has [access to the data, documents, and process models](portals-service-accounts.html#prodlink-portals-service-account-permissions) used in your portal, but [doesn't have access to unrelated data](portals-service-accounts.html#making-sure-your-service-account-has-access-to-the-right-data). For streamlined efficiency and convenience, you have the option to assign your service account to the relevant group(s) simultaneously while [creating your portal](portals-create.html#step-4-add-a-service-account-and-set-permissions).

Note that if your portal uses a [web API](portals-data.html#working-with-data-using-cdts), you can use the same service account for [API key authentication](Web_API_Authentication.html#api-key-authentication). See [Service Accounts in Portals](portals-service-accounts.html) for more information. |
| **Google reCAPTCHA** | Select a [reCAPTCHA connected system](google_reCAPTCHA.html) to monitor your portal for unauthorized usage. |

### Progressive Web App (PWA)

In the **Progressive Web App** section, you can configure your portal to be installable on a user's device as a progressive web app (PWA).

It is a good idea to select this if:

-   You want to give your users an easy way to access a portal that they use frequently. For example, a portal that allows users to submit repair requests.
-   You want to make sure your portal maintains consistent branding if a user decides to install the app on their device.

See the [What is a progressive web app](#what-is-a-progressive-web-app) section for more information about PWAs.

You can configure the following fields in this section:

| Field | Action |
| --- | --- |
| **Configure portal as a progressive web app** | Enables PWA functionality for the portal. |
| **App Name** | Sets the default name that displays when a user installs the app. Names can use letters, numbers, and spaces and can be up to 12 characters long, including spaces. |
| **App Icon** | Sets the icon to use when users install the portal on their device. By default, the Appian "a" icon is selected. We recommend selecting a custom icon, which you can upload as a [document](design-objects.html#document). For icon best practices and requirements, see [Designing an app icon](#designing-an-app-icon). |

#### What is a progressive web app?

A PWA is a web app that looks and behaves as if it is a native application.

PWAs allow developers to have more control over the experience end users have when they install a portal on their device. When you configure a portal as a PWA, you specify the default app name and icon that users see when they install the portal on their device.

![example of default app name and icon when installing PWA](images/portal_object_pwa_example.png)

In some browsers, when users first visit a PWA-configured portal, a prompt displays that asks them if they want to add the portal to their device.

![portal_object_pwa_prompt.png](images/portal_object_pwa_prompt.png)

Additionally, when a user opens an installed portal on their device, it gives a more app-like experience. For example, the address bar doesn't display, and it may display its own menu bar on some devices.

[![comparison of how a portal displays in a browser versus how it displays as a PWA](images/portal_object_pwa_comparison.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img333)

[![](images/portal_object_pwa_comparison.png)](#_)

#### Designing an app icon

The app icon is one of the first parts of your PWA that your users interact with. To make sure your icon looks clean and professional on all devices and displays, there are some general guidelines and requirements you should follow.

##### Icon size

To make the portal app icon work across all devices and browsers, it must be at least 512 x 512 pixels and square. However, since it may be displayed in higher resolution on some devices, we recommend icons that are 1024 x 1024 pixels. The app icon will be resized depending on where it displays.

##### Icon safe zone

App icons are maskable, meaning that the icon will fill up any shape that the device uses for icons. For example, icons may be circle, square, or teardrop shaped.

![app_icon_shape.png](images/app_icon_shape.png)

This means that the edges of your app icon may be cut off to fit a certain shape. To make sure that the important parts of your icon aren't cut off, design your app icons with a safe zone. The standard safe zone is a circle in the center of the icon with a radius that is 40% of the icon size. For more information about the safe zone and maskable icons, see this [web.dev article](https://web.dev/maskable-icon/).

![icon with and without safe zone](images/app_icon_safe_zone.png)

#### Device settings for portals published from the same environment

If a user installs multiple portals that were published from the same environment, the portals may share some of the same settings. For example, cookie preferences and permissions such as access to the device microphone and location.

For these types of settings, the user will be unable to choose different options for PWAs published from the same environment.

### Troubleshoot Tab

**Note:**  In environments that don't support [enhanced portal logs](portals-troubleshooting.html#environment-support-for-enhanced-portal-logs), the Troubleshoot tab doesn't display. Instead, a Resources section at the bottom of the portal object provides access to the [Portal Monitoring](monitoring_view.html#portal-monitoring) view and the [Portal Server Log](portals-troubleshooting.html#portal-server-log).

The Troubleshoot tab allows you to view error details and key metrics that can help you troubleshoot issues and ensure your portals are responsive, reliable, and able to handle varying levels of user demand.

The following image highlights the sections that make up the Troubleshoot tab of a portal object. For more information about how to troubleshoot portal issues using the information on the Troubleshoot tab, see [Troubleshooting a Portal](portals-troubleshooting.html).

[![a screenshot of the Troubleshoot tab in a portal object with numbers to indicate where each section is](images/portal-troubleshoot-tab-annotate.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img334)

[![](images/portal-troubleshoot-tab-annotate.png)](#_)

| # | Section | Available Actions |
| --- | --- | --- |
| 1 | Errors |
-   View an [Errors grid](portals-troubleshooting.html#portal-errors-grid) with up to 100 of the most recent errors that users have encountered on a published portal from a date range up to 90 days in the past.
-   Download the [Portal Error Log](portals-troubleshooting.html#portal-error-log) (1a) with all error messages that users have encountered on a published portal from a date range up to 90 days in the past.

 |
| 2 | Monitor Portals | Launch the [Portal Monitoring](monitoring_view.html#portal-monitoring) view (2a) in a separate tab. |
| 3 | View System Activity | Download the [Portal Server Log](portals-troubleshooting.html#portal-server-log) (3a) with system-level log entries for the microservice that runs the portal. |

### Branding Preview

The **Branding Preview** is an interactive panel that allows you to visualize the navigation and branding configurations you've chosen.

![screenshot of branding preview in site object](images/branding_preview_portal.png)

It is for visual preview only and does not allow you to test functionality. It does not:

-   Allow you to test the expressions, interface components, or functionality of the pages.
-   Display component plug-ins. A placeholder image with a plug icon displays in their place.

To see these settings applied to the portal, save and publish the portal object and click the link under [Web Address](#configurations) to open the portal.

## Security

Portals are publicly accessible, but that doesn't mean they aren't secure. You control access to your Appian data and processes using [service accounts](portals-service-accounts.html). End users will only be able to access the objects and data in your portal that you give them access to through service accounts.

Additionally, portals have both design-time and runtime security protections to keep your portal safe. [Object security](object-security.html) is configured through role maps.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a portal object's security role map:

| Actions | Administrator | Editor | Viewer |
| --- | --- | --- | --- |
| View the portal | Yes | Yes | Yes |
| View the definition | Yes | Yes | Yes |
| View the security | Yes | Yes | Yes |
| Republish the portal | Yes | Yes | No |
| Receive [email error alerts](portals-troubleshooting.html#email-error-alerts) | Yes | No | No |
| Update the security | Yes | No | No |
| Delete the portal object | Yes | No | No |

## Manage the object

This section explains how to create, edit, and delete portal objects.

### Common object options

There are a few common options available across different design objects. The following options are available in a portal object.

| Option | Available? |
| --- | --- |
| [Versioning](Managing_Object_Versions.html) | No |
| [Renaming](Renaming_Design_Objects.html) | Yes |
| [Viewing Appian Design Guidance](appian-recommendations.html) | Yes |
| Duplicating | No |
| [Viewing Performance Details](Performance_View.html) | No |
| [Object overwrite protection](Multiple_Designers_Editing_the_Same_Design_Object.html) | Yes |

To view options that are available from the toolbar in Appian Designer, see [Common View Elements](common-view-elements.html#toolbar).

### Create the object

To create a portal object:

1.  In your application, go to the [**Build** view](build-view.html).
2.  Click **NEW** > **Portal**.
3.  In the **Create Portal** dialog, configure the following properties:

| Property | Action |
| --- | --- |
| **Name** | Enter a name for the object. We recommend following the [Standard Object Names](Standard_Object_Names.html) convention. Not visible to end users. |
| **Display Name** | Enter the website name to display in the browser tab. Optionally, this name can also be displayed in the [navigation bar](#navigation-bar). Visible to end users. Follow the [recommended naming standard](Standard_Object_Names.html#user-objects) for display names. |
| **Web Address Identifier** | Enter a unique identifier that will be part of the portal's web address. Appian uses this identifier to construct the web address where published portals are available to end users. The web address identifier must be unique in the current environment and any environments that you deploy the portal object to. For more information on web address identifiers, see [Configurations](#configurations). |
| **Description** | (Optional) Enter a description for the object. |

1.  Click **CREATE**.
2.  Review the [security](#security) and update as needed, then click **SAVE**.

### Edit the object properties

To edit the portal object properties:

1.  In the **Build** view, click the name of the portal object. The object will open in a new tab.
2.  In the settings menu, click **Properties**.
3.  In the **Portal Properties** dialog, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the object. |
    | **Description** | Enter a description for the object. |

4.  Click **OK**.

### Delete the object

**Caution:**  Deleting a portal object cannot be undone. Any objects that depend on it will be broken.

To delete a portal object:

1.  In the **Build** view, select the checkbox next to the object's name.
2.  Click **DELETE** in the toolbar. System administrators can delete multiple objects at once.
3.  Review the list of dependent objects before confirming the deletion. See [Object Relationships](Trace_Relationships_for_Impact_Analysis.html) for more information about the impact of deleting objects that rely on each other.

## See also

-   [Portal Best Practices](portals-design.html): For design guidance on creating portals.
-   [Working with Data in a Portal](portals-data.html): To learn how to query and write data using a portal.
-   [Manage a Portal](portals-manage-portals.html): For information on publishing, testing, and deploying a portal.
-   [Designing Sites and Portals](sail/ux-site-branding.html): Learn best practices for creating functional and beautiful portals, including guidance on branding, color schemes, and page organization.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...