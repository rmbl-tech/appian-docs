---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/import-a-robotic-task.html
original_path: rpa-9.17/import-a-robotic-task.html
version: "25.3"
title: "Import a Robotic Task"
page_id: "rpa-9.17/import-a-robotic-task"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Import a Robotic Task

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

You can use an existing robotic task definition as the basis for your new robotic task. This page describes how to do this manually using Appian Designer.

Manual deployment is just one way of importing and exporting objects in Appian Designer. See the [Deploy to Target Environments](../Deploy_to_Target_Environments.html) page for information and instructions on using direct deployment or APIs.

## Know before you begin

Robotic tasks are imported and exported as part of a [package](../prepare-deployment-packages.html) in Appian Designer. Packages are a tool for building your applications and ensuring successful deployments. When you import a package, you add all the objects from the package to the current application. If a robotic task in the package already exists in the target environment, it only imports if there's a status change or detected conflict. Learn more about the entire process of importing and exporting objects on the [Deploy to Target Environments](../Deploy_to_Target_Environments.html#manual-export-and-import) page.

## Export a robotic task

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

**Tip:**  Before you can import a robotic task, you must export the existing robotic task as part of a package.

To export a robotic task, complete the following steps:

1.  In the Build view, click the **CREATE PACKAGE** button in the toolbar.
    **Result**: The Create Package dialog displays.

2.  Configure the [package properties](../prepare-deployment-packages.html#package-properties).
3.  Click **CREATE**.
4.  Mark the checkbox next to the robotic task(s) you want to export then click **ADD TO PACKAGE** button in the toolbar.
    ![RTDO-AddtoPackage.png](./images/RTDO-AddtoPackage.png)
    **Result**: The Add to Package dialog displays.

5.  Select the package you just created in the dropdown list then click **Add**.
    **Result**: The Build view displays.

6.  Click the **VIEW PACKAGES** button in the toolbar.
    **Result**: The Packages dialog displays.

7.  Mark the checkbox next to the package you created and to which you added your robotic task.
8.  Click the **EXPORT** button.
    **Result**: The Export Package dialog displays.

9.  When the export is complete, click **DOWNLOAD PACKAGE** to download the ZIP file.

## Import a robotic task

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

To import a robotic task that is part of a package, complete the following steps:

1.  In the Build view, click the **Import Package** button in the toolbar.
2.  Upload your exported ZIP file.
3.  Select the **Include import customization file** box if you're using one of [these files](deploying-apps-rps.html#manage-rpa-import-customization-file) to manage variables and other components.
4.  Click **INSPECT**.
5.  Review the inspection results. If there are no issues, click **IMPORT**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...