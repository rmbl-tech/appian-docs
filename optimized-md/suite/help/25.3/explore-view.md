---
source_url: https://docs.appian.com/suite/help/25.3/explore-view.html
original_path: explore-view.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Explore View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Welcome to the Explore View

This video from [Academy Online](https://academy.appian.com/) introduces you to the features and tools you'll find in the **Explore** view.

## Overview

This page covers what you can do in the **Explore** view in an application.

To access this view, click **Explore** in the [navigation pane](common-view-elements.html#navigation-pane) of an application.

The first time you open an application, you'll see the **Explore** view by default. Each time you open the application after that, Appian Designer displays either the **Explore** view or the [**Build** view](build-view.html), depending on which of those views you've most recently accessed.

## Purpose

The **Explore** view in Appian Designer gives you immediate insights into the structure of your application, its packages, and supporting documentation. As you build out your application, this dynamic view will always reflect your application’s latest state and design.

For developers who are new to Appian Designer, this view suggests [starting points](#view-the-application-structure) to get you started faster.

For experienced developers, this view can accelerate onboarding across your team. Developers can ramp up quickly on existing applications using this structural overview and the convenient access to supporting documentation. You'll spend less time on knowledge handoff and more time on what you really care about—building applications.

## Elements

The following image highlights the elements that make up this view:

[![screenshot of the Explore view of an application](images/explore-view-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img253)

[![](images/explore-view-annotated.png)](#_)

|
#

 |

Element

 |

Available Actions

 |
| --- | --- | --- |
|

1

 |

Header bar

 |

Learn more about the [header bar](common-view-elements.html#header-bar).

 |
|

2

 |

Navigation pane

 |

Learn more about the [navigation pane](common-view-elements.html#navigation-pane).

 |
|

3

 |

**Explore your application** pane

 |

Jump to all the application's objects in the [Build view](build-view.html), or refresh the current high-level view.

 |
|

4

 |

Application structure pane

 |

-   [View the application structure](#view-the-application-structure).
-   [View related objects](#view-related-objects).

 |
|

5

 |

Application information pane

 |

At the top of this pane, you'll see the description of your application as configured in the [application properties](application-settings.html#application-properties).

In addition, you can perform the following actions in this pane:

-   [Create and view packages](#create-and-view-packages).
-   [View any import customization files (ICF) included with packages](prepare-deployment-packages.html#add-icf).
-   [View groups referenced in the application](#view-groups).
-   [View the Security Summary](#view-the-security-summary).
-   [View and manage supporting documentation for the application](#view-and-manage-documentation).

 |

## Core objects

Appian has identified the following objects as core to most applications:

-   [sites](sites_object.html)
-   [portals](portals-home.html)
-   [record types](Create_a_Record_Type.html)
-   [process models](process_modeling.html)
-   [connected systems](Connected_System_Object.html)
-   [web APIs](Web_APIs.html)

The **Explore** view focuses on these core objects, so the content of the view varies depending on your creation of these objects. For example, your application might also include interfaces and expression rules, but in this view you'll see those objects only as they relate to the core objects.

## View the application structure

In this pane, what you see for an existing application will be different from what you see for a newly created app.

If you're just getting started, the application pane is overlaid with a dialog. This dialog displays objects that Appian recommends as starting points for an app:

![screenshot of the Explore view](images/explore-view-empty_23_2.png)

| Get Started With | Action |
| --- | --- |
| Modeling the data that will support your app | Click **New Record Type** to create a [record type](Create_a_Record_Type.html). Data is the heart of every application, so this object is the most common starting point. |
| Translating your analysis of business workflows into automated processes | Click **New Process Model** to create a [process model](process-model-object.html#creating-a-process-model). Typically, business analysts start with this object. |
| Focusing on the end-user experience | Click **New Site or Portal** to create a [site](sites_object.html#create-the-object) or [portal](portals-home.html). User experience designers tend to start with these objects. |

If you close this dialog without creating any of the recommended objects, an empty version of the the application pane displays.

The application structure pane consists of sections for each [core object](#core-objects). For an example, see the [Elements](#elements) section of this page.

Each section contains object cards based on [criteria specific to that section](#section-criteria). You can take a [number of actions](#available-actions) on these cards to view information and investigate object relationships.

#### Section criteria

The objects displayed in the sections of the **Explore** view change based on the following criteria:

| Section | Cards |
| --- | --- |
| **Sites and Portals** | The first five sites and portals configured for the application. The cards are listed alphabetically by site or portal name. |
| **Record Types** | The top record types in this application, ranked by number of [record views](record-view.html), [record actions](record-actions.html), and unique [record relationships](record-type-relationships.html). |
| **Process Models** | The top process models in this application, ranked by number of [dependents](Trace_Relationships_for_Impact_Analysis.html), with heaviest weight applied to site and record type dependents. |
| **Connected Systems** | The top connected systems in this application, with [data source systems](data-source-connected-systems.html) listed first, and [HTTP](http-connected-system.html) and [Open API systems](openapi-connected-system.html) ordered by number of dependent integrations. |
| **Web APIs** | The first ten web APIs in this application, listed alphabetically. |

#### Informational icons

For all object cards except sites, you can determine certain object attributes at a glance with the following icons:

|
Icon

 |

Description

 |
| --- | --- |
|

**Portals**

 |
|

![generates document icon](images/globe.png)

 |

The portal is published.

 |
|

**Record types**

 |
|

![data sync enabled icon](images/metadata_synced-record.png)

 |

[Data sync](about-data-sync.html) is enabled for the record type.

 |
|

![database data source icon](images/metadata_database.png)

 |

The data source for the record type is a [database](configure-record-data-source.html#connect-to-a-database).

 |
|

![Salesforce data source icon](images/metadata_salesforce.png)

 |

The data source for the record type is a [Salesforce connected system](configure-record-data-source.html#salesforce-object
).

 |
|

![web service data source icon](images/metadata_web-service.png)

 |

The data source for the record type is a [web service](configure-record-data-source.html#prodlink-web-service).

 |
|

![process model data source icon](images/metadata_process-backed.png)

 |

The data source for the record type is a [process model](configure-record-data-source.html#connect-to-a-process-model).

 |
|

![web service data source icon](images/metadata_web-service.png)

 |

This [legacy record type](update-a-record-type.html) uses a web service data source.

 |
|

**Process models**

 |
|

![human task icon](images/metadata_user-input-task.png)

 |

The process model includes a [start form](process-model-object.html#process-start-form-tab) or an [user input task](Process_Node_and_Smart_Service_Properties.html#assignment-tab).

 |
|

![document task icon](images/metadata-idp.png)

 |

The process model includes the [Start Doc Extraction](Start_Doc_Extraction_Smart_Service.html) or [Reconcile Doc Extraction](Reconcile_Doc_Extraction_Smart_Service.html) smart service.

 |
|

![robotic task icon](images/metadata_rpa.png)

 |

The process model includes an [Execute Robotic Task](Execute_Robotic_Task.html) smart service.

 |
|

**Connected systems**

 |
|

various

 |

The icon for the [system](Connected_System_Object.html#connected-system-types) your application is connecting to.

 |
|

**Web APIs**

 |
|

method

 |

The HTTP method that the web API uses (for example, **GET**).

 |
|

![generates document icon](images/metadata_generate-document.png)

 |

The web API creates a document in Appian.

 |

#### Available actions

In each [core object](#core-objects) section, you can perform the following actions:

-   **View section criteria**: To view the [criteria](#section-criteria) for a section, hover over the **?** icon next to the section name.
-   **View all objects**: To view all objects of the core object type, click **See All**. This action opens the [**Build** view](build-view.html) with the object type filter applied. For example, to view all sites and portals in an application, click **See All** in the **SITES and PORTALS** section, and the **Build** view displays all site and portal objects for the app.
-   **Create a new object**: To create a new core object, click **\+ New** in the appropriate section. To create an object other than a core object, click **Build** in the navigation pane, then create the object in the **Build** view.
-   **Scroll through cards**: To scroll through cards in a section, use the arrows at the edges of the section.
-   **Open an object**: To open an object, click the object card. The object opens in a new tab or window.
-   **View related objects**: Click the navigator icon ![hierarchy navigator](images/hierarchy-navigator.png) on the card, then [navigate to related objects](#view-related-objects).
-   **View object descriptions**: Hover over an object to view its description.

In the **SITES and PORTALS** section, you can perform the following additional actions:

-   **Open a site or portal object**: To open the site or portal object, click the title of the site or portal card (for example, **Order Fulfillment** in the example below). The site object opens in a new tab or window.
-   **Preview site or portal pages**: You can preview site contents by scrolling through the pages. You can view portal contents for any published portal. Portal publishing status is indicated by an informational icon.

    ![GIF of scrolling through pages in the site card](images/explore-sites-scroll-pages.gif)

-   **View a page as an end user**: Click the page preview. The page opens in a new tab or window.

## View related objects

[Object relationships](Trace_Relationships_for_Impact_Analysis.html) are created when you reference an object from another object, creating either a precedent or dependent relationship. These object references can be present in the object properties, object security, or, if appropriate, the object's expression.

Each object card in the **Explore** view contains a navigator that lets you drill down on these relationships. For example, if you wanted to see what record views are configured for a record type:

![img](images/related-objects-navigator-example.gif)

The related objects you'll see in this navigator are primarily precedents, rather than dependents. For connected system objects, however, you can view dependent integrations and dependent objects.

To view related objects for any object in the **Explore** view:

1.  On the object card, click the navigator icon ![hierarchy navigator](images/hierarchy-navigator.png). A menu of either objects or object categories displays.
2.  Continue as appropriate:

    | # | Action |
    | --- | --- |
    | a | To view the objects in a category, click the category. |
    | b | To return to a previous menu, clicking the back arrow in the menu header. |
    | c | To view related objects for any object in a menu, click the object. A new menu displays, listing the objects related to the object you clicked. |
    | d | To open a related object from the menu, hover over the name in the menu until the name becomes a link, then click the link. The object opens in another tab or window. |

    [![annotated screenshots of related object navigator](images/related-object-navigator-actions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img254)

    [![](images/related-object-navigator-actions.png)](#_)

For each object type, you can also perform the following specific actions:

|
Menu Option

 |

Action

 |
| --- | --- |
|

**Sites**

 |
|

_<page name>_

 |

Click the page name to view the object that supports the page (for example, an interface or a report).

 |
|

Branding

 |

Click this category to view the objects used in the site's branding (for example, the documents used as header images).

 |
|

**Portals**

 |
|

_<page name>_

 |

Click the page name to view the interface used for the page.

 |
|

Service Access

 |

Click this category to view the reCAPTCHA connected system that the portal is using.

 |
|

Branding

 |

Click this category to view the icon document used for the favicon.

 |
|

Progressive Web App

 |

Click this category to view the document used for the PWA app icon.

 |
|

**Record types**

 |
|

Views

 |

Click to view a list of the [views](record-view.html) configured for the record type. Click the view name to view its related objects.

 |
|

Actions

 |

Click to view the [actions](record-actions.html) configured for the record type. Click the action name to view its related objects.

 |
|

Data Source

 |

Click to view the [data source](configure-record-data-source.html) configured for the record type.

 |
|

Relationships

 |

Click to view the [relationships](record-type-relationships.html) configured for the record type.

 |
|

**Process models**

 |
|

Forms

 |

Click to view any interfaces used as either [start forms](process-model-object.html#process-start-form-tab) or [user input tasks](Process_Node_and_Smart_Service_Properties.html#assignment-tab) in the process model.

 |
|

Related Process Models

 |

Click to view any process models that are related to the current process model. These include any direct process model precedents (for example, process models called using a [Subprocess](Sub-Process_Activity.html) node) and any process model called via a constant (such as a process model called by a constant in the [Start Process](Start_Process_Smart_Service.html) node).

 |
|

Process Model Properties

 |

Click to view objects referenced in the [process model properties](process-model-object.html#process-model-properties). For example, a CDT configured as a node input or output.

 |
|

Integrations

 |

Click to view integrations referenced by the process model. For example, an Appian RPA integration to support an [Execute Robotic Task](Execute_Robotic_Task.html) smart service.

 |
|

Plug-ins

 |

Click to view plug-ins referenced by the process model.

 |
|

**Connected Systems**

 |
|

Dependent Objects/Integrations

 |

For data source and reCAPTCHA connected systems, click **Dependent Objects** to view all dependent objects (for example, data stores, record types, and process models). For all other types of connected systems, click **Dependent Integrations** to view a list of integrations configured to use the connected system.

 |
|

**All objects**

 |
|

Other Objects

 |

Click to view a list of [precedents](Trace_Relationships_for_Impact_Analysis.html) not listed in other categories; for example, folders or groups. This category is common to all objects. For web APIs, this category is not labeled, but represents the top-level menu instead.

 |

## Create and view packages

A package is a collection of application changes that you can deploy to another environment. Using a package to organize your application changes during development allows you and your team to collaborate more easily. Learn more about [packages](prepare-deployment-packages.html).

To create a package in the **Explore** view:

1.  Click the **+** icon next to the **PACKAGES** section title. The **Create Package** dialog displays.
2.  Configure the [package properties](prepare-deployment-packages.html#package-properties).

    For example:

    ![packages create dialog](images/packages_create_dialog.png)

3.  Continue as appropriate:
    -   Click **CREATE** if this is the last or only package you want to create.
    -   Click **CREATE AND ADD ANOTHER** to create multiple packages, and repeat the previous steps again for each new package.

Once you've created a package, the **Build** view opens, filtered to display only the contents of that package. You'll notice the contents view for the package is empty right now. Learn more about the [next steps you'll take](prepare-deployment-packages.html#manage-package-during-dev) to prepare the package for deployment.

To view an existing package in the **Explore** view, click the package in the **PACKAGES** section of the information pane. The **Build** view opens, filtered to display only the contents of that package.

## View groups

Groups are used to organize users and faciliate security within both Appian Designer and the applications you build.

To view groups for the application, click **See All Groups** in the **GROUPS** section of the information pane. The **Build** view opens, filtered to display only the groups referenced in this application.

Learn more about [group management](Group_Management.html).

## View the Security Summary

The Security Summary allows you to view the security of all objects within an application in a single place. It also allows you to edit the security of objects in bulk.

To view the Security Summary, click **Security Summary** in the **GROUPS** section of the information pane.

Learn more about the [Security Summary](object-security.html#security-summary).

## View and manage documentation

As you're developing an application, you naturally create documentation that supports the application. The [Application Documentation](application-settings.html#application-documentation) feature gives your teams a central place to access this documentation in the application itself.

To view the supporting documentation for the application, click a document or link in the **DOCUMENTATION** section of the information pane. The document or link opens in a new tab or window.

To manage the application documentation, click ![Edit Documentation](images/fa-pencil-square-o.png) next to the **DOCUMENTATION** section title. The **Application Documentation** dialog displays. Learn more about the [actions](application-settings.html#application-documentation) you can take in this dialog.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...