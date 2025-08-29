---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/deploying-apps-rps.html
original_path: rpa-9.17/deploying-apps-rps.html
version: "25.3"
title: "Deploy Robotic Tasks and Apps"
page_id: "rpa-9.17/deploying-apps-rps"
section: "What's included in the robotic task export package?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deploy Robotic Tasks and Apps

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  This topic only applies to Appian environments 23.2 and earlier. In Appian 23.3 and later, you'll deploy robotic tasks as part of a [package](../prepare-deployment-packages.html).

Robotic tasks follow a different deployment pattern than other Appian design objects. There are some steps you should take in Appian RPA alongside your routine [application deployment process](../Deploy_to_Target_Environments.html).

This page describes the process of deploying a robotic task in Appian. Each step includes links to relevant documentation so you can become more familiar with the process overall. As you get more experience deploying the robotic tasks, you can use this page as a reference.

## What's included in the robotic task export package?

Administrators can efficiently deploy robotic tasks between environments without needing to coordinate closely with the developer. You won't need access to an integrated development environment or the repository directly to collect these files. Instead, Appian RPA bundles everything into a ZIP file for administrators or non-developers to easily deploy to target environments.

The exported package includes the robotic task configuration and related Java artifacts. These artifacts include classes and workflow libraries referenced by the robotic task, which are required for it to execute successfully. You can also include credentials that share permissions with the robotic package in the export package.

**Workflow libraries** are defined in the console and referenced within the definition of a robotic task. When exporting a robotic task that relies on a workflow library, Appian automatically exports the definition and the Java artifacts of the workflow library.

Learn more about [workflow libraries](../libraries.html).

## Prepare the robotic task and Appian deployment package

In the Appian RPA console:

1.  Go to the **Robotic Tasks** tab.
2.  Find the robotic task you want to export and click **Configure** ![configure icon](images/rpa-configure-icon.png) in the **Actions** column.
3.  In the robotic task configuration, click **Export Robotic Task** ![rpa-export-rp-icon.png](images/rpa-export-rp-icon.png) in the toolbar.
4.  You'll see the credentials the robotic task has permissions to use. Choose the credentials to include in your robotic task export package.

    ![rpa-export-credentials.png](images/rpa-export-credentials.png)

5.  Click **Export** to export the package: the robotic task configuration (including libraries and dependencies) and the credentials you selected. If the robotic task, workflow libraries, or Maven dependencies were deleted during this process, you'll see an error message saying they weren't able to be exported.

