---
source_url: https://docs.appian.com/suite/help/25.3/compare-deployment-packages.html
original_path: compare-deployment-packages.html
version: "25.3"
title: "Compare Deployment Packages"
page_id: "compare-deployment-packages"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Compare Deployment Packages

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Note:**  As with all deployment activities, for production environments we recommend comparing packages during off-peak hours.

This page describes how Appian compares a deployment package to the existing application in a target environment. This _package comparison_ allows you to review your package and confirm that you are deploying the correct changes to the target environment.

## What is compared

Package contents can include design objects, [application configurations](prepare-deployment-packages.html#prodlink-application-configurations), database scripts, and plug-ins. Appian compares a package's contents to the existing versions of those contents in the target environment when you do either of the following:

-   Prepare the package as part of [direct deployment](Deploy_to_Target_Environments.html) (only available if you have connected environments in your [infrastructure](Appian_Administration_Console.html#infrastructure))
-   Inspect the package as part of a [manual import](Deploy_to_Target_Environments.html#manually-inspect-and-import).

This comparison determines if the items in the package you're deploying:

-   Exist on the target environment.
-   Exist on the target environment and have changed.
-   Exist on the target environment but have conflicts with those in your source environment.

In both direct deployments and inspect before import, Appian performs this comparison for design objects and application configurations included in the package. In direct deployments only, Appian also performs the comparison for any plug-ins included in the package.

Appian displays a [comparison status](#object-comparison-statuses) for each item in the package during the **Prepare Deployment** step of [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy) and when you [inspect the package](Deploy_to_Target_Environments.html#manually-inspect-and-import). You can use the status to confirm that your package includes the correct items and detect any conflicts before continuing with a direct deployment or import. Additionally, in compare and deploy, you can immediately view the [differences between the package items and the target environment](#view-comparison-results).

**Note:**  In addition to properties, definitions, and security, comparisons for rule objects track differences in test values and test cases. For information about rule testing, see [Rule Testing with Appian](Expression_Rule_Testing.html).

## Comparison statuses

Comparison statuses are helpful for understanding how items in an incoming package differ from existing items in the target environment, as well as how the package items will be handled during deployment.

These statuses include the following:

| Status | Item Exists in Target Environment | Item Will Be Imported |
| --- | --- | --- |
| [Changed](#changed) | Yes | Yes |
| [Conflict Detected](#conflict-detected) | Yes | Yes |
| [New](#new) | No | Yes |
| [Not Changed](#not-changed) | Yes | No\* |
| [Status Unavailable](#status-unavailable) | Yes | Yes |

\* Forced import is possible using an [import customization file](Managing_Import_Customization_Files.html#importing-unchanged-objects).

### Changed

-   The design object or plug-in was modified in the source environment and exists on the target environment.
-   This status will typically appear when you make changes in a lower environment (development) and deploy them to a higher environment (test).
-   When you import, Appian updates the definition of the object, application configuration, or plug-in in the target environment. The **Last Modified** information will be updated. Also, the importing user will be set as the designer of any imported process models with this status.

### Conflict Detected

-   The design object or plug-in was modified separately in both the source environment and the target environment, or the application configurations were modified in the source environment and exist on the target environment.
-   This status will typically appear when the version histories the incoming item and the existing item differ. This condition is caused by one user making changes in a lower environment (development) and another user making changes in the higher environment (test) separately.
-   Make sure you [address all conflicts](#addressing-objects-with-conflicts) before importing your package. Otherwise, when you import, the package item's definition will overwrite the definition in the target environment. The **Last Modified** information will be captured, and the importing user will be set as the designer of any imported process models with this status.

### New

-   The package item was created in the source environment, but does not exist on the target environment.
-   You will commonly see this status as you are building new functionality.
-   When you import, the package item will be created in the target environment. The **Last Modified** information will be captured. Also, the importing user will be set as the designer of any imported process models with this status.

### Not Changed

-   The package item was _not_ modified in both source and target enviroments.
-   This status will typically appear when you manually package a full application.
-   When you import, the package item's definition will not be updated in the target environment because there are no updates to make. The **Last Modified** information will remain the same as it was pre-import. No change will be made to the designer of any process models with this status.
-   There are two situations when changes have been made to an object, but Appian recognizes that there are no practical differences. In these cases, the object has a status of **Not Changed**:
    -   Design objects in an application have changed, but the application configurations have not. For instance, an application on the source environment might contain more objects than the application does on the target; however, the application configurations remain the same.
    -   A design object was modified in the source environment and/or the target environment, _but_ the object definition is still identical. When this happens for expression rules, interfaces, and decisions, Appian will report them as **Not Changed**. On import, Appian will synchronize the objects and update the **Last Modified** information. Since the definition was already the same, no functional changes are introduced.

**Note:**  If you need to force an import for objects with a **Not Changed** status, add the `FORCE_UPDATE` import-specific setting to your import customization file. See [Managing Import Customization Files](Managing_Import_Customization_Files.html#importing-unchanged-objects) for more information on when and how to force an update.

### Status Unavailable

-   This package item exists on the target environment, but the system doesn't have enough information to make a comparison.
-   This status will apply to packages exported from a version of Appian, such as 17.2, where the inspection status was not supported for that object type.
-   When you deploy or import, the package item's definition will be updated in the target environment. The **Last Modified** information will be updated. Also, the importing user will be set as the designer of any imported process models with this status.

## View comparison results

**Note:**  Comparison results aren't available for AI skills, robotic tasks, or robot pools.

In [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy), you can click a **Changed** or **Conflict Detected** status to view the differences between the package items and items in the target environment.

The comparison results open in a new browser tab. Values for the package item appear in the left column. Values for the item in the target environment appear in the right column. Sections that do not contain any changes are collapsed by default.

The differences between the items in each environment are highlighted with the following colors:

| Difference | Color |
| --- | --- |
| Addition | GREEN |
| Modification | YELLOW |
| Deletion | RED |

The comparison results are divided into sections. These sections contain properties specific to the type of object or configuration being compared. To understand the comparison results better, see the descriptions of the [object types](design-objects.html) or [application configurations](prepare-deployment-packages.html#prodlink-application-configurations) involved.

## Addressing conflicts

Conflicts may occur when a package item is modified in the target environment and modified separately in the source environment.

When you see the **Conflict Detected** status:

1.  Pause your deployment and proceed carefully since there is a chance of overwriting someone else's work.
2.  Examine the **Last Modified** information for insight into who made a change to the object and when.
3.  If possible, talk to the teammate who made the change in order to understand what changes they made and why.

Depending on what you find, choose either of the following approaches to moving forward:

-   **Merge the changes**: Review the item across environments and consolidate the necessary changes on the source environment. Then test and deploy your package, containing the updated item, from the source to the target. This approach is best when combining changes from two environments, such as a new enhancement in Development and a bug fix in Test.
-   **Proceed with deployment**: Overwrite the changes in the target environment. This approach should only be taken when the changes in the target are outdated and can be safely overwritten. For example, you might choose this option when the change in Test has already been made manually in Development.

We will explore the different ways to accomplish the first option and merge your changes, using the above example of deploying from Development to Test:

-   For conflicts in application configurations during compare and deploy, resolve the discrepancy in the specified application configuration.
-   For conflicts in application configurations during manual import, check the application configurations in each environment to identify which configuration is involved, then resolve the discrepancy.
-   For conflicts in an expression rule or interface's expression definition, resolve them by merging the changes directly on the object comparison view. This is most useful when each conflict in the object is a distinct change, such as a single function, item, or line of text.

    -   In compare and deploy, click on the **Conflict Detected** status to view the object comparison:

    [![compare conflict detected](images/compare_conflict_detected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img235)

    [![](images/compare_conflict_detected.png)](#_)

    -   In the **Definition** section, click **Edit** to start making changes.

    [![object comparison merge expressions edit](images/object_comparison_merge_expressions_edit.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img236)

    [![](images/object_comparison_merge_expressions_edit.png)](#_)

    -   Choose the changes to pull from Test to Development. Once all relevant changes are pulled in, save the newly updated object on the source environment and test it thoroughly to ensure that all changes work together.

    [![object comparison merge expressions](images/object_comparison_merge_expressions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img237)

    [![](images/object_comparison_merge_expressions.png)](#_)

    -   Now the object in Development has all necessary changes, enabling a clean and safe deployment that overwrites the outdated object in Test.
-   For more complex conflicts or conflicts in other objects, resolve them by editing the object and manually merging in relevant changes. It is a best practice to always resolve conflicts in the Development environment and deploy the updated object to Test. Below are guidelines for the general types of conflicts and how to address them, once you know which changes you'd like to keep.

|
Conflict Type

 |

Resolution Steps

 |
| --- | --- |
|

Expression and text fields

 |

In the object comparison view, copy the desired expression or text from the object on Test. Then open the corresponding object on Development and paste in the copied text.

 |
|

Selection fields, such as checkboxes

 |

Open the object in Development and choose the selections to match the desired configuration in the object comparison view.

 |
|

Smart services in process models

 |

-   If you want to copy an entire smart service, you can do this between process models in the same environment.
    1.  Deploy the process model from Test to Development, which will create a new [version](Managing_Object_Versions.html) of the process model on Development.
    2.  Separately open the last two versions of your process model, one being the original version on Development and one being the version deployed from Test.
    3.  Copy the smart service from the process model version that came from Test.
    4.  In the original version from Development, paste it onto the canvas, connect the smart service to the appropriate flows, and **Save & Publish** this version as the latest. Make sure to test your changes before deploying the updated process model to Test.
-   If you want to merge select configurations within a smart service, follow the above advice for expression, text, or selection fields.

 |
|

Documents

 |

Download the desired version of the document from Test, then [upload it as a new version](folder-and-document-management.html#adding-new-document-versions) of the document on Development.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...