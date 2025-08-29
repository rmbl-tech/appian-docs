---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robots.html
original_path: rpa-9.17/robots.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Robots

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## What is a robot?

A robot is a digital worker that's made up of two parts: a host machine and an agent. A robot needs a workspace, just like a human worker does. The host machine is the environment in which the digital worker completes robotic tasks. The host machine can be a physical machine, such as a separate computer, or a virtual machine on a cloud server. Multiple robots can map to the same host machine.

To execute a robotic task, the robot needs certain data or information from the server. The robot communicates with the server through an [agent](agents.html), which is a file you install on the host machine. Agents must be up and running on the host machine for robotic tasks to execute properly and communicate the results back to the console.

## Where to manage robots

The **Operations Console** is designed to allow Operations Managers to set up and maintain a fleet of robots to support robotic task executions. Any user who is added to the [Designer](../User_Roles.html#designer-role) role, System Administrator role, or a member of the **RPA Operations Managers** system group has access to the Operations Console.

Administrators can control who has access to the Operations Console by updating a user's group membership in Appian.

![operations-console.png](images/ops-console-auto.gif)

### What you can do in the Operations Console

By default, Operations Managers can perform the following actions:

-   Access the Operations Console
-   Execute robotic tasks on a robot

Additionally, Operations Managers can take the following actions on a robot when their assigned [permission level](../object-security.html#permission-levels-in-role-maps) matches the permission level set on the robot's security role map.

-   [Create a robot](manage-robots-installation-config.html#create-a-robot)
-   [View the list of robots](manage-robots.html#view-the-list-of-robots)
-   [View and edit robot details](manage-robots.html#view-robot-details)
-   [Allow Appian to sign in](manage-robots-installation-config.html#allow-appian-to-sign-in)
-   [View a live robot](manage-robots.html#view-a-live-robot)
-   [Manage connections](manage-robots-installation-config.html#manage-connection)
-   [Restart a robot](manage-robots.html#restart-a-robot)

**Tip:**  Only administrators can create and delete robots in the **Operations Console**.

![operations-console.png](images/operations-console.png)

## Security

Security for robots consists of the following:

-   **system groups** that manage access to the Operations Console, the RPA console, and the ability to create robots.
-   **security role maps** that manage activities related to robots.

### Robot security by system group

| Action | RPA Operations Manager | Designer |
| --- | --- | --- |
| Access the Operations Console and view the Robot Management page | Yes | Yes |
| Create a new robot | Yes | No |

### Robot security by role maps

Starting from the Appian 23.4 release, newly created robots can only be secured using role maps. The [security](../object-security.html) role map of a robot controls whether users can view or modify it and its properties. Unlike some other objects, Robots never inherit security.

The following table outlines the actions that can be completed for each [permission level](../object-security.html#permission-levels-in-role-maps) in a robot's security role map:

| Robot Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Monitor executions

(Also requires Viewer, Editor, or Admin permission on the robotic task) | Yes | Yes | Yes | No |
| View list of robots | Yes | Yes | Yes | No |
| View robot dashboard (robot details) | Yes | Yes | Yes | No |
| Edit properties | Yes | Yes | No | No |
| View security | Yes | Yes | No | No |
| Edit/Enable/Disable auto login | Yes | Yes | No | No |
| Update security | Yes | No | No | No |
| Download and install agents | Yes | No | No | No |
| Download and install auto-login | Yes | No | No | No |
| View live robots | Yes | No | No | No |
| Enable / Disable robot | Yes | No | No | No |
| Lock / Unlock robot input | Yes | No | No | No |
| Restart robot | Yes | No | No | No |
| Delete robot | Yes | No | No | No |

### Change robots from permission tags to role maps

If you are using Appian 23.4 or later, you can permanently switch your robots from using permission tags to role maps. Follow these steps in the **Operations Console** to transition a robot to security role maps and remove permission tags.

1.  Use one of the following methods to navigate to the robot **Robot Security** screen from the **Robot Management** screen.

    <table class="appianTable table table-striped"><tbody><tr><td><strong>Method</strong></td><td><strong>Example</strong></td></tr><tr><td>Select the checkbox next to the robot then click <strong>SECURITY</strong>.</td><td><img src="images/robot-security-steps.png" alt="robot security" class="screenshot" style="width:75%"></td></tr><tr><td>Select the robot you want to change. <strong>Result</strong>: The <strong>Robot Detail</strong> page displays.<br>Select <strong>Security</strong> from the action menu.</td><td><img src="images/actionMenu-security.png" alt="security option"></td></tr></tbody></table>

2.  Click **Add Users or Groups**.
    **Result** A blank line is added.
3.  Complete one of the following options.
    -   In the blank line, start entering the user or group you want to add and the system will auto-suggest a list of users and groups from which you can select.
    -   Click the Create New Group ![create new group](images/createNewGroup-btn.png) button. Click **Create** when you are done creating the group.
4.  Select the **Permission Level** you want the user or group to have: Administrator, Editor, Viewer, or Deny.
5.  Select **Save Changes**.
    **Result**: Appian removes the permission tags from the robot and replaces the security with the security role maps you added.

## See also

If you need more information about managing robots or information about generally monitoring things in Appian RPA, see the [Manage category](manage-robots.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...