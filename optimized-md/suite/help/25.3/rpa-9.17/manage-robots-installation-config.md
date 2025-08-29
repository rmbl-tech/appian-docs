---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-robots-installation-config.html
original_path: rpa-9.17/manage-robots-installation-config.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Robots

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

This page provides information on how to install and set up robots through the [Operations Console](manage-rpa.html#operations-console-overview).

**Tip:**  Only administrators can create and delete robots in the **Operations Console**.

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

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

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

### Configure the host machine

For the automatic sign-in service to work as expected, you must first complete several prerequisite steps. These steps and installation require administrator privileges. Once the service is installed, you can execute a robotic task using a standard user account.

Additionally, the host machine must use a Windows 64-bit OS (x64-based) and the user account Appian uses to sign in should be configured in the following ways:

-   The user account must belong to the **Remote Desktop Users** local group.
    -   To add the user account, go to `Computer Management > Local Users and Groups > Groups > Remote Desktop Users`.

        ![rpa-rdp-groups](images/rpa-rdp-groups.png)

-   The user account should have the following rights in the **Local Security Policy**, which you can find in `Local Security Policy > Local Policies > User Rights Assignment`:
    -   **Access this computer from the network**
    -   **Allow log on locally**
    -   **Allow log on through Remote Desktop Services**

        ![rpa-rdp-policy](images/rpa-rdp-policy.png)

-   The robot must allow Remote Desktop Connections. To configure this:
    1.  Open the Start menu.
    2.  Search for `Remote Desktop Settings`.
    3.  Verify **Enable Remote Desktop** is **On**.

### Launch the installer on the host machine

**Tip:**  You need administrator privileges on the host machine to install the sign-in service using the instructions below.

After you configure the host machine, install the sign-in files using the installation wizard:

1.  Launch the installer you downloaded previously.
2.  After reading the **License Agreement**, click **Next**.
3.  Choose a **Destination Folder** located in the user folder of the user account that you'll use to sign in. For example, `C:\Users\<username>\AppData\Local`. The installer will create a folder titled `Appian RPA` in this location with all the necessary files.
4.  Click **Install** to complete installation.
5.  On the final step of the installation wizard, click **Show details** to see an installation summary or click **Close** to finish.
6.  Exit the installation wizard.
7.  To check the installation was successful, go to `Services`. You should see the new service in the list: `Appian RPA AutologinService [Host Machine Name]`.
8.  Before testing automatic sign-in, ensure that you properly sign out of your user session. Click on your user account icon and select **Sign out**.

You are now ready to use automatic sign-in.

**Note:**  If your Windows OS uses a proxy for internet access, configure the auto-login service to use this proxy too. See the [Configure the proxy for the auto-login service](#configure-a-proxy-for-the-auto-login-service) information on this page.

#### Change the default user starting the sign-in service

When installing the automatic sign-in service, the service is automatically started by the Local System account, which is the predefined local account used by the service control manager. You can change it to be another user if you'd like to use a separate account. This user account does not need administrator privileges.

To modify which account starts the service:

1.  Right-click on the service and select **Properties**.
2.  Go to the **Log On** tab.
3.  Configure the login parameters. The user you choose must have permissions on the installation directory to be able to execute the service and write log files.
4.  Restart the service.

### Configure a proxy for the auto-login service

If your Windows OS uses a proxy for internet access, you need to configure the auto-login service to use this proxy too.

Before you begin, make sure you've set up a local account on the Windows Virtual Machine specifically for the auto-login service. You can choose any name for this account.

1.  Open the Start menu and search using the term **Environment**.

    [![images/environment-search.png](images/environment-search.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1373)

    [![](images/environment-search.png)](#_)

2.  Complete one of the following options to navigate to the **Environment Variables** screen:

    | If you are logged in with... | Then... |
    | --- | --- |
    | an admin account | select **Edit the system environment variables** from the search results. The System Properties window displays. Next, click the **Environment Variables** button. |
    | a service account that does not have admin privileges | select **Edit environment variables for your account** from the search results. |

3.  Complete the following steps two times to add both of these environment variables: **HTTP\_PROXY** and **HTTPS\_PROXY**.
    a. Click the **New** button to display the **New User Variable** window.

    [![images/new-user-variable.png](images/new-user-variable.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1374)

    [![](images/new-user-variable.png)](#_)
    b. Configure the following fields:

    -   **Variable Name**: Enter **HTTP\_PROXY** or **HTTPS\_PROXY**.
    -   **Variable Value**: Enter the corresponding proxy URL you want to use. Ensure you use the right protocol for each URL, such as `http` or `https`.

        | If your proxy... | Then... |
        | --- | --- |
        | does not require authentication | enter each address as a regular URL. For example: `http://proxyaddress:port` |
        | requires authentication | embed the username and password in the URL like this: `http://username:password@proxyaddress:port`.
        **Note**: If your password includes the @ symbol, replace the symbol with `%40`. Otherwise, this variable will not work.

         |

        **Example**

        [![images/http-proxy-example.png](images/http-proxy-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1375)

        [![](images/http-proxy-example.png)](#_)

    c. Click **OK** on each open window to close them and return to the desktop.

4.  Open the Start menu again and search for **services**.
5.  Open the **Services** application (this application may require administrator rights) and locate the service related to the auto-login. The service name should be **Appian RPA AutologinService (robot name)**.

    [![images/services-scr.png](images/services-scr.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1376)

    [![](images/services-scr.png)](#_)

6.  Double-click the Appian RPA AutologinService to open the properties window.
7.  Select the **Log On** tab.
8.  Complete one of the following configuration options:

    | Configuration Option | Description |
    | --- | --- |
    | **User-scoped environment variables (Recommended)** |
    We recommend using this user-scoped environment variables approach, because it is more secure and less likely to interfere with other programs that may be running on the same machine.

    1.  Select the **This account** radio button then click **Browse...**.
        **Result**: The **Select User** window displays.
    2.  In the **Enter object name to select** field, enter the name of the user account you want the service to use.
    3.  Click the **Check Names** button to locate and properly select the user account.
    4.  Click **OK** to return to the Log On tab.
    5.  Enter the password for the account under which the Service will run.
        **Note**: This set of credentials is distinct from your proxy credentials. Be sure to run the service under the account for which you set environment variables.

    ![](images/select-user-window.png) |
    | **Machine-scoped environment variables** |

    Select the **Local System account** radio button.

    ![](images/localSysAccount.png) |

9.  Click **OK** to close the Services window.
10.  Restart Windows to apply all changes.

### Test signing in to the host machine

Back in the Operations Console, you can test the connection to the host machine remotely. Appian does this through Remote Desktop Protocol (RDP).

-   If creating a new robot, go to the **Manage Connection** step in the **Create Robot** wizard.
-   If editing an existing robot, go to **MANAGE CONNECTION**.

1.  Go to the **Test connection** section.
2.  Click **SIGN IN**. You'll see a success message if Appian signed in successfully. If Appian wasn't able to sign in, you'll see an error message describing the problem. See [Troubleshooting](#troubleshooting) below to learn how to fix the issue.
3.  Click **SIGN OUT** to end the user session Appian launched during sign in. This step ensures the host machine is ready for Appian to sign in automatically in the future.

**Tip:**  If there is an active user session on the robot, Appian may not be able to sign in successfully. For the best results, ensure there is no active user session for the user account Appian uses to sign in to the robot.

![RDP signs in successfully](images/rpa-rdp-signin.gif)

If your test was successful, then you're all set! Appian will automatically sign in to this host machine using the provided credentials whenever the robot is called upon to execute a robotic task.

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

## Manage connection

### Download the installer

For a robot to test, record, or execute robotic tasks, you need to install and launch the [agent](agents.html) on the host machine. The agent enables the robot to communicate with Appian, so it's an essential part of the setup process.

You can download the installer when you [create the robot](#create-a-robot). Or, you can download the installer at a later time through the **MANAGE CONNECTION** menu. [Launch the guided installer](agents.html#set-up-the-agent-on-a-windows-host-machine) to complete robot setup.

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

## Automate robot installation on a Windows host machine

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

You can simplify setting up Appian RPA robots by automating the process. This process makes it quicker and easier to get agents up and running on different virtual machines, leading to a smooth, automated RPA setup ready to grow with your needs.

### Preparation

Before proceeding, it's essential to ensure that all [pre-requisites are met](#before-you-begin) and that all settings are correctly configured. In addition, you should complete the following tasks to prepare your environment.

| **Task** | **Description** |
| --- | --- |
| **Enable Manual Robot Key Rotation setting** | Enable the [Manual Robot Key Rotation](manage-robots-installation-config.html#manual-robot-key-rotation) setting. This setting is vital for security and control over robot keys.

If you are using Appian 23.4 or earlier, this setting is called _Authenticate Windows OS robots with robot keys_. |
| **Create robots with automatic sign-in enabled** | [Create the robots](#create-a-robot) whose installations you want to automate by selecting the appropriate options and configurations.

For each robot, ensure that the automatic sign-in feature is enabled. This setting is crucial for allowing robots to authenticate and operate without manual intervention.

Make sure to note down the robot key for future reference. After acquiring the robot key, store it in a secure vault, like AWS Secrets Manager. You will use a batch file to access the robot key for a designated host machine. This enables the agent and the automatic sign in service to retrieve the robot key and establish a connection with the RPA server. |
| **Verify network and security settings** | Ensure that your network settings are configured to allow communication between the robots and the Operations Console. This may involve adjusting firewall settings or network access control lists. |

### Installation Process

The installation process involves executing the Appian RPA installer on your Windows host machine. The installer is a zip file containing two key components: the `rpa-installer.exe`, which installs both the agent and the automatic sign in service, and the `rpa-installer.properties`, which contains necessary configuration settings for the installation.

Follow the steps below to ensure a smooth installation.

#### Step 1. Download an installer

You'll download the installer in the Operation Console from an available robot or when you create a new one.

1.  Start in one of the following ways:
    -   If creating a new robot, go to the **Manage Connection** step in the **Create Robot** wizard.
    -   If editing an existing robot, go to **MANAGE CONNECTION**.
2.  Click **DOWNLOAD INSTALLER**.

#### Step 2. Prepare the installer

The installer that you downloaded in Step 1 is a zip file that contains the `rpa-installer.exe` file and the `rpa-installer.properties` file. These files must be placed in the same folder. It's up to you to decide which folder that is.

The way you set up the installer depends on whether you're using the same Windows user account for all your robots or different ones:

-   **Same User Accounts**: If all robots use the same user account, you can make one Windows image that includes the `rpa-installer.exe` and the `rpa-installer.properties` file, and it'll be ready to use.
-   **Different User Accounts**: If the robots have different user accounts, you should make a Windows image with just the `rpa-installer.exe`. Then, add a customized `rpa-installer.properties` file for each specific user account (make sure to change the `robot.userName`) into the image before you start installing. Do not make any other changes to the `rpa-installer.properties` file.

Ensure each user session automatically runs a single agent. The agent's executable file, linked to the robot's profile in the Operations Console, is unique to one host machine. Downloading the agent automatically invalidates earlier versions to avoid conflicts.

**Example**

![robot-user-name-example.png](images/robot-user-name-example.png)

**Note:**  Ensure the `.exe` file and the `.properties` file are in the same folder before proceeding.

#### Step 3. Execute the installer

Carry out the following steps on the host machine where you want to install the agent. You'll need administrator privileges to complete installation since the installer includes the agent and automatic sign-in service.

-   Launch the installer using a Batch file, Command Prompt, or PowerShell script.
-   For a silent installation, append `/S` to the installer command; e.g., `rpa-installer.exe /S`. This must be a capital `/S`. The silent mode allows the installer to run without manual input, as if clicking 'Next' through the installation wizard.

#### Step 4. Write a script for placing the robot key file

[Robot keys](#robot-keys) encapsulate a robot's unique identity in a single credential that can be incorporated into your custom scripts. You might have a universal script that retrieves the correct robot key based on the host machine's details. Alternatively, you could have individual scripts for each robot, tailored for use on their respective host machines. The robot key should be the last line in the output of the script.

As soon as they start, both the agent and the automatic sign in service look for the [robot key file](#robot-keys) named `getRobotKey.bat`. Create a script that places the `getRobotKey.bat` file in the same directory as the Appian RPA installation. The automatic sign-in service and the agent will automatically be able to authenticate with the robot key.

**Example**

![file-example.png](images/file-example.png)

#### Post-installation checks

It's crucial to note that since you are using the automatic sign-in service, you need to close all open sessions on the host machine, or just the particular user's session if it's operating on a Windows Server.

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