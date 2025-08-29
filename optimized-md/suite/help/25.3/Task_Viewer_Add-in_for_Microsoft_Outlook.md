---
source_url: https://docs.appian.com/suite/help/25.3/Task_Viewer_Add-in_for_Microsoft_Outlook.html
original_path: Task_Viewer_Add-in_for_Microsoft_Outlook.html
version: "25.3"
title: "Task Viewer Add-in for Microsoft Outlook"
page_id: "Task_Viewer_Add-in_for_Microsoft_Outlook"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Task Viewer Add-in for Microsoft Outlook

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page shows you how to connect Microsoft Office to Appian. Through the use of an [Embedded Interface](Embedded_Interfaces.html) and an [Office Add-in](https://docs.microsoft.com/en-us/office/dev/add-ins/outlook/), the integration described below allows users to view and complete their Appian tasks without ever leaving Outlook.

To configure the integration, you and the systems you'll being configuring must meet the following requirements:

-   You are using one of the following versions of Outlook:
    -   Office 2016 for Windows
    -   Office 2016 for Mac
-   You have administrator access to Outlook
-   You have system administrator access to Appian

![Office365 Task Viewer](images/Office365_TaskViewer.png)

## How to set up the add-in

The following sections detail how to set up the add-in in Appian and Outlook.

### Enable the add-in in Appian

Before uploading the add-in manifest to Outlook, you will need to enable the add-in endpoint in Appian.

1.  Go to the [Microsoft Office tab](Appian_Administration_Console.html#microsoft-office) of the Admin Console.
2.  Click **Enable Integration**.
3.  Click **Save Changes**.
4.  Click **Download the site-specific add-in manifest** to download the manifest. This is used in the next step.

### Enable the add-in in Outlook

There are two ways to enable the add-in in Outlook: globally and on a per-user basis. For production use, you should enable the add-in globally. When enabled globally, you do not need to worry about users not in Appian because the add-in will only appear if the user receives an Appian task email. Instructions for enabling the add-in on a per-user basis are provided for initial testing.

#### Enable the add-in for all users

1.  Go to the [Outlook Exchange Control Panel](https://outlook.office365.com/ecp/)
2.  Click **add-ins** under **organization**
3.  Click the **+** icon above the grid, then select **Add from file**.
4.  Upload your manifest file.
5.  Click **Next**.
6.  Once uploaded, the add-in will be **Optional, disabled by default**. If you want it enabled by default for users, click on the newly-added row in the grid, then click the pencil icon to edit. From there, set the user default to **Optional, enabled by default**.

All Outlook accounts should now be connected to Appian. You can tell it is enabled for your users by following steps 1-3 in the next section and seeing the add-in displayed.

**Note:**  There can be a significant delay, up to a few hours, between enabling the add-in in the control panel and seeing it enabled for your users.

#### Enable the add-in for one user

1.  From within the Outlook web client, click the gear in the upper-right corner to view settings
2.  Click **Manage integrations**.
3.  Go to the **Add-Ins** tab.
4.  Click **Click here to add a custom add-in**.
5.  Click **Add from file…**.
6.  Click **Install**.

Your single account should now be connected to Appian, and the add-in should appear in the list of add-ins associated with your account.

### Testing the configuration

To test the configuration:

1.  Go to one of your Appian tasks.
2.  Copy the URL from your browser's address bar, for example, `https://mysite.appiancloud.com/suite/tasks/task/12345`.
3.  Paste that URL into an email to yourself.
4.  Open the email. With the add-in installed, if the add-in is configured correctly, a button labeled **New Task** will appear above the email body. Clicking the button will load the task form in Outlook.

## Usage considerations

The following notes detail additional information about the add-in:

-   Only [SAIL interface](SAIL_Design.html) tasks can be completed using the add-in.
-   If a single email contains links to multiple tasks, only the first task in the list of links can be completed.
-   If you have users that want to use the add-in in multiple environments, you will need to upload a manifest from each environment.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...