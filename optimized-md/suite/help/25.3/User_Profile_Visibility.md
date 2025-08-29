---
source_url: https://docs.appian.com/suite/help/25.3/User_Profile_Visibility.html
original_path: User_Profile_Visibility.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Profile Visibility

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

User profile visibility is a concept in Appian that allows a user to view and interact with another user in Appian.

If a user is visible to another user, their profile and contact information is displayed throughout the Tempo, Sites, Embedded, and Designer interfaces.

A user can be set as not visible to other users so that the user's contact information does not display on user interfaces, the user does not show up in searches and generic user lists, and other users can not take action on the user. The specific impact on the interfaces, search, and user interaction are detailed in the sections below.

**Note:**  Just as it applies to other securable objects (for example, documents), it is still possible for process designers to output the details of any user by storing the information as a variable and presenting it on a form or dashboard, regardless of the user's visibility.

## Configure user profile visibility

Two factors determine whether a user is visible within an interface, search, and user interactions:

-   The default visibility of all users within the system.
-   The user's role map, which determines the specific visibility of a user to a set of other users.

Regardless of the default visibility setting and user role map settings, users will always be visible to themselves and system administrators.

### Set the default visibility

The default visibility of users in the system is managed on the **Permissions** page of the Admin Console. Under the [User Profile](Appian_Administration_Console.html#user-profile) section, you can choose to enable or disable the option **Users can see the profile details of all users by default**.

If this option is selected (the default):

-   Users can see the profile details of another user.
-   Notification emails sent by Appian will include users' display names.

If this option is unselected:

-   Users cannot see another user's details unless they are explicitly added in to their role map.
-   Notification emails sent by Appian will only include users' usernames, not their display names.

### Modify a user's role map

In addition to the system-wide default for user profile visibility, you can also set the user's visibility at the user-level through their role map.

**Note:**  If you add a role map to a user, this will limit the users who can view that user's profile details to only those specified in the role map; regardless of the default visibility setting.

A user's role map is configured using the [Modify User Security Smart Service](Modify_User_Security_Smart_Service.html). Only users or groups entered in the Administrator, Editor, and Viewer inputs of the smart service can see the target user in the application.

Each time you execute the Modify User Security Smart Service, you write a new role map for the user. As such, ensure you enter every user or group you want as part of the role map each time you implement it.

## Objects not impacted by user profile visibility

When you upgrade an Appian environment to version 22.4, you can [update the User record type](Configure_Tempo_Users.html#update-the-user-record-type) to use data sync. When you update the User record type, any existing user profile visibility settings will be ignored in the following locations and should be replaced with [record-level security](record-level-security.html):

-   The User record type.
-   The Users record list.
-   The record views on the User record type.
-   Records-powered grids that use the User record type as the source.

## Objects impacted by user profile visibility

User profile visibility settings will automatically apply to certain user interfaces, search, and user interactions.

If a user is **not** visible to other users, then:

-   Anywhere a user's display name would appear is replaced with their username.

    **Tip:**  Keep this in mind when creating usernames for new user accounts. If you plan on creating an application that restricts the visibility of users, make sure to create usernames that are not personally identifiable.

    If you have already created a username, you can use the `updateUsername()` and `commitUpdateUsername()` APIs as part of the Rename Users Plug-in to modify an existing username.

-   Only the username and profile image displays on user cards. User cards appear when you hover your mouse over a username within Tempo and Sites.

-   The user will not appear in the **Users** view in Appian Designer or the membership list of a group.

-   The user does not show up in any search results, including the People Picker.

-   All interactions are restricted, including sending a message, creating a social task, and giving kudos on Tempo.

-   If the user edited an application listed in the [Recent Applications section](applications-view.html#access-recent-applications) of the Applications view, only their username will display in the list of recent editors.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...