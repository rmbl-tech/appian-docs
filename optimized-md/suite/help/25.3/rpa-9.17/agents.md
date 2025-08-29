---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/agents.html
original_path: rpa-9.17/agents.html
version: "25.3"
title: "Agents"
page_id: "rpa-9.17/agents"
section: "What is an agent?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Agents

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Starting with RPA 9.12, agents must use Java 17. For complete information, review the [Java 17 Upgrade Guidance](java17-upgrade-guidance.html).

## What is an agent?

The **agent** is a software component you install on the host machine so it can communicate with Appian. The agent must be running on the host machine so that the robot has access to the data it needs to execute robotic tasks. You can also start a robotic task execution directly on the host machine using the agent.

This page covers the steps to set up the agent and use it to monitor activity on the connected host machine.

To set up the agent, you need to:

1.  [Determine how to launch the agent](#determine-how-to-launch-the-agent)
2.  [Configure the host machine](#prodlink-reqs)
3.  Set up the agent on a [Windows host machine](#set-up-the-agent-on-a-windows-host-machine) or [Mac host machine](#set-up-the-agent-on-a-mac-host-machine)
4.  [Check the agent is running](#check-the-agent-is-running)

**Note:**  Before setting up a new agent on your host machine, make sure you remove any previously installed agents and automatic sign-in service files. For RPA 9.4 and later, an "Appian RPA" folder with an uninstaller is automatically created. Users who upgraded to RPA 9.4 before Sept 21, 2023 need a hotfix (jidoka-9.4.0-659cdfad6216, 21 Sep 2023); those after don't. Later versions have the folder and uninstaller automatically.

## Determine how to launch the agent

Your choice of how to launch the agent determines what's included in the installer and what options you may need to configure on the host machine.

Before a robotic task begins, a user session needs to be started on the host machine so that the agent can establish a connection with Appian. This user session can be started manually or automatically. In both cases, carefully consider which user account you want to use, because the agent will have the same privileges on the host machine as the OS user that's signed in when the agent is launched.

To launch the agent automatically, [configure Appian to sign in to the host machine automatically](manage-robots-installation-config.html#allow-appian-to-sign-in) as needed. You can configure Appian to sign in with a user account that has basic or administrator privileges.

If you prefer to launch the agent manually, first sign in to the host machine with a user account that has administrator privileges. The agent needs administrator privileges in case it needs to unblock any locked sessions on [a virtual machine](manage-robots-installation-config.html#using-a-virtual-machine). The agent may also need administrator privileges to work with files on the host machine, as well as access the web driver for [browser actions](actions-browser.html). See the [FAQs](faqs.html#how-should-windows-computers-be-set-up-to-properly-execute-robotic-processes?) for more information.

## Installer prerequisites

You'll install the agent on a **host machine**, or a PC or virtual machine where robotic tasks are executed. You can deploy, configure, and execute [robots](robots.html) on one or several host machines. A robot requires an agent to be installed and running in order to execute a robotic task on a host machine. Every robot has a corresponding agent, which can only be used on one host machine.

You can create a virtual machine in the leading virtualization systems, such as Citrix, VMware or VirtualBox, to use as a host machine and execute robotic tasks.

**Note:**  Be sure to add the host machines to your Appian environment's firewall allow list, if applicable. The robotic task may not be able to execute successfully if the firewall blocks communication between the agent, host machine, and server.

### Java requirement

Java 17 must be installed on the host machine to launch the agent and run robotic tasks. Ensure your environment and host machines have Java 17. To ensure compatibility, choose the 32-bit or 64-bit Java version that matches your operating system.

**Note:**  After installing Java, you must set the JAVA\_HOME environment variable to point to the Java installation directory. The following image is an example for Windows: ![2235078.png](images/2235078.png)

### Allowing Appian to sign in

If you choose to [allow Appian to sign in](manage-robots-installation-config.html#allow-appian-to-sign-in), the installer will include additional files to support this functionality.

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

## Set up the agent on a Windows host machine

### Download the agent installer

You'll download the agent in the Operation Console from an available robot or when you create a new one. To make setup easier, we recommend that you carry out the following steps on the host machine where you wish to install the agent.

**Note:**  Install and run only **one agent per user session**. The agent executable file is associated with the robot entry in the Operations Console. This file can only be used on one host machine. When you download the agent, any previous installations of the same agent are invalidated. To prevent installation issues, remove any previously installed agents before installing a new one. There should be only one agent executable file per directory.

1.  Start in one of the following ways:
    -   If creating a new robot, go to the **Manage Connection** step in the **Create Robot** wizard.
    -   If editing an existing robot, go to **MANAGE CONNECTION**.
2.  Click **DOWNLOAD INSTALLER**.

**Note:**  If you chose to [allow Appian to sign in](manage-robots-installation-config.html#allow-appian-to-sign-in), the installer includes files to install the automatic sign-in service as well as the agent. To prevent installation issues, remove any previously installed automatic sign-in service files and agents before using the installer again.

You'll need administrator privileges to complete installation when the installer includes the agent and automatic sign-in service.

### Install the agent

1.  Open the installer to launch the agent installation wizard.
2.  After reading the **License Agreement**, click **Next**.
3.  Choose a **Destination Folder** located in the user folder of the user account that you'll use to launch the agent. For example, `C:\Users\<username>\AppData\Local`. The installer will create a folder titled `Appian RPA` in this location with all the necessary files.
4.  Click **Install** to complete installation.
5.  On the final step of the installation wizard, click **Show details** to see an installation summary or click **Close** to finish.

**Note:**  The agent launches automatically after you complete installation.

### Manually launch the agent

1.  Navigate to the host machine.

    **Tip:**  Sign in as an administrator when you launch the agent to prevent connection disruptions in the future.

2.  Go to the folder where the agent is located.
3.  Open the file to launch the agent.
4.  Once the agent has started correctly, the Appian icon shows up in the taskbar.

You can check that the agent is running from the host machine and the console.

## Set up the agent on a Mac host machine

### Download the agent

You'll download the agent in the Operations Console from an available robot. To make setup easier, we recommend that you carry out the following steps on the host machine where you wish to install the agent.

**Note:**  Install and run only **one agent per host machine**. The agent executable file is associated with the robot entry in the Operations Console and can only be used on one host machine. When you download the agent, any previous installations of the same agent are invalidated. To prevent installation issues, remove any previously installed agents before installing a new one. There should be only one agent executable file per directory.

1.  Start in one of the following ways:
    -   If creating a new robot, go to the **Manage Connection** step in the **Create Robot** wizard.
    -   If editing an existing robot, go to **MANAGE CONNECTION**.
2.  Click **DOWNLOAD ROBOT (.RUN)**.
3.  Save the agent file in an empty folder that's easy to access. For example, you could create a new folder `AppianRPA` on the desktop.

### Manually launch the agent

To launch the agent on Mac or Linux:

1.  Navigate to the host machine.

    **Tip:**  Sign in as an administrator when you launch the agent to prevent connection disruptions in the future.

2.  Open the terminal.
3.  Change the location to the directory where the agent is located.
4.  Grant permissions to the agent file using the command: `chmod +x AppianRPAagent.run`.
5.  Run the file using the command `./AppianRPAagent.run`.
6.  Keep this terminal window open to maintain the connection to the console.

You can check that the agent is running from the host machine and the console.

## Check the agent is running

Once the robot is configured, the agent is running and ready to execute robotic tasks. To check that the agent is running on the host machine, look at the taskbar. The agent icon color appears **blue** when the agent is connected to the console.

![rpa-agent-system-icon.png](./images/rpa-agent-system-icon.png)

You can also select [**Element inspector**](#element-inspector) in the menu to check whether the connection is established or not.

To check that the agent is running on the Operations Console, the robot's status should be **Online** if the agent is properly connected and running.

**Tip:**  When you abort a robotic task execution, the agent may take a minute or two to come back online while it resets to ensure a clean and efficient state for your next task.

## Agent menu

To view the agent's menu, right-click on the agent icon. You'll see the following options:

-   [Robots](#robots)
-   [Element inspector](#element-inspector)
-   [Protect desktop](#protect-desktop)
-   [Create support image](#create-support-image)
-   [Generate config file](#generate-config-file)

![rpa-agent-menu.png](./images/rpa-agent-menu.png)

### Robots

The **Robots** menu lists robotic tasks available for this host machine. Click on a robotic task to execute it. You should only run robotic tasks that do not have required [input variables](./configure-edit-tab.html#robotic-task-variables) on their setup. If you launch a robotic task with required input variables in this way, the process won't run properly because it doesn't have the variables it needs to begin the execution.

### Element inspector

The **Element inspector** shows information to help you develop your robotic task.

![951556.png](./images/951556.png)

The **Element inspector** is a tool that shows detailed information about the application elements with which your robotic tasks are going to interact (buttons, text fields, menus, etc.). The information provided is different depending on your robotic task's development strategy: keyboard commands, Windows API, image recognition, etc.

Additionally, this tool informs you of the connection status of the host machine with the server, the position of the mouse pointer on the screen, and information about the active windows and controls. This window is very helpful for finding out the position of any control that your robotic task needs to interact with.

Your robotic tasks can interact with Windows controls using their IDs, which the element inspector provides. To get the ID, place your mouse over the control on the active window. The ID appears in the _Control_ > _Identifier_ area of the element inspector. You can use the ID to reference that control from a robotic task and use it to read or enter data.

**Tip:**  IDs may vary depending on the operating system version. Make sure you are running your robotic task on robots that use the same operating system version as the one used for its development.

### Protect desktop

The **Protect desktop** option allows you to protect the desktop where the agent is running. This option obscures the screen so no one can see what's happening during execution. The window that appears covering the screen is an "invisible" window. If a user right-clicks on the screen, they would see the desktop menu.

To disable this window, click in the zone where the taskbar should be. When the taskbar appears, click on the agent again to deactivate desktop protection.

### Create support image

You can use the agent to capture images and send them to robotic tasks that will use them as support files.

Learn more about this option on the [Image Recognition module](actions-image-recognition.html#create-support-image-tool) page.

### Generate config file

The configuration file is not required, but it allows you to tailor the agent's JVM settings. These settings may either be unknown when the agent is initially deployed or may vary during the lifespan of the robot. The file is formatted as a properties file, where each setting occupies a single line. The syntax for each line mirrors the format used for defining system properties (`-D<name>=<value>`) when running a Java program from the command line.

#### Requirements

-   The configuration file must be in the same folder as the agent's executable file.
-   The agent's executable and the configuration file should have identical base names, disregarding their file extensions. For example, if the executable is named `<name>.exe`, the configuration file should be named `<name>.l4j.ini`.

#### Common parameters

The most common parameters used in the config file include:

-   Debug in "Listen" mode:
    -   `-Xdebug`
    -   `-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=[PORT]`
-   Debug in "Attach" mode:
    -   `-Xdebug`
    -   `-Xrunjdwp:transport=dt_socket,server=n,suspend=n,address=[X.X.X.X]:[PORT]`
-   Most often used parameters for proxy connections:
    -   `-Dhttp.proxyUser=USER`
    -   `-Dhttp.proxyPassword=PASSWORD` (the password can be encrypted using the agent itself)
    -   `-Dhttp.proxyHost=DIRECTION_PROXY`
    -   `-Dhttp.proxyPort=8080`
-   Run the agent increasing its associated memory (for example, 1GB):
    -   `-Xmx1Gb`

#### Automatically generate the config file

You can manually create the config file; however, you can use the **Generate config file** option in the Agent menu to have it automatically generated for you.

1.  Right-click the agent icon and click **Generate config file**.
    ![generate-config-file.png](images/generate-config-file.png)
2.  Review the config file settings then click **Generate config file**. ![config-file-settings.png](images/config-file-settings.png)
    **Result**: The configuration file is automatically created for you in the default Appian RPA folder.

### Password encryption

Select **Password encryption** in the menu to obtain a hash from a password in plain text. This enables you to include encrypted passwords in the `jidoka.l4j.ini` configuration file, if necessary. The agent can detect if it is an encrypted password and will process it accordingly, thus protecting sensitive information.

## Agent directory hierarchy

When you launch a robotic task, the agent communicates with the server and downloads the libraries and artifacts needed for execution. This download is done only for the first execution of that robotic task, since at that time no library has been downloaded to the host machine. In later executions, these libraries should be available on the host machine, and they will be downloaded only if they are not found. The number of libraries to download depends on the dependencies and modules used during development.

**Caution:**  It is important that the agent is in a folder whose full path has no blanks to prevent it from encountering any problem during a robotic task execution.

The directory hierarchy is described below, assuming the agent is in the folder `C:\AppianRPA`. Upon execution, the agent will create the correct files and folders within `C:\AppianRPA` and run the robotic task.

-   `C:\AppianRPA`: Host machine's root directory. You can find certain files here that serve as your robotic task's activity log files.
    -   `AppianRPAagent.exe`: Agent's executable file.
    -   `.jidoka-cache`: Libraries required for robotic task's executions.
    -   `Jidoka-workspace`: Libraries and other files required by the robotic tasks.
    -   `example`: Specific support files for the robotic task _"example"_.
    -   `anotherRobot`: Specific support files for the robotic task _"anotherRobot"_.
-   `.jidoka-cache`: The folder in which the necessary libraries for the robotic task's proper operation will be stored.
-   `Jidoka-workspace`: Folder containing the individual directories of each robotic task. Within the folder `Jidoka-workspace`, there are as many subfolders as robotic tasks that have executed on the host machine. The folders use the robotic task's unique ID, consisting of letters and numbers. For example, a robot called _abc123_ would have an associated subfolder in `C:\AppianRPA\Jidoka-workspace\abc123`, which is the folder where all components required for its specific execution would be downloaded, and the files created during its execution would be stored. Appian RPA provides easy access to this folder programmatically.

## Agent upgrade behavior

Whenever Appian RPA upgrades to the latest version, active agents do as well. During the upgrade process, you may see a concurrency warning in the Appian RPA console. This message is temporary and expected. If you see this warning during an upgrade, try back in a few minutes.

To ensure smoother and faster upgrades, Appian recommends robots have more than the minimum 2 GB RAM. View [System Requirements](rpa-system-requirements.html) to learn more about required Appian RPA configurations.

If the warning persists or you have other issues during an upgrade, contact Appian Support for help troubleshooting the issue.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...