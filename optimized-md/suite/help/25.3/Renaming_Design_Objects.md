---
source_url: https://docs.appian.com/suite/help/25.3/Renaming_Design_Objects.html
original_path: Renaming_Design_Objects.html
version: "25.3"
title: "Renaming Design Objects"
page_id: "Renaming_Design_Objects"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Renaming Design Objects

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

All design object types in Appian can be renamed except for [custom data types](Custom_Data_Types.html) and [AI skills](ai-skill-object.html).

Depending on the object type, you can rename an object in one of the following ways:

-   [In the object configuration](#rename-in-the-object-configuration).
-   [In the **Properties** dialog](#rename-in-the-properties-dialog).
-   [Using the **Rename** action in the **Objects** view or **Build** view](#rename-in-the-objects-or-build-view).

The following table summarizes which renaming method is supported for each object type:

| Object Type | Object Configuration | Properties Dialog | Rename Action |
| --- | --- | --- | --- |
| [Connected System](Connected_System.html) |  |   |   |
| [Constant](Constants.html) |   |   |  |
| [Data Store](Data_Stores.html) |   |  |   |
| [Decision](Decisions.html) |   |  |  |
| [Document](about-doc-management.html) |  |   |   |
| [Expression Rule](Expression_Rules.html) |   |  |  |
| [Feed](Feeds.html) |  |   |   |
| [Folder](folder-object.html#managing-folders) |   |  |   |
| [Group](Group_Management.html) |   |  |   |
| [Group Type](Group_Types.html) |   |  |   |
| [Integration](Integration_Object.html) |   |  |   |
| [Interface](interface_object.html) |   |  |  |
| [Portal](portal-object.html) |   |  |   |
| [Process Model](design-objects.html#process-model) |  |   |   |
| [Record Type](Record_Type_Object.html) |   |  |   |
| [Report](Tempo_Report_Design.html) |  |   |   |
| [Robotic Task](rpa-9.17/robotic-task-definition.html) |  |   |   |
| [Robot Pool](rpa-9.17/robot-pool-object.html) |  |   |   |
| [Site](Sites.html) |   |  |   |
| [Translation Set](translation-set-object.html) |   |  |   |
| [Web API](Web_APIs.html) |   |  |   |

## Rename in the object configuration

To rename an object using this method:

1.  Open the object.
2.  Continue as appropriate:

    | Object Type | Action |
    | --- | --- |
    | Connected System | Edit the **Name** field. |
    | Document | Edit the **Name** field. |
    | Feed | Edit the **Name** field. |
    | Report | In the toolbar, select **Edit**, then edit the **Report Name** field. |
    | Process Model | In the toolbar, select **File > Properties**, then edit the **Process Model Name** field. |

3.  Click **OK** or **SAVE** as appropriate.

## Rename in the Properties dialog

To rename an object using this method:

1.  Open the object.
2.  In the navigation bar, click the settings menu .

    **Note:**  For folders, groups, and group types, the setting menu is located next to the name of the folder, group, or group type.

3.  Select **Properties**. The **Properties** dialog displays.
4.  Edit the name.
5.  Click **OK**.

## Rename in the Objects or Build view

To rename an object using this method:

1.  Open the [Objects](objects-view.html) or [Build](build-view.html) view.
2.  In the objects grid, select the object you want to rename.
3.  In the toolbar, click **MORE > Rename**.

    ![images:rr_menu_option.png](images/rr_menu_option_23_2.png)

4.  Edit the object name.

    You cannot use a name that is already in use by another object in the system. You can rename your object to the same name with different casing though.

In most cases, the **Rename** dialog will allow you to update these objects names immediately, and there will be no further action—all of the dependents of the renamed object will be updated automatically. In a few [special cases](#special-considerations), you will need to take extra steps to complete the rename.

The rename takes effect for all versions of the object. Renaming an object doesn't create a new version of the object, it just updates the existing [version](Managing_Object_Versions.html).

![images:rr_dialog.png](images/rr_dialog_23_2.png)

### Special considerations

There are two edge cases where you might have to update some of the renamed object's dependents manually:

-   The dependent is still referencing the renamed object's old name after the rename action occurred. This could happen in the unlikely event that you added the object's reference to the dependent before the object was created.
-   The dependent was being edited by another user while the rename occurred.

In both scenarios, the **Rename** dialog will indicate that there are additional actions for you to take.

#### Manual Updates

![images:rr_manual_updates.png](images/rr_manual_updates.png)

After the rename, Appian searches the expressions of all objects on the system to make sure there are no leftover instances of the object's old name. If any are found, they will be displayed with the part of the expression that includes the old name. **These will need to be updated manually**. These old references will cause the dependent object to throw an error because the old object name can no longer be found. This search also includes comments in your expression definitions that might need to be updated.

You can click the **refresh list** link in the warning message box to rerun the search as you are manually updating the references to verify your progress.

#### Currently open dependents

![screenshot of a warning that this object has dependents](images/rr_dependents.png)

If any of the renamed object's direct dependents are being edited by another developer during the rename, they will be displayed after the rename. The dialog will indicate which user is currently editing the object so that you can coordinate the update with them.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...