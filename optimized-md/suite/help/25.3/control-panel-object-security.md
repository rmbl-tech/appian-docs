---
source_url: https://docs.appian.com/suite/help/25.3/control-panel-object-security.html
original_path: control-panel-object-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Control Panel Object Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

The Control Panel workspace and the control panel object use a combination of group security, object security, and security set within the control panel object.

To [access the Control Panel workspace](control-panel.html#access-the-control-panel), users must be in the **Control Panel Users** system group.

The control panel object itself has two kinds of security:

-   [Object security set on the control panel object](#object-security).
-   [The security set on the types and categories within the control panel object](#category-and-type-security).

This page provides information for low-code developers about the necessary object security and category/type security for the control panel object.

## Object security

As you get started setting up security for your control panel object, you'll need to set object security multiple places:

-   [The control panel object.](#set-control-panel-object-security)
-   [The associated record type objects.](#security-for-generated-record-types)
-   [The associated interface objects.](#security-for-generated-interfaces)

In order for a business user in the Control Panel workspace to edit or view data or interfaces used by your control panel object, they need both:

-   Permission to edit or view the associated interface and record type objects.
-   Permission to view and edit the category or type in the Control Panel workspace.

### Set control panel object security

To set security on the control panel object:

1.  In the control panel object, open the gear menu and select security.
2.  Set permissions using the security role map.
3.  Click **SAVE CHANGES**.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a control panel objects's security role map.

| Actions | Administrator | Editor | Viewer |
| --- | --- | --- | --- |
| View the Control Panel workspace and object | Yes | Yes | Yes |
| Edit the control panel object properties in the Control Panel workspace and object, such as display name, icon, color, description, and base record type | Yes | Yes | No |
| Edit the hierarchy in the Control Panel workspace and object | Yes | Yes | No |
| Add and edit categories and types | Yes | Yes | No |
| Replace the existing base record type for the control panel object | Yes | Yes | No |
| Create an interface or form that can be used by all cases | Yes | Yes | No |
| Add, edit, or delete custom configurations | Yes | Yes | No |
| Edit the security for the Control Panel workspace and object | Yes | No | No |
| Delete the control panel object | Yes | No | No |

### Security for associated record types

There are two kinds of record types that are commonly used with the control panel object: generated record types and related record types.

Generated record types include the record types created for categories, types, and the control panel hierarchy.

Related record types are record types that a low-code developers adds as related data to the control panel object.

Business users and end-users will need some basic permissions to reference these record types and work with the data in them.

#### Security for generated record types

For all generated record types associated with the control panel object, the permissions are copied from the parent record type.

The base record type is the main record type for your control panel. For Case Management Studio, the base record type is the Cases record type that comes out-of-the-box. But, even though it comes out-of-the-box, you still need to configure the security on the record type object to match your specific needs.

The table below explains how each generated record type copies the security settings of the record type directly above it.

**Default permissions for generated record types**

| Record type | Permissions |
| --- | --- |
| [Record types for categories](control-panel-object.html#record-types-associated-with-types-and-categories) | Copies permissions of base record type. |
| [Record types for types](control-panel-object.html#record-types-associated-with-types-and-categories) without categories | Copies permissions of base record type. |
| [Record types for types](control-panel-object.html#record-types-associated-with-types-and-categories) with categories | Copies permissions of the category record type. |
| [Record types for types](control-panel-object.html#record-types-associated-with-types-and-categories) with categories, but the category record type is not yet configured | Copies permissions of the base record type. |
| [Hierarchy record type](control-panel-object.html#data) | Copies permission of base record type. |

You can manually adjust the security of the generated record type objects as needed.

#### Record level security on the hierarchy record type

We suggest that you set [record level security](record-level-security.html) on the hierarchy record type so that your end-users only see the categories and types that they should have access to see when submitting a new case. For example, you can create a security rule that provides a user in an HR group with access to only view and create new cases for the [types and categories](#category-and-type-security) associated with HR.

#### Security for related record types

If your [control panel uses related record types](how-to-configure-control-panel-object.html#step-2-configure-the-standard-configurations), you'll need to grant viewer permission to the related record types for both your business users and end-users.

For more information on security for related record types, see the [record type object security](record-security.html#related-record-type-security) page.

### Security for generated interfaces

By default, all interfaces generated by through the Control Panel workspace inherit the permissions of the rule folder they are in.

You can select the rule folder for your interfaces in the [**Storage and Record Type** section of the **Standard Configuration** page](control-panel-object.html#storage-and-record-type).

## Category and type security

In addition to regular object security, you need to set security for individual categories and types. Once a category or type has been created, you can configure the security for it by clicking beside the type or category on the **Hierarchy** page.

In order to view or edit data or interfaces for the category and type in the Control Panel workspace, users must have both permission to the object and the type and category that the object is associated with.

See the tables below for a full explanation of the combined object and type/category security.

**Required permissions to view or edit an interface in the Control Panel workspace**

| Action | Interface permissions | Category permissions | Type permissions |
| --- | --- | --- | --- |
| View an interface in a category | **View** | **View** | Not Needed |
| View an interface in a type | **View** | **View** | **View** |
| Edit an interface in a category | **Edit** | **Edit** | Not Needed |
| Edit an interface in a type | **Edit** | **Edit** | **Edit** |

**Required permissions to view or edit data fields in the Control Panel workspace**

| Action | Record type permissions | Category permissions | Type permissions |
| --- | --- | --- | --- |
| View data in a category | **View** | **View** | Not Needed |
| View data in a type | **View** | **View** | **View** |
| Edit data in a category | **Edit** | **Edit** | Not Needed |
| Edit data in a type | **Edit** | **Edit** | **Edit** |

**Note:**  If your control panel object only uses types, disregard the category security column in the tables above.

It is a best practice for both object and type/category permissions to be parallel, such as view permissions for the object and view permissions within the category/type. If a user mistakenly has edit access to an object in Designer but only view permission to a category or type in the control panel object, they may still be able to edit the the object from within the Control Panel workspace.

### Default security for categories and types

The default permissions for categories and types are similar to the generated record types.

If your control panel object uses categories, the default security for the category is copied from the security of the control panel object.

If you only use types in your control panel object, then the default security for the types is copied from the security for the control panel object. If your control panel object uses both categories and types, the default security for each type is copied from the security of the category it belongs to.

### End-user security

In addition to these permissions for low-code developers and business users, your end-users also need permission to view and use the objects you create through the Control Panel workspace. An end-user can be any user that is using the front-end experience configured by the Control Panel workspace to interact with cases, either by submitting cases or resolving cases.

To interact with cases they need:

-   View access to the base record type
-   View access to the hierarchy record type for the control panel object,
-   View access to any record types associated with the type or category.

These permissions allow them to submit, edit, and view cases, each of which is created as a new record in the base record type.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...