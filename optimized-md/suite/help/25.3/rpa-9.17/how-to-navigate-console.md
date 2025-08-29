---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/how-to-navigate-console.html
original_path: rpa-9.17/how-to-navigate-console.html
version: "25.3"
title: "Navigate the Console"
page_id: "rpa-9.17/how-to-navigate-console"
section: "Open the Appian RPA console"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Navigate the Console

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Caution:**  RPA Queues and Scheduling are deprecated and will be removed in Appian 26.1. To schedule robotic tasks, use process model timer events instead. The Queues and Scheduling menus in the RPA Console are now hidden by default for customers who are not actively using them.

The Appian RPA console is the command center for your automation environment. This page describes how to find the areas in the console where you can complete common tasks.

## Open the Appian RPA console

When you log in to Appian, you're automatically logged in to Appian RPA. To access the Appian RPA console, navigate your browser to the following URL:

`https://yoursite.example.com/rpa`

You can also access the console through the Appian navigation menu.

![rpa-appian-access.png](images/rpa-appian-access.png)

### Tabs in the console

You'll see additional tabs in the Appian RPA console. Each tab shows information about your Appian RPA environment and allows you to take actions, detailed below.

-   **Dashboard**
-   **Users** _(Admins only)_
-   **Robotic tasks**
-   **Monitoring**
-   **Settings** _(Admins only)_
-   **Statistics**

You can create and manage robots from the [Operations Console](manage-robots.html).

**Tip:**  All timestamps shown in the console refer to the console's defined time zone (UTC -4) and not the user's local time.

## Show or hide an information message

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

If your Appian RPA environment is undergoing maintenance or may not be available at a certain time, administrators can create a message to display to all users when they open the console.

![info-msg-ico.png](images/info-msg-ico.png)

To show or hide an information message:

1.  Go to the **Robotic tasks** tab.
2.  In the toolbar, click the **Show/hide information message** ![rpa-show-hide-msg-icon.png](images/rpa-show-hide-msg-icon.png) icon. The **Information message** window displays.
3.  In the **Information message** box, enter the text of the message you want to show.
4.  Click **OK**.

## Enable or disable robotic task execution

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

When performing maintenance, administrators can temporarily disable execution of all robotic tasks in Appian RPA.

![robotic-task-lock.png](images/robotic-task-lock.png)

To enable or disable the execution of robotic tasks:

1.  Go to the **Robotic tasks** tab in the RPA console.
2.  In the toolbar, click the **Enable/disable execution of robotic tasks** ![rpa-toggle-executions-icon.png](images/rpa-toggle-executions-icon.png) icon. The **State change** page displays.
3.  In the **Custom additional message** box, enter the text of the message you want to show.
4.  Click **OK**.

## Robotic tasks

**Note:**  The Appian 23.3 release introduced the ability to create, manage, and deploy robotic tasks as design objects directly from Appian Designer. For more information, see the Migration Guide: Moving from Appian RPA Console to Appian Designer.

### Create a robotic task

You can create a robotic task in the Appian RPA console from multiple tabs, including the **Dashboard** and the **Robotic tasks** tab. To get started, click the **Create robotic task** icon in the toolbar.

![rpa-toolbar-create-rp.png](images/rpa-toolbar-create-rp.png)

See [Create a Robotic Task](robotic-task-creation.html) for more detailed instructions.

### Import a robotic task

You may want to import a robotic task from another environment during development. Click the **Import robotic task** icon in the toolbar.

![rpa-toolbar-import-rp.png](images/rpa-toolbar-import-rp.png)

See [Import a robotic task](import-a-robotic-task.html) for more detailed instructions.

### Configure a robotic task

Once you create a robotic task, you need to configure the actions it takes, the order it should follow, and how data flows into and out of it. All of these details are determined in the robotic task configuration. You can access the robotic task configuration page by clicking the **Configure** icon wherever it appears for the robotic task, usually in lists or in the toolbar menu.

![rpa-toolbar-configure.png](images/rpa-toolbar-configure.png)

See [Configure a Robotic Task](robotic-task-configuration.html) for more detailed instructions.

