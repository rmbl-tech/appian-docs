---
source_url: https://docs.appian.com/suite/help/25.3/Configure_Tempo_Users.html
original_path: Configure_Tempo_Users.html
version: "25.3"
title: "About the User Record Type"
page_id: "Configure_Tempo_Users"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About the User Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use the User Record Type to Reference User Data in Your Apps

Watch this video to learn how to leverage the out-of-the-box User record type.

## Overview

Each Appian environment has a directory of users available as a [record type](Record_Type_Object.html). The User record type can be added to a [site page](sites_object.html#add-a-page) and referenced throughout your applications to display relevant user information in your queries, interfaces, or reports. Business users can also access this directory in Process HQ or in Tempo.

Each user in Appian has a User record, which by default includes a Summary, News, and Related Actions view. In a site, the News view is available based on a [site design configuration](sites_object.html#configurations) and can be turned off.

This page explains how to edit the User record type to meet the specific needs of your organization.

![Image of new default record type display](images/RTDUser.png)

## Update the User record type

When you upgrade an Appian environment to version 22.4, the User record type displays an alert at the top of the page. This alert indicates that new features are available and that you need to update the User record type in order to take advantage of these features.

![/Record Type Blue Update Message](images/Record_Type_Blue_Update_Message.png)

Updating the User record type will automatically enable [data sync](about-data-sync.html) on the record type. This allows you to leverage [additional low-code data features](about-data-sync.html#what-is-data-sync?) like record type relationships, custom record fields, and record-level security.

**Note:**  Since you can seamlessly secure your user data using [record-level security](record-level-security.html), any existing [User Profile Visibility](User_Profile_Visibility.html) settings will be removed and should be replaced with security rules or a security expression.

To update the User record type:

1.  Go to the [**Objects** view](objects-view.html).
2.  Filter the list to **Record Type** objects.
3.  Search for `user` to find the **User** record type. If you've changed the name of the **User** record type (for example, to `Corporate Directory`), search for the new name instead.
4.  Open the **User** record type.
5.  Click **UPDATE NOW** in the banner located at the top of the record type.
6.  In the **Update Record Type?** dialog, click **UPDATE**.
7.  Click **SAVE**. This will start a [full sync](records-data-sync.html#manual-full-syncs) on the User record type.

If you do not update the User record type, you cannot perform certain modifications listed in this page, like [modifying relationships](#modify-relationships), [modifying record-level security](#modify-record-level-security), or generating additional record views or record actions.

### Replace record field reference

After you update the User record type, new record fields with new UUIDs will be created for your record type. Appian will automatically update any existing field references in your record type to reference the new record fields. However, you will need to manually replace existing references to the User record type that are used throughout your applications (like in expression rules or interfaces).

To find and replace existing field references in your environment:

1.  Go to the [**Monitor** view](monitoring_view.html).
2.  In the **Health Dashboard**, review the [Appian Design Guidance](appian-recommendations.html) grid. This shows all objects that have active design guidance triggered.
3.  From the **All Warnings** dropdown, select **Invalid Record Field Reference**.
4.  Open each object and replace the record field reference with your new field reference.

## Modify the record type name and description

You may need to modify the name and description of the User record type, especially if you need to translate it to a different language to fit the locale of your users.

To modify the record type's name and description:

1.  In the toolbar of the record type, click \> **Properties**.
2.  Update the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the record type. This is the name that developers see in your application. |
    | **Display Name (Plural)** | The name of the record type in plural form. For example, Orders, Customers, or Support Tickets. This is the name that business users see in Process HQ, Tempo, and as the search placeholder text in the record list and any records-powered grids. |
    | **Description** | The description of the record type shown in Process HQ, Tempo, and in Appian Designer. |

3.  Click **SAVE CHANGES**.

If your user base speaks multiple languages, consider populating the fields with all relevant languages. For example:

-   **Singular Record Type Name**: User / Usuario
-   **Plural Record Type Name**: Users / Usuarios
-   **Description**: Directory of users / Directorio de usuarios

**Tip:**  As you develop, keep in mind Appian [design guidance](appian-recommendations.html) is not available on the User record type.

## Modify fields

By default, the User record type contains the following fields:

| Field | Type | Description |
| --- | --- | --- |
| `uuid` | _Text_ | The unique ID associated with each user. This is the primary key field. |
| `active` | _Boolean_ | Indicates whether the user is active or not. |
| `username` | _User_ | The unique username with which the user logs into Appian. |
| `firstName` | _Text_ | The user's first name. |
| `middleName` | _Text_ | The user's middle name. |
| `lastName` | _Text_ | The user's last name. |
| `displayName` | _Text_ | The user's nickname. |
| `email` | _Text_ | The user's email address. |
| `address1` | _Text_ | The first line of the user's address. |
| `address2` | _Text_ | The second line of the user's address. |
| `address3` | _Text_ | The third line of the user's address. |
| `city` | _Text_ | The city of the user's location. |
| `state` | _Text_ | The state of the user's location. |
| `zipCode` | _Text_ | The zip code of the user's location. |
| `province` | _Text_ | The province of the user's location. |
| `country` | _Text_ | The country of the user's location. |
| `phoneHome` | _Text_ | The user's home phone number. |
| `phoneMobile` | _Text_ | The user's mobile phone number. |
| `phoneOffice` | _Text_ | The user's office phone number. |
| `supervisor` | _User_ | The user's supervisor. |
| `title` | _Text_ | The user's title. |
| `blurb` | _Text_ | The user's blurb as provided on their profile Summary view. |
| `isServiceAccount` | _Boolean_ | Determines whether the user is in the [Service Accounts system group](User_Roles.html#service-account-role). |
| `firstAndLastName` | _Text_ | A [custom record field](custom-record-fields.html) that concatenates the `firstName` and `lastName` field. |

You cannot edit or remove any Appian-configured record fields, but you can edit the `firstAndLastName` custom record field and create new custom record fields.

### Edit existing custom record fields

By default, the User record type has the custom record field `firstAndLastName`, which displays a user's first and last name together.

However, you may decide that you want to show a user's `displayName` instead of their first name, or you may just want to update the name of the custom record field.

To edit the existing custom record field:

1.  In the User record type, go to **Data Model**.
2.  Click next to `firstAndLastName`.
3.  Update the following properties as needed:

    | Property | Description |
    | --- | --- |
    | **Record Field Name** | The name of the custom record field. This is how you'll reference the field in the application. |
    | **Record Field Type** | The data type of the custom record field. |
    | **Error Value** | The value to display if there is an error evaluating the custom record field. By default, this is set to **Null**. |
    | **Display Name** | (Optional) The name of the field to appear to users in [Process HQ](processhq.html). |
    | **Description** | (Optional) A description of the field to appear to users in Process HQ. |
    | **Expression** | The custom record field expression defined with record fields and [supported functions](custom-record-fields.html#prodlink-supported-functions).

    This custom record field evaluates at [sync-time](custom-record-fields.html#prodlink-sync-time-evaluations), so you must reference a record field using `rv!record` followed by a record field reference in brackets. For example, `rv!record[recordType!User.fields.displayName]`. |

4.  Click **SAVE** in the dialog, then click **SAVE** for the the record type.

### Add new custom record fields

To add a new custom record field:

1.  In the User record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  Choose a template or [write your own custom record field expression](custom-record-fields.html#write-your-own-expression).
4.  Click **CREATE** when you're done.
5.  Click **SAVE**.

### Delete custom record fields

To delete a custom record field:

1.  In the User record type, go to **Data Model**.
2.  Click next to the custom record field to delete.
3.  In the dependencies dialog, click **DELETE**.

    **Note:**  If you remove a custom record field, any references to the field will break.

4.  Click **SAVE**.

## Modify relationships

By default, the User record type has two relationships:

-   A **supervisorUser** relationship, which allows you to reference a user's supervisor using a [record type relationship](record-type-relationships.html).
-   A **directReportUsers** relationship, which allows you to reference a supervisor's direct reports using a [record type relationship](record-type-relationships.html).

You can [add](record-type-relationships.html#add-relationships), [edit](record-type-relationships.html#edit-relationships), and [delete](record-type-relationships.html#delete-relationships) relationships just like you would in other record types.

**Tip:**  To easily establish relationships to and from the User record type, Appian recommends using the `username` field as the [common field](record-type-relationships.html#common-field-values).

## Modify the record list

When you [update the User record type](#update-the-user-record-type), Appian will automatically update the record list to a default [feed-style record list](record-list.html#feed-style-record-list) defined using the [a!userRecordListViewItem()](fnc_system_a_userrecordlistviewitem.html) function. Any existing record list customizations will be removed upon update.

The `a!userRecordListViewItem()` function returns a default list view only available for the User record type. The list will display the first and last name, email, office phone, and mobile phone for each user in the record type.

![images:Default user record list view.png](images/Default_user_record_list_view.png)

You can replace the function with your own rule that defines a different list, or you can use a [grid-style record list](#create-a-grid-style-record-list).

### Modify the feed-style record list

To modify the feed-style record list:

1.  In the **User** record type, go to **List**.
2.  For **Style**, keep the default selection **Feed**.
3.  Click **EDIT LIST**.
4.  In **List View**, replace the existing function with your own expression using the [a!listViewItem](fnc_system_a_listviewitem.html) function.

    For example, you could create a rule with the following expression to display each user's city and state instead of email and phone numbers:

    ```
    1
    2
    3
    4
    5
     a!listViewItem(
       title: rv!record[recordType!User.fields.firstName] & " " & rv!record[recordType!User.fields.lastName],
       details: rv!record[recordType!User.fields.city] & ", " & rv!record[recordType!User.fields.state],
       image: touser(rv!record[recordType!User.fields.username])
     )
    ```

5.  In **Sort Field**, select a field to sort on and the sort order.
6.  Click **OK**. The record list now looks like this:

    ![images:User record list view.png](images/User_record_list_view.png)

### Create a grid-style record list

To create a grid-style record list:

1.  In the **User** record type, go to **List**.
2.  For **Style**, select **Grid**.
3.  Click **EDIT LIST**.
4.  In the **Edit Record List** dialog, add, remove, or modify columns as necessary to display the record data you want to appear in the grid.
5.  Click **OK**.

## Add user filters

By default, the User record type uses the [a!userRecordFilterList()](fnc_system_a_userrecordfilterlist.html) function as a user filter.

This function contains a **Status** user filter with filter options **Active** and **Inactive**, with **Active** selected by default. As a result, users see only active users in the record list when it first loads. Inactive users are users whose accounts have been deactivated.

![images:Default user record facets.png](images/Default_user_record_facets.png)

Appian does not recommend removing the default user filter. Doing so will result in the record list displaying all inactive users, with no way for users to filter out the inactive users.

However, you can add your own user filters in addition to the default "Status" user filter. For example, if your users span multiple countries, you could add a "Country" user filter.

Learn how to [add more user filters](filter-the-record-list.html) and [customize the out-of-the-box record list search](search-the-record-list.html).

## Add record views

By default, there is a Summary view for the User record type. You can edit the Summary view, and define additional record views to display more user information on user profiles.

Adding record views to the User record type is the same as [adding record views](record-view.html#manually-add-a-record-view) to any other record type. Since the User record type has data sync enabled, you can also [generate record views](record-view.html#generate-a-record-view).

Like other record types, you can also remove the News and Related Actions views. Learn how to [remove default record views](record-view.html#configure-the-display-of-default-record-views).

## Add record actions

By default, the User record type does not have any record actions, but you can [add record actions](record-actions.html) to this record type just as you would any other record type.

## Modify workspace settings

By default, the User record type is shown as a [dataset](allow-users-to-build-reports.html#datasets) in the Data Catalog of Process HQ and as a [Record](Using_the_Records_Tab.html#tempo) in the Records tab in Tempo.

You can hide the record type from these workspaces using the settings on the **Workspaces** page of the record type.

## Modify record-level security

By default, there are two [security rules](record-level-security.html#security-rules) configured on the User record type:

-   Users found in the [Designer](System_Groups.html#designers) group can view all users.
-   Users found in the [Application Users](System_Groups.html#application-users) group can only see users who are not in the Service Accounts system group.

These security rules are automatically applied anywhere the User record type is referenced, including your interfaces and queries. You can [add more security rules](record-level-security.html#add-security-rules) to meet your business needs, or [manage the existing security rules](record-level-security.html#manage-security-rules).

**Note:**  Record-level security will not impact objects that are secured by [user profile visibility settings](User_Profile_Visibility.html#objects-impacted-by-user-profile-visibility). It will only apply where there are references to the User record type.

## Sync the record type

The User record type will automatically sync any data created or changed by the following smart services:

-   [Create User smart service](Add_User_Smart_Service.html)
-   [Deactivate User smart service](Deactivate_User_Smart_Service.html)
-   [Reactivate User smart service](Reactivate_User_Smart_Service.html)
-   [Rename Users smart service](Rename_Users_Smart_Service.html)
-   [Update User Profile smart service](Update_User_Profile_Smart_Service.html)

**Note:**  You cannot sync the User record type using a records-powered smart service, like Sync Records, Write Records, or Delete Records.

The User record type will also automatically sync changes made in:

-   The [Users](Appian_Administration_Console.html#users), [LDAP authentication](Appian_Administration_Console.html#ldap-authentication), or [SAML authentication](Appian_Administration_Console.html#saml-authentication) page of the Admin Console.
-   The [Users view](users_view.html) of Appian Designer.

Additionally, if you use the `userService` public Java API to create plug-ins that modify user information, those changes will also be automatically synced.

## Reference user data

You can reference your user data throughout your applications using a [record field reference](reference-records.html#reference-record-fields). For example, you can easily query a user's name and title using the following query:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
a!queryRecordType(
  recordType: recordType!User,
  fields: {
    recordType!User.fields.firstAndLastName,
    recordType!User.fields.title
  },
  filters: a!queryFilter(
    field: recordType!User.fields.username,
    operator: "=",
    value: ri!username
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
).data
```

**Tip:**  By default, querying the User record type will always return the `username` field as the identifier.

Additionally, when you [build relationships](#modify-relationships) between your record types and the User record type, you can seamlessly reference user data in the context of your other business data.

For example, if the Case record type has a relationship to the User record type, you could return all support engineers who are currently assigned to an open case using the following expression.

```
1
2
3
4
5
6
7
8
9
10
a!queryRecordType(
  recordType: recordType!Case,
  fields: recordType!Case.relationships.User.fields.firstAndLastName,
  filters: a!queryFilter(
    field: recordType!Case.fields.status,
    operator: "<>",
    value: "Open"
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 500)
).data
```

There are also numerous interface components that allow you to pull data directly from the User record type:

-   [User Image component](User_Image_Component.html)
-   [User Record Link component](User_Record_Link_Component.html)
-   [User Picker component](User_Picker_Component.html)
-   [User and Group Picker component](User_and_Group_Picker_Component.html)
-   [Records-powered read-only grid](Paging_Grid_Component.html)
-   [Any records-powered chart](Chart_Configuration_Using_Records.html)

## Deploy changes

Once you have made changes to the User record type in one environment, you may need to deploy those changes to other environments. For example, you might make changes in a development environment that you need to deploy in a test or production environment.

The steps for deploying changes to the User record type are the same as those for deploying changes to any other record type. Simply create an application containing the User record type and any dependencies, export the application, and import it to the new environment.

Learn more about [deploying to a target environment](Deploy_to_Target_Environments.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...