6.  In the **Export Complete** window, click **Download Package** to download the robotic task package as a ZIP file. Be sure to also download the [customization file](#manage-rpa-import-customization-file), if applicable.

    ![rpa-export-complete.png](images/rpa-export-complete.png)

7.  Repeat the previous steps for each robotic task you're exporting.
8.  Provide the packages to the person or team responsible for deploying the robotic task in the new environment.

In Appian:

1.  [Prepare the deployment package](../prepare-deployment-packages.html).

    **Tip:**  The developer must make sure all robotic task dependencies in Appian are accounted for (including process models, document folders, and web APIs). There won't be any warnings on either import or export if dependencies referenced by the robotic task aren't present.

## Deploy robotic tasks and Appian apps

When you import a robotic task package to the target environment, Appian RPA walks you through the steps to import each piece of the package.

Before you deploy, keep in mind:

-   If you don't already have a service account and API key that is used for Appian RPA, [generate an API key](../Appian_Administration_Console.html#api-keys) and [create service accounts](../User_Roles.html#service-account-role) for the Appian RPA connected system.
-   [Update the Appian import customization file](../Managing_Import_Customization_Files.html) with the API key for the RPA connected system.
-   [Update the RPA import customization file](#manage-rpa-import-customization-file) with any new or updated credentials and environmental variables.
-   If the user importing the robotic task isn't a system administrator, the user must share permissions with the robotic task. If the user and robotic task don't share permissions, they'll see an error message telling them they can't import.
-   Robotic tasks created in an older version of Appian RPA can be imported into newer Appian RPA environments. However, you can't import new robotic tasks into older versions of Appian RPA.

To import the robotic task configuration in the Appian RPA Console:

1.  On the **Robotic tasks** tab, click the **Import robotic task** icon ![rpa-import-rp-icon.png](images/rpa-import-rp-icon.png) in the toolbar.
2.  Browse for the package or drop it into the **Import Robotic Task** window. Click [**Include import customization file**](#manage-rpa-import-customization-file) if you want to upload one to use with the robotic task.
3.  Click **Inspect** to confirm that the pieces you're uploading are compatible with the target environment or existing robotic task.
4.  In the **Inspection Results** window, you'll see a list of the items included in the robotic task package. Appian checks to see if the incoming credentials or libraries already exist in the target environment.
5.  Observe the **Status** for each object:

    -   **Changed**: The item to import is different from the one that exists in the target environment. If you choose to continue the import, the newer version of this item will be imported and replace the existing one.
    -   **New major version**: The workflow library to import is a different version that one that exists in the target environment. If you choose to continue the import, the new workflow library will be imported and won't impact the existing workflow library. The new workflow library and the existing workflow library will both remain.

        **Tip:**  Libraries appear as **Not Changed** unless the version number is incremented. Whenever you update a library, you should [increment the version number](../libraries.html#versioning-your-workflow-library).

    -   **Not Changed**: The item has the same group ID, artifact ID, and version as an item in the target environment, and the object is skipped during import.
    -   **New**: The item doesn't exist in the target environment.

    ![rpa-inspection-results.png](images/rpa-inspection-results.png)

6.  Click **Import** to continue adding the items to the target environment. The items are added to the default repository.
7.  A confirmation screen appears to show you which items were imported successfully.

Complete the following manual configurations:

-   Ensure that the [correct robot](robots.html) is available and set up correctly.
-   Verify that [permissions are set up appropriately](security-rpa.html) between the service account and robots that need to communicate.
-   Global support files (optional) - If your robotic task relies on global support files, make sure that the files exist in the environment.

Repeat the previous steps for each robotic task you're importing.

Finally, in Appian, [deploy the Appian package](../Deploy_to_Target_Environments.html) according to your established process.

## Manage RPA import customization file

Deploying a robotic task between environments is an essential piece of the development lifecycle. During testing, the robotic task might access other testing environments so it doesn't manipulate production data or interact with live systems. Developers use environmental variables and other values in the robotic task configuration. Appian RPA uses a customization file to help you update these values quickly and easily when deploying to another environment.

This page describes how to create, manage, and maintain an Appian RPA customization file. The file is closely related to [Import Customization](../Managing_Import_Customization_Files.html) files you might be used to work with during standard Appian application deployment. You might see some of the guidance repeated here.

### Import customization

You can change the values of certain variables or components of a robotic task during deployment with an Import Customization file. Use the import customization file for values that vary between environments or that are not exported for security reasons, such as credentials.

**Note:**  An import customization file is generated only for robotic tasks that use environmental variables or credentials.

The import customization `.properties` file is generated when you export the robotic task in the Appian RPA Console. This file lists all the values that can be configured for the applicable variable or settings (they are commented out by default). You'll edit the file with the values needed in the target environment, then upload the file during import.

An example customization file contains the following:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
## Instructions
##
## All of the properties in this file are commented out; they have a pound
## symbol at the start of each line that renders them inert.
##
## Instructions and headings are marked with two preceding pound
## symbols (##).
##
## On import, all commented-out properties are ignored, and the
## corresponding values in the destination environment remain
## unchanged.
##
## To set or change a property on import using this file,
## uncomment the property by removing the pound symbol from the start
## of its line. Then enter a value for the property after the equals
## sign (=) at the end of that import customization file.
##
## If you uncomment a property, but provide no value, the value of
## that property will be set to null in the destination environment.
## Properties that correspond to admin console settings and require a value
## will be set to their default value instead of being set to null. Default
## values of settings may be different between versions of Appian.
##
## Note: Never remove the double pound symbols (##) in front of instructions
## and headings.

## RPA Robotic Process: My-Bot
##
## The robotic task contains environment variables that will be
## imported. These values will be displayed in Appian exactly as they are
## specified here. No spaces are trimmed. Values do not need to be
## encased in quotation marks.
#roboticProcess.5e57d945e4b0a9e8b0d53802.envVar.devurl=https://www.appiandev.com

## Credential Application: Outlook
##
## Text values will be displayed in Appian exactly as they are
## specified here. No spaces are trimmed. Values do not need to be
## encased in quotation marks.
#credential.9r73io234blj23jb5bhli3670.username=outlookuser
#credential.9r73io234blj23jb5bhli3670.password=
```

The example above uses the following formats:

Environment variables:

```
1
roboticProcess.<robot-uuid>.envVar.<variable name>
```

Credentials:

```
1
2
credential.<credential-uuid>.username
credential.<credential-uuid>.password
```

The following rules apply to how an import customization file is read and values are set:

-   Lines with a # are ignored.
-   Lines that reference a setting or object that cannot use import customization or is not in the import package will be ignored.
-   The value will be set to whatever is specified between the = character and the next line break, including any whitespace.
-   If you uncomment a line in the import customization file for a valid property but do not put anything on that line, the value will be set to null.

### Managing multiple files

Since [robotic tasks are exported separately](#prepare-the-robotic-task-and-appian-deployment-package), they will generate separate import customization files. Appian recommends that you have a single import customization file for _each environment_ in your deployment pipeline. This way, all the environment-specific values for environmental variables and credentials can be managed in one place. These main files should be named according to the environment they are intended for and should be version controlled in your system. The deployment manager will need to keep the values and files in sync when values are changed or new environment specific values are introduced.

When you [import a robotic task to the target environment](#deploy-robotic-tasks-and-appian-apps), you can upload the main customization file with it. Variables that don't apply to the robotic task are ignored.

### Importing values for the first time

As mentioned above, all environment-specific values for a single environment should be stored in their own main import customization file for that particular environment. Whenever introducing new values that will require import customization, add the generated lines for these into the single main file for each environment with the applicable values.

During import, only the values that reference a setting or environment-specific variable that are in the current import package will be used. This allows you to continue to use the same main import customization file for every import (new robotic tasks or updates to existing ones) on that environment since the non-applicable values will be ignored.

The basic steps for importing values set by import customization are:

1.  Export your robotic task and download the generated import customization file.
2.  Uncomment the lines in the file and fill out the values for the current environment.
    -   For environmental variables, the default values from the source environment are already populated, and can be modified for the current environment.
    -   For credentials, you'll need to add the password to the file manually.
3.  Save the changes in the main import customization file.
    -   If you already have a main import customization file for each environment, then you only need to add the new lines and values to the existing files.
    -   If this is the first time you're using the import customization file in this Appian RPA environment, save this file and store it as the main import customization file for your current environment.
4.  Make a copy of this file for every environment in your deployment pipeline and update each of those files to have the corresponding values for that environment. It's likely that some of these values will need to be provided to you by the developers.
5.  Import your robotic task package and the environment's import customization file together from the _Import Robotic Task_ dialog in the [Appian RPA console](#deploy-robotic-tasks-and-appian-apps).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...