---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/learn-user-settings.html
original_path: rpa-9.17/learn-user-settings.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Settings

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

## Overview

Many different people support the development and management of robotic tasks. The **Users** tab in the Appian RPA console is where administrators can view user information and manage permissions. Administrators responsible for controlling access and privileges should understand how roles impact an individual's access to capabilities within the Appian RPA console.

Your permissions within the Appian RPA console are determined by [your role in Appian](../User_Roles.html). If you're an Appian Administrator, you'll have administrator privileges in the Appian RPA console. Similarly, if you're an Appian Developer, you'll have a developer role in the console.

A user account is created the first time a user accesses the Appian RPA console. Appian shares user's account information such as username and password with Appian RPA. When you log in or out of Appian RPA, you're also logged in or out of Appian. The same applies to changing user information or deactivating users in Appian.

On the **Users** tab, you'll see a read-only list of all users with access to the Appian RPA console. You can't make any changes to user accounts (such as usernames and passwords) within the console. Instead, you'll need to edit user accounts within the Appian Admin console or Appian Designer.

## RPA roles

A user's role determines what they can see and do in the Appian RPA console. The three roles include:

-   **Administrator**: Administrators have access to every screen in the console and can modify all permissions. Administrators can also create new robotic tasks and have access to every setting available in the robotic task configuration. Users with this role can set up and run all available robotic tasks.
-   **Developer**: Developers can build robotic tasks in the console, including modifying permissions for the robotic tasks and robots for which they have permissions. Developers have full access to the settings in the robotic task configuration. However, this role can't grant permissions to users or change some console settings for things like repositories.
-   **Operations Manager**: Operations managers have limited access and actions in the Appian RPA console. This user type can't create or edit robotic tasks, users, or robots. Instead, operations managers can execute robotic tasks, monitor the execution, and view results. This role serves as operational support through routine troubleshooting.

**Tip:**  A user's system group membership determines their role in Appian RPA. See [Role Mapping](#role-mapping) for more information.

## Role mapping

A user's [Appian system group membership](../User_Roles.html) determines their role in Appian RPA. Administrators can change a user's role by changing group membership in Appian.

| Appian system group | Appian RPA role |
| --- | --- |
| Designer | Developer (ROLE\_DEVELOPER) |
| RPA Operations Managers | Operations Manager (ROLE\_USER) |

Appian users whose profiles are set to _System Administrator_ are granted administrator rights in Appian RPA.

## Common responsibilities

The Appian RPA console has multiple tabs where users can view or interact with robotic tasks, robots, and executions. As automation grows to be an integrated part of your business, you'll need to consider who will fill the critical roles with access to Appian RPA. Use the table below to determine which role fits best for common use cases. Check out [specific permissions](#specific-permissions) for a deeper dive into each role's abilities.

| Responsibilities | Ideal role |
| --- | --- |
| Investigate why a robotic task execution failed | Operations manager |
| Execute a configured robotic task | Operations manager |
| View results of a robotic task execution | Operations manager |
| Build robotic tasks | Developer |
| Assign [permission tags](security-rpa.html) to robotic tasks and robots | Developer |
| Assign [permission tags](security-rpa.html) to robotic tasks, robots, and users | Administrator |
| Enable or disable a user's access to Appian RPA | Administrator |
| Add a new robot and install the agent | Administrator |
| Change or add a code repository associated with the console | Administrator |
| Enable or disable all robotic tasks in the console | Administrator |

**Tip:**  As you grant people access to the Appian RPA console, security is important to consider. Administrators can [add or remove permissions for multiple users at once](security-rpa.html#modify-user-permissions-in-bulk).

### Specific permissions

This table provides a high-level reference for who can see and do what on each tab. **Permissions-based** means that role can only see items for which they have permissions. For example, a developer who navigates to the **Robots** tab can only see the robots that have the same permissions as them. Learn more about [permissions in Appian RPA](security-rpa.html).

|   | Operations Manager | Developer | Administrator |
| --- | --- | --- | --- |
| **Operations Console** | **Visibility**: Permissions-based
**Available actions**: Access the Operations Console; View the Robot Management page; Execute robotic tasks on a robot; Use remote viewer to monitor robot usage in real time | **Visibility**: Permissions-based
**Available actions**: Edit and rename robots; grant permissions to a robot; download and install agents | **Visibility**: Full
**Available actions**: Same as Operations Manager and Developer, plus remove robots. No permissions needed. |
| **Users** Tab | **Visibility**: None | **Visibility**: None | **Visibility**: Full
**Available actions**: View list of users and grant permissions |
| **Robotic tasks** | **Visibility**: Permissions-based
**Available actions**: Execute robotic tasks with screenshot capture, step-by-step execution details, deferred execution, and enable video recording; manage credentials; monitor executions, including viewing workflows, screenshots, and exceptions; view removed robotic tasks | **Visibility**: Permissions-based
**Available actions**: Same as Operations Manager, plus configure robotic tasks; grant permissions; create a robotic task; launch Documenter; view, create, edit, and delete libraries and credentials; upload robotic task configurations; access support files; download Configurator | **Visibility**: Full
**Available actions**: Same actions as Developer, plus enable/disable all robotic tasks; view, create, edit, and delete repositories; no permissions needed |
| **Robots** | **Visibility**: Permissions-based
**Available actions**: Use remote viewer to monitor robot usage in real time | **Visibility**: Permissions-based
**Available actions**: Edit and rename robots; grant permissions to a robot; download and install agents | **Visibility**: Full
**Available actions**: Same as Operations Manager and Developer, plus remove robots. No permissions needed. |
| **Monitoring** Tab | **Visibility**: Permissions-based
**Available actions**: Create, edit, and remove actions | **Visibility**: Permissions-based
**Available actions**: View list of events; execute associated robotic tasks; manage permissions; and download result files. | **Visibility**: Full
**Available actions**: Same as Developer; no permissions needed |
| **Settings** Tab | **Visibility**: None | **Visibility**: None | **Visibility**: Full
**Available actions**: Manage configuration, maintenance, and session details |
| **Statistics** Tab | **Visibility**: Permissions-based
**Available actions**: Search for and view details regarding executions, and work item results | **Visibility**: Permissions-based
**Available actions**: Same as Operations Manager | **Visibility**: Full
**Available actions**: Same as Operations Manager; no permissions needed |

#### Service accounts

The HTTP connected system objects use a service account to authenticate using an API key. When using a [hybrid configuration](hybrid-configuration.html), Appian RPA calls back to Appian to look up the username for that API key in order to authenticate the request. We suggest establishing the connection early in your development process.

[More on service accounts](../User_Roles.html#service-account-role)

#### Appian services

The [Appian Services module](actions-appian-services.html) can be used in robotic tasks to query info about Appian design objects and execute them. The actions execute via internal servlets using authorization tokens that aren't exposed. The module also communicates the username of the person executing the robotic task back to Appian. When the robotic task is in design, the username sent to Appian is that of the user who's currently logged into Appian RPA. When the robotic task is executed, Appian RPA sends the username of the person who initiated the task.

The username varies based on how the robotic task was started.

-   If started in the interface, the currently logged in username is sent to Appian.
-   If started through an integration, the name of the service account is sent to Appian.
-   If started through another robotic task, the name of the person to initiate the first robotic task is sent to Appian.

#### Permission tags

Appian RPA robots and credentials are [secured using permission tags](security-rpa.html#permissions). This is a different security mechanism than you'll use for design objects.

Learn more about [securing robotic tasks and other design objects](security-rpa.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...