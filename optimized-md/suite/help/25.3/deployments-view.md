---
source_url: https://docs.appian.com/suite/help/25.3/deployments-view.html
original_path: deployments-view.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deploy View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes what you can do in the **Deploy** view in Appian Designer.

To access this view, click **Deploy** in the [navigation pane](common-view-elements.html#navigation-pane) at the environment level or in an application.

When you access this view at the environment level, it contains information about deployments in the current environment. When you access this view from within an application, it contains information about deployments in the current application.

## Purpose

The **Deploy** view provides a single location for you to see and manage both incoming and outgoing [deployments](Deploy_to_Target_Environments.html).

## Elements

The following image highlights the elements that make up this view:

[![screenshot of the Deploy view in Appian Designer](images/deploy-view-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img251)

[![](images/deploy-view-annotated.png)](#_)

|
#

 |

Element

 |

Available Actions

 |
| --- | --- | --- |
|

1

 |

Header bar

 |

Learn more about the [header bar](common-view-elements.html#header-bar).

 |
|

2

 |

Navigation pane

 |

Learn more about the [navigation pane](common-view-elements.html#navigation-pane).

 |
|

3

 |

Tabs

 |

Go to either of the following tabs:

-   The **INCOMING** tab displays all deployments and deployment requests that have come into your current environment.
-   The **OUTGOING** tab displays all the deployments and deployment requests that have been sent from your current environment to a different target environment.

Each tab features a toolbar and a deployments grid.

 |
|

4

 |

Toolbar

 |

[Search and filter the deployments grid.](#change-the-grid-list)

 |
|

5

 |

Deployments grid

 |

-   [View the deployments grid](#view-the-deployments-grid).
-   [View deployment details](#view-deployment-details).
-   [Review deployment requests](#review-deployment-requests).
-   [Deploy existing packages](#deploy-existing-packages).
-   [View archived deployments.](#view-archived-deployments).

 |

## View the deployments grid

To view the deployments grid, click **Deploy** in the navigation pane. The **INCOMING** tab is open by default.

### What's available

The deployments history includes packages deployed using the following methods:

-   Direct deployment using [Compare and deploy (direct)](Deploy_to_Target_Environments.html#compare-and-deploy).
-   External programmatic deployment using [APIs](Deploy_to_Target_Environments.html#prodlink-external-deployment-apis).
-   Manual deployment using [export and import](Deploy_to_Target_Environments.html#manual-export-and-import).

If you have admin permissions to the environment, you can track [Admin Console setting](Appian_Administration_Console.html#import-export-admin-console) imports in the [**Import History** page](Appian_Administration_Console.html#import-history) of the Admin Console or in the **Deploy** view.

**Note:**  You should no longer deploy using the Automated Import Manager. Instead, use our native deployment [REST APIs](Deploy_to_Target_Environments.html#prodlink-external-deployment-apis). However, you can still view past deployments that used Automated Import Manager in the deploy view.

### Security

Application security and reviewer group membership determine who can see and review packages in the **Deploy** view.

By default, system administrators and users in the [reviewer group](#review-deployment-requests) can see all requests in the incoming and outgoing tabs. Application administrators, editors, and viewers will be able to see requests in both tabs for specific applications if they have the appropriate permissions. Application administrators and system administrators can also add a [post-deployment process](post-deployment-process.html) within a specific application.

The following table displays the available deployment activities and their permissions:

| **Activity** | **System Administrators** | **Reviewer Group** | **Application Administrator** | **Application Viewers and Editors** |
| --- | --- | --- | --- | --- |
| View deployment history | Yes | Yes | Yes, for specific apps | Yes, for specific apps |
| View deployment request details (object names, database scripts, import customization file) | Yes | Yes | Yes, for specific apps | No |
| Approve updates to existing applications | Yes | Yes | Yes, for specific apps | No |
| Approve deployment of a new application | Yes | Yes | No | No |
| Deploy existing packages | Yes | No | Yes, for specific apps | No |

### Grid columns

In the deployments grid, the first column of each row contains an icon indicating the [deployment status](#deployment-status).

The other columns in the grid consist of the following:

| Column | Description |
| --- | --- |
| **Name** | The name of the deployment. |
| **Type** | The type of deployment (**Direct**, **Manual**, or **External**). |
| **Source** | The environment from which the deployment was requested. |
| **Application** | The name of the application(s) included in the deployment (in the case of application deployments) or impacted by the deployment (in the case of package deployments). |
| **Requested By/Submitted By** | The user who initiated the deployment. |
| **Requested On/Submitted On** | The date the package was deployed or sent for review. |

### Deployment status

In the **Deploy** view, you can use the _status_ filter to find deployment with the following values:

|
Deployment Type

 |

Status

 |

Description

 |
| --- | --- | --- |
|

Direct and External

 |

Completed

 |

The package has been deployed successfully.

 |
|

Completed with Errors

 |

The package has been deployed, but some objects had errors. Possible errors include problems with import, export, and publishing.

 |
|

Failed

 |

Objects in the package were not deployed because database scripts failed or did not fully execute.

 |
|

In Progress

 |

The package is currently being deployed.

 |
|

Pending

 |

The package has not been deployed yet and is waiting for review. This status will only appear when you [enable deployment approvals](#review-deployment-requests).

 |
|

Rejected

 |

The package has been rejected by the reviewer. This status will only appear when you [enable deployment approvals](#review-deployment-requests).

 |
|

Unavailable

 |

Information is not available because the target environment is on a different version of Appian.

 |
|

Manual

 |

Completed

 |

The packaged was imported/exported successfully.

 |
|

Completed with Errors

 |

The package was imported/exported, but some objects had errors.

 |
|

Failed

 |

No objects in the package were imported/exported due to errors. [Check your deployment log](resolve-deployment-issues.html#reading-deployment-logs).

 |
|

In Progress

 |

The package is currently being imported/exported.

 |

## Change the grid list

You can change the grid list as follows:

-   **Search**: To find a deployment by **Name**.
-   **Refresh**: To see the most up-to-date status of deployments, click the refresh button in the toolbar.
-   **Sort**: To sort by **Name** or **Requested On**, click the column header.
-   **Filter**: In the toolbar, select how you want to filter the list:

    | Filter | Description |
    | --- | --- |
    | **Type** | The type of deployment (direct, manual, or external). |
    | **Application** | Enter an application name in the search box. |
    | **Status** | The [deployment status](#deployment-status). |
    | **Requested On** / **Submitted On** | The date the package was deployed or sent for review. |

## View deployment details

To view details of an individual deployment, click on the deployment name in the deployments grid.

The deployment details are highlighted in the following image. Some sections in the deployment details, such as **DATABASE SCRIPTS** (7) or **DECISION** (3), may not appear if they do not apply to a package or environment.

[![images/deployments-details-annotated.png](images/deployments-details-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img252)

[![](images/deployments-details-annotated.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | Package overview | Lists the name, description, link to an external project management ticket, and [post-deployment process](post-deployment-process.html) (if one is added to the application). |
| 2 | Package details | Lists the status, deployment log link, application(s), source or target environment, requester, and requested/submitted time. |
| 3 | Decision | A reviewer can [approve or reject an incoming deployment request](#review-deployment-requests) in this section. After a decision has been confirmed, this section displays the review decision and comments. This section only appears when you [enable deployment approvals](#review-deployment-requests). |
| 4 | Objects | The list of objects in the package, and their status when comparing them to the current environment at the time of the deployment request. You can filter the list by object type and status. |
| 5 | Plug-ins | The list of plug-ins in the package. You can filter the list by status. |
| 6 | Administration Console Settings | The Admin Console settings in the package. You must have administrator permissions to view these settings. |
| 7 | Database scripts | The download links for the database scripts. |
| 8 | Import customization file | Displays a link to download the original file or an option to upload a new file. |
| 9 | Inspection Results | Displays any missing precedents and warnings detected in the package from the most recent inspection. Inspection results are only available for direct deployments. The status will update if you click **INSPECT AGAIN**. |
| 10 | Pipeline | Tracks the environments to which the package has been deployed. To show up here, the environments must be [connected](Appian_Administration_Console.html#infrastructure) and related deployments must have used the [Deploy to Another Environment](Deploy_to_Target_Environments.html#deploy-to-another-environment) option. |

## Review deployment requests

If you want to approve deployments to higher environments before they’re applied, select the **Require review** option in the [Admin Console](Appian_Administration_Console.html#deployment-settings). This option requires an Appian developer to approve each incoming deployment request in the environment, and it also allows you to set up a reviewer group. Appian recommends creating a [reviewer group](Group_Management.html) to ensure that the appropriate developers have permission to approve all incoming deployments (including new applications).

System administrators, application administrators, and users in the specified reviewer group can comment on, approve, or reject incoming deployments in the **Deploy** view. If you want to prevent the user requesting the deployment from reviewing the deployment, you can select the **Requester and reviewer must be different** option.

When a deployment request requires review, an email is sent to the application administrators and members of the reviewer group.

## Deploy existing packages

Once a package has been successfully deployed, you can reuse it for another environment. This is helpful for deploying packages to higher environments after testing your changes in a lower environment. The same set of changes will be applied to ensure that you are making consistent updates across all of your environments.

[Learn how to deploy a package to another environment](Deploy_to_Target_Environments.html#deploy-to-another-environment).

![/reuse](images/reuse.png)

## View archived deployments

Deployment packages can be periodically cleaned up based on your environment's [Data Retention](Appian_Administration_Console.html#data-retention) settings. Once a package is deleted, the corresponding deployment still appears in the history, but the deployment is archived and has limited functionality.

For direct deployments, you can [view](#view-deployment-details) a limited set of details for archived deployments. The objects list, package download, and inspection results are not available. Archived direct deployments also cannot be [reviewed](#review-deployment-requests) or [deployed](#deploy-existing-packages) to another environment.

For manual deployments, details of archived deployments are not available.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...