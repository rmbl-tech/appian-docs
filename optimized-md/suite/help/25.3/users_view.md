---
source_url: https://docs.appian.com/suite/help/25.3/users_view.html
original_path: users_view.html
version: "25.3"
title: "Users View"
page_id: "users_view"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Users View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes what you can do in the **Users** view of Appian Designer.

To access this view, click **Users** in the [navigation pane](common-view-elements.html#navigation-pane) at the environment level.

## Purpose

The **Users** view allows you to manage users in the Appian environment. In this context, users are primarily developers building applications, but they can also act in other [roles](User_Roles.html).

Learn more about [user management](User_Management.html).

## Elements

The following image highlights the elements that make up this view:

[![screenshot of the Users view in Appian Designer](images/users-view-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img294)

[![](images/users-view-annotated.png)](#_)

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

Toolbar

 |

-   [Search](#search-for-a-user) for a user and [filter](#filter-the-users-grid) the users grid.
-   [Create a user](#create-a-user).
-   [Deactivate or reactivate a user](#deactivate-or-reactivate-a-user).

 |
|

4

 |

Grid

 |

-   [View user details](#view-user-details).
-   [Edit a user](#edit-a-user).

 |

## Search for a user

In the filter pane, you can search by full name, username, and email.

## Filter the users grid

System administrators can filter the grid by the user's status and the [user's type](User_Management.html#manage-user-rights-and-security).

User status values include:

-   **Active**: (Default) View active users.
-   **Inactive**: View [deactivated users](#deactivate-or-reactivate-a-user) only.
-   **All**: View both active and deactivated users.

## Create a user

**Required role:** System administrator

To create a new user:

1.  In the toolbar, click **CREATE USER**. The **Create User** dialog displays.
2.  In the **Profile** section, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Username** | The username that uniquely identifies the user in the environment. For example: `angela.lewis`. |
    | **First Name** | The first name of the user. |
    | **Last Name** | The last name of the user. |
    | **Nickname** | A nickname for the user. |
    | **Email** | The email for the user. This email will be used for notifications and resetting the user's password. |
    | **Supervisor** | Select an existing user. |
    | **Title** | Select from existing titles, create a new title, or select none. |

3.  In the **Security** section, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **User Type** | Select a [user type](User_Management.html#manage-user-rights-and-security). |
    | **Temporary Password** | Enter a temporary password. The user will need this password to sign on to Appian, at which time the system will prompt them to reset the password. |
    | **Confirm Password** | Re-enter the temporary password. |

4.  Continue as appropriate:
    -   Click **CREATE** to create this user only.
    -   Click **CREATE & ADD ANOTHER** to create this user and return to a blank **Create User** dialog.

## View user details

System administrators can view details for all users in the environment.

Developers can see other users' details in read-only form, and the **User Type** and **Groups** fields are hidden from their view.

To view user details, click the username in the users grid. The **User Properties** dialog displays.

## Edit a user

System administrators can edit any user. Developers can edit their own user information only.

To edit a user:

1.  In the users grid, click the name of a user. The **User Properties** dialog displays.

    [![screenshot of the Update User Properties dialog in Appian Designer](images/Update_User_Dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img295)

    [![](images/Update_User_Dialog.png)](#_)

2.  Make your changes.
3.  Click **SAVE**.

System administrators can update any of the following fields:

-   **Profile**
    -   First Name
    -   Middle Name
    -   Last Name
    -   Nickname
    -   Supervisor
    -   Title
    -   Profile Photo
-   **Security**
    -   User Type
-   **Contact**
    -   Email
    -   Office Phone
    -   Mobile Phone
    -   Home Phone
-   **Location**
    -   Address 1
    -   Address 2
    -   Address 3
    -   City
    -   State
    -   Province
    -   ZIP Code
    -   Country
-   **Internationalization**
    -   Locale
    -   Time Zone
-   **Custom Fields**
    -   Custom Fields 1 - 10
-   **Groups**
    -   This section displays the groups the user is a member of. You can add them to more groups in the [Groups View](Group_Management.html#add-or-remove-members).

## Deactivate or reactivate a user

**Required role:** System administrator

When you deactivate a user:

-   The user will not able to sign in to Appian and will not be returned in user searches (for example, in a [user picker](User_Picker_Component.html)).
-   Processes will fail if the process is configured to run as the deactivated user.

To deactivate a user:

1.  In the users grid, select a user.
2.  In the toolbar, click **DEACTIVATE**. A confirmation dialog displays.
3.  Click **DEACTIVATE** to confirm. The system deactivates the user.

To view deactivated users, filter the users grid by the **Inactive** status.

To reactivate a user:

1.  In the filter pane, filter the grid by **Inactive** status.
2.  In the filtered grid, select a user.
3.  In the toolbar, click **REACTIVATE**. The system fully restores the user.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...