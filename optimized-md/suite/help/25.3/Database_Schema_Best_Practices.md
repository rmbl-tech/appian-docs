---
source_url: https://docs.appian.com/suite/help/25.3/Database_Schema_Best_Practices.html
original_path: Database_Schema_Best_Practices.html
version: "25.3"
title: "Database Schema Best Practices"
page_id: "Database_Schema_Best_Practices"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Database Schema Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This section describes recommended approaches to database schema design when creating them for use with Appian.

### CDT and element names

Keep the names assigned to your custom data types and CDT elements shorter than 27 characters. The names of database tables, columns, and other SQL objects created from an XSD are truncated if they exceed 27 characters in length. This is done to maintain compatibility with all supported databases.

Consider using JPA annotations in your XSD to avoid truncation or a change in letter casing. Name attributes for the `@Table` and `@Column` annotation are used exactly when referencing the data type for a data store.

See also: [Generating Database Tables from CDTs](Generating_Database_Tables_from_CDTs.html)

The truncation of long SQL names (longer than 27 characters) assigned to your custom data types and CDT elements occurs in the following manner when deriving database table and column names:

-   Vowels are removed from the name, in the order of u, o, a, e, then i. Names that begin with a vowel retain that vowel only.
-   The name is split using underscores.
-   The longest segment of the name is then trimmed, one character at a time, until the name is shortened to 27 characters.

If you have two similar long names for columns, it is possible for the two column names to be truncated to the same value.

-   Use `@Table` and `@Column` annotations to define table names within the character limit that should be used if the type or element names exceed the target database's limits.

### Column types

The column type is inferred from the XSD type according to its associated data type. When mapping to existing tables, if the inferred column type doesn't match an existing table's column type, you must explicitly define the column type using the `@Column` annotation with the `columnDefinition` attribute.

For example, if you have an `xsd:string` typed element that maps to a column defined as `CHAR(40)`, use the following annotation within the XSD: `@Column(columnDefinition="CHAR(40)")`

**Note:**  When mapping to a column defined with `CHAR(N)` where `N > 1`, the database may return a value padded with blanks if the length of the value is less than **N**. When used in conjunction with a data type annotated with the `@Version` annotation, this behavior may cause the system to issue an update statement to the database, triggering the version value to increment, even if the significant part of the value remains unchanged. This is because the trailing spaces will be trimmed from the value to be stored.

If this behavior is not desired, consider using `VARCHAR` or the equivalent for the target database. Of the supported databases, MySQL is the only database that trims the padding from the returned value and therefore will not trigger the version update.

For integer values, use `xsd:int` as the element type instead of `xsd:integer`. `xsd:int` has the same maximum value as a CDT field of type Number(Integer).

