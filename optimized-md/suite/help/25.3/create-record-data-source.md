---
source_url: https://docs.appian.com/suite/help/25.3/create-record-data-source.html
original_path: create-record-data-source.html
version: "25.3"
title: "Generate a Database Table for Your Record Type"
page_id: "create-record-data-source"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Generate a Database Table for Your Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Structure and Manage Data Easily with Codeless Data Modeling

This video from [Academy Online](https://academy.appian.com/) walks you through creating a database table with codeless data modeling.

This page describes how to generate a database table at the same time that you're creating your record type.

Already have a source configured? Learn how to [choose an existing data source for your record type](configure-record-data-source.html).

## Overview

Creating relational database tables usually involves specialized knowledge of SQL commands and best data practices. With codeless data modeling in Appian, however, it's not just database administrators who can create and configure database tables. In this streamlined process, any developer can build and structure data perfectly for an application while configuring a record type.

Using our guided experience, you can quickly define the [fields you want to add](#configure-your-data-structure) to your record type. We'll provide [default fields](#review-the-default-fields) like a primary ID field, and we'll suggest other [commonly-used fields](#add-commonly-used-fields) like a start date field. We'll also walk you through [adding relationships](#add-record-type-relationships) to the record type and save you time by generating the common field that enforces each relationship.

Then, we'll use the fields you've defined for your record type to automatically generate a database script that will create the corresponding fields in a database table. In the script, we'll use the same names you give the record fields, but we'll change them to meet the naming requirements of the database. For example, for the record field **startDate**, we'll create a `START_DATE` field in the database table.

Next, we'll execute that database script to create the table in your selected data source and give you the opportunity to [download the auto-generated database script](#download-the-database-script-optional) for future deployments.

Codeless data modeling supports MariaDB, MySQL, Oracle, SQL Server, PostgreSQL, and Aurora MySQL databases.

Once you finish, your new data model will be reflected in your record type, and the data will be [synced](about-data-sync.html) in Appian.

**Note:**  To take full advantage of codeless data modeling, you'll need permissions to create a table in your selected database. If you don't have those permissions, you can still use the guided experience to generate a database script, which you'll then need to run in the database yourself.

To generate a database table from a record type:

1.  [Start the guided experience](#start-the-guided-experience)
2.  [Select a database](#select-a-database).
3.  [Configure your data structure](#configure-your-data-structure).
4.  [Add record type relationships](#add-record-type-relationships).
5.  [Review and edit your data model](#review-and-edit-your-data-model).
6.  (Optional) [Prevent table creation](#prevent-table-creation-optional).
7.  [Save your changes](#save-your-changes).
8.  (Optional) [Download the auto-generated database script](#download-the-database-script-optional).
9.  Click **FINISH**.

## Start the guided experience

1.  In your application, [create a new record type](Create_a_Record_Type.html).
2.  On the **Data Model** page, click **TELL US ABOUT YOUR DATA**. The **Configure Data Source** dialog opens.
3.  Select **New Data Model**.

    ![New Data Model card](images/Create_Record_Type/select-new-data-model.png)

4.  Click **NEXT**.

## Select a database

In this step, you'll select the relational database where Appian will create your table.

To select the database:

1.  For **Data Source**, select any MariaDB, MySQL, Oracle, or SQL Server database [connected to your Appian environment](Appian_Administration_Console.html#data-sources).

    If your environment contains a single relational database, that database is selected and cannot be unselected.

2.  For **Schema**, select the schema or catalog where you want to generate the table.

    ![option to select database in the Create Data Model dialog](images/Create_Record_Type/create-data-source-select-db.png)

3.  Click **NEXT**.

## Configure your data structure

In this step, you'll add and configure the fields you want to include in your record type.

[![data structure configuration in the Create Data Model dialog](images/Create_Record_Type/create-data-source-configure-structure.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img427)

[![](images/Create_Record_Type/create-data-source-configure-structure.png)](#_)

You can:

-   [Review the default fields](#review-the-default-fields).
-   [Add commonly used fields](#add-commonly-used-fields).
-   [Add a choice list field](#add-a-choice-list-field).
-   [Generate a related record type to manage documents](#generate-a-related-record-type-to-manage-documents).
-   [Add a field](#add-a-field).
-   [Add multiple fields](#add-multiple-fields).
-   [Configure field properties](#configure-field-properties).
-   [Reorder fields](#reorder-fields).
-   [Remove a field](#remove-a-field).

When you've finished configuring your data structure, click **NEXT**.

### Review the default fields

For your new record type, we'll automatically provide fields like a primary ID field, so that you can follow data modeling best practices by default.

[![default fields highlighted in the Create Data Model dialog](images/Create_Record_Type/create-data-source-review-default-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img428)

[![](images/Create_Record_Type/create-data-source-review-default-fields.png)](#_)

The default fields include the following:

| Field | Type | Description |
| --- | --- | --- |
| **id** | Integer | The primary key for the record. [Data sync](about-data-sync.html) requires a single primary key field per record type. |
| **createdBy** | User | The user who created the record. |
| **createdOn** | Date and Time | The date on which the user created the record. |
| **modifiedBy** | User | The user who last modified the record. |
| **modifiedOn** | Date and Time | The date on which the user modified the record. |

### Add commonly used fields

In the **Commonly Used Fields** pane, we provide a list of fields that are commonly used in data structures.

[![suggested fields highlighted in the Create Data Model dialog](images/Create_Record_Type/create-data-source-add-suggested-field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img429)

[![](images/Create_Record_Type/create-data-source-add-suggested-field.png)](#_)

The commonly used fields include:

| Field | Type |
| --- | --- |
| **name** | Text |
| **description** | Text |
| **startDate** | Date |
| **endDate** | Date |
| **isActive** | Boolean |
| **assignee** | User |

To add a commonly used field to the data structure, click the field in the **Commonly Used Fields** pane. The system adds the commonly used field as follows:

-   If you've retained the [default fields](#review-the-default-fields) in default order, the system inserts the commonly used field before the **createdBy** field.
-   If you've [changed the order](#reorder-fields) of the default fields or modified the default fields, the system inserts the commonly used field as the last field of the table.

### Add a choice list field

In the **Choice List Fields** pane, we provide some commonly-used categories of lookup data (for example, "status"). This lookup data represents a list of static values, which lets end users select from as a list of choices.

When you select one of these categories, Appian creates a related record type to store the static values you define, and adds a [common field](record-type-relationships.html#common-field-values) to the current record type that links to the new related record type.

[![Choice list fields highlighted in the Create Data Model dialog](images/Create_Record_Type/create-data-source-add-choice-list-field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img430)

[![](images/Create_Record_Type/create-data-source-add-choice-list-field.png)](#_)

To add a new choice list field:

1.  Click ![Down](images/Create_Record_Type/addField.png) **NEW CHOICE LIST**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Type Name** | The name of the related record type that will be generated to store your reference data. This is populated by default with your application prefix. |
    | **List Items** | The static values that end users can select from a list. Enter one item per line without any comma separators. Do not wrap individual values in quotation marks unless you want the quotation marks to be included in the value. |
    | **Preview database script** | A preview of the SQL script that will be generated once you save your changes. You can download this script later in this process. |

3.  Click **CREATE CHOICE LIST**. A new field is created to establish a relationship to your new related record type.

While you are creating a choice list, you can also optionally generate translation strings for your choice list items directly from the record type.

To generate translation strings for list items during choice list creation:

1.  In the **Add Choice List Field** dialog, enter your list items.
2.  Check the **Generate translation strings from list items** checkbox.
3.  Click **CREATE CHOICE LIST**.
4.  Review the translation strings that will be generated for each list item and optionally add a **Description** and **Notes for Translator** as needed.
5.  Click **GENERATE**.

#### Editing a choice list field

If your list of items changes or you need to add more later, you can add or edit the list items directly on the related record type. In the related record type for your choice list values, go to **Data Preview** to add rows or edit individual field values.

If you've added the choice list items as translation strings, edits to those the translation strings will be applied every where that translation string is used throughout your application.

### Generate a related record type to manage documents

In the right-hand pane, we provide a quick way to generate a [related record type to manage documents](manage-docs-with-records.html#required-object) associated with your record type.

For example, let's say you're creating the data model for a Case record type, and you know that customers will want to upload system logs and screenshots with their support case. To manage those files, you can generate a related record type called Case Document.

[![Generate record type highlighted in the Create Data Model dialog](images/Create_Record_Type/create-data-source-generate-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img431)

[![](images/Create_Record_Type/create-data-source-generate-record-type.png)](#_)

When you generate the related record type, we'll automatically configure it to have a field of type [Document](Appian_Data_Types.html#document). We'll also add [relationships](record-type-relationships.html) between your record type and the generated record type, so you can easily access the related data from either record type.

**Note:**  If you are currently creating a data model for a record type that will manage documents, you can [add a field](#add-a-field) of type Document to the record type instead.

To generate a related record type to manage documents:

1.  Click **GENERATE RECORD TYPE**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Type Name** | The name of the related record type that will manage your documents. This is populated by default with `<Current record type> Document`. |
    | **Include document types** | Allows you to also generate a related record type to store a list of document types. We'll automatically add a relationship from the document management record type to this new one. |
    | **Document Types** | The list of document types that can be uploaded. Enter one item per line without any comma separators. Do not wrap individual values in quotation marks unless you want the quotation marks to be included in the value. |
    | **Preview database script** | A preview of the SQL script that will be generated once you save your changes. You can download this script later in this process. |

3.  Click **GENERATE**.

The related record type is immediately generated and available from the **Open record type** link. A summary view will also be generated on the document management record type so you can quickly view each document, its properties, and the related data.

[![Generate record type highlighted in the Create Data Model dialog](images/Create_Record_Type/view-generate-document-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img432)

[![](images/Create_Record_Type/view-generate-document-record-type.png)](#_)

### Add a field

To add a single field to the data structure:

1.  Click ![Down](images/Create_Record_Type/addField.png) **NEW FIELD**.
2.  Configure the [properties](#configure-field-properties) for the field you added.

The system adds the new field as follows:

-   If you've retained the [default fields](create-record-data-source.html#review-the-default-fields) in default order, the system inserts the new field before the **createdBy** field.
-   If you've [changed the order](#reorder-fields) or modified the default fields, the system inserts the new field as the last field of the table.

**Tip:**  To add a new field below a specific existing field, click ![Down](images/Create_Record_Type/addField.png) next to the existing field.

### Add multiple fields

To add multiple fields:

1.  Identify the field _after_ which you want to add multiple fields.
2.  In that row, click ![Add Multiple Fields](images/Create_Record_Type/add-multiple.png).
3.  In the **Add Multiple Fields** dialog, enter a number between 1 and 20.
4.  Click **ADD**. The system adds the specified number of blank fields immediately after that field.
5.  Configure the [properties](#configure-field-properties) for each field you added.

### Configure field properties

For each field in the data structure, you can configure the following field properties:

![blank row of field properties from the Create Data Model dialog](images/Create_Record_Type/record-type-database-field-properties.png)

1.  Enter a name for the field. This will be the name of the source field and the record field.
2.  In the dropdown list, select one of the following data types:

    |
    Data Type

     |

    Usage Considerations

     |
    | --- | --- |
    |

    [Text](Appian_Data_Types.html#text)

     |

    Stores string values up to 255 characters. Most text-based fields should have this data type.

     |
    |

    Long Text\*

     |

    Stores string values up to 4,000 characters. Any field values with more than 4,000 characters will be truncated in Appian.

    To avoid exceeding limits that [MariaDB](https://mariadb.com/kb/en/innodb-limitations/#limitations-on-size) and [MySQL](https://dev.mysql.com/doc/refman/8.0/en/innodb-limits.html) enforce on row data, the record type should have no more than two Long Text fields.

     |
    |

    [Extra Long Text](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data)

     |

    Stores string values up to 64,000 characters. The record type can have no more than three Extra Long Text fields.

     |
    |

    [Number (Integer)](Appian_Data_Types.html#number-integer)

     |

    Stores numeric data as an integer. Select this data type when you only need whole numbers, like for age or years of experience.

     |
    |

    [Number (Decimal)](Appian_Data_Types.html#number-decimal)

     |

    Stores numeric data as double precision floating-point decimal numbers. Select this data type when you need precise numeric values, like for currency or measurements.

     |
    |

    [Date](Appian_Data_Types.html#date)

     |

    Stores date values.

     |
    |

    [Date and Time](Appian_Data_Types.html#date-and-time)

     |

    Stores date and time values in Greenwich Mean Time (GMT). Select this data type when time is an important factor to capture.

     |
    |

    [Boolean](Appian_Data_Types.html#boolean)

     |

    Stores values of `true` or `false`.

     |
    |

    [User](Appian_Data_Types.html#user)

     |

    Stores Appian users. Select this data type for fields that will contain usernames.

     |
    |

    [Group](Appian_Data_Types.html#group)

     |

    Stores Appian groups. Select this data type for fields that will contain group identifiers.

     |
    |

    [Document](Appian_Data_Types.html#document)

     |

    Stores document identifiers. Select this data type if the record type is only going to store document information. A record type can only have one field of type Document.

    If the record type is going to contain other information that's not specific to documents, [generate a related document management record type](configure-record-data-source.html) instead.

     |

\*The Long Text data type is only available in codeless data modeling. Long Text fields will appear as Text fields in the record type's data model.

**Note:**  You cannot change the primary key designation for the **id** field in this confirmation dialog. To change it after exiting this dialog, you'll need to modify the data source, then [sync the record type](records-data-sync.html#prodlink-sync-options).

### Reorder fields

To reorder fields in the data structure:

-   Click ![Up](images/Create_Record_Type/uparrow.png) to move a field up.
-   Click ![Down](images/Create_Record_Type/downarrow.png) to move a field down.

You cannot change the order of the primary key field. Following best practice, that field is always retained as the first field in the table.

Keeping the other default fields as the last fields in the table also aligns with database maintenance best practices. However, you can change the order of those default fields as needed.

### Remove a field

To remove a field from the data structure, click ![Delete](images/Create_Record_Type/deleteIcon.png) in the field row.

If you remove a common field (a field with ![Delete](images/Create_Record_Type/commonFieldIcon.png)), you can choose to delete the corresponding relationship as well.

## Add record type relationships

In this step, you'll add [relationships](record-type-relationships.html#about-relationships) to your record type. Record type relationships allow you to reference related data from your record type, which makes development faster and easier.

You can add relationships at any point in development, but defining a relationship here has many benefits. A relationship requires that your record type contains a [common field](record-type-relationships.html#common-field-values) that's used in both your record type and the related record type. If you add a relationship at this point, Appian can write that common field to the data source as part of the initial table creation.

What's more—when you add the relationship now, Appian will automatically add a foreign key constraint for the common fields in the generated database script. Your database will then enforce [referential integrity](record-type-relationships.html#referential-integrity) as records are modified to ensure your data remains consistent and up-to-date.

[![options for adding a relationship in the Create Data Model dialog](images/Create_Record_Type/create-data-source-add-relationship-page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img433)

[![](images/Create_Record_Type/create-data-source-add-relationship-page.png)](#_)

Appian will automatically create a record type relationship when you add certain types of fields to your data model:

| If you added a… | Then… |
| --- | --- |
| [Choice list field](#add-a-choice-list-field) | Appian will create a relationship to the related record type. For example, the **status** relationship appears in the image above because the **status** category was selected from the **Choice List Fields** pane. |
| [User](Appian_Data_Types.html#user) type field | Appian will create a relationship to the [User record type](Configure_Tempo_Users.html). For example, the **createdByUser** and **modifiedByUser** relationships appear in the image above because the **createdBy** and **modifiedBy** fields are of type User. |

To add a relationship:

1.  Select the record type to which you want to establish a relationship:

    -   To select a record type in the current application, click a record type listed in the **Suggested Record Types** pane. For example, see **Employee** in the image above. If your application doesn't have any record types yet, this pane is blank.
    -   To select a record type in the current environment:
        -   Click **NEW RELATIONSHIP** in the **Relationships** pane.
        -   Search for and select a record type in the **Related Record Type** field.
        -   Click **NEXT**.

    The **Add Relationship to <Record Type>** dialog displays. For example:

    [![Add Relationship to Project dialog](images/Create_Record_Type/create-data-source-add-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img434)

    [![](images/Create_Record_Type/create-data-source-add-relationship.png)](#_)

2.  Under **Relationship Name**, enter a name for the relationship. This is how you’ll reference the relationship to access the related record fields.
3.  Under **Relationship Type**, select **One-to-Many**, **Many-to-One**, or **One-to-One**. By default, **Many-to-One** is selected. Learn more about [supported relationship types](record-type-relationships.html#supported-relationship-types).
4.  Under **Common Fields**, choose the fields to enforce the relationship type. The common fields can be of type Text, Number (Integer), User, or Group, and the common fields must be the same data type.

    In this dialog, the common fields default to the following settings, based on the relationship type:

    | Relationship Type | Common Field in Current Record Type | Common Field in Related Record Type |
    | --- | --- | --- |
    | One-to-Many | The primary key field of the current record type. | No default setting. Select a field of the same data type as the primary key field of the current record type. |
    | Many-to-One | An auto-generated field that matches the primary key field of the related record. For example, see `employeeId` in the example above. | The primary key field of the related record type. |
    | One-to-One | An auto-generated field that matches the primary key field of the related record. | The primary key field of the related record type. |

    You can change the names of auto-generated fields and select different common fields for both the current and related record types. However, you can only select fields that meet the criteria for the relationship type. For example, the common field in the one-side record type of a one-to-many relationship must be the primary key field.

5.  Click **ADD**.

6.  (Optional) Remove a relationship by clicking ![Delete](images/Create_Record_Type/trashicon.png).
7.  Click **NEXT**.

## Review and edit your data model

In this step, you'll review the data model you've configured and make changes as necessary.

[![data model review in Create Data Model dialog](images/Create_Record_Type/create-data-source-review-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img435)

[![](images/Create_Record_Type/create-data-source-review-model.png)](#_)

The review page includes the following elements:

-   **Fields** tab: Lists the fields you want to add to your record type and the new database table. In this tab, you can add fields, add a choice list, configure field properties, reorder fields, and remove fields the same way you would in the [earlier step](#configure-your-data-structure).
-   **Relationships** tab: Lists the relationships you want to add to your record type. In this tab, you can add or remove relationships the same way you would in the [earlier step](#add-record-type-relationships).
-   **Relationship Diagram**: Displays a diagram of the relationships you added in the [earlier step](#add-record-type-relationships).

If you're experienced with database scripts, you might want to preview the auto-generated database script at this point. To do so, click **Preview database script**.

**Note:**  If you used the **Choice List Field** option to generate a related record type, note that the table for the related record type is _not_ included in this database script because it was already created in your database.

Before you continue, verify whether you want Appian to create a database table at this time.

## Prevent table creation (Optional)

By default, the system will use the auto-generated database script to create a table in the [database you selected earlier](#select-a-database). You'll just need to keep the **Create Table** option selected.

[![Create Table option highlighted in the review step of the Create Data Model dialog](images/Create_Record_Type/create-data-source-highlight-create-table.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img436)

[![](images/Create_Record_Type/create-data-source-highlight-create-table.png)](#_)

However, under certain conditions, you might want to prevent Appian from creating the table. For example, you might need to make modifications to the script like editing the field names to meet database administration requirements or adding foreign keys and constraints.

In that case, you can prevent the system from creating the table, while still taking advantage of the guided experience to generate the basic script.

To prevent table creation, unselect the **Create Table** checkbox.

## Save your changes

Click **SAVE CHANGES** to save your changes to the record type.

[![Save Changes button highlighted in the Create Data Model dialog](images/Create_Record_Type/create-data-source-highlight-save-changes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img437)

[![](images/Create_Record_Type/create-data-source-highlight-save-changes.png)](#_)

If the **Create Table** checkbox is selected, Appian will save the data model for the record type and create a new table in the database.

If the **Create Table** checkbox is unselected, Appian will save the data model for your record type, but make no changes to the database itself. Because the table does not yet exist in the database, the sync will fail for your record type. As a result, [error indicators of the failed sync](Records_Monitoring_Details.html) will display in the record type until you create the table in the database and [start a full sync](records-data-sync.html#schedule-full-syncs).

## Download the database script (Optional)

After Appian successfully saves the changes to your record type, you have only one step left: deciding whether to download the auto-generated database script.

![Record Type Updated Successfully message](images/Create_Record_Type/create-data-source-success.png)

You can use the database script to:

-   Create the new table directly in the database if you [prevented table creation](#prevent-table-creation-optional) earlier.
-   Deploy any application that uses the record type to another environment. To do this, you can include the script in a [deployment package](prepare-deployment-packages.html) or run the script in the target environment prior to a [manual deployment](Deploy_to_Target_Environments.html#manual-export-and-import).

By default, the **Download database script** is selected, and the system will download the script when you finish.

If you do _not_ want to download the script, unselect the **Download database script** checkbox before clicking **CLOSE**.

When you unselect this checkbox, a banner will appear asking if you want to save your download preferences. You can choose to skip the database script download each time you [update to the source](update-source-from-record-type.html), or return to the default download setting so the script is downloaded whenever you update the source.

**Caution:**  The auto-generated database script is _not_ saved in Appian, so we strongly recommend downloading the script now and storing it locally.

## Next steps

After you create your data model, Appian recommends configuring [record-level security](record-level-security.html) to determine who can view which records.

By default, each row of data (or each _record_) is available to all users with **Viewer** permissions to the record type. To get started configuring record-level security, click **CLOSE AND CONFIGURE SECURITY**.

![Record Type Next Steps: Close and Configure Security](images/Create_Record_Type/close-and-configure-security.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...