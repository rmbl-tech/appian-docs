---
source_url: https://docs.appian.com/suite/help/25.3/Managing_Object_Versions.html
original_path: Managing_Object_Versions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Object Versions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to manage versions of the following design objects:

-   [Connected systems](Connected_System_Object.html)
-   [Constants](Constants.html)
-   [Decisions](Decisions.html)
-   [Documents](about-doc-management.html)
-   [Expression rules](Expression_Rules.html)
-   [Integrations](Integration_Object.html)
-   [Interfaces](interface_object.html)
-   [Process models](process-model-object.html)
-   [Process reports](Process_Reports.html)
-   [Record types](Record_Type_Object.html)
-   [Robotic tasks](rpa-9.17/robotic-task-definition.html)
-   [Web APIs](Web_APIs.html)

Appian creates a new version of an object when you save the object or import the object. Certain actions like [changing the security of an object](object-security.html) or [deleting a version](#delete-versions) are [logged as updates](Logging.html#design-objects), but don't result in a new version of the object.

Appian saves all versions of an object until you manually delete older versions. Developers can view older versions and in some cases revert to a former object or delete an older version.

When an object is invoked, Appian always executes the latest version.

## View versions

You can access object versions if you have **Viewer** permissions for the object.

To view a version:

1.  In the **Build** view, select the appropriate object.
2.  In the application toolbar, click **MORE** > **Versions**.

    ![compare any version](images/compare-any-version.png)

3.  Use the filters to find a version created by a specific user or during a period of time.
4.  Click the name of a version to view its definition. For constants and connected systems, this definition displays in a new dialog. For all other objects, this definition displays in a new tab.

## Compare versions

You can compare any version of any supported object type with another version in the same environment to understand and track changes in properties and definitions. To compare objects across environments, see [compare and deploy](compare-deployment-packages.html).

To compare an older version of an object with the another version:

1.  [View the object versions](#view-versions).
2.  In the **COMPARE VERSIONS** section, select the versions you want to compare. By default, Appian compares your selected version with the **Latest** version.
3.  Click **COMPARE**.

The version comparison opens in a new browser tab. Sections that do not contain any changes are collapsed by default. In addition to properties and definitions, comparisons for rule objects track changes made to test values and test cases. For information about rule testing, see [Rule Testing with Appian](Expression_Rule_Testing.html).

![Diff of an Expression Rule](images/comparison_view.png)

The changes made between the two versions are highlighted with the following colors:

| Type of Change | Color |
| --- | --- |
| Addition | Green |
| Modification | Yellow |
| Deletion | Red |

**Tip:**  You can compare published versions of process models only. You can also launch a version comparison from the [**Versions**](process-model-object.html#versions) dialog in the Process Modeler.

The current version comparison option does not support robotic tasks. Instead, you can easily review and compare changes by clicking the link in the Versions window. This will open a new browser tab for a detailed manual comparison of different versions.

## Revert to a previous version

To revert to a previous version of an object:

1.  [View the object versions](#view-versions).
2.  In the versions table, click the version you want to revert to. The properties dialog for that version displays.
3.  Click **SAVE**.

Reverting to a previous version will create a new version of the object with the definition of the version you selected. Modifying a previous version and saving it as the latest version does not affect the previous version. Remember to close tabs with previous versions.

## Delete versions

If an object has more than one version, you can delete older versions if you have **Editor** permissions for the object.

To delete a single version:

1.  [View the object versions](#view-versions).
2.  In the versions table, click the **X** icon next to the version you want to delete.
3.  In the **Delete Version** dialog, click **DELETE**.

**Note:**  Record types and web APIs do not support deleting versions.

To delete multiple versions:

1.  [View the object versions](#view-versions).
2.  Select filter criteria to return the versions you want to delete. A message will appear that prompts you to delete the filtered versions.
3.  Click the delete message.
4.  In the **Delete Version** dialog, click **DELETE**. The **Latest** version will not be included in the bulk deletion, even if it is included in the filtered results.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...