### Execute a robotic task

You can start a new execution multiple places in the console. For example, to start an execution from the robotic task configuration page, click the **Execute** icon ![rpa-execute-icon.png](images/rpa-execute-icon.png) in the toolbar:

![rpa-toolbar-execute.png](images/rpa-toolbar-execute.png)

See [Ways to Execute a Robotic Task](robotic-task-execution.html) for more information and additional execution options.

## Repositories

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

The **Repositories** screen on the **Robotic tasks** tab allows you to manage the Maven repositories that robotic tasks use. During execution, the robotic task needs to download dependencies from these Maven repositories to successfully execute on the robot.

To get started, click the **Repositories** icon in the toolbar:

![rpa-toolbar-repo.png](images/rpa-toolbar-repo.png)

See [Manage Repositories](manage-repositories.html) for more information about adding and deleting repositories.

## Lists

You'll see many lists in the Appian RPA console: robotic tasks, executions, libraries, and repositories, just to name a few. Some of these lists contain valuable information and can be quite long.

To help you use this information outside of the console, you can filter the lists to show information you're interested in. Then, you can export the list to access the information in your chosen file format.

Export icons appear at the bottom of most lists, along with pagination options:

![rpa-export-list-icons.png](images/rpa-export-list-icons.png)

See [Filter and Export Lists](manage-lists.html) for details about managing lists.

## Execution details

On the **Dashboard**, you'll see the list of robotic tasks that are currently running or ready to run. This list is only available when there is at least one robotic task running.