For more information on default column types based on Appian types or XSD types, see [Generating Database Tables from CDTs](Generating_Database_Tables_from_CDTs.html#column-types).

### Composite keys

When working with tables with composite keys, we recommend that you either find an existing column in the table with unique values or create a synthetic column in the table with unique values and map that column to a field of the CDT annotated with the `@Id` annotation.

Tables with composite keys are supported in the following ways:

-   [Data Store Entities](Data_Stores.html) can be mapped to tables with composite keys provided that the `@EmbeddedId` annotation is not used when mapping CDT fields to the composite key columns.
-   The [a!queryEntity()](fnc_system_a_queryentity.html) function can read data from tables with composite keys, however the `totalCount` and `identifiers` fields of the returned data subset will be incorrect unless a separate unique column in the table is mapped to a field in the CDT that is annotated with the `@Id` annotation.
-   The [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html) and [Delete from Data Store Entities](Delete_from_Data_Store_Entities_Smart_Service.html) smart services as well as [query rules](Query_Rules.html) will only work with tables that have composite keys if a separate unique column in the table is mapped to a field in the CDT that is annotated with the `@Id` annotation.
-   The [Query Database Smart Service](Query_Database_Smart_Service.html) can read from and write to tables with composite keys.

### Constraints

Databases can enforce constraints on column values that are not enforced by Appian on CDT field values.

For example, a database may require a column value to be `"not null"`, but the field in Appian can be empty. Be aware of these differences when designing your data stores.

Use the attribute nillable="true" to prevent columns in your data store from enforcing a `"non-null"` constraint.

### DDL editing

There are some classes of differences between an existing table schema and a CDT that are detected, but cannot be automatically resolved by opting to have the system update the tables for you. In such cases, you must alter the database tables by downloading and executing the DDL script.

The system does not alter column types if there is a mismatch between an element type in the XSD and the corresponding column type. Either add a JPA annotation to do so, or change the column type directly within the RDBMS.

If the XSD has a type name or `@Table` annotation with a name that is intended to map to a synonym or a view, the system cannot validate that the table exists.

It may be necessary to drop the existing tables and recreate them using the generated DDL. The generated DDL includes code comments that can be used for this purpose.

### DDL version control

When verifying a data store against the schema in your data source, download the generated DDL and store it in a version control system.

Each time the DDL is generated it contains the commands needed to update an existing schema as well as the DDL commands needed to drop and recreate the schema (in a commented out section of the DDL document).

You can use the DDL to load the schema onto a fresh system, such as when you're importing an application that uses data stores onto a new system.

### Null values

Empty text process variables are handled by the system as empty strings, not as `"null"` values. This allows empty strings to be inserted into the data store. If the corresponding column in the RDBMS is configured as `"not null"`, the database does not prevent the empty string from being inserted.

### Optimistic locking

Consider using the `@Version` annotation on a CDT field to enable optimistic locking on a data object.

Without using the `@Version` annotation, if a secondary process has updated the object in the data store since the current process last read it, the value stored by the secondary process is overwritten.

With the `@Version` annotation, the database detects that the value being stored by the current process is stale and prevents the update. The `@Version` annotation can be used on only one field per CDT.

For information on using `CHAR` columns in the target database table when using the `@Version` annotation, see above: [Column Types](#column-types)

### Primary keys

Records stored in a data store are keyed by a primary key. The `@Id` annotation can be used to indicate which field of the CDT you want to designate as your primary key.

If your XSD doesn't define a field as its primary key using the @Id annotation, a primary key is created for it automatically.

If the primary key for a data store entity is created by the system, you won't be able identify which record you want to update, because that primary key is hidden from your view. This behavior inserts new records in the data store, even when the data in two records are the same.

#### Generating primary keys

When using a sequence to generate ids (such as `@GeneratedValue(strategy``=``GenerationType.SEQUENCE)`), we recommend allowing the system to name the sequence instead of providing a name with the `generator` attribute. If you choose to define a sequence generator with the `generator` attribute in conjunction with the `@SequenceGenerator` annotation, then you must provide a name, and that name must be unique across all sequence generators in the system to avoid uniqueness constraint violations.

### Mapping to existing tables

If you are connecting to an existing database table, you can [create a CDT based off that table](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create) and Appian will automatically add all of the configurations necessary to map to that table.

Some legacy schemas are too complex or large to manage effectively within Appian. In this situation we recommend using a design pattern similar to what you would use when working with Web services. You can abstract the complexity away by mapping complex schemas to less complex CDTs. So the proposed flow of activity may be:

1.  Retrieve data from the data store.
2.  Transform data from a complex CDT to a simple CDT.
3.  Complete your processing utilizing a simple CDT.
4.  Transform data from simple CDT to a complex one.
5.  Write to the data store.

In this flow, the complex CDTs and translation are isolated to a subprocess. That way, other designers do not need to know about the underlying complexity. For example, if you have a data warehousing solution in addition to an operational database, you would transform the data from your operational structure to the structure expected by the data warehousing before your final write.

### Views

Views are often the go-to design pattern when the underlying schema is complex or data needs correct formatting. While this is allowed, you need to be careful with views. Certain designs can perform poorly, especially when joining multiple tables, sorting, and aggregating data.

Views are read-only, so you will need to create separate CDTs to utilize specifically for writes, increasing design and maintenance overhead. Additionally, since views cannot be created directly by publishing a data store entity, we recommend that all database objects be created separately using DDL scripts. This practice makes object creation and maintenance consistent between all database object types and makes deployments easier.

Once the view is created in the database, you can [create a CDT based off that view](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create) and Appian will automatically add all of the configurations necessary to map to that view.

### Queries

Creating a query as a custom output on a Write to Data Store node or as part of a subsequent script task after inserting or updating data in a data store ensures the StoredValue output contains the correct data.

### Triggers

If you use triggers to insert/update data in a data store, the values set by your triggers do not populate in the `StoredValue` output of the Write to Data Store node.

Creating a query to retrieve the new/updated data, as a custom output on the Write to Data Store Smart Service or as part of a subsequent script task, ensures the `StoredValue` output contains the correct data.

### Validation

The following differences between an existing table schema and a CDT cannot be detected during table validation:

-   Conflicting null value definitions, such as when a CDT field was defined with an XSD element using the attribute `nillable``=``"true"`, while the existing table column is set to `NOT NULL`. The opposite is also true.
-   If the primary key was annotated with a `@GenereratedValue` annotation, but the existing table column is not set to auto increment or use a sequence.
-   If a sequence is specified by the `@GeneratedValue` annotation, but that sequence does not already exist.
-   If the CDT field defines a length using an `@Column` annotation in the XSD that doesn't match an existing column's length constraint.
-   If the existing table contains extra columns that do not map to fields in the CDT. This is only an issue if the columns are defined as non nullable and no default value is defined.

## Schema management

This section describes recommended approaches to managing database schemas used with Appian.

### User privileges

When creating a tablespace, create a user with privileges only to that tablespace. Granting a user privileges to multiple schemas (or DBA privileges on an Oracle database) may effect queries to other schemas.

### Affected data stores

After you modify a database schema, always make sure to re-verify and re-publish the affected data stores. This ensures any changes you made will take effect and any issues raised because of the change are addressed.

If your application is restarted, and you begin receiving errors when queries and the Write to Data Store Smart Service nodes execute, it may be because a database schema was modified and its data store was not re-verified and re-published. You can resolve the errors by republishing the affected data stores.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...