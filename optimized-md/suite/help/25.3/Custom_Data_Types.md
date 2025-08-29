---
source_url: https://docs.appian.com/suite/help/25.3/Custom_Data_Types.html
original_path: Custom_Data_Types.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Data Types (CDTs)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

For most applications, Appian recommends using [record types](Record_Type_Object.html) to build with your enterprise data. When you enable [data sync](about-data-sync.html) on your record types, you can work with a faster, more flexible version of your data using record type relationships, custom record fields, and other sync-enabled features.

However, there are some cases where you may need to use custom data types (CDTs) in addition to your record types:

-   Your record type does not have data sync enabled, so you need to connect to the source using a [data store entity](Data_Stores.html).
-   You use a [data type plug-in](Custom_Data_Types_from_Java_Object.html) to define a CDT as a Java object.
-   Your process model includes an [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) or [Export Data Store Entity to CSV](Export_To_CSV_Smart_Service.html) smart service node. Data store entities require a CDT as part of their configuration.

This page explains what a CDT is and how to create and maintain it.

See also:

-   [Custom Data Type (CDT) Design Guidance](cdt_design_guidance.html)
-   [Custom Data Type (CDT) Relationships](CDT_Relationships.html)

## About CDTs

A custom data type (CDT) is a designer-defined data structure that represents a logical grouping of related data, such as _Employee_ and _Contract_. CDTs can be used to read from and write to a database table, to store information within a process, or to define inputs or outputs of a [web service](Call_Web_Service_Smart_Service.html) or [Appian plug-in](Custom_Data_Types_from_Java_Object.html).

All CDTs can be downloaded and imported as XML Schema Definition (XSD) files. For information about XSDs, see the [Supported XSD Elements and JPA Annotations](Supported_XSD_Elements_and_JPA_Annotations.html) page.

The life cycle of a CDT depends on where the authoritative data structure for your application is designed. See the diagram below for a high-level overview of the most common data type life cycle patterns.

![Data Design Lifecycles](images/Data_Design_Lifecycles.png)

## Properties

The table below describes the properties for data types. You can edit these properties from the settings menu .

