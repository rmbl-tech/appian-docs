---
source_url: https://docs.appian.com/suite/help/25.3/record-action-security.html
original_path: record-action-security.html
version: "25.3"
title: "Record Action Security"
page_id: "record-action-security"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Action Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian makes it simple to secure your enterprise data at a granular level when you use [record-level security](record-level-security.html) to specify who can see which records. But records are more than just a row of data—they're a combination of data, [record views](record-view.html), and [record actions](record-actions.html).

Using _record action security_, you can further secure your records by determining who can see your record actions and when.

This page describes record action security and how to configure it.

## About record action security

By default, any user can see a [record list action](record-actions.html#record-list-actions) if they have **Initiator** permission to the underlying [process model](process-model-object.html#prodlink-security). For [related actions](record-actions.html#related-actions), a user must be able to see the record _and_ have **Initiator** permission to the underlying process model.

To ensure that only the right users can take action on the right data, you can conditionally show or hide record actions.

Let's examine these options by considering a support case application used by support engineers and their supervisors. The Support Case record type has record actions for New Case, Update Case, and Delete Case, as well as a bulk edit record action used to update multiple cases at once. Record action security lets the right user add or change support case information based on no-code rules.

[![images/record-action-security-example.png](images/record-action-security-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img480)

[![](images/record-action-security-example.png)](#_)

The New Case and Update Case actions use the default settings: any user with **Initiator** permission to the Create or Update Case process model can make a new Case record. If that user can see a specific record, they will also be able to update it. The delete action will be restricted to users who created the support case or their supervisor.

Supervisors have exclusive access to the bulk edit record action. When a supervisor views the record list, they can see all of the Case record actions.

[![images/record-action-example.png](images/record-action-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img481)

[![](images/record-action-example.png)](#_)

To show or hide actions (like Update Case) so they're only visible to the right users, you can configure one of the following options:

-   [**Security rule**](#security-rules): For record types with [data sync](about-data-sync.html) enabled, you can use a simple and easy-to-maintain experience to define who can see the record action and when.
-   [**Security expression**](#security-expression): For all record types, you can write an expression to define who can see the record action and when.

**Note:**  In the latest version of Appian, existing **Visibility** expressions configured on your record actions are now called **Security Expressions**.

## Security rules

When you enable [data sync](about-data-sync.html) on your record type, you can configure easy-to-maintain security rules on your record actions.

Similar to security rules configured in [record-level security](record-level-security.html), security rules configured on your record actions allow you to translate your complex security requirements into plain language. You only need to answer two questions: [who can see this action?](#who-can-see-this-action) and [when can they see this action?](#when-can-they-see-this-action)

### Who can see this action?

The first element of a security rule determines who can see the action.

By default, any user with **Initiator** permission to the underlying [process model](process-model-object.html#prodlink-security) can see a [record list action](record-actions.html#record-list-actions). For related actions, a user must be able to see the record _and_ have **Initiator** permission to the underlying process model.

Your security rule allows you to further limit who can see an action to only users found in specific groups or fields.

[![images/who-can-see-this-action.png](images/who-can-see-this-action.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img482)

[![](images/who-can-see-this-action.png)](#_)

#### Users found in groups

With the **Only users found in groups** option, you can further limit the action to users found in any of the groups you specify.

For example, in a Customer record type, you may have a related action called **Create Payment Plan**, and you only want the finance department to see this action.

To configure this security requirement, you can add a security rule so the **Create Payment Plan** record action so only users found in the **Finance Department** group can see the action.

[![images/record-action-users-found-in-groups.png](images/record-action-users-found-in-groups.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img483)

[![](images/record-action-users-found-in-groups.png)](#_)

By adding this security rule, a user will only see the **Create Payment Plan** action if:

-   The user can see the customer record.
-   The user has **Initiator** permission to the Create Payment Plan process model.
-   The user is found in the **Finance Department** group.

**Tip:**  If a group doesn't exist yet, you can create a new group directly from the security rule. Simply click to create a new group and use it in your security rule.

#### Users found in fields

With the **Only users found in fields** option, you can further limit the action to users found in any of the User or Group fields you specify.

For example, on the Case record type, you may have a related action called **Review Refund** for supervisors to approve or reject a refund. Because this action has financial impact, you only want supervisors to be able to complete this action.

To configure this security requirement, you can create a security rule on the **Refund** action so only users found in the `supervisor` field can see the action.

[![images/record-action-users-found-in-fields.png](images/record-action-users-found-in-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img484)

[![](images/record-action-users-found-in-fields.png)](#_)

By adding this security rule, a user will now only see the **Review Refund** action if:

-   The user can see the case record.
-   The user has **Initiator** permission to the Review Refund process model.
-   The user is found in the `supervisor` field.

**Tip:**  This example uses a [record type relationship with the User record type](Configure_Tempo_Users.html) to find the employee's supervisor. Selecting the `assignedEmployee` field from the User record type is similar to using the `loggedInUser()` function to determine who is looking at the record action.

#### Users found in groups or fields

You can combine the **Only users found in groups** and **Only users found in fields** options. Appian checks if the user meets _any_ specified condition, so a user can see the record action if they are found either in a group _or_ in a field.

For example, in an Employee record type, you may have a **Edit Performance Review** action. You want only the employee's manager or Human Resources to see this action.

To configure this security requirement, you can specify that a user can see the action when they meet the following conditions:

-   They can see the employee record.
-   They have access to the associated process model.
-   They are found in the **Human Resources group**, the `username` field, or the `supervisor` field.

[![images/record-action-users-found-in-groups-or-fields.png](images/record-action-users-found-in-groups-or-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img485)

[![](images/record-action-users-found-in-groups-or-fields.png)](#_)

**Tip:**  This example uses a [record type relationship with the User record type](Configure_Tempo_Users.html) so that the employee can edit their own performance review. Selecting the `username` field from the User record type is similar to using the `loggedInUser()` function to determine who is looking at the record action.

### When can they see this action?

Once you determine who can see the record action, you can add security conditions to specify when they can see the action.

[![images/when-can-they-see-this-view.png](images/when-can-they-see-this-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img486)

[![](images/when-can-they-see-this-view.png)](#_)

Security conditions are made up of [fields](#fields), [operators](#operators), and [values](#values). Depending on the selected field, your operator and value options will change.

#### Fields

The field picker contains all record fields and relationships defined on the record type.

When creating multiple conditions against fields from the same one-to-many relationship, Appian will combine those filters using the [AND\_ALL operator](fnc_system_a_querylogicalexpression.html#prodlink-operators). This includes when a field in the **Only users found in fields** option and the fields used in your security conditions use the same one-to-many relationship.

For example, on the Customer record type, say you have an **Delete Order** action to cancel newly submitted orders. You only want the case to be deleted by the person assigned to the order when the case's status is "Submitted" and its priority is not "High".

The security rule configuration would look something like this:

[![images/andAll-action-security.png](images/andAll-action-security.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img487)

[![](images/andAll-action-security.png)](#_)

Since the fields used in the **When can they see this action?** section are all from the same one-to-many relationship, the `AND_ALL` operator will be applied so that only users who meet all of the security conditions can see the action.

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

You can only add a security rule to a record action if your record type has [data sync](about-data-sync.html) enabled. If your record type does not have data sync enabled, you must configure a [security expression](#security-expression) to secure your record actions instead.

To add a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Actions** tab, click next to the record action you want to secure.
3.  In the **Edit <Record Action Name> Security** dialog, keep the default selection of **Security Rules**.
4.  Choose **Who can see this action**:
    -   By default, **All users who can see the record** is selected.
    -   Select **Only users…** to specify that only users who have access to the underlying process model and are found in specific groups or fields can see the record action.

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
    -   Enter a static text value or a constant to determine the value the field must evaluate to in order for users to view the action.
7.  Click **\+ Add Condition** to add additional security conditions. Use the **OR/AND** operator to determine how the security conditions are evaluated.
8.  Click **Add Condition Set** to compare a set of conditions against another set of conditions.
9.  Click **OK**.
10.  Click **SAVE** to save and apply your security rules.

### Edit a security rule

After you configure and save a security rule on a record action, you can edit it at any time.

To edit a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Actions** tab, click next to the record action you want to edit.
3.  In the **Edit <Record Action Name> Security** dialog, keep the default selection of **Security Rules**.
4.  Update any of the same configurations you'd make when [adding a rule](#add-a-security-rule).
5.  Click **OK**.
6.  Click **SAVE** to save and apply your updated security rule.

### Edit process model security

In addition to record action security, you can specify the underlying process model's security directly from the record type.

Users must have **Initiator** permission to see a record action, so this allows you to quickly update any security settings as necessary.

To edit a process model's security:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Actions** tab, click the name of the process model you want to edit.
3.  On the Process Security dialog, update the [role map](object-security.html#editing-object-security) so the correct users and groups can start the process model.
4.  Click **OK**.
5.  Click **SAVE** to save and apply your updated security rule.

## Security expression

While security rules allow you to configure most of your security requirements, you may choose to use a security expression if you need to describe more complex security conditions, or if your record type does not have [data sync](about-data-sync.html) enabled. Where you configure and maintain your security expression changes depending on whether your record type has data sync enabled.

A security expression allows you to show or hide the record action from certain users based on the conditions you specify in the expression. A user can only see a record action if the security expression evaluates to _true_ for that user.

For example, in the Employee record type, you may have a **Promote Employee** action that changes the employees rank to the next level. However, you only want Human Resources to see this action and only under the following conditions:

-   The employee has been at the organization over a year.
-   The employee is not in the Performance Improvement group.
-   The employee's promotion checklist is complete and approved.

Since this example requires users _not_ to be included in a group, you could create a security expression on the **Promote Employee** record action that looks something like this:

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
14
if(
  and(
    rule!getTenure(loggedInUser()) >= 1,
    not(
       a!isUserMemberOfGroup(
        username: loggedInUser(),
        groups: cons!PERFORMANCE_IMPROVEMENT_GROUP
       )
     ),
     rv!record[recordType!Employee.relationships.promoChecklist.approved] = true
    ),
  true,
  false
)
```

### Add a security expression (data sync enabled)

To add a security expression on a record action when your record type has data sync enabled:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Actions** tab, click next to the record action you want to secure.
3.  In the **Edit <Record Action Name> Security** dialog, select **Security Expression**.
4.  In the Expression Editor, enter an expression to determine who can see the action and when. If the security expression evaluates to _true_ for a given user, then they can see the record action.
5.  Click **OK**.
6.  Click **SAVE** to save and apply your security expression to the record action.

### Add a security expression (data sync disabled)

To add a security expression on a record action when your record type _does not_ have data sync enabled:

1.  In the record type, go to **Actions**.
2.  Click next to the record action you want to secure.
3.  Under **Security**, enter an expression to determine who can see the action and when. If the security expression evaluates to _true_ for a given user, then they can see the record action.
4.  Click **OK**.
5.  Click **SAVE** to save and apply your security expression to the record action.

### Replace a security expression with a security rule

If you decide that you'd rather maintain your record action security using a security rule, you can replace your security expression with a security rule at any time. You can only perform these steps on a record type with data sync enabled.

To replace a security expression with a security rule:

1.  In the record type, go to **Views and Actions Security**.
2.  On the **Actions** tab, click next to the record action.
3.  In the **Edit <Record Action Name> Security** dialog, select **Security Rules**.
4.  [Add a new security rule](#add-a-security-rule).
5.  Click **SAVE** to save and apply your security rules.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...