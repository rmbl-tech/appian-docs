---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-robots.html
original_path: rpa-9.17/manage-robots.html
version: "25.3"
title: "Manage Robots"
page_id: "rpa-9.17/manage-robots"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Robots

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  If RPA isn't enabled for your Appian environment, you won't be able to use the Operations Console.

## Overview

This page discusses managing robots in the **Operations Console**.

![operations-console.png](images/operations-console.png)

## What you can do in the Operations Console

By default, Operations Managers can perform the following actions:

-   Access the Operations Console
-   Execute robotic tasks on a robot

Additionally, Operations Managers can perform the following actions when they share permissions with the robot they're interacting with:

-   [View the list of robots](#view-the-list-of-robots)
-   [View and edit robot details](#view-robot-details)
-   [View a live robot](#view-a-live-robot)
-   [Manage connections](manage-robots-installation-config.html#manage-connection)
-   [Restart a robot](#restart-a-robot)

## View the list of robots

**Required role:** [Any](learn-user-settings.html#rpa-roles)

The **Operations Console** contains all robots available to you. Click a robot to view its details.

The robots are listed in alphanumerical order in a grid with the following information:

-   **Name**: The name of the robot.
-   [**Status**](#status): What the robot is currently doing.
-   **Memory Used**: The percentage of the host machine's memory that is reserved for use.
-   **Disk Space Used**: The percentage of the total disk space that is in use on the host machine.
-   [**Robotic Task**](manage-robotic-tasks.html): Shows any robotic task actively running on that robot. If no tasks are actively running, then this column is blank.
-   **Started On**: When the actively running robotic task started. If no tasks are actively running, then this column is blank.

[![images/opsconsole-robotlist.png](images/opsconsole-robotlist.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1377)

[![](images/opsconsole-robotlist.png)](#_)

### Status

For each robot in the list, you'll see a status to indicate what the robot is currently doing.

| **Status** | **Description** |
| --- | --- |
| **Online** | Robot is online and ready to run a robotic task. |
| **Outdated** | The agent is updating or failed to update. Check back soon. If still outdated, manually reinstall and launch the agent. |
| **Offline** | Robot is offline and can't run a robotic task. Run the robotic task on your local host machine or allow Appian to sign in to the robot automatically. |
| **Disabled** | This robot is disabled, so it can't run robotic tasks. Enable the robot to run a robotic task. |
| **Blocked Keys** | There is an issue with the keys on the robot. A robotic task can run, but may produce unexpected results. To fix the issue, run a robotic task to release the keys, or restart the user session. |
| **Running** | Robot is online and busy running a robotic task. |
| **Concurrence** | The robot is using an agent that's installed and launched in more than one place. Disconnect one agent and allow Appian to sign in to the robot automatically. |
| **Standby** | Robot is ready to run a robotic task. |
| **Recording** | Robot is online and busy recording interactions. |

### What you can do on the list of robots

You can perform several actions from the list of robots. Available actions depend on the robot's connectivity and status.

[Additional actions](#what-you-can-do-from-the-robot-detail-page) are available from the **Robot detail** page.

| **Action** | **Description** |
| --- | --- |
| **CREATE** | [Creates a robot](manage-robots-installation-config.html#create-a-robot) and installs an agent on a host machine. |
| **SECURITY** | [See below](#security) |
| **RESTART** | [See below](#restart-a-robot) |
| **DISABLE** | Changes the [robot status](#status) to **Disabled** and prevents that robot from executing robotic tasks. Only available for robots that are **Online**. |
| **ENABLE** | Changes the [robot status](#status) to **Online** and makes that robot available to execute robotic tasks. Only available for robots that are **Disabled**. |
| **DELETE** | Permanently delete the robot. |

## View robot details

**Required role:** [Any](learn-user-settings.html#rpa-roles)

In the Operations Console, click any robot to view its details and perform certain actions.

On the **Robot Detail** page, you can find information related to the robotic tasks the robot performed, including:

-   the robotic task name.
-   the robotic task execution ID.
-   the robotic task execution status.
-   when the robotic task started.
-   when the robotic task completed.

**Tip:**  You can only view robotic tasks if you have the necessary permissions, either through [permission tags](security-rpa.html#permissions) or the [security role map](security-rpa.html#robotic-task-security).

The **Robot Detail** page also shows you which [robot pools](manage-robot-pools.html) include this robot as a direct member. The robot(s) that display here may also be an indirect member of other robot pools. Direct members are robots added explicitly to the robot pool, while indirect members are part of a robot pool that is itself a direct member of the robot pool.

Use the search bar and filters to refine the list of executions. Click **RESET** to clear the filters and see all available information.

[![View robot details](images/robot-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1378)

[![](images/robot-details.png)](#_)

### What you can do from the robot detail page

Different actions are available from the **Robot Detail** page, depending on the [robot's status](#status).

| **Action** | **Description** |
| --- | --- |
| [**Robot properties**](#robot-properties) | Edit and review key details about the robot. Here, you can edit the robot's name and permissions, as well as [allow Appian to sign in](manage-robots-installation-config.html#allow-appian-to-sign-in). |
| [**MANAGE CONNECTION**](manage-robots-installation-config.html#manage-connection) | Download the installer associated with this robot. |
| [**VIEW LIVE ROBOT**](#view-a-live-robot) | Available only for **Online** robots. View the desktop where the robotic task is running. |
| [**Manage Security**](#security) | Assign or swap out user or group role maps. |
| **Lock keyboard input** | Available only for **Online** robots. The agent must be installed on the host machine using an administrator profile. |
| **Unlock keyboard input** | Available only for **Online** robots. The agent must be installed on the host machine using an administrator profile. |
| [**Restart**](#restart-a-robot) | Restarting the robot agent can prevent, among other things, low memory problems on the host machine where it is running. |
| **Enable** | Make a robot available to execute robotic tasks. |
| **Disable** | Prevent a robot from executing robotic tasks. |
| **End user session** | Quickly update a robot's status to its actual state. If you're sorting out an issue or fine-tuning things, you might need to clear the agent session to see the robot's real status. Say you log out of a VM that uses the auto-login option, the robot seems to stay ONLINE for a bit before it updates. Just click **End user session** to see the robot's actual status, like STANDBY, right away. This option is available only to users with Admin access to the robot. |

### Robot properties

When you click **Properties** from the action menu, you can see the following information about the robot:

![action menu](images/actionMenu-properties.png)

| Field | Description | Editable? |
| --- | --- | --- |
| **Name** | Name of the robot that is shown throughout Appian instead of the identifier. | Yes |
| **Permissions** | Permission tags assigned to the robot. | Yes |
| **Agent version** | Version of the agent on the robot and the internal build number. | No |
| **Robot last connected** | Last time the agent connected with Appian. | No |
| **Java version** | Java version used by the agent. | No |
| **Operating System** | Name and version of the operating system on the host machine. | No |
| **Current folder** | Current folder where the agent is located. | No |
| **Temporary folder** | Temporary folder for the user who launched the agent. | No |
| **Architecture** | Processor architecture for the host machine. | No |
| **\# User session** | Session identifier used by a robot with elevated privileges to unlock the session. | No |
| **Processors** | Number of available processors on the host machine. | No |
| **IP addresses** | IP addresses assigned to the host machine (can be several due to the existence of different network interfaces). | No |
| **Resolution** | Screen dimensions on the image representing your monitor. | No |
| **Host machine reserved memory** | Reserved memory status of the JVM for the agent. | No |
| **Host machine disk space** | Available disk space status on the computer. | No |
| **Reserved memory threshold (percent)** | When the memory percentage is over the maximum specified, an event "robot\_LIMIT\_MEMORY" is generated. | Yes |
| **Available disk space threshold (percent)** | When the free disk space percentage is under the minimum specified, an event "robot\_LOW\_FREE\_HARD\_DISK\_SPACE" is generated. | Yes |

![edit-robot-details.png](images/edit-robot-details.png)

### Troubleshooting

To help keep you on track, Appian may display messages to show you when it's unable to sign in. Use the following table to understand the error and learn how to fix the issue.

| Error message | Reason | Guidance |
| --- | --- | --- |
| **Invalid sign-in credentials.** Unable to sign in because the credentials are invalid. Check the username and password are correct and try again. | Appian tried to sign into the user sessions using the credentials you provided, but it didn't work. The credentials may be inaccurate, or they don't match an account found on the domain. | Check the domain, username, and password fields to make sure they're correct. |
| **Robot not found.** Unable to sign in because RDP couldn't locate the agent on the host machine. Check that the agent is installed on the host machine and try again. | Appian was unable to locate the agent file on the host machine. The agent is required to allow the host machine to communicate with Appian RPA. | Check that the agent is installed and that the user account [configured to sign in to the host machine](manage-robots-installation-config.html#allow-appian-to-sign-in) has permissions to run the agent. |
| **RDP is not enabled.** Unable to sign in because Remote Desktop is disabled on the host machine. Enable Remote Desktop and try again. | Appian tried to sign in to a user session on the virtual machine, but RDP isn't enabled. | [Enable RDP on the host machine](manage-robots-installation-config.html#configure-the-host-machine). |
| **Error: Active user session.** Unable to sign in because the host machine has an active session. Sign out from the active session and try again. | Appian tried to sign in to the virtual machine, but there is already an active user session.

Note that this message appears for standard Windows operating systems. | Sign out of the active user session on the host machine. |
| **Error: Active user session.** Unable to sign in because the host machine has an active session for the OS user account you're using to sign in. Sign out from the user's active session and try again. | Appian tried to sign in to the virtual machine, but there is already an active user session for the user account you're using to sign in.

Note that this message appears for Windows Server operating systems. | Sign out of your active user session on the host machine. |
| **Error with automatic sign-in.** Unable to sign in because of an issue with Remote Desktop. Review the Remote Desktop settings and try again. | Appian tried to sign in to the virtual machine, but was unable for an unknown reason. | Verify that the RDP settings on the host machine match the [configurations](manage-robots-installation-config.html#configure-the-host-machine) listed above. |
| **Error with automatic sign-in.** Unable to sign in because Remote Desktop didn't respond. Verify that the sign-in service is running on the host machine and try again. | Appian tried to sign in, but the sign-in service didn't respond in time. It might be that the sign-in service isn't running on the host machine. | Confirm that the sign-in service is running on the host machine. |
| **Error: Interactive logon message.** Unable to sign in because the host machine has an interactive logon screen. Enable the Skip interactive logon message option on the Robot Details page and try again. | Appian tried to sign in, but the host machine has an interactive logon message. The robot wasn't configured to allow Appian to skip the interactive logon message. | [Edit the robot details](manage-robots-installation-config.html#allow-appian-to-sign-in) to allow Appian to skip the interactive logon message. |

## View a live robot

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

You can remotely view the desktop where the robotic task is running.

To start monitoring, click **VIEW LIVE ROBOT**.

![rpa-remote-control-viewer.png](images/rpa-remote-control-viewer.png)

## Restart a robot

Robotic tasks consume memory and generate artifacts on the host machine during each execution. Over time, this data may start to degrade the host machine's performance. The host machine may benefit from restarting the robot to help free up additional memory.

When you restart a robot, Appian sends a request to the agent to try to restart its connection. You can relaunch the agent from the Operations Console or manually [restart the agent by clicking **Quit** in the agent menu](agents.html#agent-menu) when you detect any issue with its operation.

You can also restart the robot automatically.

### Automatic robot restart

To prevent having too much of your host machine's memory occupied, you can configure a robot's agent to restart automatically when a specified percentage of the host machine's total memory is exceeded.

For example, if the host machine has a 2GB memory, you can set up the agent to restart whenever 80% of the memory is used (1.6GB).

1.  Go to the **Robot detail** page.
2.  In the **Reserved memory threshold (percent)** field, enter the memory threshold in the text box. This is the percentage of host machine memory not to be exceeded.
3.  Click **Save**.

This configuration triggers an event to restart the agent whenever the reserved memory is exceeded. Events are explained in detail on the [**Monitoring**](how-to-navigate-console.html#actions-and-events) page.

### Disable robots on restart

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

In the event the server goes down unexpectedly, administrators can configure Appian RPA to disable robots upon restart of the RPA server to ensure robotic tasks do not run until an administrator has verified the robot is in a clean state.

To allow Appian to disable unclean robots on start up:

1.  In the Appian RPA console, go to the **Settings** tab.
2.  In the **Configuration** tab, go to **Security policies**.
3.  Select **Allow Appian to disable robots which are running robotic tasks during a console shutdown**.
4.  Click **Save security policies**.

## Robot keys

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

Automating the installation of agents and the auto-login service on your host machines, especially on virtual machines that frequently terminate, can be a tedious process. Robot keys streamline this process. Robot keys encapsulate a robot's unique identity in a single credential that can be incorporated into your custom scripts. This not only facilitates the seamless automation of agent installations but also enables auto-login services on Windows OS.

You can store robot keys in your own secure credentials manager. Appian RPA ensures your security by automatically rotating your robot keys each time an agent connects and authenticates. This seamless process keeps your interactions secure without any extra effort on your part. However, for added flexibility, Appian RPA lets you [manually update your robot keys](#manual-robot-key-rotation) at your convenience, offering you tailored control to meet specific security needs or preferences.

### Robot key script setup

Setting up your robot key script is an essential step for preparing your system. You need to place a script in the same directory where your configuration file is located. When needed, the RPA agent or the auto-login service executes your script. The robot key should be the last line in the output of the script. An agent or auto-login service can then use this key to authenticate itself with Appian RPA.

| **If the OS is…** | **Then name the file…** | **Location** |
| --- | --- | --- |
| Windows | `getRobotKey.bat` | During the installation process, the software is automatically installed in a folder named "Appian RPA," located in the user's Local App Data folder. If you need to locate this folder, you can open a command prompt window in the user's session and enter the command `echo %LOCALAPPDATA%`. |
| Mac or Linux | `getRobotKey.sh` | You created this folder on the host machine to store the AppianRPAagent.run file when you set up the robot. |

**Example**

![file-example.png](images/file-example.png)

### Manual robot key rotation

Appian RPA automatically keeps your robot keys up-to-date for your security. If you need a more hands-on approach, follow these steps to enable manual robot key rotation.

1.  In the Appian RPA console, go to the **Settings** tab.
2.  In the **Configuration** tab, go to **Security policies**.
3.  Mark the **Enable manual robot key rotation** checkbox.
    ![robot keys](images/robotKey-securityPolicy.png)
4.  Click **Save security policies**.
5.  [Redownload your robots](agents.html#set-up-the-agent-on-a-windows-host-machine) to apply the change.

### Rotate a robot key

If you have [manual robot key rotation enabled](#manual-robot-key-rotation), you need to periodically refresh your robot keys to you ensure that the security and integrity of your robots and systems are maintained.

Here are some considerations you should keep in mind when rotating robot keys:

-   Decide how frequently you want to rotate robot keys and create a schedule based on your security needs and compliance requirements.
-   Notify stakeholders (developers, operations, etc.) well in advance before rotating keys, especially if services could potentially be disrupted.
-   Ensure that your systems and robotic tasks are capable of handling robot key changes without downtime or service disruption.
-   Conduct thorough testing to ensure that the new robot keys work as expected in your environment.
-   Closely monitor system logs and alerts during and after the key rotation process to identify any system errors.
-   Keep detailed records of the key rotation process, including what was done, when, and by whom, for compliance and auditing purposes.
-   Before you begin, disable the robot in the Operations console, then re-enable the robot for testing.

To rotate a robot key:

1.  Disable any active robots that rely on the old robot key.

    **Caution:**  This step is essential. The old key is immediately deactivated once a new key is generated. Any robots using the old key will fail to connect as intended.

2.  In the Operations Manager, go to the **Robot detail** page.
3.  Click **Manage Connection**.
    **Result**: The Manage Connection screen displays.
    ![manage connection](images/manage-connection.png)
4.  Click **Refresh Robot Key**.
    **Result**: A confirmation message displays and you can copy the refreshed key.
    ![refresh key](images/robot-key-refreshed.png)
5.  Click **Copy Robot Key** and save it to your credentials manager.

    **Tip:**  Be sure to copy the robot key now. You will not have another chance to view it.

6.  Ensure your `getRobotKey.bat` or `getRobotKey.sh` script is dynamic enough to retrieve the updated key.
7.  Enable any robots you disabled in step 1 after you have thoroughly tested to ensure the new robot key works as expected.

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...