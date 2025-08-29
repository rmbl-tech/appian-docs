---
source_url: https://docs.appian.com/suite/help/25.3/build-view.html
original_path: build-view.html
version: "25.3"
title: "Build View"
page_id: "build-view"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Build View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes what you can do in the **Build** view in Appian Designer.

To access this view, click **Build** in the [navigation pane](common-view-elements.html#navigation-pane) of an application.

## Purpose

The **Build** view lets you create and configure design objects in an application. The majority of your work building an application will take place in the **Build** view.

## Elements

The following image highlights the elements that make up this view:

[![screenshot of the Objects view in Appian Designer](images/build-view-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img250)

[![](images/build-view-annotated.png)](#_)

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

Deployment actions bar

 |

You can do the following actions:

-   Filter for all application objects or an individual package using the objects dropdown.
-   [Create Packages](prepare-deployment-packages.html#create-package).
-   [Export apps](Deploy_to_Target_Environments.html#export-manually).
-   [Import packages](Deploy_to_Target_Environments.html#manually-inspect-and-import).
-   [View packages](prepare-deployment-packages.html#view-package).
-   [Compare and Deploy](Deploy_to_Target_Environments.html#compare-and-deploy).

Each tab features a filter pane and a grid.

 |
|

4

 |

Tabs

 |

Go to the following tabs:

-   The **ALL OBJECTS** tab displays all design objects you have [access](object-security.html) to in this application.
-   The **PLUG-INS** tab displays all the plug-ins that are referenced by objects in this application.
-   The **UNREFERENCED OBJECTS** tab displays design objects in this application that are not referenced by either design objects or application configurations.

Each tab features a filter pane and a grid.

 |
|

5

 |

Filter pane

 |

Search and filter objects or plug-ins in the grid.

 |
|

6

 |

Toolbar

 |

You can add objects to the application using any of the following methods:

-   [Create a new object](#create-a-new-object).
-   [Add an existing object](#add-an-existing-object).
-   [Duplicate an object](#duplicate-an-object).
-   [Import a package](#import-a-package).

You can also:

-   [Move objects to another application](#move-objects-to-another-application).
-   [Remove objects from the application](#remove-objects-from-the-application).
-   [Delete objects](#delete-objects).
-   [Configure object security.](#security)
-   [View object relationships.](#view-object-relationships)

 |
|

7

 |

Grid

 |

-   [View the objects grid](#view-the-objects-grid).
-   [View referenced plug-ins](#view-referenced-plug-ins).
-   [View unreferenced objects](#prodlink-unreferenced-objects-tab).

 |

## View the objects grid

To view the objects grid, click **Build** in the navigation pane of your application. The **ALL OBJECTS** tab is open by default.

The first column of the grid enables you to select an object, and the second column contains an icon indicating the [object type](design-objects.html). The other columns in the grid include the following:

| Column | Description |
| --- | --- |
| **Name** | The name of the object as a hyperlink to open the object. A preview icon ![interface-preview](images/interface-preview.png) displays next to the name of any interface object. Hover over this icon to view a preview of the interface. A design library icon ![design_library_icon](images/design_library_icon.png) displays next to the name of any interface object included in your [design library](working_in_design_mode.html#using-the-design-library). |
| **Description** | The description of the object. The display truncates descriptions longer than 96 characters. Hover over the description to see the entire description as a tooltip. |
| **Last Modified** | The default sort field of the grid. Shows the developer who last modified the object and when. |

You can change the grid list as follows:

-   **Refresh**: To see the most up-to-date list of objects, click the refresh button in the toolbar.
-   **Search**: [Search by name, description, UUID, or ID, or using an expression](find_and_search_in_appian.html).
-   **Filter**: In the filter pane, select how you want to filter the list: by object type, the developer who last modified the object, or the date on which a developer last modified the object.

    **Note:**  Some object types are combined into one type of filter or have an additional filter:

    -   Group types can be found using the **Group** filter.
    -   Communities and knowledge centers can be found using the **Folder** filter.
    -   Design library interfaces can be found by using the **Interface** filter, then selecting the **Design Library** filter.

-   **Format**: To change how objects display in the grid, click the flat view or hierarchical view button ![flat/hierarchy view icons](images/object-view-toggle.png) in the toolbar. By default, the grid view is flat and displays all objects. Switching to the hierarchical view will display only the top-level objects and hide the rest, so that you can more easily navigate folder hierarchies.

## Add objects to the application

To build your application, you can add objects in any of the following ways:

-   [Create a new object](#create-a-new-object).
-   [Add an existing object](#add-an-existing-object).
-   [Duplicate an object](#duplicate-an-object).
-   [Import a package](#import-a-package).

### Create a new object

Objects created from the context of an application are automatically added to that application. If you add an object in the [package view](prepare-deployment-packages.html#view-package) of the application, the object is automatically added to the package, too.

System administrators can create any design objects. Basic users can create objects if they are in the [Designer role](User_Roles.html#designer-role). To create process models, basic users must also be in the [Process Model Creators group](System_Groups.html#process-model-creators).

New objects have the following default [security](object-security.html):

-   If the object type supports security inheritance, the new object inherits security.
-   For objects that don't inherit security, Appian prompts you to set security during creation. Note:
    -   If [default security groups](creating-applications.html#default-security-groups) are configured for the application, those default security groups are assigned **Viewer** and **Administrator** permissions for the new object.
    -   If default security groups are _not_ configured for the application, the creating user is added to the role map with **Administrator** permissions. However, the creating user is _not_ added to the role map if that user is a system administrator.

To create a new design object:

1.  In the **Build** view, go to the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab.
2.  In the toolbar, click **NEW**:

    ![screenshot of the New menu in the Build view](images/build-view-new-menu.png)

3.  Select an object type from the dropdown list.
4.  Configure the basic properties for the [object type](design-objects.html) you selected.
5.  Click **CREATE**.
6.  For objects that don't support security inheritance, set the [object security](object-security.html), and click **SAVE**.

The new object opens in a new tab or window for further configuration.

**Tip:**  Newly-created objects may not immediately be visible in the objects grid if the current filter settings would hide the objects.

### Add an existing object

Objects can exist in multiple applications, so adding objects this way does not remove them from other applications.

To add existing objects:

1.  In the **Build** view, go to the **ALL OBJECTS** tab.
2.  In the toolbar, click **ADD EXISTING**.
3.  Select the objects you want to add:
    -   To add all objects associated with another application:
        -   Select **Application Contents**.
        -   For **Applications**, select one or more applications.
    -   To add all objects from a folder, including subfolders and their contents:
        -   Select **Folder Contents**.
        -   For **Folders**, select one or more applications.
    -   To add selected objects:
        -   Select **Existing Objects**.
        -   In the object boxes, select one or more record types, process models, reports, or other type of objects. You can choose multiple objects of each type. Selecting folders this way does _not_ add the contents of the folder, only the folder object itself.
4.  (Optional) To check the added objects for missing precedents, select **Check for missing precedents after adding objects to this application**.
5.  Click **ADD TO APPLICATION**.
6.  If you're checking for missing precedents, review and resolve any issues in the [Missing Precedents dialog](application-settings.html#missing-precedents), then click **CLOSE**.

### Duplicate an object

Developers with [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) to this object can duplicate it. There are two ways to duplicate an object:

-   From any view in an application, you can select the object you wish to duplicate and use the toolbar option to launch the duplication dialog. The duplicated object will be added to the application you're working in. This capability is only available for single object selections from the grid.
-   If you are in an interface, expression rule, integration or decision object, you can select **Duplicate** from the object's settings menu . From there, you can specify the target application for the new object.

Once you select the **Duplicate** option, you will see the following dialog:

![object duplication dialog](images/object_duplication_dialog_design_library.png)

You can only duplicate the most recent version of an object. If you have unsaved changes and attempt to duplicate the object from within the designer, the most recent saved version of the object will be duplicated **without** the unsaved changes. A banner appears when there are unsaved changes to remind you before duplicating.

![object duplication dialog with unsaved changes](images/object_duplication_unsaved_changes_banner.png)

For constant duplication, the duplication dialog will appear similar to the edit dialog for the constant being duplicated. Simply alter the name and value fields as desired and create. The duplicated object will be added to the current application.

### Import a package

When you import a package, you add all the objects from the package to the current application. If the package contains objects already present in the current environment, the imported version overwrites the existing version. Learn how to [import a package](Deploy_to_Target_Environments.html#manually-inspect-and-import).

## Manage objects in the application

This section describes actions you can take to manage objects in an application.

### Move objects to another application

You can organize application objects by moving them from one application to another. When moving objects, you can choose whether you want to remove them from the current application.

To move objects to another application:

1.  In the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab, select one or more objects from the grid.
2.  In the toolbar, click **MOVE**.
3.  Type the name of the application where you want to move the objects To keep objects in the current application, select **Keep objects in current app**.
4.  Click **MOVE**.

![move objects to another application](images/move_objects_dialog.png)

### Remove objects from the application

Removing an object from the application removes the relationship between the object and the application. The object will no longer show up in this application's views. The object is not deleted and can still be found from the [**Objects** view](objects-view.html). Objects may belong to multiple applications, or none at all.

To remove objects from the application:

1.  In the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab, select one or more objects from the grid.
2.  In the toolbar, click **MOVE**, then click **REMOVE FROM APP**.

### Delete objects

Basic users can delete one object at a time, while system administrators have the option to delete in bulk. When a single object is selected for deletion, the system automatically runs a dependency scan to determine if the object is still in use.

![dependency_scan_on_single_delete](images/dependency_scan_on_single_delete.png)

To avoid errors in dependent objects, remove all references to the selected object before continuing with a deletion. During bulk deletion, we recommend reviewing the dependents of each object before deleting them.

Deleted objects are removed from the system and cannot be restored. Appian does not support the deletion of system objects.

**Note:**  Only system administrators can delete data types, group types, and non-empty folders. Deleting a folder deletes all of its contents, too.

To delete one or more objects:

1.  In the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab, select one or more objects from the grid.
2.  In the toolbar, click **DELETE**.
3.  Continue as appropriate:
    -   If Appian identifies dependents for the single object you're deleting, click **CANCEL**, remove references to the object, then attempt to delete the object again.
    -   If no dependencies are identified for the single object or if you're deleting multiple objects, click **DELETE** to confirm the deletion.

### Configure object security

Developers with **Administrator** permissions to an object can edit its [security](object-security.html) from the **Build** view. It is a best practice to use only groups to configure security. To edit the security of multiple objects at once, use the [Security Summary](object-security.html#security-summary).

### View object relationships

To understand how a design object is related to other objects, select an object in the **Build** view, then click **DEPENDENTS** or **PRECEDENTS** in the toolbar.

Learn how to interpret and navigate the [lists of dependents and precedents](Trace_Relationships_for_Impact_Analysis.html).

### View referenced plug-ins

[Plug-ins](objects-view.html#view-the-plug-ins-grid) are maintained at the environment level, rather than the application level, so that you can use them in multiple applications in your environment.

To use a plug-in in an individual application, add references to the plug-in in the application objects.

To view plug-ins referenced by objects in an application, go to the **PLUG-INS** tab of the **Build** view.

In that tab, you can also do the following:

-   Filter the list by plug-in module or [version status](objects-view.html#view-version-status), by selecting options in the filter pane.
-   Limit the list to plug-ins referenced by objects in an individual package, by using the [package picker](prepare-deployment-packages.html#view-package).
-   [Add a referenced plug-in to a package](#prepare-objects-for-deployment).
-   View the objects that reference an individual plug-in, by selecting the plug-in in the grid, then clicking **DEPENDENTS**.
-   (System administrators only) [Delete a plug-in](Appian_Administration_Console.html#delete-a-plug-in).
-   (System administrators only) [Update a plug-in](Appian_Administration_Console.html#update-an-appmarket-plug-in) to the latest AppMarket version.
-   (System administrators only) [Revert a plug-in](Appian_Administration_Console.html#revert-an-appmarket-plug-in) to the previous version installed in this environment.

### View unreferenced objects

Appian categorizes an object as unreferenced if the object is present in the application, but no other objects in the application reference that object.

To view unreferenced objects in an application:

1.  In the **Build** view, go to the **UNREFERENCED OBJECTS** tab. The grid displays all unreferenced objects.
2.  In the filter pane, search by name or description and apply filters to find objects.

## Prepare objects for deployment

![app-view-header-package-actions](images/app-view-header-package-actions_23_2.png)

In the **Build** view, you can prepare your objects for [deployment](Deploy_to_Target_Environments.html) by [adding the objects and plug-ins](#add-to-package) referenced by those objects to a [deployment package](prepare-deployment-packages.html).

In addition, you can:

-   [Change to a package view](prepare-deployment-packages.html#view-package) that limits what you're seeing to only objects in an individual package and plug-ins referenced by objects in that package.
-   [View the list of packages associated with the application](prepare-deployment-packages.html#view-the-packages-list).
-   [Start the compare and deploy process](Deploy_to_Target_Environments.html#compare-and-deploy) for the application or the related packages.

### View package contents

![app-view-package-picker](images/app-view-package-picker.png)

In any tab of the **Build** view, you can also use the [package picker](prepare-deployment-packages.html#view-package) (highlighted above) to limit the list to components of an individual package. For example, the **ALL OBJECTS** tab will list all the objects in the selected package, and the **PLUG-INS** tab will list all plug-ins referenced by objects in the package.

### Add an object or plug-in to a package

The steps described in this section apply if you're viewing all application objects or a package view of the objects. The default **All Application Objects** option is selected in the dropdown menu.

**Tip:**  When viewing a package, you can also add objects to the package in bulk, add objects that you have created or modified to the package, and add plug-ins to the package. Learn more about the [package view](prepare-deployment-packages.html#view-package).

To add objects to a package:

1.  In the **ALL OBJECTS** or **UNREFERENCED OBJECTS** tab, select one or more objects from the grid.
2.  Click **ADD TO PACKAGE**.
3.  Select the destination package:
    -   To select an existing package, select the package from the dropdown list.
    -   To select a new package:
        -   Click **Create New Package**.
        -   Configure the new [package properties](prepare-deployment-packages.html#package-properties).
4.  Click **ADD**.

To add [referenced plug-ins](#view-referenced-plug-ins) to a package:

1.  Determine whether the right versions of the referenced plug-ins are present in the target environment. If the plug-ins are missing in the target environment or aren't the right version, continue to the next step.
2.  In the **PLUG-INS** tab, select one or more plug-ins from the grid.
3.  Click **ADD TO PACKAGE**.
4.  Select the destination package:
    -   To select an existing package, select the package from the dropdown list.
    -   To select a new package:
        -   Click **Create New Package**.
        -   Configure the new [package properties](prepare-deployment-packages.html#package-properties).
5.  Click **ADD**. Appian adds the selected plug-ins to the package.
6.  (Optional) Verify that the objects referencing the plug-ins you added are present in the package. To do this, in the **PLUG-INS** tab, go to the [package view](prepare-deployment-packages.html#view-package). If the plug-ins list is empty, you still need to add the objects that reference the plug-ins to the package.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...