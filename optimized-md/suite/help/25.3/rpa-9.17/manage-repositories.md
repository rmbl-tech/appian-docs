---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-repositories.html
original_path: rpa-9.17/manage-repositories.html
version: "25.3"
title: "Repository Management"
page_id: "rpa-9.17/manage-repositories"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Repository Management

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

The **Repositories** screen on the **Robotic tasks** tab allows you to manage the Maven repositories that robotic tasks use. During execution, the robotic task needs to download dependencies from these Maven repositories to successfully execute on the robot.

To get started, click the **Repositories** icon in the toolbar:

![rpa-toolbar-repo.png](images/rpa-toolbar-repo.png)

**Note:**  Appian recommends you use private repositories as much as possible to ensure the reliability of your robotic tasks and associated components. Improperly configured repositories can result in execution errors or exceptions. Public repositories like Maven Central and the artifacts within them may be changed often, which may adversely affect your robotic tasks or lead to unexpected behavior.

The **List of repositories** shows all repositories you've defined in the console. The list includes the following columns:

-   **Order**: Repositories are listed in the order their dependencies will be resolved. If the dependency is not found in the first repository, Appian RPA looks for it in the next repository in the list. You can change the order using the arrow icons.
-   **URL**: web address of the repository
-   **User**: username to authenticate with the repository
-   **Password**: password to authenticate with the repository (masked for security)
-   **Actions**: gives you the option to delete the repository

## Add a repository

To add a repository:

1.  Go to the **Repositories editor**.
2.  Enter the **URL**, **User**, and **Password** to authenticate with the repository.
3.  Click **Save** to save the information and add the repository to the list.

## Delete a repository

1.  In the **List of repositories**, find the repository entry you want to delete.
2.  Click **Delete repository** in the **Actions** column.

![rpa-repo-editor.png](images/rpa-repo-editor.png)

## Update the order for resolving dependencies

To update the order in which Appian resolves repository dependencies:

1.  In the **List of repositories**, find the repository entry you want to update.
2.  In the Order column, click **Up** or **Down** to move the entry.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...