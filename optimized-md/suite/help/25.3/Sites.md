---
source_url: https://docs.appian.com/suite/help/25.3/Sites.html
original_path: Sites.html
version: "25.3"
title: "Appian Sites"
page_id: "Sites"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Sites

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Explore an Appian Site

This video from [Academy Online](https://academy.appian.com/) introduces you to the features and benefits of Appian Sites.

## Overview

With Appian Sites, you can provide your users with a customized and focused experience that allows them to quickly access the pages, tasks, and information that they need. You can [create sites](sites_object.html#create-the-object) with business-oriented pages specific to your users' roles and responsibilities.

[![images/SiteExample.png](images/SiteExample.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img347)

[![](images/SiteExample.png)](#_)

Each site can be branded to match your corporate identity and can contain up to ten pages or page groups as top-level navigation items.

## Accessing sites

Users can access sites in a few ways:

-   Directly by URL. Use [a!urlForSite()](fnc_scripting_urlforsite.html) to create links to site pages. Site pages that are of type Interface can optionally use [URL parameters](url-parameters.html).
-   Via the navigation menu in Tempo or another site. This will open the site in a new window and display the first page.
-   As a start page for users logging into Appian. To learn more about how to do this, see [User Start Pages](Appian_Administration_Console.html#user-start-pages).

## Navigation bar

The navigation bar is the main way in which users navigate a [site](sites_object.html). It allows users to easily access all pages within the site, as well as the navigation and user menus. You can configure the site navigation bar to match your use case and branding.

You can choose from two different layouts for your navigation bar: **HEADER BAR** and **SIDEBAR**.

[![images/site_sidebar_vs_headerbar.png](images/site_sidebar_vs_headerbar.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img348)

[![](images/site_sidebar_vs_headerbar.png)](#_)

The header bar layout provides two different [style](sail/ux-site-branding.html#style) options, Helium and Mercury. Each is designed for different use cases and experiences. Try out each to decide which works best for your site and users.

You can also choose from a variety of custom colors and predefined [color schemes](sail/ux-site-branding.html#color-scheme) to match your company branding. Carry your custom colors and predefined color schemes throughout your site for a cohesive and polished user experience.

For more information on configuring the navigation bar for sites, see the [site object](sites_object.html#navigation-bar) page. For design considerations, see [Designing Sites and Portals](sail/ux-site-branding.html#navigation-bar)

The navigation bar includes:

-   A. The pages and page groups that make up your site.
-   B. The navigation menu .
-   C. The user menu.
-   D. A configurable logo.
-   E. A non-configurable Appian logo.

![images/site_object_header_annotated.png](images/site_object_header_annotated.png)

The [pages](#pages) and [page groups](#page-groups) that make up the site provide the structure for how users will interact with and navigate through it. The [navigation menu](#navigation-menu) allows them to switch between different sites, as well as Tempo and the various [workspaces](common-view-elements.html#navigate-to-other-workspaces) they have access to. The [user menu](#user-menu) provides them access to their profile and user settings.

Pages and page groups added to the [site object](sites_object.html#pages) will appear in your site's navigation bar in the order in which you add them to the site object.

### Pages

Pages display and organize the content in a site. Users can navigate between site pages by clicking on the site page name in the header bar or navigating via keyboard.

![site pages](images/site_pages_using_sites.png)

A site page can be one of the following types:

-   **Action**: Displays a [start form](process-model-object.html#process-start-form-tab) for a process model that allow users to initiate a process, like submitting a new service request.
-   **Interface**: Displays an [interface object](interface_object.html). Interface type pages are the only pages that can be added to page groups or use URL parameters in [a!urlForSite()](fnc_scripting_urlforsite.html).
-   **Record List**: Displays a [record list](record-list.html) configured in a record type.
-   **Process HQ**: Displays an embedded [Process HQ](processhq.html) page. Process HQ pages are not available in [Appian Mobile](Appian_for_Mobile_Devices.html).

**Tip:**  You can use [a!urlForSite()](fnc_scripting_urlforsite.html) to link to any type of page. However, you can only use [URL parameters](url-parameters.html) with Interface page types.

### Page groups

[Page groups](sites_object.html#add-a-page-group) will also appear in your site's navigation bar. Page groups give you the ability to create a nested menu of pages that will display as dropdown menus in the navigation bar. Users can click on the icon next to the page group title to display the list of pages within the group for easy navigation. When the page group is expanded, users can click the icon to collapse it.

**Note:**  Only [**Interface** type pages](#pages) can be added to a page groups.

![images/site_page_group_dropdown.png](images/site_page_group_dropdown.png)

For best practices for organizing your pages and page groups, see [Organizing pages and page groups](sail/ux-site-branding.html#organizing-pages-and-page-groups).

### Navigation menu

Users can navigate between sites using the navigation menu which displays as a icon or the site display name, depending on [navigation bar settings](sites_object.html#navigation-bar) in the site object.

The navigation menu allows users to easily access sites, Tempo, and [workspaces](common-view-elements.html#navigate-to-other-workspaces) they have access to. You can configure the menu to appear as the site name or as an icon. If your navigation menu includes [a link to Tempo](sites_object.html#configurations), it will always display at the top of the sites. If a user only has access to one site, the navigation menu isn't shown.

**Note:**  Site display names appear in the navigation menu . If you use an expression to create a site display name, that expression will evaluate whenever sites in the environment load or refresh in order for the site display name to appear in the navigation menu. To avoid your sites loading slowly, don't use long-running expressions, like queries.

![screenshot of the navigation menu](images/SiteNavigation.png)

### User menu

The site user menu provides users easy access to their profile, their user settings, or to sign out. Selecting **PROFILE** will take the user to their user record. Selecting **SETTINGS** will open a dialog where they can update their user settings.

![/screenshot of the user menu](images/SiteUserMenu.png)

### Mobile site task list

When enabled in the [site object](sites_object.html#configurations), after a user selects the site, the Appian Mobile menu displays a Tasks list. This list displays all tasks assigned to the user.

Appian Mobile users can access any offline-enabled tasks from this list, even when they are not connected to the internet.

![mobile site task list](images/offline_mobile_task_list.png)

## Task notifications

When users with site [start pages](Appian_Administration_Console.html#user-start-pages) open a task link in a task notification, their start page will be task-specific. Once they complete the task, they'll be directed to their normal start page.

![screenshot of task specific start page](images/SiteTaskNotification.png)

### Disabling task notifications

Task notifications can be turned off for an entire environment, a specific task, or each individual user.

| Level of Effect | Who can disable | Where to disable |
| --- | --- | --- |
| The entire environment | Administrators | In the `custom.properties` file within the `<APPIAN_HOME>/conf/` [directory](Configuring_Notifications.html). |
| Just one task | Designers | In each process nodes' [assignment tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab). |
| The individual user | Users | In user settings, under [Email Notifications](Settings_Page.html#email-notifications). |

## Show objects

Often, the most intuitive way to understand or debug a site as a developer is to test it out as a user. The good news is: you can navigate directly from a site to the objects that power it in just a couple of clicks.

We recommend using this feature when:

-   You're new to an application and trying to understand the relationships between what end users see and the underlying design objects.
-   You're building or debugging a site and want quick access to the objects you're working with.

For users in the [Designers system group](User_Roles.html#designer-role), the **Show Objects** button is present when you view pages on the site. To show the objects underlying the pages, click this button. Learn more about [which underlying objects this feature shows](#viewable-objects).

Then, once the objects are showing, hover over an object until pink highlighting appears around it.

![SiteShowObjects](images/SiteShowObjects.png)

A label appears as part of the highlighting, which displays the object name. For example, in the image above, the highlight label reads **CM\_topCaseResolvers\_section**.

In some instances, you may see **Not Visible** as an object label. This label means that you do not have sufficient [permissions](object-security.html) to view the object. For example, you might be viewing an interface which calls an expression rule object that you do not have at least **Viewer** permissions to.

To go directly from a site to the site object:

1.  In the lower corner of the page, click the **Show Objects** button.
2.  In the upper corner of the page, click **Open Site Object**

    The site object opens in Appian Designer in a new window or tab, ready to view or edit depending on your [permissions level](object-security.html) for the site object.

To go directly from the site to any other object:

1.  In the lower corner of the page, click the **Show Objects** button.
2.  Hover over the object until it is highlighted in pink, then click the object. The object will then be highlighted in blue.
3.  Click the down arrow next to the object label.
4.  Select an option:

    -   In all page types, select **Open**.
    -   In action pages, select **Open Process Model** to open the process model, instead of the start form interface.
    -   In report pages, select **Open Report** to open the report object, instead of the report interface.

    The selected object opens in Appian Designer in a new window or tab, ready to view or edit depending on your [permissions level](object-security.html) for that object.

**Tip:**  Use **Ctrl+Click** or **Cmd+Click** on the highlight label to open the object with fewer clicks.

### Viewable objects

You can see the site object from any site page. Depending on the page type, you can also see the following objects:

|
Page Type

 |

Objects Shown

 |
| --- | --- |
|

Actions

 |

The [start form interface](process-model-object.html#process-start-form-tab) called by the process model, and any [user input tasks](Configuring_the_User_Input_Task.html) that are activity-chained.

 |
|

Interfaces

 |

The parent interface and any child interfaces or expression rules.

 |
|

Record types

 |

For record lists, the record type that backs the list. For record views, the record type that backs the view and the interfaces that power the individual record views.

**Note:** You cannot directly access the interfaces of [record actions](record-actions.html) if the action is configured to open in a dialog. You can directly access the interfaces of record actions configured to open in the same tab or in a new browser tab.

 |
|

Reports

 |

The report and the interface called by the report.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...