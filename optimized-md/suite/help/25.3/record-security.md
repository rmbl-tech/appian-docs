---
source_url: https://docs.appian.com/suite/help/25.3/record-security.html
original_path: record-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Type Object Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

When you [create a new record type](Create_a_Record_Type.html), you’ll be prompted to configure the record type object’s security. Like any other object, a record type's security is made up of [groups and role maps](object-security.html#groups-and-role-maps) to determine who can see and modify the record type and its properties.

[![images/record-type-object-role-map.png](images/record-type-object-role-map.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img525)

[![](images/record-type-object-role-map.png)](#_)

This page describes the different security options for the record type. See [Editing Object Security](object-security.html#editing-object-security) to modify a record type's security.

## Record type security

The security role map of a record type controls which users can see or modify the record type and its properties.

If you [generated groups and folders](creating-applications.html#generated-groups-and-folders) when you created your application, the record type role map will have the following permissions by default:

-   **_App Preview_ Administrators** group has **Administrator** permission.
-   **_App Prefix_ Users** group has **Viewer** permission.
-   Default (All Other Users) has no access.

If you did not generate groups and folders, then only the record type creator and system administrators will have access to the record type by default.

The following table outlines the actions that can be performed by each [permission level](object-security.html#permission-levels-in-role-maps) in a record type's security role map:

| Actions | Administrator | Editor | Viewer | Data Steward |
| --- | --- | --- | --- | --- |
| View the record type in [Sites](Sites.html), [Tempo](Using_the_Records_Tab.html#tempo), and [data fabric insights](allow-users-to-build-reports.html)\* | Yes | Yes | Yes | No |
| View the record type | Yes | Yes | Yes | No |
| View the object security | Yes | Yes | Yes | No |
| Update [record-level security](record-level-security.html) | Yes | Yes | No | No |
| Update the record type | Yes | Yes | No | No |
| Update the object security | Yes | No | No | No |
| Delete the record type | Yes | No | No | No |
| Use this record type in a [process](add-process.html) in [Process HQ](processhq.html) | No | No | No | Yes |

\* Additional [workspace settings](appian-records-security.html#workspace-settings) are required.

## Related record type security

When you add a [relationship](record-type-relationships.html) to your record type, Appian will automatically enforce the object security configured on the related record type whenever you reference the related record data. If you do not have sufficient permissions on the related record type, you cannot reference the related record fields, and any references to the related record fields will appear as null.

Preventing users from being able to view a record type does not secure the record type's underlying data source. Users may still be able to view the underlying data in other areas of Appian. See [source security](#source-security) to learn how to secure your records.

## Source security

Individual record security is based on the object security of the underlying data source and the [record-level security](record-level-security.html) defined in the record type.

Users must have at least **Viewer** permissions to the record type's source to view a record in the [record list](record-list.html) or to view its record views. However, the security of the record's source is configured differently for the different source types.

**Tip:**  Record-level security is only available on record types with [data sync](about-data-sync.html) enabled. If your record type does not have data sync enabled, consider adding [default filters](default-filters.html) to determine who can see which records.

### Database source type

If your record type has data sync enabled, you can connect directly to a database table, so no additional source security is necessary.

If your record type does not have data sync enabled, you'll need permission to the data store entity used to configure the record type. See [data store security](Data_Stores.html#prodlink-security) for more information.

### Process model source type

For record types with a process model as the data source, see [Configuring Process Security](process-model-object.html#process-security).

### Web service source type

For record types with a web service as the data source, both the list view and record view source expressions execute in the context of the user viewing the record list. Even if these source expressions are defined using expression rules, the security role map applied to those rules does not prevent any users from executing the rule by viewing the record list.

Access to the underlying data must be controlled by the developer of the expression rule in its definition in conjunction with the access control mechanisms available from the provider of the data. For example, if the expression rule retrieves data from an external data provider that requires credentials for authentication and authorization, the expression rule developer must build the retrieval and presentation of those credentials into the definition of the expression rule.

For more information, see [Expression Rule Security](Expression_Rules.html#prodlink-security).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...