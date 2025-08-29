---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robot-pool-object.html
original_path: rpa-9.17/robot-pool-object.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Robot Pools

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Robot pools are a design object that enable you to group robots based on their unique roles and capabilities. Robot pools ensure that there is always a robot available and ready to handle any robotic task execution. With several robots in each pool, each robot pool can even handle multiple executions simultaneously. Robot pools can also be used to improve security, as access to sensitive data can be restricted to specific robot pools. You can deploy, import, and export robot pools in the same way as other Appian objects, which makes the deployment experience consistent and familiar.

## How robot pools work

A robot pool is a group of [robots](robots.html). You assign robots to robot pools; however, you can only add robots that you have permission to view or initiate based on the [robot's security](security-rpa.html). When you're creating or managing a [robotic task](robotic-task-definition.html), you get to choose the appropriate robot pool responsible for executing the task. This makes it easy for you to move robotic tasks to different robot pools if you need to improve performance or quickly make adjustments.

In the next picture, robots R1, R2, and R3, along with robotic tasks 1 and 2, are assigned to Robot Pool A. When task 1 is executed, the first available robot from Pool A performs it. Task 2 follows the same pattern with the next available robot.

![rpdo-poolA.png](images/rpdo-poolA.png)

A robot pool can have other robot pools within it, forming a hierarchy and keeping things organized. Circular membership is not allowed, meaning a pool can't be a member of itself or any other pool in its hierarchy. This rule ensures conflicts don't occur.

In the next picture, Robot Pool A is a member of Robot Pool B. When task 3 or 4 executes, the first available robot from Robot Pool B, including the robots from pool A, performs it.

![rpdo-poolB.png](images/rpdo-poolB.png)

## Migrating from permission tags to robot pools

### Overview

Upgrading your Appian environment to version 23.3 or above, and RPA version 9.3.0 or above, kicks off the permission tag migration. The migration process only happens once and only applies if you created robotic tasks in previous versions of Appian RPA. This section describes what happens during the migration and the end result.

### Migration process

The tag migration process converts permission tags, used for assigning robots, into [Robot Pools](robot-pool-object.html). Robot Pools are automatically created during this process to ensure all robotic tasks continue to execute on their designated robots.

Here is how it happens:

1.  Appian creates a robot pool for each unique permission tag assigned to a robotic task and at least one robot.
2.  Appian ignores tags on robots if the tag isn't associated with any robotic tasks.
3.  Robots sharing the same permission tag become members of the same pool.
4.  Appian assigns the robot pool to the robotic task as part of the migration process.

The migration process applies the following rules when there are mandatory permission tags.

<table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>If a robotic task</strong>…</td><td class="cellshade"><strong>Then the migration process…</strong></td></tr><tr><td>has no mandatory tags<br></td><td>creates a robot pool for each non-mandatory tag. Each robot that shares the non-mandatory tag and has no other mandatory tags is added to the pool.</td></tr><tr><td>has mandatory tags</td><td>creates a robot pool with the name of all assigned mandatory tags. If multiple mandatory tags are present, the name of the robot pool is a concatenation of all the tags.<br><br>Only robots that contain all of the same mandatory tags as the robotic task are added to the robot pool.</td></tr></tbody></table>

### Examples

Here are some examples of what the Robot Pools look like after migration.

**Example A**

In this first example, we have one robotic task and four robots before the migration.

<table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>Robotic Task</strong></td><td class="cellshade"><strong>Tags</strong></td></tr><tr><td>Robotic Task</td><td><code class="language-plaintext highlighter-rouge">operations</code> and <code class="language-plaintext highlighter-rouge">finance</code></td></tr><tr><td class="cellshade"><strong>Robots</strong></td><td class="cellshade"><strong>Tags</strong></td></tr><tr><td>RobotOps</td><td><code class="language-plaintext highlighter-rouge">operations</code></td></tr><tr><td>RobotFinance</td><td><code class="language-plaintext highlighter-rouge">finance</code></td></tr><tr><td>RobotOpsFin</td><td><code class="language-plaintext highlighter-rouge">operations</code> and <code class="language-plaintext highlighter-rouge">finance</code></td></tr><tr><td>RobotOpsFinHR</td><td><code class="language-plaintext highlighter-rouge">operations</code>, <code class="language-plaintext highlighter-rouge">finance</code>, <code class="language-plaintext highlighter-rouge">hr!</code></td></tr></tbody></table>

After the migration, there are two robot pools. Notice that the RobotOpsFin robot belongs to both pools and that the RobotOpsFinHR robot is not included because it has a mandatory tag.

<table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>Robotic Task with Tags…</strong></td><td class="cellshade"><strong>Creates Robot Pools…</strong></td><td class="cellshade"><strong>With Robot Pool Members</strong></td></tr><tr><td><code class="language-plaintext highlighter-rouge">operations</code> and <code class="language-plaintext highlighter-rouge">finance</code></td><td><code class="language-plaintext highlighter-rouge">operations</code> and <code class="language-plaintext highlighter-rouge">finance</code></td><td><strong>operations</strong>: <code class="language-plaintext highlighter-rouge">RobotOps</code> and <code class="language-plaintext highlighter-rouge">RobotOpsFin</code><br><strong>finance</strong>: <code class="language-plaintext highlighter-rouge">RobotFinance</code> and <code class="language-plaintext highlighter-rouge">RobotOpsFin</code></td></tr></tbody></table>

**Example B**

In this second example, there's a robotic task with three tags, two of which are mandatory. And there are four robots.

<table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>Robotic Task</strong></td><td class="cellshade"><strong>Tags</strong></td></tr><tr><td>Robotic Task</td><td><code class="language-plaintext highlighter-rouge">operations</code>, <code class="language-plaintext highlighter-rouge">hr!</code>, and <code class="language-plaintext highlighter-rouge">legal!</code></td></tr><tr><td class="cellshade"><strong>Robots</strong></td><td class="cellshade"><strong>Tags</strong></td></tr><tr><td>Robot HR</td><td><code class="language-plaintext highlighter-rouge">hr!</code></td></tr><tr><td>Robot HRLegal</td><td><code class="language-plaintext highlighter-rouge">hr!</code>, <code class="language-plaintext highlighter-rouge">legal!</code></td></tr><tr><td>Robot HRLegalMarketing</td><td><code class="language-plaintext highlighter-rouge">hr!</code>, <code class="language-plaintext highlighter-rouge">legal!</code>, and <code class="language-plaintext highlighter-rouge">marketing!</code></td></tr></tbody></table>

After the migration, there is one robot pool. Since robots must have all of the same mandatory tags as the robotic task to be added to the robot pool, only one robot became a robot pool member.

<table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>These mandatory Robotic Task Tags…</strong></td><td class="cellshade"><strong>Become Robot Pool…</strong></td><td class="cellshade"><strong>With Robot Pool Members</strong></td></tr><tr><td><code class="language-plaintext highlighter-rouge">hr!</code>, and <code class="language-plaintext highlighter-rouge">legal!</code></td><td><code class="language-plaintext highlighter-rouge">hr!legal!</code></td><td><strong>hr!legal!</strong>: <code class="language-plaintext highlighter-rouge">Robot HRLegal</code></td></tr></tbody></table>

### Post-migration maintenance

Following the migration, you may notice a lot of robot pools, potentially more than necessary. Be sure to review and modify these robot pools to ensure they match your requirements.

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