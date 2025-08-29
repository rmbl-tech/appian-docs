---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/build-robots.html
original_path: rpa-9.17/build-robots.html
version: "25.3"
title: "Create a new Robot"
page_id: "rpa-9.17/build-robots"
section: "Introduction to robots"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a new Robot

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction to robots

A robot is a digital worker that's made up of two parts: a host machine and an agent. A robot needs a workspace, just like a human worker does. The host machine is the environment in which the digital worker completes robotic tasks. The host machine can be a physical machine, such as a separate computer, or a virtual machine on a cloud server. Multiple robots can map to the same host machine.

[Create a robot](#create-a-robot) for each physical or [virtual machine (VM)](#using-a-virtual-machine) to run [robotic tasks](robotic-task-definition.html). Every robot has a corresponding [agent](agents.html), which can only be used on one host machine. The **agent** is a software component you install on the host machine so it can communicate with Appian. The agent must be running on the host machine so that the robot has access to the data it needs to execute robotic tasks.

Use the Operations console to create robots and install agents on host machines.

![operations-console.png](images/operations-console.png)

## Before you begin

Before you begin, carefully review this checklist for creating new robots. It covers critical steps from launch decisions to final checks, ensuring your [agents](agents.html) are optimally configured for effective robotic task execution. Completing each step is crucial for maintaining smooth and reliable operations within Appian RPA.

-   [ ] 1\. **Host Machine Configuration**:
    -   Ensure the host machine meets [system requirements](rpa-system-requirements.html#host-machine-requirements) (e.g., Java 17 installed, firewall settings).
-   [ ] 2\. **Launch Method Decision**: Decide on automatic or manual [agent launch method](agents.html#determine-how-to-launch-the-agent).
    -   If you choose to use automatic sign-in (Windows host machines only), be sure to configure the user account for remote access and local security policy rights.
-   [ ] 3\. **Create a Robot**: Use the Operations Console to [Create a robot](#create-a-robot) for each physical or [virtual machine (VM)](#using-a-virtual-machine).
-   [ ] 4\. **Agent Installation**:
    -   Download the agent installer from the Operations Console.
    -   Run the installer, ensuring only one agent per host machine/user session.
        -   (Windows Only) The agent installer is in the zip file that you download from the Operations Console. The zip file also contains the properties file for your robot keys.
    -   Select the appropriate destination folder during installation.
-   [ ] 5\. **Agent Launch** (Mac/Linux Only):
    -   Use terminal commands to grant permissions and run the agent.
-   [ ] 6\. **Verification**:
    -   Check the agent is running (blue icon in the taskbar).
    -   Verify the connection status in the Operations Console.
-   [ ] 7\. **Directory Hierarchy Management**: Ensure proper [organization and naming](agents.html#agent-directory-hierarchy) of files and folders related to the agent.

**Note:**  Review the [Agents](agents.html) page for complete information about setting up and monitoring agents.

## Create a robot

1.  In the **Operations Console**, click **CREATE**.
    **Result**: The **Create Robot** wizard displays.
    ![create robot](images/create-robot-scr.png)
2.  On the **Robot Details** step, enter values in the following fields:
    -   **Name**: Editable name for the robot that is shown throughout Appian.
    -   **Operating system**: Choose the host machine's operating system: Windows, Linux, or Mac.
3.  (Windows host machines only) Optionally, choose to [**Allow Appian to Sign In**](#allow-appian-to-sign-in) by checking the **Enable automatic sign in** box.
4.  Click **Continue**.
    **Result**: The **Robot Security** page for the new robot displays.
    ![robot security](images/robot-rolemaps.png)
5.  Assign user or group [security role maps](#security) to the robot.
6.  Click **CREATE**.
    **Result**: The **Manage Connection** page for the new robot displays.
7.  Connect the robot to a host machine.
    -   Copy the [robot key](manage-robots.html#manage-connection) now if you plan to manually rotate it; you won't see the robot key again. If you don't rotate robot keys manually, the robot key won't display.
    -   Verify your host machine is ready for robot installation and download the robot installer. If you're using a physical host machine, you'll download the robot and launch it now. If you're using a virtual host machine, you can complete this step later.

**Note:**  **Next steps**

To enable a new robot to execute robotic tasks, ensure you [install the agent](agents.html) on the host machine. The agent facilitates communication between Appian and the host machine, including relaying the robot's status. Before installation, make certain the host machine is [properly configured](agents.html#prodlink-reqs).

### Using a virtual machine

You can use a VM to run robotic tasks. By default, VMs may timeout and become unavailable after a period of inactivity.

To ensure the VM remains available, you can [allow Appian to sign in](#allow-appian-to-sign-in) to the host machine to start an execution. You can also complete additional configurations on the VM. Microsoft Remote Desktop users can configure the following to prevent VM host machines from timing out:

-   Configure **Set time limit for disconnected sessions** to **Never**. See [Microsoft Help](https://docs.microsoft.com/en-us/troubleshoot/windows-server/remote/remoteapp-sessions-disconnected) for instructions.
-   Keep Microsoft Remote Desktop running. If you need to end the session:
    1.  Open the **Start** menu in the Remote Desktop Connection window.
    2.  Select **Disconnect**.

Additionally, ensure that the agent you have downloaded on the host machine has [administrator privileges](agents.html#determine-how-to-launch-the-agent) to allow them to unblock sessions as needed.

## Allow Appian to sign in

Before a robotic task starts, it may need to access your host machine and start a user session if one isn't already active. On top of that, your business may restrict the privileges available to this user session.

You can configure your robot to allow Appian to automatically sign into a virtual machine as any designated user (basic or administrator) in order to start a robotic task. This means that you won't need to keep user sessions active on virtual machines in case a robotic task needs to start. Instead of keeping user sessions active, Appian can start a session as needed for robots with **Standby** status.

Appian can also automatically sign out of the host machine if there are no more robotic tasks to run after the last execution. Configure this option to build more flexibility into your unattended automations.

The automatic sign in service automatically syncs and updates to the latest version when connecting to a newer version of Appian RPA, ensuring you always have the latest security features and performance enhancements.

**Note:**  Appian only supports **Enable automatic sign in** on Windows host machines.

You can find these configuration options when you create a robot or edit a [robot's details](manage-robots.html#view-robot-details).

To allow Appian to sign in:

1.  Start in one of the following ways:
    -   **Creating a new robot?**:
        Select the **Enable automatic sign in** checkbox on the **Host Machine Details** step in the **Create Robot** wizard.
    -   **Editing an existing robot?**:
        Select the **Enable automatic sign in** checkbox in the **Robot Details**.
2.  Fill in the following fields:
    -   **Domain**: The computer network where the user account is registered. If no domain or an invalid domain is provided, the windows service treats the credentials as a local account.
    -   **Username**: The username of the account that you want Appian to use to sign in to the host machine.
    -   **Password**: The password of the account that you want Appian to use to sign in to the host machine.
    -   **Screen resolution**: The screen resolution of the new user session. Select a resolution that matches the one used to develop the robotic task. The resolution determines where elements appear on the screen. The robotic task may be programmed to navigate to specific places on the screen to interact with those elements, so it's important to choose a resolution that matches the one used during development to ensure that actions are executed exactly the same. Select **Default** to use the host machine's default resolution.
    -   **Skip interactive logon message**: Windows machines can be configured with different security settings, including an **interactive logon** message. When Appian attempts to sign in to a host machine with an interactive logon message, it must acknowledge the message before it can continue. Enable this option to allow Appian to acknowledge the message and pass the interactive logon message.
3.  Click **SAVE**.

![allow-appian-sign-in.png](images/allow-appian-sign-in.png)

**Existing robots only**: If you're allowing Appian to sign in for a robot you already set up, you need to replace the agent on the host machine by downloading the installer again:

1.  Click **MANAGE CONNECTION**.
2.  Click **DOWNLOAD INSTALLER**.

### Automatic sign in and images

To improve image recognition for automatic sign in, try disabling font smoothing before taking screenshots. If you're having trouble with the image recognition, this could help.

![font-smoothing.png](images/font-smoothing.png)

## Use robot keys for authentication

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

## See also

For automating robot installation on Windows, refer to the [Automate Robot Installation on Windows](manage-robots-installation-config.html#automate-robot-installation-on-a-windows-host-machine) topic.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...