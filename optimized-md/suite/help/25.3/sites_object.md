---
source_url: https://docs.appian.com/suite/help/25.3/sites_object.html
original_path: sites_object.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Site Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to build an Appian Site

This video from [Academy Online](https://academy.appian.com/) walks you through basic steps of building an Appian Site.

This page provides detailed information on how to configure and manage a site object.

## What is a site object?

A site is a custom, well-tailored web app that provides users with quick access to the pages, tasks, and information that they need. A site object allows you to define and customize the settings and content for your site. This includes defining interfaces to use for pages and customizing the site's navigation bar and branding. The site object makes it easy to both build and troubleshoot a site in one place.

A site object can be referenced in other objects. To learn more about this concept, see [Referencing Objects in Expressions](reference-objects.html).

## When to use this object

Use a site when you need to:

-   Create a custom, branded experience for your users.
-   Provide quick and focused access to specific pages, tasks, and information.
-   Build dynamic dashboards, landing pages, or other custom navigation experiences.

To create a public web app that users can access without signing in to Appian, create a [portal object](portal-object.html) instead.

## Elements of this object

A site object contains the following elements:

[![site-object-annotated.png](images/site-object-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img349)

[![](images/site-object-annotated.png)](#_)

| # | Section | Available Actions |
| --- | --- | --- |
| 1 | **Build tab** | Configure the basic elements of your site object. |
| 2 | [Troubleshoot tab](#troubleshoot-tab) | View error details to help debug issues with the site. |
| 3 | Customization settings |
-   [Configurations](#configurations): Modify the primary site settings that determine how users experience the site.
-   [Pages](#pages): Add, remove, modify, and organize the pages and page groups displayed in the navigation bar.
-   [Navigation Bar](#navigation-bar): Configure the layout, style, and branding of the navigation bar.
-   [Branding](#branding): Define the look and feel of the site, including colors, shapes, and logos.

 |
| 4 | [Branding Preview](#branding-preview) | View what the navigation bar and branding configurations will look like. |

### Configurations

**Note:**  If you use an expression to create a display name, that expression will evaluate whenever sites in the environment that the user has access to load or refresh. To avoid your sites loading slowly, don't use long-running expressions, like queries.

This section allows you to modify the primary site configurations that determine how users experience the site.

![Site Configurations](images/sites_configurations.png)

You can configure the following fields in this section:

| Field | Action |
| --- | --- |
| **Display Name** | Enter the name to display in the site navigation menu and browser tab. Can be a static value or a dynamic expression that evaluates to a string. |
| **Web Address** | Click **Edit** to edit the **Web Address Identifier** used to construct the site's URL. The web address identifier appears in the URL and in log files. |
| **Show Tempo link in Navigation Menu** | Select whether to always show, never show, or conditionally show the Tempo link in the navigation menu when the user is on the site. |
| **Show Record News** | Choose whether to show the News view. When enabled, all records displayed in the site will include the News view. In addition, the latest news will be displayed on the summary view when viewing user records. |
| **Show Task List on Mobile** | Select whether to always show, never show, or conditionally show the mobile site task list in the Appian Mobile app.

When enabled, after a user selects the site, the Appian Mobile menu displays a Tasks list which shows all tasks assigned to the user.

Appian Mobile users can access offline-enabled tasks from this list, even when they are not connected to the internet. |

### Pages

This section allows you to build the structure of your site by adding and organizing pages and page groups. A site can contain up to ten top-level [pages](#add-a-page) or [page groups](#add-a-page-group).

For more information on organizing top-level navigation items for the best user experience, see [Designing Sites and Portals: Organizing pages and page groups](sail/ux-site-branding.html#organizing-pages-and-page-groups) and [Mobile Considerations](sail/ux-mobile-considerations.html#site-pages) for guidance about mobile-first sites.

![Site Pages Configuration](images/site-diagram-empty-state.png)

#### Page types

A site page can be one of the following types:

-   **Action**: Displays a [start form](process-model-object.html#process-start-form-tab) for a process model that allow users to initiate a process, like submitting a new service request.
-   **Interface**: Displays an [interface object](interface_object.html). Interface type pages are the only pages that can be added to page groups or use URL parameters in [a!urlForSite()](fnc_scripting_urlforsite.html).
-   **Record List**: Displays a [record list](record-list.html) configured in a record type.
-   **Process HQ**: Displays an embedded [Process HQ](processhq.html) page. Process HQ pages are not available in [Appian Mobile](Appian_for_Mobile_Devices.html).

**Tip:**  You can use [a!urlForSite()](fnc_scripting_urlforsite.html) to link to any type of page. However, you can only use [URL parameters](url-parameters.html) with Interface page types.

#### Add a page

To add a page to the site:

1.  In the **Pages** section, click **ADD PAGE**.
2.  In the **Add Page** dialog, configure the following fields.

    | Field | Action |
    | --- | --- |
    | **Title** | Enter the page title to display in the navigation bar and browser tab. The title can be configured as a static string or as an expression that evaluates to a string. |
    | **Web Address Identifier** | Enter the unique URL identifier for the page. If left blank, a random alphanumeric string will be generated. |
    | **Icon** | Select an icon to display with the page title in the [navigation bar](#navigation-bar). When using Mercury style for the header bar, the icon won't display in web browsers, but will always display in Appian Mobile. By default, the **file-o** icon is selected. |
    | **Type** | Select the type of content for the page (**Action**, **Interface**, **Record List**, or **Process HQ**). See [Page types](#page-types) for more information. |
    | **Content** | Select the specific design object to display on the page based on the selected **Type**. For Interface page types, you can create a new interface object by clicking . |
    | **Rule Input Configuration** | If the page uses an interface object with [URL parameter-compatible rule inputs](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters), configure default values and URL behavior.See [Rule Input Configuration](#rule-input-configuration) for more information. |
    | **Appearance** | For Process HQ pages, specifies the page theme and whether to use the site's [branding configurations](#branding). |
    | **Width** | Select the width of the content area for the page (**Narrow**, **Medium**, **Wide**, or **Full**). |
    | **Visibility** | Set the page to be always visible or conditionally visible based on an expression. If **Only show when** is selected, the page is only visible when the entered expression evaluates to true. Otherwise the page is hidden. See [visibility](#page-and-page-group-visibility) for more information. |

3.  Click **ADD**.
4.  Reorder pages using the and arrows.

##### Rule input configuration

When you set up your site page and select **Interface** for the page **Type**, the interface you select can use rule inputs of any type. However, certain [types of rule inputs](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters) can use [URL parameters](url-parameters.html#how-url-parameters-work-with-rule-inputs) to set their value. Site pages that use these types of rule inputs will display **Has rule input configurations** under the interface name. When you edit the page, the Rule Input Configuration displays, which allows you to configure the rule inputs.

To link to site pages using URL parameters, use [a!urlForSite()](fnc_scripting_urlforsite.html).

For more information on using URL parameters, see [Use URL Parameters for Site and Portal Navigation](url-parameters.html).

You can configure the following fields in this section:

| Property | Description | Default |
| --- | --- | --- |
| **Encrypt URL parameters** | Determines whether to use encrypted or plaintext URL parameters. To help keep data secure, URL parameters are encrypted by default. See [Determine whether to encrypt url parameters](url-parameters.html#determine-whether-to-encrypt-url-parameters) for more information about when to use encrypted versus plaintext URL parameters. | Selected |
| **Rule Input** | The rule inputs from the selected interface. Only certain [types of rule inputs that work with URL parameters](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters) will appear. | Read only |
| **Enable in URLs** | This only appears when **Encrypt URL parameters** is deselected. It allows you to opt in to using only the URL parameters that are safe to display in plaintext. To help [keep your data secure](url-parameters.html#using-plaintext-url-parameters), only enable the rule inputs that you need to use with URL parameters. | Toggled off |
| **URL Parameter Name** | The name used when [constructing links to the page](url-parameters.html#link-to-a-page-using-url-parameters).

You can change this if you want to [rename a rule input](url-parameters.html#rename-a-rule-input) and make sure existing links don't break, or if you just want to make the name shorter or more clear. | Rule input name |
| **Default Value (optional)** | The value to use whenever the URL doesn't provide a value. See [Determine whether to use a default value](url-parameters.html#determine-whether-to-use-a-default-value) for more information. The evaluated default value must be 100 characters or less. Otherwise, the default value will be ignored. | Null |
| **Update URL when rule input values change** | [Determines whether to update the web address when rule input values change](url-parameters.html#determine-whether-to-update-the-web-address-when-rule-input-values-change). For example, on page that has [filters that work with URL parameters](url-parameters.html#example-setting-up-a-filter-to-work-with-url-parameters), the URL parameters in the web address will update with the selected filter value. | Selected\* |

\*If the site object was originally created in an environment earlier than Appian 24.2, **Update URL when rule input values change** will be deselected by default.

#### Add a page group

[Page groups](Sites.html#page-groups) allow you to group pages under a single navigation menu item. Each page group can have up to ten pages.

Before you can start adding and configuring page groups, you must [add at least one page](#add-a-page) to the site object.

To add a page group to the site:

1.  In the **Pages** section, click **ADD PAGE GROUP**.
2.  In the **Add Page Group** dialog, configure the following fields.

    | Field | Description |
    | --- | --- |
    | **Title** | Enter the page group title to display in the navigation bar. The title can be configured as a static string or as an expression that evaluates to a string. |
    | **Web Address Identifier** | Enter the unique URL identifier for the page group that will be a part of the URL for all pages in the group. If left blank, a random alphanumeric string will be generated. |
    | **Icon** | Select an icon to display with the page group title in the [navigation bar](#navigation-bar). When using Mercury style for the header bar, the icon won't display in web browsers, but will always display in Appian Mobile. By default, the **file-o** icon is selected. |
    | **Visibility** | Set the page group to be always visible or conditionally visible based on an expression. If **Only show when** is selected, the page group is only visible when the entered expression evaluates to true. Otherwise the page group and all pages in it are hidden. See [visibility](#page-and-page-group-visibility) for more information. |

3.  Click **ADD**.
4.  In the page group card, click **Add Page** to add pages to the page group. Only Interface page types can be added to page groups.
5.  Reorder page groups or pages within the group using the and arrows.

**Note:**  To move a page into a group, delete the page and recreate it within the applicable page group.

#### Delete pages and page groups

To delete a page or page group, click the icon in the page or page group.

Deleting a page group will also delete all page configurations within that group. The interface objects themselves will not be deleted.

![images/site_object_delete.png](images/site_object_delete.png)

#### Page and page group visibility

**Note:**  If you configure visibility to show or hide a page or page group, the visibility expression will evaluate whenever site loads or refreshes. To avoid your sites loading slowly, don't use long-running expressions, like queries.

The icon displays to the right of the page or page group title if the **Visibility** option is set to **Only show when**.

Page group visibility settings take precedence over any visibility settings for pages in that group. This means if a user does not have access to the page group, they will not be able to see any pages in that group even if they have access to the individual pages themselves.

![images/site_object_page_visibility.png](images/site_object_page_visibility.png)

#### Page hierarchy diagram

Once you've added at least one page to your site, you can view the page hierarchy diagram by clicking the sitemap icon in the Pages section. This diagram is a visual representation of what powers your site and its pages, with each related object appearing as a node. For site pages that use a process model or a report, the diagram also shows the interface behind the corresponding start form or report. Double-click an object in the diagram to open it.

[![images/site_object_hierarchy_groups.png](images/site_object_hierarchy_groups.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img350)

[![](images/site_object_hierarchy_groups.png)](#_)

### Navigation Bar

This section allows you to configure the appearance and layout of the site navigation menu.

There are two different layout options that determine the styling and positioning of your site's navigation bar:

-   **HEADER BAR**: Displays at the top of the site and offers two different style options.
-   **SIDEBAR**: Displays on the side of the site. Page titles display with icons.

[![images/site_sidebar_vs_headerbar.png](images/site_sidebar_vs_headerbar.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img351)

[![](images/site_sidebar_vs_headerbar.png)](#_)

For information on making design choices for your navigation bar, see [Designing Sites and Portals](sail/ux-site-branding.html#navigation-bar).

You can configure the following fields in this section:

| Field | Description | Default | More Info |
| --- | --- | --- | --- |
| Layout | Select **\>HEADER BAR** or **SIDEBAR** to determine the position and style of the navigation bar. | HEADER BAR | The navigation bar layout only applies to browsers. It doesn't affect sites in Appian Mobile. |
| Style | If the header bar layout is selected, you can choose between two different styles. The style determines if icons are displayed with page titles, which side the logo is on, and the style of the Selected Page Highlight Color. There are two [styles](sail/ux-site-branding.html#style):

-   The **Helium** style displays the logo on the right and icons with the page titles. The selected page is underlined with the Selected Page Highlight Color.
-   The **Mercury** style displays the logo on the left and no icons with the page titles. If a site has only one page, this style won't display a page title. The background of the selected page changes to the Selected Page Highlight Color.

 | Helium | The header bar style only applies to browsers. It doesn't affect sites in Appian Mobile. |
| Background Color | Set the background color for the navigation bar using a hex code or expression.

Click **TRY A DARK COLOR SCHEME** to select a dark theme for your site and view the steps to apply it to your interfaces. See [Using predefined dark color schemes](#using-predefined-dark-color-schemes) for more information. | **#46708c** | For browsers, this is the background color of the navigation bar. For mobile, this is the color of the top and bottom navigation bars. |
| Selected Page Highlight Color | Set the color used to indicate the currently active page. | **#083d5c** | For header bars with Helium style, this is the underline color of the selected page. For Appian Mobile, sidebars, and header bars with Mercury style, this is the background color of the selected page. |
| Logo | Upload a JPG, PNG, BMP, JPEG, or GIF to display as the logo in the navigation bar. The file must have a transparent background and be less than 100 KB. | Appian logo | For header bars, the placement of the logo depends on the style:

-   **Helium style**: Right side of the header bar.
-   **Mercury style**: Left side of the header bar.

 |
| Logo Alternative Text | Enter descriptive text for the logo to be read by screen readers. The alternative text can be set by a logo, web address, or expression. To use either a document or web address, select **Static**. | `Logo` | You should update the default value to something that conveys the same information as the logo, such as the company or entity name or any text used in the logo. See [Configuring logo and favicon images](#configuring-logo-and-favicon-images) for more information. |
| Show site display name in navigation bar | Choose whether to show the site's display name in the navigation bar. | Turned off | This determines whether or not the [Display Name](#configurations) of the site displays in the navigation bar. The behavior of this option depends on the selected navigation bar layout:

-   For a header bar, this determines whether the [navigation menu](Sites.html#navigation-menu) displays as the [Display Name](#configurations) of the site, or the icon.
-   For a sidebar, this determines if the site display name appears above the list of site pages. The navigation menu always displays as the icon in a sidebar layout.

This setting only affects web browsers, not Appian Mobile. |

### Branding

This section allows you to define a consistent visual style across your site.

When you edit these configurations, the site object's [branding preview](#branding-preview) automatically updates with your changes.

![branding_preview_configuration](images/branding_preview_configuration.gif)

To ensure you are working with the most accurate representation of your interfaces, we recommend configuring the branding for your site early on in your app development. This allows you to take full advantage of the interface object [Branding preview](interface_object.html#branding-preview) ![branding preview icon](images/branding-preview-icon.svg) throughout your design process. When you are editing interface objects, use this menu to select the site that the interface will display in and see how your branding applies while you are designing.

![branding_preview_selection](images/branding_preview_selection.gif)

For further information on configuring site branding, see [Designing Sites and Portals](sail/ux-site-branding.html#branding).

You can configure the following fields in this section:

| Field | Action | Default Value |
| --- | --- | --- |
| **Input Shape** | Set the shape for input, selection, and picker fields, as well as tooltips, on all pages in the site (Squared or Semi-rounded). | Squared |
| **Dialog Shape** | Set the shape for all dialogs displayed in the portal (Squared, Semi-rounded, or Rounded). | Squared |
| **Button Shape** | Set the shape for all buttons in the site (Squared, Semi-rounded, or Rounded). | Squared |
| **Use uppercase capitalization for button labels** | Choose whether to use uppercase letters for all button labels. Turn this off if you want to control capitalization for each button component. | Turned on |
| **Accent Color** | Set the primary color for buttons, links, and other key elements. Avoid grayscale colors (black, white, and gray) as the accent color, since these are similar to colors used for interface elements. Avoid green/red colors as the accent color, since these are commonly used to indicate positive/negative values. See [Configuring colors](#configuring-colors) for more information. | #1d659c |
| **Loading Bar Color** | Set the color for the loading indicator. Select a loading bar color with sufficient contrast against the navigation bar color to ensure users notice it. If using a sidebar layout, select a color with sufficient contrast against the page background color used for site pages. See [Configuring colors](#configuring-colors) for more information. | Accent color |
| **Favicon Image** | Upload an ICO file to be used as the browser tab icon. The file must be 16x16 or 32x32 pixels and smaller than 100 KB. See [Configuring logo and favicon images](#configuring-logo-and-favicon-images) for more information. | Appian "a" icon |
| **Typeface** | View the current typeface for all sites and portals in the environment. Administrators can configure the typeface in the [Admin Console](Appian_Administration_Console.html#typefaces). | Open Sans |

#### Configuring colors

Each color field has three color configuration options to choose from:

-   **Default**: The default color depends on your field.
-   **Hex Code**: Select this option to define a hex code, or choose a color using the color picker.
-   **Expression**: Select this option to dynamically set a color defined by an expression.
    -   If an expression's output is an invalid hex code, the field will show the default color.

If you select a predefined dark color scheme, the values for the navigation bar color, selected highlight color, accent color, and loading bar color are all provided for you.

For more information on sites color schemes and color configurations, see the [site color scheme design guidance](sail/ux-site-branding.html#color-scheme).

#### Configuring logo and favicon images

The logo and favicon fields have four configuration options to choose from:

-   **Default**: Select this to use the Appian logo.
-   **Document**: Select this to use an image that is stored as an Appian [document](design-objects.html#document).
-   **Web Address**: Select this to use a static image hosted on a web server or a content delivery network.
-   **Expression**: Select this to dynamically display an image defined by an expression. The expression must point to a document, output a document ID (integer), or output a text value (web address). If an expression's output is invalid, the default image will display.

### Branding preview

The **Branding Preview** is an interactive panel that allows you to visualize the navigation and branding configurations you've chosen.

![screenshot of branding preview in site object](images/branding_preview.png)

It is for visual preview only and does not allow you to test functionality. It does not:

-   Allow you to test the expressions, interface components, or functionality of the pages.
-   Display component plug-ins. A placeholder image with a plug icon displays in their place.
-   Reflect how the site will appear in Appian Mobile.

To see these settings applied to the site, save the site object and click the link under [Web Address](#configurations) to open the site.

### Troubleshoot tab

This tab allows you to view error details to help troubleshoot issues and ensure your sites are reliable. It displays up to 100 of the most recent error messages encountered by users on the site from the last 90 days.

To view more than 100 errors for a selected date range, or to search, sort, and filter them, download the site error log above the grid. This error log can display errors from the last 90 days.

[![a screenshot of the Troubleshoot tab in a site object](images/site-troubleshoot-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img352)

[![](images/site-troubleshoot-tab.png)](#_)

## Monitoring sites

### Site usage and metrics

You can monitor your site by checking out site usage and metrics in your environment's logs.

Site usage is logged in `<APPIAN_HOME>/logs/audit/sites_usage.csv`. See [Sites Usage Audit](Logging.html#sites-usage) for details.

Sites metrics are logged in `<APPIAN_HOME>/logs/data-metrics/sites.csv`. See [Sites Metrics Log](Logging.html#sites-metrics-log) for details.

### Email error alerts

When users encounter errors in a site, email alerts will be automatically sent to administrators of the site object with details about the error. Click the page name to go to the site page where the user encountered the error.

Only one email will be sent per error message every hour and it is limited to 500 recipients. To see all the instances of an error, check the [Troubleshoot tab](#troubleshoot-tab) in the site object or the [design error log](Logging.html#design-error-log).

In order to access the system logs or the site object, you must be assigned to the [Designer user role](User_Roles.html#designer-role), which gives access to Appian Designer.

To receive email error alerts for a site, make sure:

-   [Outbound emails](Appian_Administration_Console.html#outbound-email-toggle) are turned on for the environment.
-   You have **Administrator** permissions to the site object in that environment.

## Security

[Object security](object-security.html) is configured through role maps. By default, only the creator has access.

The following table outlines the actions that can be completed for each [permission level](https://docs.appian.com/suite/help/25.2/object-security.html#permission-levels-in-role-maps) in a site's security role map:

| Actions | Administrator | Editor | Viewer |
| --- | --- | --- | --- |
| View the site | Yes | Yes | Yes |
| View the definition | Yes | Yes | Yes |
| View the security | Yes | Yes | Yes |
| Update the definition | Yes | Yes | No |
| Receive [email error alerts](#email-error-alerts) | Yes | No | No |
| Update the security | Yes | No | No |
| Delete the site | Yes | No | No |

System administrators can always access a site object, regardless of object-level permissions.

To access a site, a user must have at least **Viewer** permissions to the site object. To view a specific page, a user must also have:

-   [Visibility](object-security.html#visibility) to the site page.
-   At least **Viewer** permissions to the object used for the page content, such as the interface or record type.

Additionally, if your site has a [Process HQ](processhq.html) page, users will need access to [data fabric insights](allow-users-to-build-reports.html).

To access data fabric insights, users need to be members of the [**Data Fabric Report Creators**](System_Groups.html#data-fabric-report-creators) system group. The **Process HQ Users** system group inherits members from the **Data Fabric Report Creators** system group, so report creators will automatically have access to the Process HQ workspace.

For more information, see [Secure Data for Data Fabric Insights](secure-records-for-reporting.html).

## Considerations for configuring sites

This section provides you with guidance and tips to keep in mind while you're creating and configuring your site.

See [Designing Sites and Portals](sail/ux-site-branding.html) for design guidelines you should follow to give your users the best user experience.

### Interfaces as sites pages

Use interfaces as sites pages to create dynamic dashboards, landing pages, and custom navigation experiences for your users. For design examples and inspiration, check out our complete list of [drag and drop patterns](SAIL_Pallet_Patterns.html) to help you craft an efficient and engaging user experience.

Only pages of type Interface can be added to page groups or use URL parameters in [a!urlForSite()](fnc_scripting_urlforsite.html).

### Records and actions as sites pages

Configuring sites to show record news can help improve the collaboration around records. Users can collaborate on existing record news entries in sites, but not create new entries. However, records can be designed to include related actions that can generate new record entries via process.

### Typefaces

You can configure a custom typeface in the [Admin Console](Appian_Administration_Console.html#typefaces). Typefaces are universally applied to all sites and portals in the environment.

See [Custom Typefaces](configuring_site_typefaces.html) for more information.

### Using predefined dark color schemes

-   The predefined [dark color schemes](Sites_Color_Schemes.html#dark-color-schemes-details) for sites include predefined colors for the navigation bar and selected highlight color.
-   When you select one of the predefined dark color schemes for your site, make sure that all of your site pages are using the same color scheme. To do this:
    -   In the interface for your site page, use a [header content layouts](Header_Layout.html) with the _backgroundColor_ parameter set to the same color scheme used for your site: Charcoal, Navy, Plum.
    -   Then, put the page's contents into [card layout](card_layout.html) with the _style_ parameter of each card layout set to the same color scheme used for your site.
-   Do not use dark color scheme pages and non-dark color scheme pages together in a site. If all pages in your site don't work well with the predefined dark color schemes, you can create your own custom color scheme for your [site](sail/ux-site-branding.html#color-scheme) and [interfaces](sail/ux-header-content-layout.html#use-a-custom-background-color-to-match-company-branding).
-   Dark color schemes shouldn't be applied to pages used on Tempo or across multiple sites with different color schemes. Dark color schemes also do not work with the News and Related Actions tabs on records, record lists, and record related actions. If your site requires any of these, we recommend using the default white background across all site pages.

### Components that aren't affected by input shape rounding

[Input shape rounding](sail/ux-site-branding.html#input-shape) is not applied to the following UI elements:

-   Layouts
-   Display fields
-   Actions
-   Grids
-   Charts
-   Browsers
-   Record banners

### Using site display names in URLs and navigation menus

After you've created a site, the web address identifier (URL) won't automatically update if you edit the site display name or define it using an expression.

Site display names appear in the navigation menu. If you use an expression to create a site display name, that expression will evaluate whenever sites in the environment load or refresh in order for the site display name to appear in the navigation menu. To avoid your sites loading slowly, don't use long-running expressions, like queries.

## Manage the object

This section explains how to create, edit, and delete site objects.

### Common object options

There are a few common options available across different design objects. The following options are available in a site object.

| Option | Available? |
| --- | --- |
| [Versioning](Managing_Object_Versions.html) | No |
| [Renaming](Renaming_Design_Objects.html) | Yes |
| [Viewing Appian design guidance](appian-recommendations.html) | Yes |
| Duplicating | No |
| [Viewing performance details](Performance_View.html) | No |
| [Object overwrite protection](Multiple_Designers_Editing_the_Same_Design_Object.html) | Yes |

To view options that are available from the toolbar in Appian Designer, see [Common View Elements](common-view-elements.html#toolbar).

### Create the object

To create a site object:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Site**.
3.  In the **Create Site** dialog, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the object. We recommend following the [Standard Object Names](Standard_Object_Names.html) convention. Not visible to end users. |
    | **Display Name** | Enter a name that will be displayed in the navigation bar and the browser tab. Visible to end users. Follow the [recommended naming standard](Standard_Object_Names.html#user-objects) for display names. |
    | **Web Address Identifier** | Specify a unique web address identifier to use in the site URL. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property you entered, but you can modify the identifier as needed. |
    | **Description** | (Optional) Enter a description for the object. |

4.  Click **CREATE**.
5.  Review the [security](#security) and update as needed, then click **SAVE**.

### Edit the object properties

To edit the site object properties:

1.  In the **Build** view, click the name of the site object. The object will open in a new tab.
2.  In the settings menu, click **Properties**.
3.  In the **Site Properties** dialog, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the object. |
    | **Description** | Enter a description for the object. |

4.  Click **OK**.

### Delete the object

**Caution:**  Deleting a site object cannot be undone. Any objects that depend on it will be broken.

To delete a site object:

1.  In the **Build** view, select the checkbox next to the object's name.
2.  Click **DELETE** in the toolbar. System administrators can delete multiple objects at once.
3.  Review the list of dependent objects before confirming the deletion. See [Object Relationships](Trace_Relationships_for_Impact_Analysis.html) for more information about the impact of deleting objects that rely on each other.

## See also

-   [Designing Sites and Portals](sail/ux-site-branding.html): Learn best practices for creating functional and beautiful sites, including guidance on branding, color schemes, and page organization.
-   [Using Sites](Sites.html): Read about the end-user experience of navigating and interacting with a site.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...