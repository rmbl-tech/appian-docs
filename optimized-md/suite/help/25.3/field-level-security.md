---
source_url: https://docs.appian.com/suite/help/25.3/field-level-security.html
original_path: field-level-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Field-Level Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

While [record-level security](record-level-security.html) allows you to easily specify who can see which records, you may want to hide entire fields from certain users. With _field-level security_, you can easily secure your data model so only the right users see the right fields.

This page explains field-level security and how to configure it on your record types with [data sync](about-data-sync.html) enabled.

**Note:**  If your record type does not have data sync enabled, you can use the _showWhen_ parameter in your interface components to show or hide fields from certain users.

## About field-level security

Field-level security allows you to specify who can see which fields in your record type. By default, any user with [**Viewer** permission](record-security.html#prodlink-security) to the record type can see all fields. However, you may want to hide fields with sensitive data so it's only visible to certain users.

For example, let's say you have an Employee record type that stores all employee information, including their social security numbers. While employee names, titles, and departments can be visible to all application users, employee’s social security information should only be visible to employees in human resources (HR).

[![images/fls-example.png](images/fls-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img449)

[![](images/fls-example.png)](#_)

Using field-level security, you can specify that only users in the HR group should be able to see the social security numbers in that field. If a user is not in the HR group and they view an interface or site that references the social security field, the field will display null values or be hidden entirely. Learn [where and how field-level security is applied](#where-field-level-security-is-applied).

## Where field-level security is applied

Field-level security automatically applies throughout your applications and Process HQ. However, field-level security does not apply in Appian Designer. This allows developers to build comprehensive apps using all available fields, while ensuring that only the right users can see the right fields.

Field-level security behaves differently depending on where users are viewing the field. The table below outlines how field-level security applies to users in if they do not have access to a field in the following locations:

|
Location

 |

If a user does not have access to a field...

 |
| --- | --- |
|

**Process HQ**

 |
| [Data fabric insights](allow-users-to-build-reports.html) | The field will be hidden from the dataset when the user builds a report, and they cannot view reports that contain the field. |
| [Process insights](process-insights.html) | Field-level security is not applied in process insights, so data stewards should remove any sensitive fields before granting access to processes. |
|

**Appian Designer**

 |
| [All objects](SAIL_Components.html) | Field-level security is not applied in Appian Designer, so developers should test and validate field-level security configurations in their applications. |
|

**Applications**

 |
| [Interface components](SAIL_Components.html) | The field will still display in the component, but the values will be null.

You can use the [a!doesUserHaveAccess()](fnc_system_doesUserHaveAccess.html) function to automatically hide fields from the component if a user does not have access to see them. |
| [Queries](Query_Recipes.html) | The field will not be returned in the output of [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html). |
| [Filters](fnc_system_a_queryfilter.html) and [sorts](fnc_system_a_sortinfo.html) | An error will appear when the user tries to view a query or interface that uses the field to filter or sort it. |
| [User filters](filter-the-record-list.html) | The user filter will be hidden. |
| [Search](search-the-record-list.html) | The user cannot search by that field.

For optimal performance and a consistent user experience, developers can [limit the search](search-the-record-list.html#limit-search-to-selected-fields) to fields that are available to all users. |
| [Common fields in a relationship](record-type-relationships.html#common-field-values) | The field will be hidden or null in the locations above.

Configuring field-level security on a common field will not impact the security on the related record type. Even if a common field is hidden from a user, they can still access the related record fields from that relationship if those fields are not also secured. |
| [Fields used in a real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations) | In an application, the real-time custom record field will display null values.

In data fabric insights, the real-time custom record field will be hidden from the dataset. |
| [Fields used in a sync-time custom record field](custom-record-fields.html#prodlink-sync-time-evaluations) | The sync-time custom record field will still display and the field values will be visible.

Developers should avoid using sensitive fields in sync-time custom record fields configuration, or configure the custom record field so it hides the sensitive data. For example, users should not see the `revenue` field, but a developer could create a sync-time custom record field that shows a range of revenue values of high, medium, or low. |

## Configure field-level security

You can configure field-level security on any field in your record type, except the primary key field.

To configure field-level security:

1.  In the record type, go to **Field-Level Security**.
2.  Click **Edit Field Security** next to the field you want to secure.
3.  Choose **Who can see this field**:

    -   By default, **All users who can see the record type** is selected.
    -   Select **Only users…** to specify which [groups](Group_Management.html) of users can see the field. Enter the name of the groups or use the **Browse List** option to select the groups.

    **Tip:**  If you don't have a group created yet, click to [create a new group](Creating_Groups.html) and automatically add that group to the field's security.

4.  Click **OK**.
5.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...