[![images/rpa-list-of-rps-execution.png](images/rpa-list-of-rps-execution.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1360)

[![](images/rpa-list-of-rps-execution.png)](#_)

Use any column to sort the list. By default, the list is sorted by execution priority. You'll see the following information in the list:

-   **Robotic task**: The robotic task's name.
-   **Priority (P)**: The robotic task's priority. You can set the priority level when you [create a new robotic task](robotic-task-creation.html).
-   **Description**: The execution's description.
-   **Robot**: The robot associated with the execution.
-   **Execution**: The execution's unique identifier.
-   **Start**: Date and time when the execution began.

You can also see the execution's progress in this list. Use the pause button to pause a robotic task or the stop button to end it.

See [View the execution log](manage-robotic-tasks.html) for more detailed instructions.

## Credentials

Credentials are a secure way to store usernames and passwords that robotic tasks might need to log in to external systems. You can use the Appian RPA console to store, reference, and update credentials.

In the toolbar on the **Robotic tasks** tab, click the **Credentials** icon to manage credentials:

![rpa-toolbar-credentials.png](images/rpa-toolbar-credentials.png)

See [Manage Credentials](manage-credentials.html) for more detailed instructions.

## Workflow libraries

A workflow library is a small piece of custom code that provides generic functionality. Libraries are useful because they provide actions that can be reused in a robotic task's workflow or source code to perform certain operations. For example, a library could establish a VPN or proxy connection. Learn more about [how libraries are used in robotic tasks](../libraries.html).

![rpa-toolbar-libraries.png](images/rpa-toolbar-libraries.png)

## Charts and reports

Appian RPA provides charts and reports to summarize information regarding executions.

![rpa-toolbar-charts.png](images/rpa-toolbar-charts.png)

See [View Charts and Reports](manage-charts-reports.html) for more detailed instructions.

## Console configuration

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

To access Appian RPA customization and configuration, click **Settings** > **Configuration** in the left pane.

![settings-config.png](images/settings-config.png)

From here, you can view and manage things like the console license, customization, restart configuration, security policies, SMTP email configuration, server trace configuration, as well as other types of maintence.

See [Console Configuration](manage-console-configuration.html) for more detailed information and instructions.

## Actions and events

Under the **Monitoring** tab, you can manage actions and events in the Appian RPA console.

**Actions** are operational steps the console can take when certain criteria are met, using **Events** as the trigger. For example, you can configure the console to send an email to a person or group of people when a robotic task begins or ends.

![monitoring-tab.png](images/monitoring-tab.png)

1.  Go to the **Actions** page within the **Monitoring** tab.
2.  Go to the **Actions editor**.
3.  Choose from the following settings to configure the action as desired:
    -   **Action type**: Choose the event to occur for this action:
        -   **CONTAINER\_NODE\_START**: Start a robot container
        -   **CONTAINER\_SELECTED\_NODE\_START**: Start the selected robot container
        -   **CONTAINER\_SELECTED\_NODE\_STOP**: Stop the selected robot container
        -   **EMAIL**: Send an email
        -   **EXECUTION\_ROBOT\_FAILURE**:
        -   **NODE\_RELAUNCH**: Relaunch a robot
        -   **REMOVE\_LOG\_FILES**: Remove log files older than a chosen number of days
        -   **ROBOT\_LAUNCH**: Execute a robotic task
        -   **TOGGLE\_EXECUTION\_ROBOT\_FEATURE**: Enable or disable the execution of all robotic tasks in the console
    -   **Action detail**: Narrow the criteria for the action. The options in this list vary based on the **Action type** selected. For example, if you select **CONTAINER\_SELECTED\_NODE\_START** for the **Action type**, specific robots are listed here. In this example, you can choose the robot to act upon. For some actions, you can select multiple options in the **Action detail** menu.
    -   **To event**: The event that acts as a trigger for this action. Options are described in the table below.
    -   **Depending on**: The condition that initiates the action. The options in this list vary based on the **To event** selected. For example, if you select **NODE\_OFFLINE** for the **To event**, specific robots are listed here. In this example, you can choose the robot to initiate the action if it goes offline.

**Events** are used to launch actions, but they are also logged in the console so administrators have a comprehensive view of what actions occur and when.

The following table described each event that can be triggered within the console:

| Event | Description |
| --- | --- |
| **API\_FILE\_INVOKED** | The FILE API is called. This method isn't recommended because it was developed specifically for legacy systems not supporting REST API. It is strongly recommended to use the REST API whenever is possible. |
| **API\_INVOKED** | The main methods of the console's REST API are invoked. |
| **BACKUP\_END** | The backup process of the console ends. |
| **BACKUP\_START** | The backup process of the console starts. |
| **COMMAND\_ON\_SESSION** | A remote control command is received, either activating the microphone in the browser (only for Chrome) or using the mobile application. |
| **CONSOLE\_LIVE** | The console is started. |
| **CONSOLE\_LOW\_FREE\_HARD\_DISK\_SPACE** | The free disk space is under the threshold defined for the console in **Settings** > **Configuration**. |
| **EXECUTION\_NEEDLESS** | An execution is self-removed after it ends. |
| **EXECUTION\_ROBOT\_FEATURE\_DISABLED** | The execution of robotic tasks is disabled on the console. |
| **EXECUTION\_ROBOT\_FEATURE\_ENABLED** | The execution of robotic tasks is enabled on the console. |
| **FORGOT\_CREDENTIALS** | A user asks for an email to reset credentials. |
| **LOGIN\_FORM** | A user logs into the console. |
| **LOGIN\_FAILURE** | A login attempt to the console is unsuccessful. |
| **LOGOUT** | A user logs out of the console. |
| **NODE\_CONTAINER\_START** | A container is started. |
| **NODE\_CONTAINER\_STOP** | A container is stopped. |
| **NODE\_DISABLED** | A robot is disabled. |
| **NODE\_ENABLED** | A robot is enabled. It occurs when it connects to the console and shows as **Enabled**. |
| **NODE\_LIMIT\_MEMORY** | A robot has reached its maximum specified memory. |
| **NODE\_LOCKED** | A robot is locked (a user needs to log in). |
| **NODE\_LOW\_FREE\_HARD\_DISK\_SPACE** | The free disk space for the robot is under the threshold defined in **Robot detail** page. |
| **NODE\_OFFLINE** | The console detects that a robot has gone offline. |
| **NODE\_ONLINE** | A specific agent instance is successfully registered. The agent is started on a robot and connects to the console. |
| **NODE\_UNLOCKED** | A robot has been unlocked. |
| **REMOVE\_LOG\_FILE** | A user removed a log file through the maintenance page on the RPA console. |
| **REPORT\_FINISHED** | A report was generated and is available for download. |
| **ROBOT\_ABORTED** | A robotic task execution is aborted. |
| **ROBOT\_END** | A robotic task ends its execution. |
| **ROBOT\_EVENT** | This event is specifically triggered by the robots through the platform API. It allows you to monitor specific situations notified by the robots to the platform. |
| **ROBOT\_EXECUTION\_DISABLED** | An attempt was made to run a robotic task whose execution is disabled on setup. |
| **ROBOT\_START** | A robotic task starts its execution. |

## View console configuration information

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

To access Appian RPA customization and configuration, click **Settings** > **Configuration** in the left pane.

-   **Console license**: This area shows read-only information about your environment. ![rpa-config-license.png](images/rpa-config-license.png)
-   **Customization**: Customize the console with the following properties:
    -   **Language**: Choose a language for the Appian RPA user interface: English or Spanish.
    -   **Identifier**: Console identifier. This information is provided by Appian and is associated with the console license.
    -   **Instance**: Instance name of the console. Just like the identifier, it is provided by Appian and is associated with the console license.
    -   **Console URL**: URL to access the console. ![rpa-config-customization.png](images/rpa-config-customization.png)
-   **Restart configuration**: configure console restart behavior with the following settings:
    -   **Restart**: select **SSH + command**
    -   **Port**: Port to establish the SSH connection
    -   **Username**: Username for the SSH connection
    -   **Password**: Password for the SSH connection
    -   **Command**: Command to execute in the machine for the restart ![rpa-config-restart.png](images/rpa-config-restart.png)
-   **Security policies**: This area allows you to configure settings that [allow Appian to update web drivers](actions-browser.html#browser-module-architecture), [disable unclean robots on start up](manage-robots.html#disable-robots-on-restart), and enable the use of [robot keys](manage-robots-installation-config.html#robot-keys).
-   **SMTP Email configuration**: This area allows you to adjust the email server settings used by Appian RPA. The platform uses SMTP to send emails.
    -   **Host**: email server's URL
    -   **Port**: access port (SMTP) to the email server
    -   **User**: username to access the email server
    -   **Password**: password to access the email server
    -   **From (email)**: address that appears on emails sent from the Appian RPA console
    -   **From (name)**: name that appears on emails sent from the Appian RPA console
    -   **Use TLS**: enables the TLS security protocol for sent emails
    -   **Check email**: email address to be used for testing these setting. Click **Check** to send the test email.
    -   **Send exceptions**: choose whether to send an email every time an exception is thrown
    -   **Exceptions to (emails)**: email addresses to send trace logs of internal RPA console server errors. Note that errors that occur with robotic task executions are not included in this email. The field _Send exceptions_ must be enabled. Separate multiple email addresses with commas. ![rpa-config-smtp.png](images/rpa-config-smtp.png)
-   **Default dashboard configuration**: This area is no longer in use.
-   **Tools configuration**: This area shows information for the tools connected to Appian RPA to develop and execute robotic tasks, such as Maven.

    **Caution:**  The fields are populated with default information. Do not change these settings.

    ![rpa-config-tools.png](images/rpa-config-tools.png)

-   **Server trace configuration**: The options in this area let you customize server logs that appear on the **Maintenance** page. Choose what type of information to include, as well as file sizes. Be mindful that that log files can consume a lot of disk space on the server. Configure the following options:
    -   **Application server**: Minimum log level for the application server log system. Traces below this level will be ignored.
    -   **Appian RPA**: Minimum log level for the Appian RPA log system. Traces below this level will be ignored.
    -   **Maximum file size**: Maximum file size for a trace log. Once the maximum file size is reached, the file is archived. A new trace log file is created each time the maximum is reached.
    -   **\# backup files**: Maximum number of backup files to keep in the server. Once reached, older files are removed to make room for newer files.
    -   **File per robot**: When enabled, additional log files are created for each robot configured in the console.
    -   **Only use specific**: When enabled, log traces are only written in the log file of the specific robot. ![rpa-config-trace.png](images/rpa-config-trace.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...