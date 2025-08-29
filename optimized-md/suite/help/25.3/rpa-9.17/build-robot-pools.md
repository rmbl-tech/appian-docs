---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/build-robot-pools.html
original_path: rpa-9.17/build-robot-pools.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Robot Pool

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page discusses how to create robot pools in Appian Designer.

If you are new to Appian RPA, see the [Robot Pools](robot-pool-object.html) topic in the Learn section for an introduction to robot pools.

## Add a new robot pool

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

Robot pools are created in Appian Designer.

To add a new robot pool:

1.  In the [list of design objects](../objects-view.html), click **NEW > Robot Pool**.
    ![new-robot-pool-menu.png](images/new-robot-pool-menu.png)
2.  Configure the following properties:

    | **Property** | **Description** |
    | --- | --- |
    | Name | Name to identify the robot pool. This value must be unique. Spaces are supported. It is a best practice to preface the name with the application specific prefix. |
    | Description | Supplemental information about the robot pool that is displayed in the Appian Designer **Objects** view. |

3.  Click **Create**. The Review Robot Pool Security dialog displays.
4.  [Configure security](#security) for the robot pool.
5.  Click **Save**.

    **Result**: Appian creates the robot pool and you're brought to the robot pool page where you can add robots or other robot pools. See [Add or remove robot pool members](#add-or-remove-robot-pool-members) to get started.

    ![rpdo-config-scr.png](images/rpdo-config-scr.png)

## Add or remove robot pool members

Complete the following steps to add or remove robot pool members:

1.  In the [list of design objects](../objects-view.html), find the robot pool to which you want to add or remove pool members and click its name.

    **Result**: A new window displays and you are brought to the robot pool page.
2.  Complete one of the following tasks.

    <table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>To…</strong></td><td class="cellshade"><strong>Select…</strong></td></tr><tr><td>Add members</td><td>the <strong>Add Members</strong> button. The add robot pool members dialog displays. Enter the name of the robot(s) and robot pool(s) you want to add then click <strong>ADD</strong>. You are brought back to the robot pool page and the robot(s) or robot pool(s) you added display in the list.<br><br><img src="images/rpdo-add-members.png" alt="rpdo-add-members.png" class="screenshot" style="width:75%"></td></tr><tr><td>Remove members</td><td>the checkbox(es) next to the robot(s) or robot pool(s) you want to remove then click the <strong>Remove Members</strong> button. The robot(s) or robot pool(s) are removed and do not display in the list.<br><br><img src="images/rpdo-remove-members.png" alt="rpdo-remove-members.png" class="screenshot" style="width:45%"></td></tr></tbody></table>

## Import and export a robot pool

You can deploy your robot pools across environments like any other object. These instructions describe how to do this using Appian Designer.

### Know before you begin

Robot pools are imported and exported as part of a [package](../prepare-deployment-packages.html) in Appian Designer. Packages are a tool for building your applications and ensuring successful deployments.

When importing a Robot Pool into an environment where a pool with the same UUID already exists, all properties of the inbound object overwrite the properties in the destination object except for pool membership. Instead, the inbound pool and the target pool member lists are merged.

When importing into any environment, references to member pools that do not exist in the destination environment are discarded.

Learn more about the entire process of importing and exporting objects on the [Deploy to Target Environments](../Deploy_to_Target_Environments.html#manual-export-and-import) page.

### Export a robot pool

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

Before you can import a robot pool, you must export the existing robot pool as part of a package. To export a robot pool, complete the following steps:

1.  In the [list of design objects](../objects-view.html), click the **CREATE PACKAGE** button in the toolbar.
    **Result**: The Create Package dialog displays.
2.  Configure the [package properties](../prepare-deployment-packages.html#package-properties).
3.  Click **CREATE**.
4.  Mark the checkbox next to the robot pool(s) you want to export then click **ADD TO PACKAGE** button in the toolbar.
    ![rpdo-AddtoPackage.png](./images/rpdo-AddtoPackage.png)
    **Result**: The Add to Package dialog displays.
5.  Select the package you just created in the dropdown list then click **Add**.
    **Result**: The Build view displays.
6.  Click the **VIEW PACKAGES** button in the toolbar.
    **Result**: The Packages dialog displays.
7.  Mark the checkbox next to the package you created and to which you added your robot pool.
8.  Click the **EXPORT** button.
    **Result**: The Export Package dialog displays.
9.  Click the **EXPORT** button.
10.  When the export is complete, click **DOWNLOAD PACKAGE** to download the ZIP file.

### Import a robot pool

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

To import a robot pool that is part of a package, complete the following steps:

1.  In the [list of design objects](../objects-view.html), click the **IMPORT PACKAGE** button in the toolbar.
    **Result**: The Import dialog displays.
2.  Upload your exported ZIP file.
3.  Select the **Include import customization file** box if you're using one of [these files](../Managing_Import_Customization_Files.html) to manage variables and other components.
4.  Click **INSPECT**.
    **Result**: The Inspection Results dialog displays.
5.  Review the inspection results. If there are no issues, click **IMPORT PACKAGE**.
    **Result**: The Import in Progress dialog displays.
6.  Click **CLOSE**.

## Security

The [security](../object-security.html) role map of a robot pool controls whether users can modify it and its properties. Unlike some other objects, Robot Pools never inherit security.

The following table outlines the actions that can be completed for each [permission level](../object-security.html#permission-levels-in-role-maps) in a robot pool's security role map:

| Actions | Administrator | Viewer |
| --- | --- | --- |
| View robot pool membership | Yes | Yes |
| Add and remove robot pool members | Yes | No |
| View and modify robot pool security | Yes | No |
| Configure membership rules | Yes | No |
| Configure properties and attributes | Yes | No |
| Create a new pool as a child of the current pool | Yes | No |
| Delete the robot pool | Yes | No |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...