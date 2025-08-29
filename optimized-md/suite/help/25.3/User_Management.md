---
source_url: https://docs.appian.com/suite/help/25.3/User_Management.html
original_path: User_Management.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Users

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Manage Users in Your Appian Applications

This video from [Academy Online](https://academy.appian.com/) explains how to add and manage users.

## Overview

Users can be managed from a few places, depending on your role:

-   System administrators can view, create, and modify users on the [Users](Appian_Administration_Console.html#users) page in the Admin Console.
-   All developers can access users from the [**Users** view](#appian-designer) in Appian Designer.
-   The [Users record type](Configure_Tempo_Users.html) in Tempo contains the user profiles for users of Appian.
    -   You can also add the Users record type to a [site page](sites_object.html#add-a-page). A user can go here to view other users and to modify their own user profile.

## Create a new user

System administrators can create new users.

To create a new user:

1.  In the navigation menu, go to the Admin Console.
2.  In the navigation pane, click **Users** under **AUTHENTICATION**. The **Users** page displays and contains a grid of the users in your environment.
3.  Click the **CREATE** button in the toolbar above the grid. The **Create User** dialog displays.
4.  Enter the user's **Username**. It must not match an existing username regardless of case. For example, if "john.doe" already exists, you cannot enter "John.Doe". Appian usernames are case sensitive when the user logs in. A username can only contain up to 255 ASCII letters (a-z, A-Z), numbers, and the special characters listed below.

    -   At symbols (@)
    -   Periods (.)
    -   Underscores (\_)
    -   Hyphens (-)
    -   Apostrophes (')

    **Note:**  If you plan on creating an application that restricts user visibility, be sure to create a username that is not personally identifiable, as usernames are still visible within the system even when a user's **Contact Information** and **Display Name** are restricted. See also: [User Profile Visibility](User_Profile_Visibility.html)

5.  Enter the remaining basic information for the user:
    -   First Name
    -   Last Name
    -   Nickname (Optional)
    -   E-mail Address (Must include the **@** symbol and a domain such as **.com**)
    -   Supervisor (Optional)
    -   Title (Optional)
6.  Select one of the following options from the **User Type** selection:
    -   **Basic User**: All users that are not system administrators. See below: [Account Rights for Basic Users](#account-rights-for-basic-users)
    -   **System Administrator**: Users that have access privileges to all tools and capabilities in Appian, can edit user roles, and create new administrators. System administrators are automatically added to the Designers group through a membership rule, but do not inherently have the [designer role](User_Roles.html#designer-role).
7.  (Optional) Enter a **Temporary Password** and re-enter it in the **Confirm Password** field. If a password is not entered, it is automatically generated and sent to the user in an email. Regardless of whether or not you specify a password here, the password will be marked as temporary and the user will need to change it the next time they sign in.

    **Note:**  Passwords may be constrained to certain complexity or length requirements by your Appian administrator. See also: [Appian Authentication](Appian_Administration_Console.html#appian-authentication).

8.  Click **CREATE** to create the user and return to the users grid, or click **CREATE & ADD ANOTHER** to create the user and continue creating new users in the **Create User** dialog.

## View and update users

There are three places where you can view and update the users in your environment.

### Admin Console

System administrators can view and search through a complete list of users in the **Users** page of the [Admin Console](Appian_Administration_Console.html#users). When you search on first name, last name, or email address, Appian uses a "starts with" search. When you search on UUID, Appian uses an exact match search. You can also sort the users grid by these four fields and filter by the user's active/inactive status.

![A list of users shown in the Admin Console](images/Users_Page_Admin.png)

To view or update a specific user's information:

1.  Click on a username in order to open the **Update User** dialog.
    -   This dialog displays detailed information about a user, including the groups of which they are members and administrators. System administrators can administer all groups, although only system groups are explicitly listed here for them.
2.  Modify any of the following fields:
    -   **Profile**
        -   First Name
        -   Middle Name
        -   Last Name
        -   Nickname
        -   Supervisor
        -   Title
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
3.  Click **Change** next to a username in order to update a username. Appian usernames are case sensitive, but a new username must not match an existing username, regardless of case. For example, if the current username is "john.doe", then changing it to "John.Doe" is valid. However, if the current username is "jane.doe" and "john.doe" already exists, you cannot enter "John.Doe". A username can only contain up to 255 ASCII letters (a-z, A-Z), numbers, and the special characters listed below. Note it is **not possible** for a user to rename themselves.
    -   At symbols (@)
    -   Periods (.)
    -   Underscores (\_)
    -   Hyphens (-)
    -   Apostrophes (')
4.  Click **Change Photo** to upload a JPG image, which can be zoomed and cropped.
5.  After completing desired changes, click **UPDATE**.

### Appian Designer

All developers can view and search through a complete list of users from the [**Users** view](users_view.html) in Appian Designer. You can search by full name, username, and email. Appian returns any results that contain the search criteria. You can also sort the users grid by these three fields.

To access the **Users** view:

1.  In the navigation menu, click **Users**.

![images:Users_View.png](images/Users_View.png)

Designers who are system administrators can filter the grid by the user's active/inactive status, as well as view and modify a specific user's information by following the [same steps above](#admin-console) for the Admin Console.

Basic developers can modify their own user information and see a limited set of read-only details about the other users in the results.

**Note:**  Users are not design objects, so they will not appear as part of any application or objects list in Appian Designer, except in a group's members list and in the **Users** view.

### User record type

The User record type allows you to reference user information in your interfaces, reports, and queries. By default, end users can view the user profiles of other users, although you can determine who can see which user profiles by configuring [record-level security](record-level-security.html).

End users can modify their own profiles from their User record, including their name, email address, office phone, mobile, location, profile photo, cover photo, and blurb (system administrators cannot modify other users' blurbs).

While system administrators can modify users' profiles, they cannot prevent end users from modifying their own profiles. To restrict which fields a user can edit on their own profile, go to the [User Profile](Appian_Administration_Console.html#user-profile) page of the Admin Console.

## Reset user password

System administrators can reset a user's password from the Admin Console. End users can, however, change their own password at any time from the **Settings** page in Tempo or a Site.

To change a user's password, complete the following:

1.  In the navigation menu, go to the Admin Console.
2.  In the navigation pane, click **Users**.
3.  In the users grid, select the users that should have their passwords reset.
4.  Click **Reset Password**. A new temporary password is emailed to each selected user.

## Deactivate and reactivate users

### Deactivate users

If you deactivate a user, the user account is still present in the system, but the user cannot sign in. Additionally, default and runtime object permissions for that user are revoked.

Running processes that were started by a user who was later deactivated will pause by exception. This will not happen immediately, but is guaranteed to happen no later than the next time the application server is restarted.

**Tip:**  When designing applications, it's important to consider the lifecycle of the user separate to the lifecycle of the event. A user's departure does not mean the end of their responsibilities.

Process models or any node in a process model configured to run as their designer will fail to run if the designer user becomes deactivated. Also, when process models are imported from one environment to another, the user importing these applications becomes the process model designer. For these reasons, Appian recommends that applications be [imported](Deploy_to_Target_Environments.html) into test and production environments using a service account of type System Administrator that will not be deactivated.

**Note:**  If needed, applications can be force updated by an active user using an [import customization file](Managing_Import_Customization_Files.html#importing-unchanged-objects).

System administrators can deactivate users from the Admin Console by doing the following:

1.  In the navigation menu, go to the Admin Console.
2.  In the navigation pane, click **Users**.
3.  In the users grid, select the users to be deactivated.
4.  Click the **Deactivate** button on the grid toolbar. Appian prompts you to verify that you do want to deactivate the user(s) in question.
5.  Click **Deactivate** to verify.

**Note:**  The **Administrator** user account cannot be deactivated.

### Reactivate users

When a user account is reactivated, its _last login time_ is set to the current date and time to prevent the user from being immediately deactivated (if a policy is in place to do so for users who do not log into the system within a certain amount of time). See also: [Appian Authentication](Appian_Administration_Console.html#appian-authentication)

System administrators can reactivate users from the Admin Console by doing the following:

1.  In the navigation menu, go to the Admin Console.
2.  In the navigation pane, click **Users**.
3.  In the users grid, view deactivated users by clicking the **Inactive** or **All** radio button filter options.
4.  Select the users you want to reactivate. The **DEACTIVATE** button is replaced by a **REACTIVATE** button.
5.  Click the button to reactivate the users. The user is now reactivated and is able to sign in to the system. Users must reset the expired passwords when attempting to sign in.

## Unlock users

When a user account is locked according to a password policy (such as having too many failed sign-in attempts within the designated time frame), a banner displays on the **Update User** dialog for that user.

![images:unlock-user.png](images/unlock-user.png)

System administrators can unlock users from the Admin Console by doing the following:

1.  In the navigation menu, go to the Admin Console.
2.  In the navigation pane, click **Users**.
3.  In the users grid, click the username of the user to be unlocked. The **Update User** dialog displays.
4.  In the banner at the top of the dialog, click the **Unlock User** link. The user account is now unlocked, and the user can attempt to sign in again.
5.  To dismiss the **Update User** dialog, click **CANCEL**.

## Manage user rights and security

System administrators assign certain rights to a user by making the user a **Basic User** or a **System Administrator**.

-   All **System Administrator** accounts have administrative rights (the highest level of rights).
-   Rights for **Basic User** accounts are listed below: [Account Rights for Basic Users](#account-rights-for-basic-users)

To modify a user's type after creating the user, complete the following:

1.  In the Admin Console or **Users** view in Appian Designer, click the username in the Users grid. The **Update User** dialog opens.
2.  Select **Basic User** or **System Administrator** from the **User Type** field.
3.  Click **Update**. The user's rights are updated throughout the system and will take effect when the user next logs in.

**Other User Rights**

All user actions are verified using access control lists prior to execution. Individual objects can be secured by granting rights to individual users or groups based on group membership and user role maps.

**Note:**  **Best Practice**: Rather than assign rights for various objects to each individual user, as a best-practice, create a custom group for each role within your organization. Assign rights in the system according to group and then add the users in that role to the associated group.

See also: [Configuring Security for Groups](Configuring_Security_for_Groups.html) and [User Roles](User_Roles.html).

### Account rights for basic users

As basic users interact with Appian, they are frequently assigned additional roles. These roles are granted the necessary rights to perform various tasks, such as administering the objects they create. Basic users must be given the [designer role](User_Roles.html#designer-role) in order to access [Appian Designer](welcome-app-designer.html).

### Preferences

A basic user can select her preferred time zone, language, calendar settings in Tempo by doing the following:

1.  Click on the user avatar in the upper right.
2.  Click **SETTINGS**.
3.  Select the preferred settings.
4.  Click **SAVE CHANGES**.

System administrators can override these individual settings in the Admin Console.

### Alerts

All email and mobile notifications can be configured individually by users. The server administrator can configure email notification settings for the entire site, but each individual user can override these settings for their own account.

See [User Notifications Settings](Notifications.html) for the options available.

### Tempo

The following user rights are available to viewers of the Tempo interface:

| Ability | System Administrator | Basic User |
| --- | --- | --- |
| View public events (events that are not targeted to any specific user). | Yes | Yes |
| View events targeted to a group the user belongs to. | Yes | Yes |
| View posts added by users the user is following. | Yes | Yes |
| Search for posts added by users the user does not have viewer rights to. | Yes | No |
| Post to his or her followers. | Yes | Yes |
| Post a comment on any visible feed entry. | Yes | Yes |
| Send a message to everyone. | Yes | No |
| Send a message to a user he or she does not have viewer rights to. | Yes | No |
| Send a message to a Tempo Message Audience Group the user is a part of. | Yes | Yes |
| Create a task for a user the user does not have viewer rights to. | Yes | No |
| View tasks assigned to the user or sent by the user. | Yes | Yes |
| View tasks assigned to other users. | Yes | No |
| Give kudos to other users. | Yes | Yes |
| View kudos given to other users. | Yes | Yes |
| View an action without view rights to the associated process model. | Yes | Yes |
| Take an action that is in a viewable process model and application. | Yes | Yes |
| Take an action without view rights to the associated process model. | No | No |
| Open a case without view rights to the associated process model. | No | No |
| View his or her own profile. | Yes | Yes |
| View a profile of a user they do not have viewer rights to. | Yes | No |

**Note:**  System administrators have viewer rights to all users.

## Add users to groups

Users can be added to a group by navigating to the group in Appian Designer, and clicking **Add Members** in the toolbar or by configuring a membership rule. See [Group Management](Group_Management.html) for more details.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...