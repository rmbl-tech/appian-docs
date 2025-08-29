---
source_url: https://docs.appian.com/suite/help/25.3/update-source-from-record-type.html
original_path: update-source-from-record-type.html
version: "25.3"
title: "Update a Database Table from Your Record Type"
page_id: "update-source-from-record-type"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update a Database Table from Your Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to update a database table at the same time that you update a record type.

## Overview

Updating relational database tables usually involves specialized knowledge of SQL commands and best data practices. With codeless data modeling in Appian, however, it's not just database administrators who can configure database tables. In this streamlined process, any developer can update database tables while updating a record type.

You can use a guided experience to update a table in a supported database [connected to your Appian environment](Appian_Administration_Console.html#data-sources). Codeless data modeling supports MariaDB, MySQL, Oracle, SQL Server, PostgreSQL, and Aurora MySQL databases. If you [generated a source for your record type](create-record-data-source.html), you'll find this experience familiar.

**Note:**  To take full advantage of codeless data modeling, you'll need permissions to update the table in your selected database. If you don't have those permissions, you can still use the guided experience to generate a database script, which you'll then need to run in the database yourself.

To update a database table from a record type:

1.  [Start the guided experience](#start-the-guided-experience).
2.  [Modify the data structure](#modify-the-data-structure).
3.  [Modify record type relationships](#modify-record-type-relationships).
4.  (Optional) [Prevent table update](#prevent-table-update-optional).
5.  [Save your changes](#save-your-changes).
6.  (Optional) [Download the auto-generated database script](#download-the-database-script-optional).
7.  Click **FINISH**.

## Start the guided experience

To start the guided experience:

1.  In the record type, go to **Data Model**.
2.  Click **MODIFY SOURCE FIELDS**.

    This option is only available if the latest full sync was successful, and you do not have a field of type Time in your data model.

    ![add-source-fields](images/Create_Record_Type/add-source-fields.png)

## Modify the data structure

By default, the **Fields** tab is active. In this tab, you can modify the fields in your record type and generate a related record type to manage documents.

### Add a choice list field

A choice list field allows you to create reference data that represents a list of static values (for example, the status fields "Not Started", "In Progress" and "Done"). You can then allow your end users to select from this list of choices in your interfaces or reports.

When you create a choice list field, Appian creates a related record type to store the static values you define, and adds a [common field](record-type-relationships.html#common-field-values) to the current record type that links to the new related record type.

To add a new choice list field:

1.  Click ![Down](images/Create_Record_Type/addField.png) **NEW CHOICE LIST**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Type Name** | The name of the related record type that will be generated to store your reference data. This is populated by default with your application prefix. |
    | **List Items** | The static values that end users can select from a list. Enter one item per line without any comma separators. Do not wrap individual values in quotation marks unless you want the quotation marks to be included in the value. |
    | **Preview database script** | A preview of the SQL script that will be generated once you save your changes. You can download this script later in this process. |

3.  Click **CREATE CHOICE LIST**. A new field is created to establish a relationship to your new related record type.

### Add a field

To add a single field to the data structure:

1.  Click ![Down](images/Create_Record_Type/addField.png) **NEW FIELD**.
2.  Configure the [properties](#configure-field-properties) for the field you added.

The system adds the new field as follows:

-   If you've retained the [default fields](create-record-data-source.html#review-the-default-fields) in default order, the system inserts the new field before the **createdBy** field.
-   If you've [changed the order](#reorder-fields) or modified the default fields, the system inserts the new field as the last field of the table.

**Tip:**  To add a new field below a specific existing field, click ![Down](images/Create_Record_Type/addField.png) next to the existing field.

### Generate a related record type to manage documents

If you didn't generate a [related record type to manage documents](manage-docs-with-records.html#required-object) when you first created the data model, you can generate one now.

When you generate the related record type, we'll automatically configure it to have a field of type [Document](Appian_Data_Types.html#document). We'll also add [relationships](record-type-relationships.html) between your record type and the generated record type, so you can easily access the related data from either record type.

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

The related record type is immediately generated and available from the **Open record type** link.

[![Generate record type highlighted in the Create Data Model dialog](images/Create_Record_Type/view-generate-document-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img589)

[![](images/Create_Record_Type/view-generate-document-record-type.png)](#_)

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

### Reorder fields

To reorder fields in the data structure:

-   Click ![Up](images/Create_Record_Type/uparrow.png) to move a field up.
-   Click ![Down](images/Create_Record_Type/downarrow.png) to move a field down.

### Remove a field

Removing a field will delete it from the record type and the database table.

To remove a field:

1.  Click in the field row. The **Remove <name> field?** dialog displays

    This dialog lists any objects that rely on that field. For example, the list could include:

    -   A record type object if you're removing a common field that enforces a relationship to another record type.
    -   An interface object if the interface references the field you're removing.
2.  Click **DELETE ANYWAY** to remove the field.
3.  Click **SAVE**.
4.  Update the affected objects. For example, you might then [remove the record type relationship](#remove-a-relationship) or [remove the field reference](interface_object.html) in the interface object. To quickly identify objects that might contain broken references, you can view the [Health Dashboard](appian-recommendations.html#health-dashboard).

## Modify record type relationships

[Record type relationships](record-type-relationships.html#about-relationships) allow you to reference related data from your record type, which makes development faster and easier.

You can modify relationships elsewhere in the data model configuration, but modifying a relationship here has many benefits. A relationship requires that your record type contains a [common field](record-type-relationships.html#common-field-values) that's used in both your record type and the related record type. If you modify a relationship at this point, Appian can update that common field in the source database, so the relationship is represented accurately in both the source and the record type.

Also, if you're adding a relationship, Appian will automatically add a foreign key constraint for your common fields in the generated database script. Your database will then enforce [referential integrity](record-type-relationships.html#referential-integrity) as records are modified to ensure your data remains consistent and up-to-date.

**Note:**  If you added a [choice list field](#add-a-choice-list-field), the relationship to your new related record type is already configured.

In the **Relationships** tab, you can add or remove record type relationships.

### Add a relationship

To add a record type relationship:

1.  Go to the **Relationships** tab.
2.  Click **NEW RELATIONSHIP**.
3.  Search for and select a record type in the **Record Type Relationship** field.
4.  Click **NEXT**. The **Add Relationship to <Record Type>** dialog displays. For example:

    ![Add Relationship to Project dialog](images/Create_Record_Type/create-data-source-add-relationship.png)

5.  Under **Relationship Name**, enter a name for the relationship. This is how you’ll reference the relationship to access the related record fields.
6.  Under **Relationship Type**, select **One-to-Many**, **Many-to-One**, or **One-to-One**. By default, **Many-to-One** is selected. Learn more about [supported relationship types](record-type-relationships.html#supported-relationship-types).
7.  Under **Common Fields**, choose the fields to enforce the relationship type. The common fields can be of type Text, Number (Integer), User, or Group, and the common fields must be the same data type.

    In this dialog, the common fields default to the following settings, based on the relationship type:

    | Relationship Type | Common Field in Current Record Type | Common Field in Related Record Type |
    | --- | --- | --- |
    | One-to-Many | The primary key field of the current record type. | No default setting. Select a field of the same data type as the primary key field of the current record type. |
    | Many-to-One | An auto-generated field that matches the primary key field of the related record. For example, see `employeeId` in the example above. | The primary key field of the related record type. |
    | One-to-One | An auto-generated field that matches the primary key field of the related record. | The primary key field of the related record type. |

    You can change the names of auto-generated fields and select different common fields for both the current and related record types. However, you can only select fields that meet the criteria for the relationship type. For example, the common field in the one-side record type of a one-to-many relationship must be the primary key field.

8.  Click **ADD**.

### Remove a relationship

**Note:**  Removing a relationship will _not_ remove the common field or the foreign key constraint automatically configured on the common field. These can be manually deleted after the relationship is removed.

To remove a relationship:

1.  Go to the **Relationships** tab.
2.  Click in the relationship row. The **Remove <name> relationship?** dialog displays. This dialog lists the objects that rely on the relationship to function.
3.  Click **DELETE ANYWAY** to confirm the relationship removal.
4.  Manually [remove](#remove-a-field) the common field that enforced the relationship.

## Prevent table update (Optional)

By default, the system will use the auto-generated database script to update the table in the source database. You'll just need to keep the **Update Table** option selected.

[![Update Table option highlighted](images/Create_Record_Type/update-data-source-highlight-update-table.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img590)

[![](images/Create_Record_Type/update-data-source-highlight-update-table.png)](#_)

However, under certain conditions, you might want to prevent Appian from updating the table. For example, you might need to make modifications to the script like editing the field names to meet database administration requirements or adding foreign keys and constraints.

In that case, you can prevent the system from updating the table, while still taking advantage of the guided experience to generate the basic script.

To prevent the table update, unselect the **Update Table** checkbox.

## Save your changes

Click **SAVE CHANGES** to save your changes to the record type.

[![Save Changes button highlighted](images/Create_Record_Type/update-data-source-highlight-save-changes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img591)

[![](images/Create_Record_Type/update-data-source-highlight-save-changes.png)](#_)

If the **Update Table** checkbox is selected, Appian will save the data model for the record type and update the table in the database.

If the **Update Table** checkbox is unselected, Appian will save the data model for your record type, but makes no changes to the database itself. Because the fields you added to the record type do not yet exist in the database, the sync will fail for your record type. As a result, [error indicators](Records_Monitoring_Details.html) will display in the record type until you update the table in the database and [start a full sync](records-data-sync.html#schedule-full-syncs).

## Download the database script (Optional)

After Appian successfully saves the changes to your record type, you have only one step left: deciding whether to download the auto-generated database script.

![Record Type Updated Successfully message](images/Create_Record_Type/update-data-source-success.png)

You can use the database script to:

-   Update the new table directly in the database if you [prevented the table update](#prevent-table-update-optional) earlier.
-   Deploy any application that uses the record type to another environment. To do this, you can include the script in a [deployment package](prepare-deployment-packages.html) or run the script in the target environment prior to a [manual deployment](Deploy_to_Target_Environments.html#manual-export-and-import).

By default, the **Download database script** is selected, and the system will download the script when you click **FINISH**.

If you do _not_ want to download the script, unselect the **Download database script** checkbox before clicking **FINISH**.

When you unselect this checkbox, a banner will appear asking if you want to save your download preferences. You can choose to skip the database script download each time you update to the source, or return to the default download setting so the script is downloaded whenever you update the source.

**Caution:**  The auto-generated database script is _not_ saved in Appian, so we strongly recommend downloading the script now and storing it locally.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...