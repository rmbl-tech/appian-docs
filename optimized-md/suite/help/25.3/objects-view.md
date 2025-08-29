---
source_url: https://docs.appian.com/suite/help/25.3/objects-view.html
original_path: objects-view.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Objects View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes what you can do in the **Objects** view in Appian Designer.

To access this view, click **Objects** in the [navigation pane](common-view-elements.html#navigation-pane) at the environment level.

## Purpose

The **Objects** view displays all [design objects](design-objects.html) and [plug-ins](extending-appian.html) present in your Appian environment. This view is useful for finding a specific object quickly, so you can view and edit the object, or add the object to your application.

## Elements

The following image highlights the elements that make up this view:

[![screenshot of the Objects view in Appian Designer](images/objects-view-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img278)

[![](images/objects-view-annotated.png)](#_)

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

Tabs

 |

Go to the following tabs:

-   The **ALL OBJECTS** tab displays all of the design objects to which you have [access](object-security.html) in this environment.
-   The **PLUG-INS** tab displays all of the plug-ins that have been [installed](Appian_Administration_Console.html#plug-ins) in this environment.

Each tab features a filter pane and a grid.

 |
|

4

 |

Filter pane

 |

Search and filter objects or plug-ins in the grid.

 |
|

5

 |

Toolbar

 |

-   [Add objects to an application](#add-objects-to-an-application).
-   [Change object security](#change-object-security).
-   [View object relationships](#view-object-relationships).
-   [Delete an object](#delete-an-object).
-   [Edit object properties](#edit-object-properties).
-   [View object versions](#view-object-versions).
-   [Upload a new document version](#upload-a-new-document-version).
-   [Rename an object](#rename-an-object).
-   [Download documents](#download-documents).
-   [View process model documentation](#view-process-model-documentation).
-   [View plug-in dependents](#view-plug-in-dependents).
-   [Compare a plug-in across connected environments](#compare-a-plug-in-across-environments).

 |
|

6

 |

Grid

 |

-   [View the objects grid](#view-the-objects-grid).
-   [Open an object](#open-an-object).
-   [View the plug-ins grid](#view-the-plug-ins-grid).

 |

## View the objects grid

To view the objects grid, click **Objects** in the navigation pane. The **ALL OBJECTS** tab is open by default.

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

## Manage objects

In the **ALL OBJECTS** tab, you can perform the actions described below.

### Open an object

To open an object, click the object name in the grid.

### Add objects to an application

In the **Objects** view, you can add objects to any application for which you have at least **Editor** permissions.

To add objects to an application:

1.  In the objects grid, select one or more objects.
2.  In the toolbar, click **ADD TO APP**.
3.  In the **Add to Application** dialog, enter an application name, then select the application from the dropdown list.
4.  Click **ADD TO APPLICATION**.

### Change object security

In the **Objects** view, you can adjust the [security](object-security.html) of any object for which you have at least **Administrator** permissions.

In this view, you can change security for one object at a time only. To edit object security in bulk, use the [Security Summary](object-security.html#security-summary).

To change an object's security:

1.  In the objects grid, select an object.
2.  In the toolbar, click **SECURITY**.
3.  In the security dialog, set the permission levels for users and groups as needed.
4.  Click **SAVE CHANGES**.

### View object relationships

In the **Objects** view, you can view the relationships for any object where you have at least **Viewer** permissions.

To view the relationships for an object:

1.  In the objects grid, select an object.
2.  In the toolbar, click the appropriate action:
    -   To view the objects that need the selected object to function, click **DEPENDENTS**. An analysis of the dependent objects displays.
    -   To view the objects that the selected object needs to function, click **PRECEDENTS**. An analysis of the precedent objects displays.

Learn more about [object relationships](Trace_Relationships_for_Impact_Analysis.html).

### Delete an object

Some object deletions require the system administrator role:

-   Only system administrators can delete data types, group types, or multiple objects.
-   Only a system administrator can delete a folder that has contents. Deleting the folder deletes all of its contents.

To delete an object in the **Objects** view:

1.  In the objects grid, select an object.
2.  In the toolbar, click **DELETE**.
3.  If you selected a single object:
    -   Review the list of objects dependent on this object. These objects would be impacted by the deletion.
    -   To continue, click **DELETE ANYWAY**.
4.  If you selected multiple objects:
    -   Review the list of objects included in the deletion.
    -   To continue, click **I understand that this action cannot be undone**.
    -   Click **DELETE**.
5.  (Optional) Track deleted objects in the [deletions log](Logging.html#deletions).

### Edit object properties

You can edit properties for any document, folder, or group object for which you have **Editor** permissions.

To edit object properties from the **Objects** view:

1.  In the objects grid, select an object.
2.  In the toolbar, click **MORE > Properties**.
3.  In the properties dialog, make your edits.
4.  Click **SAVE**.

You can edit the properties of other object types by [opening the object](#open-an-object).

### View object versions

Versions are only supported for a certain set of objects. To see which objects are supported, see [Managing Object Versions](Managing_Object_Versions.html).

To view object versions from the **Objects** view:

1.  In the objects grid, select an object.
2.  In the toolbar, click **MORE > Versions**. The **Versions** dialog appears.
3.  (Optional) Compare previous object versions with the latest version. Learn more about [object versions](Managing_Object_Versions.html).

### Upload a new document version

If you upload a new version of a document in the **Objects** view, the new version of the object will retain the same local ID, but will point to a different file.

To upload a new document version:

1.  In the objects grid, select a document object.
2.  In the toolbar, click **MORE > New Version**.
3.  In the **Upload New Version** dialog, drag and drop a file into the box or click UPLOAD, navigate to, and select a file.
4.  (Optional) Edit the **File Type**, **Name**, or **Description properties** of the object.
5.  Click **UPLOAD**.

### Rename an object

In the **Objects** view, you can rename the following objects:

-   [Constant](Constants.html)
-   [Decision](Decisions.html)
-   [Expression rule](Expression_Rules.html)
-   [Integration](Integration_Object.html)
-   [Interface](interface_object.html)

If you rename an object in the **Objects** view, the system also updates any expression that's calling the object with the new object name.

To rename an object:

1.  In the objects grid, select a constant, decision, expression rule, integration, or interface object.
2.  In the toolbar, click **MORE > Rename**.
3.  In the **Rename** dialog, enter a **New Name**.
4.  Click **RENAME**.

You can rename other types of objects elsewhere in Appian Designer. Learn more about [renaming objects](Renaming_Design_Objects.html).

### Download documents

To download documents in the **Objects** view:

1.  In the objects grid, select one or more document object.
2.  In the toolbar, click **MORE > Download**. The selected document or documents download to your computer according to your browser's settings.

### View process model documentation

To view a process model documentation report:

1.  In the objects grid, select a process model object.
2.  In the toolbar, click **MORE > Download**. The report for the selected process model opens in a new tab or window.

Learn more about [process model documentation](process-model-object.html#generating-process-model-documentation).

## View the plug-ins grid

**Note:**  All [plug-ins](extending-appian.html) are use-at-your-own-risk, and their functionality is not guaranteed by Appian. All plug-ins should be tested thoroughly. For more details about individual plug-ins, visit the [Appian AppMarket](https://community.appian.com/b/appmarket).

[Plug-ins](extending-appian.html) are pre-configured to offer specific functionality in your application. Developers in the Appian community create plug-ins and make them available in the [Appian AppMarket](https://community.appian.com/b/appmarket). Plug-ins can be very useful in building applications, but because Appian doesn't create plug-ins, we can't guarantee them. We recommend that you thoroughly test any plug-in you plan to [install in your environment](Appian_Administration_Console.html#plug-ins).

Plug-ins can be composed of Appian design objects or custom code. You cannot modify plug-ins installed in your environment. Your system administrator may need to update a plug-in if the creator releases a new version in the Appian AppMarket.

To view the plug-ins grid, click **Objects** in the navigation pane, then go to the **PLUG-INS** tab. The grid is sorted alphabetically by default.

The information in the plug-ins grid is provided by the plug-in manifest file when you install a plug-in.

**Note:**  If a user changes the access to a plug-in, then there will be an [audit log message](Logging.html#admin-console) that will track the username of the user making the change, the previous value, and the new value.

In the plug-ins grid, the first column enables you to select a plug-in. The other columns in the grid include the following:

| Column | Description |
| --- | --- |
| **Name** | The name of the plug-in. |
| **Version** | The version number of the plug-in. |
| **Description** | The description of the plug-in as written by the plug-in creator. |
| **Modules** | The modules that the plug-in contains, categorized by the following types: [Components](component-plugins.html), [Connected System](connected-system-plug-in-landing.html), [Data Types](Custom_Data_Types_from_Java_Object.html), [Functions](Custom_Function_Plug-ins.html), [Servlets](Custom_Servlet_Plug-ins.html), and [Smart Services](Custom_Smart_Service_Plug-ins.html). |

You can change the grid list as follows:

-   **Refresh**: To see the most up-to-date list of plug-ins, click the refresh button in the toolbar.
-   **Search**: [Search by the name of the plug-in or the related modules](find_and_search_in_appian.html).
-   **Filter**: In the filter pane, select how you want to filter the list: by the type of module or the status of the plug-in version.

**Tip:**  You can also view the plug-in list in the [Appian Administration Console](Appian_Administration_Console.html#plug-ins).

## Manage plug-ins

In the **PLUG-INS** tab, you can perform the actions described below.

### View plug-in dependents

[Dependents](Trace_Relationships_for_Impact_Analysis.html#dependents-and-precedents-view) are design objects that rely on the plug-in and its modules to function.

To view a plug-in's dependents:

1.  In the **PLUG-INS** tab, select a plug-in.
2.  In the toolbar, click **DEPENDENTS**. The plug-ins tab displays a list of objects in the environment that rely on the plug-in to function.
3.  (Optional) In the left pane, search for an object by name or filter the list of objects by the **LAST MODIFIED** value.
4.  (Optional) Click **All Plug-ins** in the page breadcrumbs to return to the full plug-ins list.

### View version status

For Appian Cloud customers, the system automatically verifies your installed plug-ins against the applications listed in the AppMarket. The system then displays the results of this verification as version status indicators in the **Version** column of the plug-ins list.

Version statuses include:

| Version Status | Description | Indicator in List |
| --- | --- | --- |
| **Not listed in AppMarket** | The system could not find the plug-in listed in the AppMarket. This means that either the plug-in was removed from the AppMarket or it was custom built by your organization. If your organization did not build this plug-in, we recommended removing it from your environment. |  |
| **Update available** | The version installed in your environment is different than the latest version of the plug-in listed in the AppMarket. We recommend updating the plug-in to take advantage of security updates and enhancements. |  |
| **Up-to-date** | The version installed in your environment matches the latest version of the plug-in listed in the AppMarket. |   |

To filter the plug-ins list by version status, use the **VERSION STATUS** filters in the filters pane.

### Compare a plug-in across environments

This option is only available if you have enabled [connected environments](Appian_Administration_Console.html#infrastructure).

To compare a plug-in across environments:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **COMPARE ACROSS ENVIRONMENTS**.
3.  Select another environment where you want to compare the plug-in. The comparison report opens in a new window or tab.

Learn more about [comparing objects across environments](compare-deployment-packages.html).

**Tip:**  You can also compare plug-ins across environments in the [Appian Administration Console](Appian_Administration_Console.html#plug-ins).

### Delete a plug-in

Only system administrators can delete plug-ins. To delete a plug-in:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **DELETE**. The system identifies any design objects that depend on the plug-in you want to delete.
3.  (Optional) Resolve object dependencies before continuing.
4.  Click **DELETE**.

You can track deleted plug-ins in the [deletions log](Logging.html#deletions).

### Update a plug-in

Only system administrators can update plug-ins. To update the plug-in to the latest AppMarket version:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **UPDATE**.

Make sure to regression test the latest version update with your application and environment. If you need to revert your plug-in for any reason, you can do so within three months of the update.

### Revert a plug-in

Only system administrators can revert plug-ins. You can only revert to the previously installed version of the plug-in, and can only revert within three months of updating the plug-in.

To revert the plug-in to the previous version installed in this environment:

1.  In the plug-ins list, select a plug-in.
2.  In the toolbar, click **REVERT**.

Note that you can only revert a plug-in to the previous version within three months of updating a plug-in.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...