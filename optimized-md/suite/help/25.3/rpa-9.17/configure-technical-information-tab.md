---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/configure-technical-information-tab.html
original_path: rpa-9.17/configure-technical-information-tab.html
version: "25.3"
title: "Configure the Technical Information Tab"
page_id: "rpa-9.17/configure-technical-information-tab"
section: "General information"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure the Technical Information Tab

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  The information on this page is relevant to [custom code development](development-environment-overview.html) only. If you're using low-code modules, you can ignore this page.

The Technical Information tab is only available in the Appian Designer. You must be using Appian 23.3 or later and RPA 9.3 or later to see this tab.

## General information

At the end of the page, you can see the definition of the repository where the project has been automatically deployed. To make this link work properly, it is necessary to have previously deployed the robot binaries in the defined Maven repository. This is done using the following instruction:

`mvn clean deploy`

![rpa-technical-info.png](./images/rpa-technical-info.png)

In this section, you can find the technical information contained in the robot setup:

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...