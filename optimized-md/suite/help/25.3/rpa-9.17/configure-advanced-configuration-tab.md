---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/configure-advanced-configuration-tab.html
original_path: rpa-9.17/configure-advanced-configuration-tab.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure the Advanced Configuration Tab

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  The Advanced Configuration tab is only available in the Appian RPA console. If you are using Appian 23.3 or later and RPA 9.3 or later, see the [Configure Run-Time Settings](configure-run-time-settings-tab.html) and [Configure Technical Information](configure-technical-information-tab.html) pages instead.

## Overview

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

In the **Advanced Configuration** tab of the robotic task configuration page, you can configure the following settings:

-   [Execution settings](#execution-settings)
-   [Environment variables](#environment-variables)
-   [Sub-results description](#sub-results-description)
-   [Support files](#support-files)
-   [Technical information](#technical-information)

## Execution settings

In this section, you can choose how this robotic task behaves when executions are launched consecutively from an Appian process model. Options include:

-   **Run setup and cleanup for each execution**: Each consecutive robotic task execution includes the actions specified in the setup and Cleanup sections.
-   **Skip setup and cleanup for consecutive executions**: Setup actions only occur at the start of the first execution, and cleanup actions only occur at the end of the final execution.

If the robotic task doesn't require a robot to be reset before the next execution occurs, you can choose **Skip setup and cleanup for consecutive executions**. This option speeds up each execution, and the compounded time savings can make the overall set of consecutive executions much faster.

[Learn more about the Setup and Cleanup sections](robotic-task-definition.html#3-sections).

In some scenarios, Setup and Cleanup sections are still run even if you choose to skip them for consecutive executions. These sections run when the:

-   Next execution is for a different robotic task
-   Execution runs into an unexpected exception
-   Robot does not have any further pending executions to pick up

**Note:**  RPA does not automatically detect changes to robotic tasks during active executions. If you make any updates to your robotic task, simply stop and restart the executions to ensure your changes take effect.

Certain components of the robotic task configuration may behave differently when setup and cleanup are skipped:

-   **Variables**: When setup and cleanup are skipped, any robotic task variable that isn't a parameter is reset to the value it had at the end of the last setup. Any robotic task variable that is a parameter will be set to the value defined as part of the execution request. When you choose to skip setup and cleanup, avoid updating any variables used in the Setup section.
-   **Credentials**: If you use credentials in a Setup section, the credentials are reserved and won't be released until the Cleanup section successfully completes. This means that if the robotic task executes consecutively and the configuration is set to **Skip setup and cleanup**, then the credentials won't be released until the final execution's Cleanup section completes. Credentials used in the main section are released at the end of that specific execution.

**Tip:**  If you choose to skip setup and cleanup for consecutive executions, be sure to design the robotic task workflow in the main section so it executes reliably in this manner. For example, if the robotic task is meant to submit a form multiple times with different data, be sure to add an action toward the end of the workflow for the robotic task to navigate back to the starting form. This way, each consecutive execution occurs smoothly and predictably.

## Environment variables

![rpa-env-variables.png](./images/rpa-env-variables.png)

You can define environment variables, which are sent to the robot as "key-value" pairs. The difference is that they are sent in all the executions but they are not requested in each execution. To modify them, it is necessary to modify robot settings. This facilitates having different configurations in different robot environments (for example, development and production).

To add an environment variable:

1.  Go to the **Advanced Configuration** tab of the robotic task configuration page.
2.  Find the **Environment variables** area.
3.  Click **Add variable**. A new row displays.
4.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | **Name** | The name that serves as the key in the key-value pair. |
    | **Value** | The value for the environment variable. |

5.  Click **SAVE CHANGES** in the toolbar.

To edit an environment variable:

1.  Go to the **Advanced Configuration** tab of the robotic task configuration page.
2.  Find the variable you want to change in the **Environment variables** area.
3.  Edit the **Name** and **Value** parameters.
4.  Click **SAVE CHANGES** in the toolbar.

To delete an environment variable:

1.  Click the **Advanced Configuration** tab.
2.  Find the variable you want to delete in the **Environment variables** area.
3.  Click the **Delete variable** icon ![950863.png](./images/950863.png) in the variable row.
4.  Click **SAVE CHANGES** in the toolbar.

## Sub-results description

![rpa-sub-results.png](./images/rpa-sub-results.png)

Sub-results are used to categorize the items results, making it possible to differentiate items already classified as OK or WARNING. The colors and statuses appear in the results column on the [list of executions](how-to-navigate-console.html#execution-details).

This items categorization is shown in the following table:

| Icon | Color name |
| --- | --- |
| ![2236517.png](./images/2236517.png) | CHOCOLATE |
| ![2236514.png](./images/2236514.png) | CORAL |
| ![2236529.png](./images/2236529.png) | CYAN |
| ![2236511.png](./images/2236511.png) | DARK\_GRAY |
| ![2236523.png](./images/2236523.png) | INDIGO |
| ![2236528.png](./images/2236528.png) | LIGHT\_GRAY |
| ![2236533.png](./images/2236533.png) | LIME |
| ![2236526.png](./images/2236526.png) | MAGENTA |
| ![2236521.png](./images/2236521.png) | OLIVE |
| ![2236531.png](./images/2236531.png) | RED |

For example, for a specific WARNING, you could assign a sub-result color to indicate different causes such as technical problems (sub-result CORAL) or data problems (sub-result CYAN).

## Support files

Support files help you avoid having to add files in a robotic task's code, so the code is leaner and deploys much faster. Working this way also allows you to change the files' content (neither adding nor removing them) without affecting the robotic task's deployment.

In the **Support files** area of the configuration, you can upload support files to be used by this robotic task only or shared globally among your robotic tasks.

If you upload a ZIP containing an internal folder structure of support files and enable the **Unzip on server** option, Appian automatically creates the corresponding folder structure on the server. If you don't immediately see the unzipped contents of the file, but instead see the name of the ZIP file in the Root tree, refresh your browser.

To support methods in the Browser low-code module, the browser driver files must be stored in a specifically named folder in the Root tree. You must manually add this folder, and then unzip the driver files into that folder. For more information, see [Using the Browser Module](actions-browser.html#using-the-browser-module).

![browser-module-support-files.png](./images/browser-module-support-files.png)

### Task-specific support files

To manage support files to be used by this robotic task only, use the following icons within the **Support files** area:

| **Icon** | **Description** |
| --- | --- |
| ![rpa-preview-icon.png](./images/rpa-preview-icon.png) | Preview the image support files. |
| ![rpa-upload-icon.png](./images/rpa-upload-icon.png) | Upload a new file to the server. |
| ![2232696.png](./images/2232696.png) | Download the file or folder from the server. When downloading a folder, Appian RPA creates a ZIP file for the folder and its contents. |
| ![rpa-rename-icon.png](./images/rpa-rename-icon.png) | Rename a file/folder on the server. |
| ![2232700.png](./images/2232700.png) | Create a new folder on the server. |
| ![2232735.png](./images/2232735.png) | Delete a file or folder on the server. |

In addition, by dragging and dropping any folder or file, you can move the folder or file across different locations in the folder structure on the server.

When you upload a ZIP file, you can specify if you want it to unzip on the server, thus creating the corresponding folder structure it contains upon upload completion.

### Global support files

If you want to share files between different robotic tasks, you can use global support files. Global support files make it easier to manage things on a large scale. To navigate to the global support files, click the **Support files** icon ![2232759.png](./images/2232759.png) located in the **Support files** toolbar in the Appian RPA console.

Essentially, this window is the same window that displays in the [support files area](#support-files) and contains the folder structure and files robotic tasks can use. Files and folders display in alphabetic order. The folders are sorted first and then the files. The way you upload, download, move and rename files and folders is very similar. The difference lies in how you define which robotic tasks can access which files.

To give a robotic task access to a global support file, the robotic task should have a permission tag with the same name as the folder it is trying to access.

![global_files_example.png](./images/global_files_example.png)

**Tip:**  Administrators can see support files for all robotic tasks. Developers can only see files for robotic tasks they're permitted to access.

![rpa-global-support-files.png](./images/rpa-global-support-files.png)

The table below shows robotic tasks, their permissions, and the folders and files they can access, according to the previous picture. Both robotic tasks can access the drivers folder since both robotic tasks have the `drivers` permission tag.

-   | **Folder/Permission Tag** | **Robotic Tasks** | **Support Files** |
    | --- | --- | --- |
    | data | ROA\_ReportGeneration | DailyReport.xls |
    | drivers | ROA\_ReportGeneration
    GPS\_SoftwareUpdates | chromedriver.exe
    geckodriver.exe |
    | updates | GPS\_SoftwareUpdates | Program\_4.0.2\_Patch\_003.exe |

### Access support files in code

The following shows an example of how we could obtain the path to access a file uploaded in this section.

```
1
2
3
4
5
Path path = Paths.get(
    server.getCurrentDir(),
    "folder",
    FILE_NAME).
        toRealPath(LinkOption.NOFOLLOW_LINKS);
```

In the previous code snippet, we assume that we have a folder called "folder", and a file whose name is defined in the constant _FILE\_NAME_.

### Technical information

**Note:**  This section is relevant to [custom code development](development-environment-overview.html) only. If you're using low-code modules, you can ignore this section.

At the end of the page, you can see the definition of the repository where the project has been automatically deployed. To make this link work properly, it is necessary to have previously deployed the robot binaries in the defined Maven repository. This is done using the following instruction:

`mvn clean deploy`

![rpa-technical-info.png](./images/rpa-technical-info.png)

In this section, you can find the technical information contained in the robot setup:

-   **Technology**: Technology in which the robot has been built: Java, AutoHotkey or Autoit. If you choose the latter, the form will only have fields for **Executable** and **Version**.
-   **Repository**: Maven repository where the robotic task code is located.
-   **Group**: Identifier for the group of the robot's Maven artifact.
-   **Robotic task**: Identifier for the Maven artifact.
-   **Version**: Version of the robot's Maven artifact.
-   **URL**: Complete URL to the robot's Maven artifact, only necessary if previous fields are not specified.
-   **Main class**: The main class to be executed, that is, the input class for the robot.

It is possible to select the robot's main class if the Maven artifact's information has been setup properly. To do so, click on the **Select main class** icon ![2232766.png](./images/2232766.png) and select the main class from the list of all classes available in the Maven artifact.

In case some of the fields of the Maven coordinates associated with the artifact are not correct, an error message will show up as a warning. If no classes are shown, check that the artifacts successfully deployed to Maven, as well as the Maven configuration is correct.

Use the **Check dependencies** ![rpa-dependency-icon.png](./images/rpa-dependency-icon.png) button to validate that the configuration of the robot is correct in terms of dependencies and the versions of these dependencies. A window appears that shows the artifacts that have a different version in the robot and in the agent.

![rpa-dependency.png](./images/rpa-dependency.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...