---
source_url: https://docs.appian.com/suite/help/25.3/delete-deployment-packages.html
original_path: delete-deployment-packages.html
version: "25.3"
title: "Delete Deployment Packages"
page_id: "delete-deployment-packages"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete Deployment Packages

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes how to delete both prepared and deployed packages.

## Delete a prepared package

A _prepared package_ is defined as the [package you prepare during development](prepare-deployment-packages.html).

We recommend that you delete prepared packages in your source environment once the packages have been successfully deployed. This practice allows you to keep your applications clean, so long-running or unused packages don't build up over time. If your team works in sprints, you can also delete multiple packages in bulk at the end of each sprint or release.

The [**Enable Periodic Cleanup of Deployment Packages**](Appian_Administration_Console.html#data-retention) option in the Admin Console does _not_ clean up prepared packages. However, if you choose to autmatically delete a package after a successful [direct deployment](Deploy_to_Target_Environments.html#review-details) or [manual export](Deploy_to_Target_Environments.html#manually-export-a-package), the prepared package is deleted along with the deployed package.

You can also manually delete a prepared package in the packages list.

To manually delete a prepared package:

1.  [View the packages list](prepare-deployment-packages.html#view-the-packages-list).
2.  Select the checkbox next to the package name.
3.  Click **DELETE**. ![screenshot of Packages list with the delete button highlighted](images/packages_delete.png)
4.  In the confirmation dialog, click **DELETE**. Appian deletes the package and removes it from the package list. This deletion does _not_ delete the objects you added to the package, but it _does_ delete any database scripts you added to the package.

## Delete a deployed package

During deployment, Appian keeps a ZIP file of the package contents at the time of deployment. This ZIP file is sometimes referred to as a _deployed package_ or a _deployment package_. You can access this deployed package through the [**Deploy** view](deployments-view.html).

Deleting a deployed package does not affect the original objects in the application. Keep in mind, however, that if you delete a succesfully deployed package that you only constructed during [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy), you will delete any database scripts or plug-ins you added at that time.

It is a maintenance best practice to delete a deployed package as soon as it is no longer needed:

-   You can choose to automatically delete the deployed package during a [direct deployment](Deploy_to_Target_Environments.html#review-details) or a [manual export](Deploy_to_Target_Environments.html#manually-export-a-package).

-   A system administrator can configure the [**Enable Periodic Cleanup of Deployment Packages**](Appian_Administration_Console.html#data-retention) option to automatically delete deployed packages after a certain number of days. This option does not delete prepared packages.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...