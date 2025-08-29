---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-console-configuration.html
original_path: rpa-9.17/manage-console-configuration.html
version: "25.3"
title: "RPA Console Configuration"
page_id: "rpa-9.17/manage-console-configuration"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# RPA Console Configuration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

The Appian RPA console is the command center for your automation environment. This page describes how to set up and customize different aspects of the RPA console.

To access Appian RPA customization and configuration, click **Settings** > **Configuration** in the left pane. ![settings-config.png](images/settings-config.png)

## Console license

This area shows read-only information about your environment. ![rpa-config-license.png](images/rpa-config-license.png)

## Customization

Customize the console with the following properties:

-   **Language**: Choose a language for the Appian RPA user interface: English or Spanish.
-   **Identifier**: Console identifier. This information is provided by Appian and is associated with the console license.
-   **Instance**: Instance name of the console. Just like the identifier, it is provided by Appian and is associated with the console license.
-   **Console URL**: URL to access the console.

![rpa-config-customization.png](images/rpa-config-customization.png)

## Restart configuration

Configure console restart behavior with the following settings:

-   **Restart**: select **SSH + command**
-   **Port**: Port to establish the SSH connection
-   **Username**: Username for the SSH connection
-   **Password**: Password for the SSH connection
-   **Command**: Command to execute in the machine for the restart

![rpa-config-restart.png](images/rpa-config-restart.png)

## Security policies

This area allows you to configure settings that [allow Appian to update web drivers](actions-browser.html#browser-module-architecture), [disable unclean robots on start up](manage-robots.html#disable-robots-on-restart), and [use robot keys for authentication](manage-robots-installation-config.html#robot-keys).

![security policies](images/security-policies.png)

## SMTP email configuration

-   **SMTP Email configuration**: This area allows you to adjust the email server settings used by Appian RPA. The platform uses SMTP to send emails.
-   **Host**: email server's URL
-   **Port**: access port (SMTP) to the email server
-   **User**: username to access the email server
-   **Password**: password to access the email server
-   **From (email)**: address that appears on emails sent from the Appian RPA
-   **From (name)**: name that appears on emails sent from the Appian RPA
-   **Use TLS**: enables the TLS security protocol for sent emails
-   **Check email**: email address to be used for testing these setting. Click **Check** to send the test email.
-   **Send exceptions**: choose whether to send an email every time an exception is thrown
-   **Exceptions to (emails)**: email addresses to send trace logs of internal RPA server errors. Note that errors that occur with robotic task executions are not included in this email. The field _Send exceptions_ must be enabled. Separate multiple email addresses with commas.

![rpa-config-smtp.png](images/rpa-config-smtp.png)

## Default dashboard configuration

This area is no longer used.

## Tools configuration

This area shows information for the tools connected to Appian RPA to develop and execute robotic tasks, such as Maven.

**Caution:**  The fields are populated with default information. Do not change these settings.

![rpa-config-tools.png](images/rpa-config-tools.png)

## Server trace configuration

The options in this area let you customize server logs that appear on the **Maintenance** page. Choose what type of information to include, as well as file sizes. Be mindful that that log files can consume a lot of disk space on the server. Configure the following options:

-   **Application server**: Minimum log level for the application server log system. Traces below this level will be ignored.
-   **Appian RPA**: Minimum log level for the Appian RPA log system. Traces below this level will be ignored.
-   **Maximum file size**: Maximum file size for a trace log. Once the maximum file size is reached, the file is archived. A new trace log file is created each time the maximum is reached.
-   **\# backup files**: Maximum number of backup files to keep in the server. Once reached, older files are removed to make room for newer files.
-   **File per robot**: When enabled, additional log files are created for each robot configured in the console.
-   **Only use specific**: When enabled, log traces are only written in the log file of the specific robot.

![rpa-config-trace.png](images/rpa-config-trace.png)

## Show or hide an information message

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

If your Appian RPA environment is undergoing maintenance or may not be available at a certain time, administrators can create a message to display to all users when they open the console.

![info-msg-ico.png](images/info-msg-ico.png)

To show or hide an information message:

1.  Go to the **Robotic tasks** tab.
2.  In the toolbar, click the **Show/hide information message** ![rpa-show-hide-msg-icon.png](images/rpa-show-hide-msg-icon.png) icon. The **Information message** window displays.
3.  In the **Information message** box, enter the text of the message you want to show.
4.  Click **OK**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...