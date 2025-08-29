---
source_url: https://docs.appian.com/suite/help/25.3/cms-deployment-guidance.html
original_path: cms-deployment-guidance.html
version: "25.3"
title: "Deployment Guidance for Case Management Studio"
page_id: "cms-deployment-guidance"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment Guidance for Case Management Studio

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance for deploying a configured or customized Case Management Studio application from a source environment such as development to a target environment. If Case Management Studio is not configured or customized, follow the standard [Case Management Studio installation steps](installing-cms.html).

These guidelines include procedures for deploying your Case Management Studio application. The guidelines may vary based on your Case Management Studio configurations, customizations, or your organization's deployment practices.

There are 7 steps in the deployment process.

1.  [Prepare the platform](#step-1-prepare-the-target-environment-and-verify-plugins)
2.  [Set up service accounts and API keys](#step-2-set-up-service-accounts-and-api-keys)
3.  [Run database scripts](#step-3-run-database-scripts)
4.  [Prepare Appian applications](#step-4-prepare-appian-applications)
5.  [Deploy Appian applications](#step-5-deploy-appian-applications)
6.  [Adjust environment-specific IDs](#step-6-adjust-environment-specific-ids)
7.  [Complete public portal configuration](#step-7-complete-public-portal-configuration)

## Step 1: Prepare the target environment and verify plugins

-   Make sure the target environment meets the minimum platform version specified in the Case Management Studio [installation guide](installing-cms.html) and any deployed modules. If it doesn't, contact Appian Support to upgrade the platform.
-   Ensure the target environment has the necessary plugins, as specified in the Case Management Studio installation guide and any modules you are deploying.
-   Confirm with Appian Support that your platform version is correctly configured for your needs.

## Step 2: Set up service accounts and API keys

### Deploying the public portal for the first time

These steps show you how to deploy the public portal module for the first time. These steps are only needed for the first deployment and unnecessary for all subesquent deployments.

1.  Set up the [service account](User_Roles.html#service-account-role) and [API Key](Appian_Administration_Console.html#creating-an-api-key) in the target environment by creating the API Key and a new service account in the Admin Console.
    -   Use the username: `portalServiceAccount`.
    -   Add the `portalServiceAccount` service account to the `Service Accounts` group.
2.  Save the API Key and copy its value for use later in the import customization file (ICF) for both the CMGT Portal connected system and CMGT CB Portal connected system. You'll modify the ICF later when you [deploy your application](#step-5-deploy-appian-applications).

### Deploying the Public Self-Registration module for the first time

These steps show you how to deploy the public self-registration module for the first time. These steps are only needed for the first deployment and unnecessary for all subesquent deployments.

1.  Set up the service account and API Key in the target environment by creating the API Key and a new service account in the Admin Console.
    -   Use the username: `claimCase`
    -   Add the `claimCase` service account to the `CMGT Service Accounts` and `Service Accounts` groups.
2.  Save the API Key and copy the value for use later in the import customization file (ICF) for the LA connected system. You'll modify the ICF later when you [deploy your application](#step-5-deploy-appian-applications).

## Step 3: Run database scripts

Create a combined SQL script with the following components and execute it in the target environment to set up and migrate the database with the required data and structure.

-   **Initial Database Scripts**: Use these scripts only for first-time deployments. They are included with the base application and module applications in the original download package.
    -   `CaseManagementStudiov2.0.0.sql`
-   **Customization SQL Scripts**: Include these scripts in every deployment. Ensure they are re-runnable so you can resolve any issues that might arise after deployment.
-   **Configuration SQL Scripts**: Use these scripts to migrate the Control Panel configurations (e.g., custom case type data and custom case category data) and your workflow and automation rule configurations. You can export the structure and data of these scripts from `phpMyAdmin`. Make sure to include the necessary key constraints and ensure these scripts are re-runnable in case you need to re-deploy the package to resolve issues.

### Configuration SQL scripts

**Note:**  The actual set of scripts will vary depending on the case types, categories, and choice fields configured in your environment.

Replace `{Specific_Category_Tables}` and `{Specific_Case_Tables}` with the appropriate table names relevant to your configuration.

Below are the types of script, their definitions and uses, and the relevant tables:

-   **INSERT INTO** script type for out-of-the-box tables
    -   Description: Create and run **INSERT** scripts for data in these tables in order to deploy your workflow configurations, automation rule configurations, and case type details.
    -   Tables:
        -   `CMGT_WFL_CFG_CASE_TYPE_WORKFLOW_TASK`
            `CMGT_WFL_CFG_CASE_TYPE_WORKFLOW_TASK_BRANCH`
        -   `CMGT_WFL_CFG_CASE_TYPE_WORKFLOW_TASK_RESPONSE_OPTION`
        -   `CMGT_WFL_CFG_CREATE_CASE_CASE_TYPE_WORKFLOW_TASK`
        -   `CMGT_WFL_CFG_SEND_EMAIL_CASE_TYPE_WORKFLOW_TASK`
        -   `CMGT_WFL_CFG_REFERENCE_MILESTONE`
        -   `CMGT_WFL_CFG_REFERENCE_TASK`
        -   `CMGT_WFL_CFG_TASK_RESPONSE_OPTION`
        -   `CMGT_WFL_CFG_CREATE_CASE_REFERENCE_TASK`
        -   `CMGT_WFL_CFG_SEND_EMAIL_REFERENCE_TASK`
        -   `CMGT_WFL_CFG_TASK_BLOCK`
        -   `CMGT_WFL_CFG_TASK_BLOCK_TASK`
        -   `CMGT_WFL_CFG_TASK_BLOCK_TASK_RESPONSE_OPTION`
        -   `CMGT_WFL_CFG_CREATE_CASE_TASK_BLOCK_TASK`
        -   `CMGT_WFL_CFG_SEND_EMAIL_TASK_BLOCK_TASK`
        -   `CMGT_WFL_CFG_EMAIL_TEMPLATE`
        -   `CMGT_WFL_CFG_EMAIL_TEMPLATE_ATTACHMENTS`
        -   `CMGT_WFL_CFG_TASK_ACTIONS`
        -   `CMGT_CFG_CONDITION`
        -   `CMGT_CFG_CONDITION_SET`
        -   `CMGT_CFG_ASSIGNMENT_RULE`
        -   `CMGT_CFG_CASE_TYPE_METADATA`
        -   `CMGT_CFG_CASE_TYPE_TASK_WORKFLOW_PATH`
        -   `CMGT_CFG_CASE_TYPE_TASK_WORKFLOW_PATH_MAPPING`
        -   `CMGT_WFL_CFG_TASK_BLOCK_TASK_BRANCH`
-   **CREATE** script for generated tables.
    -   Description: Create and run **CREATE** scripts for the tables that were generated for your custom case categories and case types.
    -   Tables:
        -   `CMGT_{Specific_Case_Category_Names}`
        -   `CMGT_{Specific_Category}_{Choice_List_Column_Name}`
        -   `CMGT_{Specific_Category}_{Specific_Case_Type}`
        -   `CMGT_{Specific_Category}_{Specific_Case_Type}_{Choice_List_Column_Name}`
-   **ALTER** script for `CMGT_CASE` table.
    -   Description: Create and run **ALTER** scripts that add column(s) to CMGT\_CASE for any "All Cases" custom data fields that you may have added in the Control Panel.
    -   Table: `CMGT_CASE`
-   **INSERT INTO** script for custom tables:
    -   Description: Create and run **INSERT** scripts for the data in the reference tables that were generated for your custom choice list fields.
    -   Tables:
        -   `CMGT_{Specific_Category}_{Choice_List_Column_Name}`
        -   `CMGT_{Specific__Category}_{Specific_Case_Type}_{Choice_List_Column_Name}`

## Step 4: Prepare Appian applications

-   Ensure the applications include all configurations from the source environment that you want to deploy to the target environment.
    -   Before deployment, make sure to mark case categories and types that are used for testing or aren't ready to be shipped to production as inactive.
    -   Note that the underlying precedents of inactive case categories and types will still be deployed, but unused.
-   Ensure the Case Management Custom Objects application contains the branding files and corresponding images uploaded via the Solutions Hub.

## Step 5: Deploy Appian applications

Deploy the following Appian applications to your target environment:

-   CMGT Case Management Studio Base
-   CMGT Control Panel Generated Objects (CMGT)
-   Case Management Custom Objects
-   Solutions Hub (Only required for first time deployment)

You can deploy applications manually or use compare and deploy.

### Manually deploy an application

To [manually deploy an application](Deploy_to_Target_Environments.html#manually-inspect-and-import):

1.  Manually export the application as a combined zip file.
2.  Download the zip file, as well as the provided ICF and API keys.
3.  Check for errors and missing precedents, then import the combined zip file and the modified ICF into the target environment.

### Deploy an application using compare and deploy

To deploy using compare and deploy:

1.  (Only for first-time application deployments) Create a deployment package for each application without any objects and deploy each application using [compare and deploy](compare-deployment-packages.html).

    **Note:**  This step is required because the combined application approach does not deploy individual applications (such as CMGT Case Management Studio Base). Once all applications are in the target environment, proceed with the next steps to create and deploy the combined application that contains all application objects.

2.  [Create a new application](creating-applications.html) with the following properties:
    -   **Name**: `CMGT Combined Application`
    -   **Description**: Contains all of the objects for CMGT in one application for ease of deployment with Compare & Deploy. Base application + Control Panel generated objects + custom objects
    -   **Prefix**: Leave blank. This application is only for deployment, not for development; so, no prefix is needed.
    -   **Generate groups and folders to secure and organize objects**: Uncheck this checkbox.
3.  Configure security for the application:

    | **Group** | **Permission Level** |
    | --- | --- |
    | Administrators | Administrator |
    | Users | Viewer |

4.  Click **View Packages** and select **CMGT Combined Application**.
    You'll notice the contents view for the package is empty right now.
5.  Click **ADD EXISTING** > **APPLICATION CONTENTS**.
    The Add Application Contents window displays.
6.  Add the following applications:
    -   CMGT Case Management Studio Base
    -   CMGT Control Panel Generated Objects (CMGT)
    -   Case Management Custom Objects
    -   Solutions Hub (Only required for first time deployment)
7.  Identify and add any missing precedents.
8.  Click **COMPARE AND DEPLOY**.
9.  Select your target environment then click **NEXT**.
10.  Click **DATABASE SCRIPTS** and upload all of the following required database scripts in the following order:
     -   CaseManagementStudioBasev2.0.0.sql
     -   Any scripts for customizations
     -   Any scripts for transferring Control Panel configuration data
11.  In the **IMPORT CUSTOMIZATION FILE** pane, upload a combined import configuration file to update any configurations across the applications. Start with the `01.CaseManagementStudiov2.0.0.properties` and add any other properties to the file you may have added as part of customizations.

Now your package is ready to [deploy](Deploy_to_Target_Environments.html)!

## Step 6. Adjust environment-specific IDs

The following Case Management Studio configuration tables contain environment-specific values that can vary, such as group, folder, and document IDs. Update these values post-deployment to match the target environment. After updating the database tables, re-sync the corresponding [record types](Record_Type_Object.html) to reflect the changes.

| **Table** | **Column(s)** | **Appian object ID it represents** |
| --- | --- | --- |
| `CMGT_WFL_CFG_CASE_TYPE_WORKFLOW_TASK` | `DEFAULT_GROUP_ASSIGNEE` | Group ID |
| `CMGT_WFL_CFG_REFERENCE_TASK` | `DEFAULT_GROUP_ASSIGNEE` | Group ID |
| `CMGT_WFL_CFG_TASK_BLOCK_TASK` | `DEFAULT_GROUP_ASSIGNEE` | Group ID |
| `CMGT_WFL_CFG_SEND_EMAIL_CASE_TYPE_WORKFLOW_TASK` | `RECIPIENT_GROUP_JSON` | Group ID |
| `CMGT_CFG_ASSIGNMENT_RULE` | `ASSIGNMENT_JSON` | Group ID |

**Note:**  There are some configurations that rely on specific users being present in the target environment, such as user pickers in assignments rules and email templates. When deploying those kinds of configurations, make sure that the specified users are present in the target environment or un-do user-specific configurations before deployment and re-do them in the target environment after deployment.

## Step 7. Complete public portal configuration

In this step, you'll finalize the setup of the public portal.

### Add the service account

1.  Open the [Object View](objects-view.html) in the target environment.
2.  Find and open the `CMGT Service Accounts` group.
3.  Add the `portalServiceAccount` service account to the `CMGT Service Accounts` group.

### Adjust portal URL

If you are deploying the Case Management Studio portal to an environment that doesn't use [UUIDs for portal URLs](Appian_Administration_Console.html#portals):

1.  Open the `CMGT_UTIL_GetPortalURL` expression rule in the target environment.
2.  Comment out the `cons!CMGT_PORTAL_TXT_URL_UUID` line.
3.  Click **SAVE**.
4.  [Republish](portals-manage-portals.html#manually-republish-a-portal) the Case Management Studio portal.

![cms_adjustURL.png](images/cms_adjustURL.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...