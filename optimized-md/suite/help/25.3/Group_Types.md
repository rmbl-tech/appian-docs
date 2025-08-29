---
source_url: https://docs.appian.com/suite/help/25.3/Group_Types.html
original_path: Group_Types.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Group Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Group types allow you to organize your groups in different categories and associate certain metadata with a group.

![group type object](images/Group_Type_Designer.png)

## Properties

Each group type has the following properties:

| Property | Description |
| --- | --- |
| **Name** | The name that is used when referencing the group type. This name can also be returned when querying the _groupTypeName_ property using the `group()` function. Follow the [recommended naming standard](Standard_Object_Names.html#group-objects) when creating this name. |
| **Description** | (Optional) Information about the group type that is displayed in the objects grid of some Designer views. |
| **Attributes** | Additional metadata that can be configured about the groups of this type. |

All group type properties are configured through the **Properties** dialog. It can be accessed in one of two ways:

-   From the toolbar in Appian Designer ![images:Group_Type_Properties_from_Toolbar.png](images/Group_Type_Properties_from_Toolbar.png)
-   From the gear menu when viewing a group type ![images:Group_Type_Properties_from_Gear_Menu.png](images/Group_Type_Properties_from_Gear_Menu.png)

## Group type attributes

Attributes are custom fields that provide additional information about groups of that type. This allows you to further differentiate groups from each other and use the associated metadata throughout your application.

Some types of attributes require each group within the group type to have a value. Attributes of that type require a default value to be set when adding the attribute.

### Attribute data types

Group type attributes can be of the following types:

| Type | Value Required |
| --- | --- |
| [Boolean](Appian_Data_Types.html#boolean) | Yes |
| [Date](Appian_Data_Types.html#date) | Yes |
| [Group](Appian_Data_Types.html#group) | No |
| [Number (Decimal)](Appian_Data_Types.html#number-\(decimal\)) | Yes |
| [Number (Integer)](Appian_Data_Types.html#number-\(integer\)) | Yes |
| [Text](Appian_Data_Types.html#text) | Yes |
| [User](Appian_Data_Types.html#user) | No |

### Configuring attributes

Once an attribute has been added to a group type, its configuration cannot be edited. Attributes can be removed by the creator of the group type or by a system administrator.

## Creating groups

When viewing a group type, you can create a new group of that type using the **New Group** button in the toolbar. The **Group Type** configuration will automatically be defaulted to the current group type.

## Security

**Tip:**  Unlike most objects, group types do not have their own security role maps. When groups that are members of a group type are invoked, [group security](Group_Management.html#prodlink-security) is applied instead.

Only [system administrators](User_Management.html#manage-user-rights-and-security) and [designers](User_Roles.html#designer-role) can perform actions on group types. The following table outlines the group type actions that can be completed by each:

| Actions | System Administrator | Designer |
| --- | --- | --- |
| Create a group type | Yes | Yes |
| View the group type | Yes | Yes |
| Edit name | Yes | No[1](#fn:1) |
| Edit description | Yes | No[1](#fn:1) |
| Add new attributes | Yes | No[1](#fn:1) |
| Remove attributes | Yes | No[1](#fn:1) |
| Create groups of this type | Yes | Yes |

1.  Designers can only perform these actions if they originally created the group type.  [1](#fnref:1)  [2](#fnref:1:1)  [3](#fnref:1:2)  [4](#fnref:1:3)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...