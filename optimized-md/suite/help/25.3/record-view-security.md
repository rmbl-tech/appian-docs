---
source_url: https://docs.appian.com/suite/help/25.3/record-view-security.html
original_path: record-view-security.html
version: "25.3"
title: "Record View Security"
page_id: "record-view-security"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record View Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian makes it simple to secure your enterprise data at a granular level when you use [record-level security](record-level-security.html) to specify who can see which records. But records are more than just a row of data—they’re a combination of data, [record views](record-view.html), and [record actions](record-actions.html).

Using _record view security_, you can further secure your records by determining who can see specific record views and when.

This page describes record view security and how to configure it.

## About record view security

By default, any user who can see a record can see all record views. These users will always see the [default record views](record-view.html#default-record-views)—Summary, News, and Related Actions—since they provide general information about a record.

However, you can conditionally show or hide any [additional record views](record-view.html) you've configured, so you can make those insights available to the right users at the right time.

For example, in a Support Case record type, you may only want account managers to see the **Customer Satisfaction** record view. You can configure record view security to specify that users can only see the view if they can see the record and if they're found in the `accountManager` field. Otherwise, users will only see the Summary view and any default views.

[![images/view-visibility.png](images/view-visibility.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img543)

[![](images/view-visibility.png)](#_)

To show or hide additional views like **Customer Satisfaction**, you can configure one the following options:

-   [**Security rules**](#security-rules): For record types with [data sync](about-data-sync.html) enabled, you can use a simple and easy-to-maintain experience to define who can see the record view and when.
-   [**Security expressions**](#security-expression): For all record types, you can use a series of conditions in an expression to define who can see the record view and when.

**Note:**  In the latest version of Appian, existing **Visibility** expressions configured on your record views are now called **Security Expressions**.

## Security rules

When you enable [data sync](about-data-sync.html) on your record type, you can configure easy-to-maintain security rules on your record views.

Similar to security rules configured in [record-level security](record-level-security.html), security rules configured on your record view allow you to translate your complex security requirements into plain language. You'll only need to answer two questions: [who can see this view?](#who-can-see-this-view) and [when can they see this view?](#when-can-they-see-this-view)

### Who can see this view?

The first element of a security rule determines who can see the view.

By default, all users who can see the record can see the record view. Your security rule allows you to limit who can see the view to only users who can see the record and are found in specific groups or fields.

[![images/whoCanSeeThisView.png](images/whoCanSeeThisView.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img544)

[![](images/whoCanSeeThisView.png)](#_)

#### Users found in groups

With the **Only users found in groups** option, a user can only see a record view if the user can see the record _and_ is found in any of the groups you specify.

For example, in a Customer record type, you may have a record view called **Customer Payment Plan**, and you only want the finance department and executives to see this view.

To configure this security requirement, you can create a security rule on the **Customer Payment Plan** record view that specifies that any user who can see the customer record and is found in the **Finance Department** group or the **Executives** group can see the record view.

[![images/record-view-users-found-in-groups.png](images/record-view-users-found-in-groups.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img545)

[![](images/record-view-users-found-in-groups.png)](#_)

**Tip:**  If a group doesn’t exist yet, you can create a new group directly from the security rule. Simply click to create a new group and use it in your security rule.

#### Users found in fields

With the **Only users found in fields** option, a user can only see the record view if the user can see the record _and_ is found in any User or Group fields you specify.

For example, on the Case record type, you may have a record view called **Customer Information** that displays the customer’s contact information and other related information. To keep the customer’s information protected, you only want the assigned support engineer and the customer’s account manager to see this view.

To configure this security requirement, you can create a security rule on the **Customer Information** record view that specifies that any user who can see the case record and is found in the `assignedEngineer` field or the `accountManager` field can see the record view.

[![images/record-view-users-found-in-fields.png](images/record-view-users-found-in-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img546)

[![](images/record-view-users-found-in-fields.png)](#_)

#### Users found in groups or fields

You can combine the **Only users found in groups** and **Only users found in fields** options, so that a user can see the record view if they can see the record and are found in a group _or_ in a field.

For example, in an Employee record type, you may have a **Performance Review** view. You want only the employee, their manager, and Human Resources to see this view.

To configure this security requirement, you can specify that if a user can see the employee record and is found in the **Human Resources group** or is found in the `supervisor` field or the `username` field, then they can see the record view.

[![images/record-view-users-found-in-groups-or-fields.png](images/record-view-users-found-in-groups-or-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img547)

[![](images/record-view-users-found-in-groups-or-fields.png)](#_)

**Tip:**  This example uses a [record type relationship with the User record type](Configure_Tempo_Users.html). Selecting the `username` field from the User record type is similar to using the `loggedInUser()` function to determine who is looking at the record view.

### When can they see this view?

Once you determine who can see the record view, you can add security conditions to specify when they can see the view.

[![images/whenCanTheySeeThisView.png](images/whenCanTheySeeThisView.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img548)

[![](images/whenCanTheySeeThisView.png)](#_)

Security conditions are made up of [fields](#fields), [operators](#operators), and [values](#values). Depending on the selected field, your operator and value options will change.

#### Fields

The field picker contains all record fields and relationships defined on the record type.

When creating multiple conditions against fields from the same one-to-many relationship, Appian will combine those filters using the [AND\_ALL operator](fnc_system_a_querylogicalexpression.html#prodlink-operators). This includes when a field in the **Only users found in fields** option and the fields used in your security conditions are against the same one-to-many relationship.

For example, on the Customer record type, say you have a **Cases** view to display all cases related to the customer. You only want support engineers who are assigned to an open case for that customer and that case has a service-level agreement (SLA) status of "On Time" to see this view.

The security rule configuration would look something like this:

[![images/andAll-securityView-ex.png](images/andAll-securityView-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img549)

[![](images/andAll-securityView-ex.png)](#_)

Since the fields used in the security rule are all from the same one-to-many relationship, the `AND_ALL` operator will be applied so that only users who meet all of the security conditions can see the view.

#### Operators

The operator list displays all of the operators that can be applied to the selected field. Only operators that are compatible with the data type of the selected field display.

The following tables explains the behavior of each available operator:

| Operator | Description | Applies to Data Types |
| --- | --- | --- |
| `=` | Equal to | Text, Integer, Float, Time, Date, Date and Time, Boolean |
| `<>` | Not equal to | Text, Integer, Float, Time, Date, Date and Time, Boolean |
| `<` | Less than | Integer, Float, Time, Date, Date and Time |
| `>` | Greater than | Integer, Float, Time, Date, Date and Time |
| `<=` | Less than or equal | Integer, Float, Time, Date, Date and Time |
| `>=` | Greater than or equal | Integer, Float, Time, Date, Date and Time |
| `in` | Matches a value in a list of values. Only available when using constants. | Text, Integer, Float, Time, Date, Date and Time, Boolean |
| `not in` | Does not match a value in a list of values. Only available when using constants. | Text, Integer, Float, Time, Date, Date and Time, Boolean |
| `is null` | Is empty or null | Text, Integer, Float, Time, Date, Date and Time, Boolean |
| `not null` | Is not empty or null | Text, Integer, Float, Time, Date, Date and Time, Boolean |

#### Values

You can select how you want to pass in the condition value using the value context menu. The options in the context menu change based on the data type of the selected field. You can enter a static text value, or use a [constant](Constants.html) to determine the value the field must evaluate to in order for users to view the record.

### Add a security rule

You can only add a security rule to a record view if your record type has [data sync](about-data-sync.html) enabled. If your record type does not have data sync enabled, you must configure a [security expression](#security-expression) to secure your record views instead.

To add a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Views** tab, click next to the record view you want to secure.
3.  In the **Edit <Record View Name> Security** dialog, keep the default selection of **Security Rules**.
4.  Choose **Who can see this view**:
    -   By default, **All users who can see the record** is selected.
    -   Select **Only users…** to specify that only users who can see the record and are found in specific groups or fields can see the record view.

        | If you want to... | Then... |
        | --- | --- |
        | Add users from a group |
        -   Select **Only users...**
        -   Click **Found in groups** to expand the pane.
        -   Enter the group names or use the **Browse List** option to select your groups.

         |
        | Add users from a field |

        -   Select **Only users...**
        -   Click **Found in fields** to expand the pane.
        -   Enter the field names or use the dropdown to select record fields or related record fields.

         |
        | Add users from a group or field |

        -   Select **Only users...**
        -   Click **Found in groups** to expand the pane.
        -   Enter the group names or use the **Browse List** option to select your groups.
        -   Click the **Found in fields** pane to select your fields.
        -   Enter the field names or use the dropdown to select record fields or related record fields.

         |

5.  Determine **When they can see the record view**:
    -   By default, **Always** is selected.
    -   Select **Only when…** to add one or more security conditions.
6.  To add a security condition:
    -   Use the field picker to choose a record field or related record field.
    -   Select an [operator](#operators) to apply to the selected field.
    -   Enter a static text value, or use a constant to determine the value the field must evaluate to in order for users to view the record.
7.  Click **\+ Add Condition** to add additional security conditions. Use the **OR/AND** operator to determine how the security conditions are evaluated.
8.  Click **Add Condition Set** to compare a set of conditions against another set of conditions.
9.  Click **OK**.
10.  Click **SAVE** to save and apply your security rules.

### Edit a security rule

After you configure and save a security rule on a record view, you can edit it at any time.

To edit a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Views** tab, click next to the record view you want to edit security on.
3.  In the **Edit <Record View Name> Security** dialog, keep the default selection of **Security Rules**.
4.  Update any of the same configurations you'd make when [adding a rule](#add-a-security-rule).
5.  Click **OK**.
6.  Click **SAVE** to save and apply your updated security rule.

## Security expression

While security rules allow you to configure most of your security requirements, you may choose to configure a security expression if you need to configure more complex security conditions, or if your record type does not have [data sync](about-data-sync.html) enabled. Depending on whether your record type has data sync enabled or not, the place where you configure and maintain your security expression will differ.

A security expression allows you to show or hide the record view from certain users based on the conditions you specify in the expression. A user can only see a record view if the security expression evaluates to _true_ for that user.

For example, in the Employee record type, you may have a **Promotion Plan** view that displays an employee's next step in their career, their potential salary increase, and more. However, you only want employees to see this view if they have been at the organization over a year, and they are not in the Performance Improvement group.

Since this example requires users _not_ to be included in a group, you could create a security expression on the **Promotion Plan** record view that looks something like this:

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
if(
  and(
    rule!getTenure(loggedInUser()) >= 1,
    not(
       a!isUserMemberOfGroup(
        username: loggedInUser(),
        groups: cons!PERFORMANCE_IMPROVEMENT_GROUP
       )
     )
    ),
  true,
  false
)
```

### Add a security expression (data sync enabled)

To add a security expression on a record view when your record type has data sync enabled:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Views** tab, click next to the record view you want to secure.
3.  In the **Edit <Record View Name> Security** dialog, select **Security Expression**.
4.  In the Expression Editor, enter an expression to determine who can see the view and when. If the security expression evaluates to _true_ for a given user, then they can see the record view.
5.  Click **OK**.
6.  Click **SAVE** to save and apply your security expression to the record view.

### Add a security expression (data sync disabled)

To add a security expression on a record view when your record type _does not_ have data sync enabled:

1.  In the record type, go to **Views**.
2.  Click next to the record view you want to secure.
3.  Under **Security**, enter an expression to determine who can see the view and when. If the security expression evaluates to _true_ for a given user, then they can see the record view.
4.  Click **OK**.
5.  Click **SAVE** to save and apply your security expression to the record view.

### Replace a security expression with a security rule

If you decide that you'd rather maintain your record view security using a security rule, you can replace your security expression with a security rule at any time. You can only perform these steps on a record type with data sync enabled.

To replace a security expression with a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Views** tab, click next to the record view.
3.  In the **Edit <Record View Name> Security** dialog, select **Security Rules**.
4.  [Add a new security rule](#add-a-security-rule).
5.  Click **SAVE** to save and apply your security rules.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...