| Property | Description |
| --- | --- |
| Name | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#data-objects). Because this name is used in the UUID to uniquely identify the data type across environments and in object references, the name cannot be changed after the CDT has been created. |
| Namespace | Formatted as a URI, for example, `urn:com:appian:types:COB`. Because the namespace is used in the UUID to uniquely identify the data type across environments and in object references, the namespace cannot be changed after the CDT has been created. |
| Description | Displayed in data type pickers in the Process Modeler. |
| Last Modified | Updated when the data type is created, and every time that the data type is modified. |
| Source | Indicates how the data type was created or last modified:
-   `XSD Import`: The data type was created or updated using an XSD file imported via a data type plug-in.
-   `Data Type Designer`: The data type was created in the Appian Designer (either from scratch, by duplicating an existing CDT, or by importing a XSD) or was [updated in the Appian Designer](Generating_Database_Tables_from_CDTs.html#update-the-cdt).
-   `Web Service Node`: The data type was created or updated by importing a web service definition language file (WSDL).

 |
| Hide this data from auto-complete and pickers |

-   Makes the data type available for use by other objects, for example, pickers and process variables.
-   Data types created from WSDL are hidden by default. Data types created by any other method are visible by default.
-   When using multiple application servers, the data type visibility is only updated in the cache of the application server you are logged into. The cache of any other application server is updated upon the next restart. To avoid restarting your application servers, log into each application server individually as this updates the data type visibility in each application server's cache.

 |

## Fields

For each field in the CDT, configure the following parameters:

| Parameter | Description |
| --- | --- |
| Name | The name of the field. Names are case-sensitive and must be unique within an individual data type. |
| Type | The [data type](Appian_Data_Types.html) of the field. The field can be a primitive or custom data type. Other data types are not supported. |
| Length | The length constraint of Text type fields. |
| Array | A Boolean value specifying whether the field can accept an array of values. |
| Key | A value specifying whether the field is the primary key for the table. All data types that map to a database table must have a primary key defined. For more information, see [Primary Keys](Generating_Database_Tables_from_CDTs.html#primary-keys). |

**Note:**  When using multiple application servers, the data type visibility is only updated in the cache of the application server you are logged into. The cache of any other application server is updated upon the next restart. To avoid restarting your application servers, log into each application server individually as this updates the data type visibility in each application server's cache.

## Create

Users in the [designer role](User_Roles.html#designer-role) can create data types using the methods described in the following sections.

**Note:**  CDTs are identified by their combined name and namespace. When creating new data types from scratch, an existing CDT (duplicating), or a database table, the name and namespace must be unique. If you create a CDT by importing an XSD file or through a WSDL or Appian plug-in, the name and namespace do not have to be unique. This allows you to update existing CDTs in the system through these methods without having to delete them first.

If you think that you could be accidentally replacing a deleted data type by using the same name and namespace, run impact analysis on the data type after creation to see if any objects depend on a previously deleted data type with the same name and namespace.

### Create from scratch

Use this option to create and configure a completely new data type.

-   In your application, go to the [**Build** view](applications-view.html)
-   Click **New > Data Type**, then select one of the following options:
    -   **Create from scratch**: Use this option to create a completely new data type and configure it using the data type designer. If the CDT will be used to read data from or write data to a database table, Appian can [generate the database table](Generating_Database_Tables_from_CDTs.html#create) for you.
    -   **Duplicate existing data type**: Use this option when you need to make a CDT that is similar to another CDT. All existing configurations on the original CDT, including any JPA annotations, will be duplicated. For example, if the original data type is mapping to a database table called _Employee_ using the `@Table` annotation, the new data type will also map to the _Employee_ table. If the CDT will be used to read data from or write data to a database table, Appian can [generate the database table](Generating_Database_Tables_from_CDTs.html#create) for you.
    -   [**Create from database table or view**](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create): Use this option when you have an existing table or view in the database and need to create a CDT in order to read from and write to that table within Appian. A CDT will be created for you with all the configurations necessary to automatically map to that table.
    -   **Import XSD**: Use this option if you already have an XSD file that defines your CDT. You may also create or edit multiple data types at once by importing a single XSD file that contains multiple data type definitions. If the CDT will be used to read data from or write data to a database table, Appian can [generate the database table](Generating_Database_Tables_from_CDTs.html#create) for you.
-   Import an [XSD defined using a Java object](Custom_Data_Types_from_Java_Object.html) as part of an Appian Plug-in
-   Import data types from a web service definition language file (WSDL) using the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html) or [webservicequery() function](fnc_scripting_webservicequery.html)

To create a data type from scratch:

1.  In the **Build** view, click **NEW > Data Type**.
2.  Select **Create from scratch**.
3.  Configure the following [properties](#properties):
    -   **Namespace**
    -   **Name**
    -   **Description**

        **Note:**  Make sure the **Namespace** and **Name** properties are correct. Once you leave this dialog, you cannot edit those properties, because they form the data type's universally unique identifier (UUID).

4.  Click **Create**. The data type displays.
5.  Configure the fields for the new data type. For each field you want to add:
    -   Click **New Field**. A new row displays.
    -   Configure the [fields](#fields) for the new data type.
6.  (Optional) Change the visibility of the data type:
    -   In the CDT object view, open the settings menu .
    -   Click **Properties**.
    -   Enable **Hide this data from auto-complete and pickers**.
7.  Click **Save Changes**.
8.  If the CDT will be used to read data from or write data to a database table, [generate the database table](Generating_Database_Tables_from_CDTs.html#create).

### Duplicate an existing data type

Use this option when you need to make a CDT that is similar to another CDT. All existing configurations on the original CDT, including any JPA annotations, will be duplicated. For example, if the original data type is mapped to a database table called _Employee_ using the `@Table` annotation, the new data type will also map to the _Employee_ table.

To duplicate an existing data type:

1.  In the **Build** view, click **NEW > Data Type**.
2.  Select **Duplicate existing data type**.
3.  In the **Data Type to Duplicate** box, browse to and select the data type you want to duplicate.
4.  Configure the following [properties](#properties):
    -   **Namespace**
    -   **Name**
    -   **Description**

        **Note:**  Make sure the **Namespace** and **Name** properties are correct. Once you leave this dialog, you cannot edit those properties, because they form the data type's universally unique identifier (UUID).

5.  Click **Create**. The data type displays.
6.  Configure the [fields](#fields) for the new data type:
    -   In the CDT object view, click any of the existing field parameters to edit.
    -   Reorder the fields by clicking the order arrows.
    -   Remove existing fields by clicking ![DeleteIcon](images/DeleteIcon.png) next to the field you want to remove.
    -   Click **New Field** and configure the parameters for the new field.
7.  (Optional) Change the visibility of the data type:
    -   In the CDT object view, open the settings menu .
    -   Click **Properties**.
    -   Enable or disable **Hide this data from auto-complete and pickers**.
8.  Click **Save Changes**.
9.  If the CDT will be used to read data from or write data to a database table, [generate the database table](Generating_Database_Tables_from_CDTs.html#create).

### Create from a database table or view

Use this option when you have an existing table or view in the database and need to create a CDT in order to read from and write to that table within Appian. A CDT will be created for you with all the configurations necessary to automatically map to that table.

To create a data type from a database table or view, follow the steps described in [Mapping Custom Data Types (CDTs) to Pre-defined Database Tables](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create).

### Import an XSD file

Use this option if you already have an XSD file that defines your CDT. You may also create or edit multiple data types at once by importing a single XSD file that contains multiple data type definitions. If the CDT will be used to read data from or write data to a database table, Appian can [generate the database table](Generating_Database_Tables_from_CDTs.html#create) for you.

To create a data type from an imported XSD:

1.  In the **Build** view, click **NEW > Data Type**.
2.  Select **Import XSD**.
3.  Upload an XSD file.
4.  Click **Create**. The data type displays.
5.  (Optional) Configure the fields for the new data type.
6.  Click **Save Changes**.
7.  [Generate the database table](Generating_Database_Tables_from_CDTs.html#create).

### Import an XSD file via a data type plug-in

Use this option to import an XSD defined using a Java object as part of an Appian Plug-in. For more information, see [Data Type Plug-ins](Custom_Data_Types_from_Java_Object.html).

### Import from a WSDL via a smart service

Use this option to import data types from a web service definition language file (WSDL) using the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html) or [webservicequery() function](fnc_scripting_webservicequery.html).

**Note:**  If you think that you could be accidentally replacing a deleted data type by using the same name and namespace, run impact analysis on the data type after creation to see if any objects depend on a previously deleted data type with the same name and namespace.

## Edit

Custom data types are edited in different ways based on how they were created, how they are configured, and what they are used for. The following table links to reference information for each scenario.

| Method or Usage | How to Edit |
| --- | --- |
| Mapped to a database table |
-   To make changes directly in the database, see [Mapping CDTs to Pre-defined Database Tables](Mapping_CDTs_to_Pre-defined_Database_Tables.html#update).
-   To make changes using Appian, see [Generating Database Tables from CDTs](Generating_Database_Tables_from_CDTs.html#update).

 |
| Generated by WSDL | See the [update](Call_Web_Service_Smart_Service.html#updating-wsdl-data-types) section on the Call Web Service Smart Service page. |
| Generated by Appian plug-in | See the [edit](Custom_Data_Types_from_Java_Object.html#edit) section on the Custom Data Types from Java Object page |
| Imported with multiple types from an XSD | After making the desired edits in the XSD file, navigate to the application, then [import the modified XSD file](#import-xsd). |

Before updating a data type, do the following:

1.  Use the **Dependents** view to determine the locations where the data type is used. Assess the impact of your changes on the related interfaces, process models, expressions, and other design objects.
2.  If the data type is used in a production system, consider any issues with backwards compatibility. The easiest way to do this is to only add fields and not change or remove existing fields.
3.  If the data type is mapped to an RDBMS through a data store, update the associated RDBMS object to reflect the data type change or check the [**Automatically update database schema**](Data_Stores.html#create) box on the data store's designer page.

**Note:**  The name and namespace of the data type cannot be changed as they form the data type's universally unique identifier (UUID). Deleted types can be replaced from the application when creating a type from scratch or duplicating an existing type.

After updating the data type, a new version is created unless the only change is to the data type description or its visibility in data type pickers. When a new version of a data type is created, all objects (excluding running processes) immediately begin using the new version of the data type.

**Tip:**  Deploying a new version of a plug-in data type will only replace the existing active data type if the plug-in version number is greater than the currently deployed plug-in version.

### Updating data stores

Data stores that include the updated data type will also immediately begin using the new version. This means that data stores can be negatively affected even if you only add fields, unlike rules and interfaces. To ensure that you do not accidentally invalidate a dependent data store's mapping to the database, you will receive a warning dialog when you attempt to update data types through the following means:

-   Clicking **Save** in the data type object.
-   Importing an XSD to create a new version from the data type object.
-   Importing an XSD to create a new version from the Appian Designer.

Back-end data type updates (importing an XSD in a patch or application and updating data types through an Appian plug-in) provide logs detailing the effect on dependent data stores, rather than a warning dialog.

If a deleted data type is updated by creating a new data type with the same name and namespace, you will **NOT** receive a warning about dependent data stores. The data store will immediately begin using the new data type structure, but the underlying database schema will not be automatically updated (even if the [**Automatically update database schema**](Data_Stores.html#create) option is enabled).

### Design guidance

While editing your data types, you may encounter design guidance. Appian [design-guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. Design guidance for custom data types are calculated at the following times: while actively editing the data type, while saving the data type, or when a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the data type is updated.

When a recommendation or warning is triggered for a data type, an indicator icon will appear in the header (A) and next to the corresponding field (B).

Click on the icon in the header to learn more about the suggested guidance (C) and how it can be addressed.

If a recommendation is not applicable to your use case, you can **Dismiss** (D) that individual recommendation for that data type. Learn more about [recommendation dismissal](appian-recommendations.html#recommendation-dismissal). Warnings cannot be dismissed and should always be addressed to avoid complications when the logic in the object is executed.

Data type guidance is also visible outside of data types on the [Health Dashboard](monitoring_view.html#health-dashboard).

See [design guidance](appian-recommendations.html#data-type-design-guidance) for the full list of possible guidance.

[![images/appian_recommendations_data_type_designer_annotated.png](images/appian_recommendations_data_type_designer_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1706)

[![](images/appian_recommendations_data_type_designer_annotated.png)](#_)

## Delete

When a data type is deleted, it is retained in the system so that objects can continue to function correctly even if referenced data types are deleted. Deleted types, however, will no longer appear in the Appian Designer or as choices in type pickers.

Upon deleting a data type, references to that data type will have a version number appended in the form of a caret (^) + version number. For example: `myCDT^1`, `myCDT^2`.

Objects that use a deleted data type can be exported and on import, will attempt to reference the most recent version of the data type. If the most recent version of the data type is deleted, import of the dependent object will still succeed. If no data type exists on the destination environment, import of the dependent object will fail.

**Note:**  Appian recommends that you use the [Outdated Type References Metrics Log](Logging.html#outdated-type-references-metrics-log) to find all objects that reference deleted data types and remove those references.

## Create New Version from XSD

There are some configurations for CDTs that cannot be accessed through the data type designer. If you need to modify those configurations, you can download the XSD for the data type and re-import it to create a new version of the data type.

To download the XSD file for a data type, click **Download XSD** in the settings menu of the data type designer. The following types cannot be downloaded as XSD:

-   Simple types
-   Fault types created by the [Call Web Service](Call_Web_Service_Smart_Service.html) Smart Service

Once you have made the necessary changes to the file, click **Create New Version from XSD** in the settings menu and upload the new version of the XSD.

## Import

When deploying data type edits to a production environment, all design objects will be updated to use the latest version of the data type when it is imported. Dependents of data types only need to be included in the import package if you have made changes to their definitions.

When a package containing data types is imported, only data types that have been changed or depend on a data type that has been changed will be updated.

See also: [Deploying Data Types](Application_Deployment_Guidelines.html#custom-data-types)

## Casting

For details on how data type data are cast, see [Casting Custom Data](Casting.html#casting-custom-data)

Variables of simple custom types that extend other simple custom types can be saved into each other because they both extend from a simple system type (like Text).

Variables of custom types that extend other custom types often cannot be successfully used to save data into each other, because of the mismatch of fields. At runtime, any fields of a derived data type that are not present in the parent data type cannot be mapped. If the parent data type is an abstract custom type with no fields, no data can be saved into it. Therefore, it is best to avoid abstract data types and extending data types.

## Security

**Tip:**  Unlike most objects, data types do not have their own security role maps. Instead, the security of the object referencing the data type is applied. For example, if an interface calls a data type, then the interface's security is applied.

Only [system administrators](User_Management.html#manage-user-rights-and-security) and [designers](User_Roles.html#designer-role) can perform actions on data types. The following table outlines the data type actions that can be completed by each:

| Actions | System Administrator | Designer |
| --- | --- | --- |
| Create and edit the data type | Yes | Yes |
| View the data type | Yes | Yes |
| Download the data type's XSD | Yes | Yes |
| Delete the data type | Yes | No |

## Usage Considerations

-   When a process variable of a data type is updated, the whole data type value is written to process history. Process history does not highlight which fields changed.
-   The typename of a custom type is the name as defined in the XSD that was used to create it. When a variable is marked as a multiple, **?list** is appended to the typename to indicate that it holds multiple values. This is different than system data types which have a typename of the form **List of <the type>** when they are multiple. Be aware of this when using the [typename()](fnc_informational_typename.html) expression function with data types.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...