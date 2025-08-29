---
source_url: https://docs.appian.com/suite/help/25.3/inspect-deployment-packages.html
original_path: inspect-deployment-packages.html
version: "25.3"
title: "Inspect Deployment Packages"
page_id: "inspect-deployment-packages"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Inspect Deployment Packages

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Note:**  As with all deployment activities, for production environments we recommend running inspections during off-peak hours.

This page describes how Appian inspects the items in a deployment package for issues you might have missed during package preparation. During _package inspection_, Appian examines the package itself to validate how you secured the items and how the items relate to each other. This step eliminates most manual checks and helps you to identify and resolve issues with your package items before you deploy.

Appian inspects a slightly different set of package items depending on your method of deployment. The table below summarizes these differences. We recommend that you review any uninspected item separately.

| Package Item | Direct Deployment | Manual Export/Import |
| --- | --- | --- |
| Design objects | inspected | inspected |
| Application configurations | inspected | inspected |
| Database scripts | review separately | review separately |
| Plug-ins | review separately | review separately |
| Import customization file | review separately | inspected |

To inspect a package during direct deployment, first complete the steps to [**Prepare Deployment** step](Deploy_to_Target_Environments.html#prepare-the-deployment), then complete the [**Inspect Deployment** step](Deploy_to_Target_Environments.html#inspect-the-package). During this inspection, Appian checks your package items for [security warnings](object-security.html), failing test cases, and [missing precedents](application-settings.html#missing-precedents).

To inspect a package during [manual import](Deploy_to_Target_Environments.html#manually-inspect-and-import), click **INSPECT** in the **Import** dialog before you click **IMPORT**. During this inspection, Appian checks your package items for [security warnings](object-security.html) only.

An inspection can identify problems and warnings with your deployment, but keep in mind it cannot detect all possible import issues.

## Deployment errors

Deployment errors are the first problems to occur during inspection. If any of these errors are detected, inspection will be stopped and will not continue until they are resolved and you restart the inspection process.

**Note:**  If you are seeing deployment errors you must resolve them. Ignoring these errors will result in an incomplete or failed deployment.

A deployment error represents an issue in the definition of the object that will stop Appian from deploying the object to the target environment. If you don't resolve deployment errors, they will lead to runtime errors. Typically, these errors are caused by references to either deleted objects or invalid record type fields.

You can locate and resolve these issues based on the information provided in the **Deployment Error** grid. Navigate to the object configuration using the link and quickly identify the cause of the issue based on the information in the **Problems** column.

Once you have resolved all the issues in the grid, use the **Check Again** button to check for additional errors. This will automatically restart the inspection. If no more deployment errors are found, you will see your inspection results.

![Deployment Errors](images/inspect_deployment_errors.png)

## Inspect results

The inspect results summarize:

-   Which objects in your package have problems or warnings.
-   How many objects will be created or updated by import.
-   How many objects will be skipped.

When inspecting the package during manual import, this summary also includes detailed information about the [status](compare-deployment-packages.html#object-comparison-statuses) of each object in your package and when they were last modified in the target environment.

![Inspect Application](images/inspect_package.png)

### Inspecting data types from web services

It's a [best practice](Application_Deployment_Guidelines.html#custom-data-types) to include data types created from web service definition languages (WSDLs) in your package before exporting it. If those data types are not included in your package AND they don't already exist on the target environment, they'll be listed as problems in the inspection results. Data types that are normally created by the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html) or [webservicequery()](fnc_scripting_webservicequery.html) function during import cannot be created by the package inspection process.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...