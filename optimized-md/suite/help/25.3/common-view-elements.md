---
source_url: https://docs.appian.com/suite/help/25.3/common-view-elements.html
original_path: common-view-elements.html
version: "25.3"
title: "Common View Elements"
page_id: "common-view-elements"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Common View Elements

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes what you can do in certain elements common to various views in Appian Designer.

## Header bar

The header bar is common to all views in Appian Designer. The elements of the header bar differ slightly depending on whether you're viewing the bar in an application or at the environment level.

The following table lists the elements of the header bar in all contexts.

![screenshot of the header bar in an application](images/header-bar.png)

|
#

 |

Element

 |

Available Actions

 |

Context

 |
| --- | --- | --- | --- |
|

1

 |

back arrow

 |

Return to the [**Applications** view](applications-view.html).

 |

Application

 |
|

2

 |

icon

 |

Determine whether you're in the environment or application context.

 |

Any

 |
|

3

 |

application name

 |

Determine which application you're working in.

 |

Application

 |
|

4

 |

quick search

 |

[Search for a design object in this environment](find_and_search_in_appian.html).

 |

Any

 |
|

5

 |

settings menu

 |

[Configure application settings.](application-settings.html)

 |

Any

 |
|

6

 |

navigation menu

 |

-   [Navigate to other workspaces](#navigate-to-other-workspaces).
-   [View information about this environment](#view-information-about-this-environment).
-   [View the product documentation](#view-the-product-documentation).
-   [View applications from the end-user perspective](#view-applications-from-the-end-user-perspective).

 |

Any

 |
|

7

 |

user menu

 |

[View your user profile, adjust your settings, and log out](Settings_Page.html).

 |

Any

 |

### Navigate to other workspaces

Depending on your [user type](User_Management.html) and [user role](User_Roles.html), you can access the following workspaces from Appian Designer:

-   [**Admin Console**](Appian_Administration_Console.html)
-   [**Appian RPA**](rpa-9.17//appian-rpa.html)
-   [**Cloud Database**](appian-cloud-database-administration.html)
-   [**System Logs**](Logging.html)
-   [**Process HQ**](processhq.html)

To navigate to other workspaces:

1.  In the header bar, open the navigation menu .
2.  Select a workspace.

### View information about this environment

In the **About This Environment** dialog, you can view the following:

-   Your current Appian version
-   Your current Appian RPA version
-   Data sources that have been added in the Admin Console or configured in the application server.

To view this information:

1.  In the header bar, open the navigation menu .
2.  Select **About Appian**.
3.  (Optional) Click **EXPORT** to download the information as a JSON file.

### View the product documentation

To view the product documentation:

1.  In the header bar, open the navigation menu .
2.  Click **Help**. The Appian Documentation website opens in a new tab or window.

### View applications from the end-user perspective

To quickly see your applications from your end-users' perspective:

1.  In the header bar, open the navigation menu .
2.  Continue as appropriate:
    -   Click **Tempo** to see published applications and actions in Tempo.
    -   Click the name of an application to see the [site](Sites.html) configured for that application.

## Navigation pane

The navigation pane is present in all views in Appian Designer.

The elements of the navigation pane differ slightly depending on whether you're viewing the bar at the environment level or in an application.

The following table lists the elements of the navigation pane in all contexts.

![screenshot of the navigation pane at the environment level and in an application](images/navigation-pane.png)

|
#

 |

Navigates to

 |

Description

 |

Context

 |
| --- | --- | --- | --- |
|

1

 |

[**Applications** view](applications-view.html)

 |

View a list of applications in this environment.

 |

Environment

 |
|

2

 |

[**Objects** view](objects-view.html)

 |

View all design objects in this environment.

 |

Environment

 |
|

3

 |

[**Deploy** view](deployments-view.html)

 |

View all deployments in this environment or in an individual application, depending on context.

 |

Any

 |
|

4

 |

[**Monitor** view](monitoring_view.html)

 |

View health, performance, and activity indicators for applications in this environment or for an individual application, depending on context.

 |

Any

 |
|

5

 |

[**Users** view](users_view.html)

 |

View all users in this environment.

 |

Environment

 |
|

6

 |

[**Explore** view](explore-view.html)

 |

View and easily navigate to key objects in your application structure.

 |

Application

 |
|

7

 |

[**Build** view](build-view.html)

 |

View all design objects in your application.

 |

Application

 |

## Toolbar

The toolbar is present in all views that contain grids. It is located immediately above the grid. When you select one or more objects in the grid, actions you can perform on those objects display in the toolbar.

The **More** menu in the toolbar includes additional actions that you'll probably use less often than the other toolbar actions. It is available in the [**Objects** view](objects-view.html), the [**Build** view](build-view.html), and within any group or folder.

![More Actions Menu](images/application_designer_more_menu.png)

The **More** menu displays actions that are relevant for all objects that are available within the view. Additionally, any actions that aren't available for the selected object are disabled. The table below describes which actions are available for each object:

| Design Object | Properties | Versions | New Version | Rename | Download | View Documentation |
| --- | --- | --- | --- | --- | --- | --- |
| [Connected System](Connected_System_Object.html) | No | Yes | No | No[1](#fn:1) | No | No |
| [Constant](Constants.html) | No | Yes | No | Yes | No | No |
| [Data Store](Data_Stores.html) | No | No | No | No[1](#fn:1) | No | No |
| [Data Type](Custom_Data_Types.html) | No | No | No | No | No | No |
| [Decision](Decisions.html) | No | Yes | No | Yes | No | No |
| [Document](about-doc-management.html) | Yes | Yes | Yes | No[2](#fn:2) | Yes | No |
| [Document Folder](folder-object.html#document-folders) | Yes | No | No | No[2](#fn:2) | Yes | No |
| [Expression Rule](Expression_Rules.html) | No | Yes | No | Yes | No | No |
| [Feed](Feeds.html) | No | No | No | No[1](#fn:1) | No | No |
| [Group](Creating_Groups.html) | Yes | No | No | No[2](#fn:2) | No | No |
| [Group Type](Group_Types.html) | Yes | No | No | No[2](#fn:2) | No | No |
| [Integration](Integration_Object.html) | No | Yes | No | Yes | No | No |
| [Interface](interface_object.html) | No | Yes | No | Yes | No | No |
| [Knowledge Center](folder-object.html#knowledge-centers) | Yes | No | No | No[2](#fn:2) | Yes | No |
| [Process Model](design-objects.html#process-model) | No | Yes | No | No[1](#fn:1) | No | Yes |
| Process Model Folder | Yes | No | No | No[2](#fn:2) | No | No |
| [Process Report](Process_Reports.html) | Yes | Yes | No | No[2](#fn:2) | Yes | No |
| Rule Folder | Yes | No | No | No[2](#fn:2) | No | No |
| [Record Type](Record_Type_Object.html) | No | No | No | No[1](#fn:1) | No | No |
| [Report](Tempo_Report_Design.html) | No | No | No | No[1](#fn:1) | No | No |
| [Site](Sites.html) | No | No | No | No[1](#fn:1) | No | No |
| [Web API](Sites.html) | No | Yes | No | No[1](#fn:1) | No | No |

1.  Object can be renamed when editing it.  [1](#fnref:1)  [2](#fnref:1:1)  [3](#fnref:1:2)  [4](#fnref:1:3)  [5](#fnref:1:4)  [6](#fnref:1:5)  [7](#fnref:1:6)  [8](#fnref:1:7)

2.  Object can be renamed from the **Properties** dialog.  [1](#fnref:2)  [2](#fnref:2:1)  [3](#fnref:2:2)  [4](#fnref:2:3)  [5](#fnref:2:4)  [6](#fnref:2:5)  [7](#fnref:2:6)  [8](#fnref:2:7)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...