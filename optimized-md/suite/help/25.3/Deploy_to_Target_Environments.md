---
source_url: https://docs.appian.com/suite/help/25.3/Deploy_to_Target_Environments.html
original_path: Deploy_to_Target_Environments.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deploy to Target Environments

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page outlines the various methods to deploy a package from one environment to another, and which method is best for each type of environment.

When you deploy a package, changes are taken from the source environment and moved to the target environment. Some common deployment paths include:

| Source Environment | Target Environment |
| --- | --- |
| Development | Test |
| Development 1 | Development 2 |
| Break Fix / Hotfix | Development |
| Test | Production |

The optimal approach depends on the security considerations of your source and target environments, as well as the type of changes you have. Whether you are deploying one or more applications, packages, environment specific data, database scripts, plug-ins, Admin Console settings, or a mix of these can impact how you decide to deploy.

There are three methods for deploying a package in Appian:

-   **[Compare and deploy (direct)](#compare-and-deploy)**: Directly deploy applications, packages, plug-ins, and database scripts with guided steps.
-   **[Programmatic via APIs (external)](#prodlink-external-deployment-apis)**: Customize your own deployment process with our native deployment and export APIs.
-   **[Export and import (manual)](#manual-export-and-import)**: Manually import and export applications and packages between environments.

Additional logic can be run after direct or external deployments by [configuring a post-deployment process](post-deployment-process.html).

For auditing purposes, you can always find all changes introduced to an application in the [**Deploy** view](deployments-view.html).

## Before you begin deployment

Before you begin your deployment, we recommend the following actions.

### Determine what needs to be deployed

If you're unsure about what you should deploy, check the table below to see which best matches your use case.

| Deployment Contents | When to Use | More Information |
| --- | --- | --- |
| [Entire application](Deploy_to_Target_Environments.html#prepare-an-application) | Deploy your application configurations and all related design objects. Use if the application does not exist in your target environment. | You can include database scripts and plug-ins with your application deployment. |
| [Package](Deploy_to_Target_Environments.html#prepare-a-package) | Create a package or select an existing package to deploy a set of changes to your target environment. Learn how to [create a package](prepare-deployment-packages.html#create-package). | You can add application configurations, database scripts, and plug-ins to a package during development and when you deploy your package. |
| ONLY [database scripts](Deploy_to_Target_Environments.html#add-db-scripts) or [plug-ins](Deploy_to_Target_Environments.html#add-plugins) | If your application already exists in your target environment and you only need to deploy plug-ins or make changes to the environment's database via scripts, you can deploy these changes without objects. Database scripts and plug-ins can only be deployed to a target environment using compare and deploy if you are an application administrator. | To deploy database scripts and plug-ins without other objects, the application must already exist in your target environment. |
| [Admin Console Settings](Appian_Administration_Console.html) | If you need to change Admin Console settings, you can export specific settings from your source environment and import them into the target environment. You can import an application or package along with Admin Console settings via the Admin Console. | Certain settings that are specific to a given environment cannot be deployed, such as API keys or certificates. |
| [Import customization files](Managing_Import_Customization_Files.html) (ICF) | Use to change or configure the values of certain objects or settings during deployment. Primarily, ICFs specify values that vary between environments or that are not exported for security reasons, such as passwords. You can also use an ICF to dictate specific import behaviors such as forcing an update of unchanged objects or triggering a manual data sync for record types in the target environment. | Appian generates a template import customization file, which you download, edit, and upload for deployment. |

**Note:**  To deploy database scripts and plug-ins directly to a target environment, the **Allow deployments with plug-ins** and **Allow deployments with database scripts** settings must be enabled for the target environment. Learn more about [deployment settings in the Admin Console](Appian_Administration_Console.html#deployment-settings).

### Check deployment readiness

Check that your deployment contents are prepared and ready to be sent to your target environment. If you're deploying a package, make sure that you've properly [prepared it for deployment](prepare-deployment-packages.html).

### Determine the best time to deploy

For production environments, we recommend performing any deployment activities, including [inspections](inspect-deployment-packages.html), during off-peak hours. If necessary, a maintenance window can be scheduled in the [Admin Console](Appian_Administration_Console.html#maintenance-window). Also, consider adding a [post-deployment process to your application](post-deployment-process.html) to automate tasks and make your development lifecycle more efficient.

### Back up your production objects

If you are moving complete applications from a staging environment to a production environment, take standard precautions to ensure continuity by creating a backup of your production objects. If the deployment should fail for any reason, this allows you to restore the previous state of the application.

To create a backup of your production objects, [export](#manual-export-and-import) all of the existing objects associated with your application.

## Compare and deploy across connected environments

Compare and deploy is the easiest and recommended method of deployment. If your [DevOps infrastructure](Appian_Administration_Console.html#infrastructure) is set up, you can enable these connected environments to interact and directly deploy changes from one to another without manually downloading and uploading ZIP files. For deployments to higher environments such as Production, you can require a review process by enabling it in the [Admin Console](Appian_Administration_Console.html#infrastructure)

The compare and deploy feature guides you through a few straightforward steps:

1.  [Select your target environment](#select-the-target-environment).
2.  Select the items you want to deploy. These include your [application](#prepare-an-application) or [package](#prepare-a-package), as well as [application configurations](#add-application-configurations), [database scripts](#add-db-scripts), and [plug-ins](#add-plugins).
3.  [Inspect your deployment](#inspect-the-package) for internal issues.
4.  [Review your deployment settings](#review-details). This step allows you to upload an import customization file if needed.
5.  [Deploy to your target environment](#deploy).

### Step 1: Select the target environment

In the first step of compare and deploy, you'll select the environment where you want to deploy your application or package.

To start compare and deploy:

1.  Go to the [Build view](build-view.html) of your application.
2.  In the [deployment actions bar](build-view.html#elements), click **COMPARE AND DEPLOY**.
3.  Select the target environment to deploy to.
4.  Click **NEXT**.

[![screenshot of the select a target environment user interface](images/compareDeploy_selectTarget.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img227)

[![](images/compareDeploy_selectTarget.png)](#_)

If you don't see any connected environments available, see [DevOps infrastructure](Appian_Administration_Console.html#infrastructure) to learn more about setting up connected environments for deployments.

### Step 2: Prepare the deployment

The Prepare Deployment step helps you get all the objects, application configurations, database scripts, and plug-ins together for deployment and review any changes that have been made to objects.

In the Prepare Deployment step, you can:

-   See all objects within your application or package.
-   Manage the application configurations, objects, database scripts, or plug-ins in the deployment.
-   View the [statuses](compare-deployment-packages.html#object-comparison-statuses) for application configurations, objects, and plug-ins.
-   Review changes to objects.

The Prepare Deployment step compares the objects in the application in your current environment to the target environment. Learn more about [package comparison](compare-deployment-packages.html).

Your Prepare Deployment workflow depends on what you want to deploy:

-   If your application is new to the target environment, you can either [deploy the entire application](#prepare-an-application) or [deploy a package](#prepare-a-package). This initial deployment will always include the application configurations needed to ensure a smooth deployment to your target.

-   If your application already exists in the target environment, select the corresponding option to continue:

    | Option | Description |
    | --- | --- |
    | **Deploy a package** | Select this option to [deploy the entire application](#prepare-an-application) or [deploy a package](#prepare-a-package). With this option you can deploy a package with objects, application configurations, database scripts, and/or plug-ins. A package can contain any or all of the contents listed. |
    | **Deploy only database scripts and plug-ins** | Select this option to deploy [database scripts](#add-db-scripts) or [plug-ins](#add-plugins) without a package. With this option, you can add database scripts and plug-ins to the deployment. This functionality is only available through the compare and deploy workflow. |

**Note:**  You can deploy _only_ an import customization file without any objects. To do so, select **Deploy a package** at this point, then complete the steps described in [Shortcut: Deploy only import customization](#shortcut-deploy-icf).

#### Prepare an application

Deployment of an entire application always includes the [application configurations](#add-application-configurations).

To prepare an entire application for deployment:

1.  Select **All Application Objects** from the **Package** dropdown list.
2.  Review the contents of the application:
    -   Click on the [status](compare-deployment-packages.html#object-comparison-statuses) of objects or application configurations for more information.
    -   [Resolve issues](compare-deployment-packages.html#addressing-objects-with-conflicts) as needed.
3.  (Optional) Add [database scripts](#add-db-scripts) or [plug-ins](#add-plugins).
4.  Click **NEXT** to continue to the [Inspect Deployment step](#inspect-the-package).

[![screenshot of the prepare deployment user interface for deploying an application](images/compareDeploy_prepareApplication.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img228)

[![](images/compareDeploy_prepareApplication.png)](#_)

**Note:**  If you experience a time out or a 504 error when you click **Next**, your application may be too large. Try deploying as a smaller package containing fewer objects.

#### Prepare a package

[Learn how to create a package](prepare-deployment-packages.html#create-package).

To prepare a package for deployment:

1.  Select a package from the **Package** dropdown list.
2.  Review the package contents:
    -   Click on the [status](compare-deployment-packages.html#object-comparison-statuses) of objects, application configurations, or plug-ins for more information.
    -   [Resolve issues](compare-deployment-packages.html#addressing-objects-with-conflicts) as needed. ![screenshot of the prepare deployment user interface for deploying a package](images/compareDeploy_preparePackage.png)
3.  (Optional) Remove design objects from the package:
    -   In the objects grid, select an object.
    -   Click **REMOVE FROM PACKAGE**.
4.  (Optional) Add design objects to the package:
    -   Deselect **Only view objects in package**. The objects grid updates to display all objects in the application.
    -   In the objects grid, select the object(s) you want to add.
    -   Click **ADD TO PACKAGE**.
5.  (Optional) [Add or remove application configurations](#add-application-configurations).
6.  (Optional) Add [database scripts](#add-db-scripts) or [plug-ins](#add-plugins).
7.  Click **NEXT** to continue to the [Inspect Deployment step](#inspect-the-package).

**Note:**  When you add items to, or remove items from, a package during the Prepare Deployment step, Appian saves those changes to the original package.

**Note:**  If you experience a time out or a 504 error when you click **Next**, your package may be too large. Try again with a package containing fewer objects.

#### Add or remove application configurations

Application configurations are a category of settings that apply to the application on a global level. These configurations are not design objects, but may rely on design objects to function. [Learn more about application configurations](prepare-deployment-packages.html#prodlink-application-configurations).

The deployed package always includes application configurations that you cannot remove during compare and deploy if either of the following is true:

-   Your application is new to the target environment.
-   You're preparing to [deploy the entire application](#prepare-an-application) to the target environment.

However, if you're deploying a package for an application that already exists in the target environment, you can do any of the following during compare and deploy:

-   If the [status](compare-deployment-packages.html#object-comparison-statuses) of the application configurations is **Changed** or **Conflict Detected**, click the status to review the current application configurations compared to the configurations present in the target environment.
    -   Added configurations are highlighted in green.
    -   Deleted configurations are highlighted in red.
    -   Collapsed sections contain unchanged configurations. You can click sections to expand them.
-   Click **ADD TO PACKAGE** to add application configurations to the deployment and associated package.
-   Click **REMOVE FROM PACKAGE** to remove application configurations from both the deployment and the package.

**Note:**  When you add or remove application configurations from a package during compare and deploy, Appian saves those changes to the original package.

![compareDeploy_prepareAppConfigOnly](images/compareDeploy_prepareAppConfigOnly.png)

If you're done working with application configurations, click **NEXT** to continue to the [Inspect Deployment step](#inspect-the-package).

#### Add or remove database scripts

Database scripts can be deployed on their own or included within the deployment of an application or package.

Database scripts are not exported along with packages and application objects, so skip this step if you do not have permission to deploy directly to the target environment.

**Tip:**  Learn how to [add database scripts to a package](prepare-deployment-packages.html#add-database-scripts) during development.

To deploy database scripts:

1.  Click **DATABASE SCRIPTS**.
2.  Select a **Data Source**. If you added database scripts to the package during development, this value defaults to the data source you configured previously.
    -   If a data source connected system is a part of your deployment, the associated data source will not display in the list. You must [deploy database scripts separately from their connected system](data-source-connected-systems.html#deploy-database-scripts-separately-from-their-data-source-connected-system).
3.  Click **UPLOAD** to add a database script.
4.  In the **Database Scripts** list:

    -   If you want to remove any scripts, select the checkbox next to the script in the list, then click **REMOVE FROM PACKAGE**.
    -   If you're deploying multiple scripts, click the order arrows to change the execution order. ![screenshot of the prepare deployment user interface for deploying only database scripts](images/compareDeploy_prepareDatabaseScriptsOnly.png)

    **Tip:**  Any database scripts you added to the package during development will be present in this list.

    **Note:**  When you add or remove database scripts during the Prepare Deployment step, Appian saves those changes to the original package.

5.  Click **NEXT** to continue to the [Inspect Deployment step](#inspect-the-package).

If you're deploying a database script that changes a database related to a record type with sync enabled, the deployment may require an import customization file to trigger a sync after deployment of the script in the target environment. Learn more about [triggering a sync in the target environment](Managing_Import_Customization_Files.html#trigger-a-sync).

Appian must be able to successfully run the scripts before it can attempt to deploy the objects. If an error occurs during script execution, the deployment will stop. To resolve script errors, refer to the [deployment log](resolve-deployment-issues.html#reading-deployment-logs) for further details.

#### Add plug-ins

Plug-ins can be deployed on their own or included within the deployment of an application or package.

Deploying plug-ins with a package is only necessary under specific conditions. Learn more about [these conditions](prepare-deployment-packages.html#add-plug-ins) before continuing.

Plug-ins are not exported along with packages and application objects, so skip this step if you do not have permission to deploy directly to the target environment.

**Tip:**  Learn how to add [plug-ins](prepare-deployment-packages.html#add-plug-ins) to a package during development.

To deploy plug-ins:

1.  Click **PLUG-INS**. By default, the grid displays plug-ins that have been added to the package during development.
2.  (Optional) Filter the grid by selecting a [status](compare-deployment-packages.html#object-comparison-statuses) from the dropdown list.
3.  Verify that the package includes the referenced plug-ins you want to be included. To do this, compare the **Show plug-ins in package** list to the **Show plug-ins referenced in package** list. By default, the referenced plug-ins list shows plug-ins with a **Changed** or **New** status only.
4.  Add referenced plug-ins to the package:
    -   Select **Show plug-ins referenced in package**.
    -   Select one or more plug-ins in the referenced plug-ins list.
    -   Click **ADD TO PACKAGE**.
5.  Add unreferenced plug-ins to the package:
    -   Select **Show plug-ins in environment**. The grid displays all plug-ins installed in the current environment.
    -   Select one or more plug-ins in the list.
    -   Click **ADD TO PACKAGE**.
6.  Remove plug-ins from the package:

    -   Select any grid display option.
    -   Select one or more plug-ins in the plug-ins list.
    -   Click **REMOVE FROM PACKAGE**.

    [![prepare deployment user interface for deploying only database scripts](images/compareDeploy_preparePlugInsOnly.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img229)

    [![](images/compareDeploy_preparePlugInsOnly.png)](#_)

7.  Click **NEXT** and continue on to the [Inspect Deployment step](#inspect-the-package).

### Step 3: Inspect the deployment

Before you can review any inspect results you may encounter [deployment errors](inspect-deployment-packages.html#deployment-errors). If present, these errors interrupt inspection and block it from continuing until they are resolved. A deployment error represents a breaking issue in an object definition that, if not resolved, will result in an incomplete deployment. Address the issues in the grid before continuing your inspection.

![Deployment Errors](images/inspect_deployment_errors.png)

During [inspection](inspect-deployment-packages.html), Appian checks the items of your package for security warnings, failing test cases, and missing precedents. This step eliminates most manual checks and helps you to identify and resolve issues with the objects in your package.

Inspection only applies to Appian objects, application configurations, and the import customization file. Database scripts and plug-ins should be reviewed separately before deployment. Note that if a database script or plug-in fails during deployment, Appian will attempt to rollback changes. For more information on resolving problems with your deployment, see the [deployment log](resolve-deployment-issues.html#reading-deployment-logs).

To inspect your package for deployment:

1.  If there are no issues to resolve, click **NEXT** to continue to the [review deployment step](#review-details).
2.  If there are any warnings for [security](object-security.html#security-summary) or [test cases](Expression_Rule_Testing.html#prodlink-manageTestCases), click **Review** and resolve the issues.
3.  If there are any missing precedents, select the missing object and click **ADD TO PACKAGE**.
4.  Once the issues are resolved, click **Inspect Again**.
5.  Continue until all issues are resolved, then click **NEXT**.

![screenshot of the Inspect step user interface](images/compareDeploy_inspect.png)

**Note:**  Warnings are informational and are simply meant to call attention to potential issues before deployment. Warnings will not block your deployment.

### Step 4: Review deployment details

Your deployment is almost ready to go. All that's left is to review a few high-level details for the [**Deploy** view](deployments-view.html) and, if needed, to add an import customization file.

![screenshot of the review step user interface](images/compareDeploy_reviewDetails.png)

In this review step, you can modify the following properties:

|
Property

 |

Description

 |
| --- | --- |
|

**Name**

 |

The name of the deployment as it will appear in the **Deploy** view. Also, the name of the deployed package you can download.

 |
|

**Description**

 |

A brief description of the deployment as it will appear in the **Deploy** view.

 |
|

**Delete package after deployment**

 |

Select this checkbox to [delete the deployed package](delete-deployment-packages.html#delete-a-deployed-package) once deployment is complete. If the deployment is successful, this option _also_ deletes the prepared package you might have used as a source for the deployment.

 |
|

**Import Customization File**

 |

The [import customization file](Managing_Import_Customization_Files.html) you want to include in this deployment. If the package you selected for this deployment contains an import customization file, the file you added displays in this pane.

You can do the following in this pane:

-   To add an import customization file, click **UPLOAD** and select a `.properties` file.
-   To remove the import customization file from the deployment, click the ![Delete](images/DeleteIcon.png) icon next to the file. This action also removes the import customization file from the prepared package you might have used as a source for the deployment.
-   To download the existing file, click the file link.
-   To download a template file, click **Download Import Customization File Template**. Appian reuses the deployment name as the template file name. This template file will include placeholder properties for any objects in the deployment that can be customized with an import customization file. If there are no objects of that type in the deployment, the template file contains instructions only.

 |

### Step 5: Deploy

At this point, your workflow depends on your [security](#security) and [infrastructure](Appian_Administration_Console.html#infrastructure):

-   [Deploy now](#deploy-now) if you have **Administrator** permissions for the application and the target environment has enabled direct deployments. This action affects your target environment.
-   [Export instead](#export-instead) if you don't have **Administrator** permissions for the application, or the target environment does not allow direct deployments. The export action does not affect your target environment.

#### Deploy now

To complete your direct deployment:

1.  Edit the deployment name and description if necessary.
2.  Click **DEPLOY**.
3.  (Optional) Click **Download Package** to download the deployed package.

    **Note:**  The downloaded package contains any design objects and application configurations that you selected for deployment. The download does not include any database scripts or plug-ins that you associated with the deployment.

4.  (Optional) Click **Download Export Log** to download a record of the deployment.
5.  Click **View Deployment Details** to see the deployment status in the **Deploy** view of the current environment.

A confirmation dialog will appear once the deployment has been sent to the target environment.

Once your deployment is in progress, the deployment details will be available on the [**Deploy** view](deployments-view.html) of both the source and target environments. Deployment details are only visible to system administrators and users with **Administrator** permissions for the application (application administrators).

![screenshot of the **Deploy** view](images/deployments_view.png)

If your deployment [requires review](Appian_Administration_Console.html#deployment-settings), application administrators and users in the reviewer group will receive an email about the pending deployment. They can approve or reject deployments in the deployments details view.

#### Export instead

To export the design objects and application configurations you selected and evaluated for deployment:

1.  Edit the deployment name and description if necessary.
2.  Click **Export**.
3.  Click **Download Package**.

    **Note:**  The exported package contains only design objects and application configurations selected for deployment. The export does not include the database scripts or plug-ins associated with the deployment.

4.  (Optional) Click **Download Export Log** to download a record of the export.
5.  Click **Go to <target environment>**.
6.  [Inspect and import the package manually](#manually-inspect-and-import).

### Step 6: Deploy to another environment

Once a package has been successfully deployed, you can reuse it for another environment. This is helpful for deploying packages to higher environments after testing your changes in a lower environment. The same set of changes will be applied to ensure that you are making consistent updates across all of your environments.

This option is available to system administrators and application administrators for any completed, incoming deployments. The same objects and database scripts (in the same order) that were originally deployed will be used for the new deployment, but you can update the import customization file.

To reuse a successfully-deployed package:

1.  In the navigation pane, click **DEPLOY** view. By default, the **INCOMING** tab is active.
2.  Click the name of the package you want to deploy.
3.  Under **ACTION**, click **DEPLOY TO ANOTHER ENVIRONMENT**.

    ![/reuse](images/reuse.png)

4.  Select a target environment to deploy to.
5.  Click **NEXT**.
6.  Inspect the deployment:
    -   If there are no missing precedents to resolve, click **NEXT** to continue.
    -   If there are any missing precedents, select the missing object and click **ADD TO PACKAGE**.
    -   Once the missing precedents are resolved, click **INSPECT AGAIN**.
    -   Continue until all missing precedents are resolved, then click **NEXT**.

        **Note:**  Inspection of a reused package checks the objects and application configurations in your package for missing precedents only.

7.  Review the details:
    -   Edit the deployment **Name** and **Description** if necessary.
    -   Upload an [import customization file](Managing_Import_Customization_Files.html) if appropriate.

        **Note:**  Because values in an import customization file are specific to an individual environment, we do not automatically reuse the file from the previous environment where the package successfully deployed. This approach allows you to specify the values for the new target environment with an appropriate import customization file. You can always download the import customization file from the previous deployment in the [**Deploy** view](deployments-view.html).

8.  Click **DEPLOY**. A confirmation dialog will display once the deployment has been sent to the target environment.

    For system administrators and application administrators, deployment details will be available on the [**Deploy** view](deployments-view.html) of both the source and target environments. To access the view quickly, click **View Deployment Details** in the confirmation dialog.

    If your deployment [requires review](Appian_Administration_Console.html#deployment-settings), reviewers will receive an email about the pending deployment

### Shortcut: Deploy only import customization

To deploy only an import customization file:

1.  [Create a package](prepare-deployment-packages.html) that contains an import customization file but no objects.
2.  [Select the target environment](#select-the-target-environment).
3.  Prepare the package:
    -   Select **Deploy a package**.
    -   Select the package you created.
4.  Click **NEXT**. The Inspection Step displays an empty state, because there are no objects to inspect.
5.  Click **NEXT**. The Review Step displays the import customization file from the package.
6.  Click **DEPLOY**.

## Programmatic deployments via APIs

Appian has native [deployment APIs](Deployment_Rest_API.html) that can be called from external tools, such as Jenkins. The deployment APIs offer five endpoints that allow you to export, inspect, and import combinations of applications, packages, import customization files, plug-ins, and database scripts. You can also programmatically inspect and import Admin console settings, but you can't export them programmatically.

When exporting packages via APIs, you must retrieve the UUID for the package. To do this, use the application package information API. You can also use this API to retrieve package metadata to use throughout your applications and systems.

Deployment APIs allow you to integrate your Appian release into an automated pipeline that you can set up once and run the exact same way for all future deployments, saving time and avoiding manual errors.

To learn about programmatically deploying Admin Console settings and tightly integrating with a version control system to store and retrieve package files, see the [Deployment Automation](https://community.appian.com/success/w/guide/3328/deployment-automation) section of Appian MAX.

## Manual export and import

You can manually export a package or application from the source environment and then import it into the target environment. Import and export details are available in the [**Deploy** view](deployments-view.html) of every environment.

![Import Export Packages](images/inspect_environments.png)

Appian recommends using manual or [programmatic](#prodlink-external-deployment-apis) export and import if you do not have connected environments added to your [infrastructure](Appian_Administration_Console.html#infrastructure).

The successful import of your package can depend on managing certain additional files and settings. For example, you may need to add an import customization file during import. Be sure to evaluate and manage these [package dependencies](deploying-applications.html#package-dependencies) for each import.

All manual imports and exports occur asynchronously. This means that Appian queues your imports and exports as background processes, allowing you to continue development in Appian Designer while the system processes. You can review the status of both imports and exports from the [**Deploy** view](deployments-view.html) and an email will be sent when the your import or export completes.

### Export manually

Once you've checked your application for [missing precedents](application-settings.html#missing-precedents), you're ready to manually export your package.

#### Manually export an application

When you export an application, the exported package includes application configurations and all associated objects. In addition to the package, you can optionally download an import customization file.

To manually export an application:

1.  In the [**Applications** view](applications-view.html), select your application.
2.  Click **EXPORT**.
3.  Select **Application** in the dropdown list.
4.  In the **Export Application** dialog, review or edit the file name.
5.  Click **EXPORT**.
6.  When the export is complete, click **DOWNLOAD PACKAGE** to download the ZIP file.
7.  If your application contains objects with environment-specific or sensitive values, click **[Download Import Customization File](Managing_Import_Customization_Files.html)**. If the prepared package you used as a source for the deployment contained an import customization file, Appian provides you with that file for download.
8.  Click **CLOSE** to close the dialog.

**Tip:**  You can also download an application by selecting **Export App** in the [Build view](build-view.html) .

#### Manually export a package

**Note:**  An exported package can contain any design objects or application configurations you've added to the package. However, the exported package doesn't include [database scripts](prepare-deployment-packages.html#add-database-scripts) or [plug-ins](prepare-deployment-packages.html#add-plug-ins) you've added to the package.

To manually export a package:

1.  Open the **Export Package** dialog in any of the following ways:
    -   In the **Build** view, click **VIEW PACKAGES**.
        1.  In the [packages](prepare-deployment-packages.html#view-the-packages-list) list, select the checkbox next to the package name.
        2.  Click **EXPORT**.
    -   In the **BUILD** view, [select your package from the dropdown menu](prepare-deployment-packages.html#view-package) in the deployment actions bar.
        1.  Click **EXPORT PACKAGE**.
2.  (Optional) In the **Export Package** dialog, click **REMOVE FROM PACKAGE** to remove the application configurations from the package.
3.  Review the design objects included in the export package. As needed, click ![delete icon](images/DeleteIcon.png) next to objects you want to remove.
4.  (Optional) Edit the **File Name** property.
5.  (Optional) Select **Delete after export** to automatically [delete the package](delete-deployment-packages.html) once the export completes.
6.  Click **EXPORT**.
7.  Download the files you need:
    -   Click **DOWNLOAD PACKAGE** to download the ZIP file.
    -   If your application contains objects with environment-specific or sensitive values, click **[Download Import Customization File](Managing_Import_Customization_Files.html)**.
    -   (Optional) Click **Download Export Log** to download a record of the export.
8.  Click **CLOSE** to close the export dialog.

**Tip:**  Exported packages will be automatically deleted after 30 days and will no longer be available for download as attachments. You can change the number of days before export package cleanup in the [Admin Console Settings](Appian_Administration_Console.html#data-retention).

### Manually inspect and import

Since you can't undo an import, you should always [inspect](inspect-deployment-packages.html) a package before completing the import to check for warnings or missing precedents. At the same time as inspecting the package, you can also review the [status](compare-deployment-packages.html#object-comparison-statuses) of package items compared to those items in the target environment.

Importing a package at the environment level adds the objects to the specific application.

Importing an application into another application will add objects to that specific application. You can remove them by selecting the imported objects and clicking **REMOVE FROM APP** in the toolbar.

If the package you're importing includes design objects or [application configurations](prepare-deployment-packages.html#prodlink-application-configurations) that already exist in the target environment, the imported version overwrites the existing version.

To inspect and import a package:

1.  Depending on your package type, click one of the following buttons in your target environment:
    -   **Application**: In the [**Applications** view](applications-view.html), click **IMPORT**.
    -   **Packages**: In the [application](build-view.html#add-to-package), click **IMPORT PACKAGE**.
    -   **Admin Console settings**: In the [Admin Console](Appian_Administration_Console.html#import-export-admin-console), click **IMPORT**.
2.  Upload your exported ZIP file and related import customization file if applicable.
3.  Click **INSPECT** and review the [inspection results](inspect-deployment-packages.html#inspect-results).
4.  Click **IMPORT PACKAGE**.

### Manually export and import multiple packages across applications

**Note:**  An exported package contains design objects and application configurations only. The export doesn't include [database scripts](prepare-deployment-packages.html#add-database-scripts) or [plug-ins](prepare-deployment-packages.html#add-plug-ins) you've added to the package during development.

To manually export packages from different applications:

1.  In the [**Applications** view](applications-view.html), select **With Packages** in the [applications toolbar](applications-view.html#elements).
2.  Select all the applications with packages you want to include.
3.  In the applications toolbar, click **EXPORT**.
4.  Select **Packages** from the dropdown list.
5.  (Optional) In the **Export Packages** dialog, edit the **File Name** of the combined package.
6.  Select a package from each application.
7.  (Optional) Verify the contents of the combined package:
    -   Click **View all package contents**.
    -   Review the list of items in the package. Appian informs you if the source packages include application configurations.
    -   Click **CLOSE** to return to the **Export Packages** dialog.
8.  When your review of the package is complete, click **EXPORT**.
9.  Download the files you need:
    -   Click **DOWNLOAD PACKAGE** to download the ZIP file.
    -   If your application contains objects with environment-specific or sensitive values, click **[Download Import Customization File](Managing_Import_Customization_Files.html)**.

        **Note:**  The template import customization file contains all properties needed by objects in the selected packages. This template file does not reflect any import customization files you may have [added](prepare-deployment-packages.html#add-icf) to individual packages, so you'll likely want to reconcile this template file with the files you've added to the packages.

    -   (Optional) Click **Download Export Log** to download a record of the export.
10.  Click **CLOSE**.

![cross app package export](images/cross_app_package_export.png)

The **IMPORT** option in the [**Applications** view](applications-view.html) handles packages with multiple applications. When your import contains multiple packages, Appian adds the corresponding objects and application configurations to the appropriate applications in the target environment.

## Security

### Source environment

Developers with viewer access to an application and objects are able to create, compare, and inspect packages across environments, and manually export them. Application administrators and system administrators on the source environment are the only roles able to directly deploy to the target using compare and deploy.

### Target environment

Before using compare and deploy, a system administrator account must be specified when setting up deployment configuration in the [Admin Console](Appian_Administration_Console.html#deployment-settings). The **Deploy As** account must be in the service account role.

When manually importing a package, you must ensure that you can administer the application **and** the objects that it contains:

-   For new objects, the user must be able to create an object on the environment. For example, only a System Administrator has the rights to create a Public group (non-system administrators can only create Public groups within groups that they administer).
-   For existing objects, the user must already be an administrator of the object.

The **Last Modified By** field displays the user who most recently modified the object and the time at which it happened. If the object supports versioning, the Last Modified By information of previous versions are not affected.

**Best Practice**: Regardless of deployment method, we recommend using a group for each application called `<Application_Name>_Administrators`.

1.  Create the group on the source environment, and export it (in an application package) to the target machine prior to importing the main application. The group must be deployed in an application package in order for Appian to recognize it as the same group on both environments.
2.  Before exporting the application, add this group to all object rolemaps. Assign Administrator rights to this group.
3.  Temporarily add the users (or user) who imports the application on the target environment to this group before performing an import.
4.  After the import, remove users from the `<Application_Name>_Administrators` group, as needed.

### Deploying security rolemaps with exported objects

When objects are deployed to another Appian environment, the deployed objects contain a reference to the users and groups listed in their rolemaps. For example, an exported Knowledge Center contains the list of users and groups with rights to the Knowledge Center.

Rolemap deployment rules:

-   A user or group is only included in the rolemap of a deployed object if at least one of the two conditions below is true.
    -   The group is present in the import package or on the target server.
    -   The user exists on the target server and is not deactivated. All other users are dropped.
-   When importing an object that already exists on the target server (identified by UUID), the resulting rolemap of the object is what's defined in the import package.
-   Some objects can be configured to inherit their rolemaps from their parent. This configuration is preserved when the object is exported and imported. If the configuration of the object in the import package differs from what's on the target server, the setting in the import package is used.

## Object behavior in target environments

If an object already exists on the target environment (an object exists there with the same UUID), then:

-   A new version is created, if the object supports [versioning](Managing_Object_Versions.html). A new version is created even if the only modification was to its rolemap.
-   The object in the package overwrites the object in the target, if the object does not support versioning.

Because objects in a deployment aren't updated simultaneously, users may see some inconsistencies in their application behavior as objects are updated. For example, during a lengthy deployment, a constant may be updated but the process model that references the constant has not been updated yet.

During deployments that include a record type with sync enabled, the record type must successfully sync in that environment before it will be available. This may mean that your record type will be unavailable to users, processes, or APIs until the import is complete. For more information on record types with data sync enabled, see [About Data Sync](about-data-sync.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...