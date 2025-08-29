---
source_url: https://docs.appian.com/suite/help/25.3/CDT_Relationships.html
original_path: CDT_Relationships.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Data Type (CDT) Relationships

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

A custom data type (CDT) represents a logical grouping of related data, such as an _Employee_. When that logical structure has more than one level, such as an _Employee_ who has a specific _Address_, then this is represented in Appian by multiple related [CDTs](Custom_Data_Types.html).

When working with an external database, related CDTs can represent related tables. Relating these CDTs in Appian allows queries in the Appian application to retrieve and filter by data from related tables.

## Terminology

### Parent

This is the CDT that has the relationship. In a data structure, it's usually also at a logically higher level. In the example given above, an _Employee_ has an _Address_, so _Employee_ is the parent. This is a colloquial term to make it easier to follow the examples below.

### Child

This is the CDT to which the parent is related. In a data structure, it's usually at a logically lower level. In the example given above, _Address_ is the child. This is a colloquial term to make it easier to follow the examples below.

### Cascade

The cascade setting is the term for the behavior of related tables when writing, updating, and deleting items in the current table. Appian recommends using a cascade setting of either ALL or REFRESH for related CDTs.

With a cascade of ALL, also known as "Master-detail" behavior, data in related tables can be updated whenever a parent table is updated. For example, when updating an _Employee_, you can also update the details of the _Address_ where they live. If an _Employee_ is deleted, the related _Address_ where they live should be deleted as well.

With a cascade of REFRESH, also known as "Reference" behavior, related tables are not updated when the parent table is updated. Instead, any data that is referenced in related tables is refreshed from the current database values. When a _Patient_ is updated, it might reference a new _Hospital_ if the _Patient_ has been moved, or no _Hospital_ at all if they have been discharged, but updating a _Patient_ should never change the definition of any _Hospital_, and specific values of _Hospital_ should not be removed when no _Patient_ points to them.

Appian recommends a cascade setting of ALL in relationships when only one parent references the child. These relationships are usually intended as a "Master-detail" relationship, where each child holds more detailed information that is conceptually part of the parent.

Appian recommends a cascade setting of REFRESH in relationships when more than one parent can reference a child value. These relationships are usually intended as a "Reference" relationship, in which no one parent "owns" the child value, but simply points to it.

### Indexed

When a parent references more than one child, it can use the "indexed" setting to determine whether the children are inherently ordered or not. This requires an extra column in the database to store the index of each child (hence the name of this setting). Appian generally recommends against using this, as it can be difficult to make use of in Appian applications, and thus would be a unnecessary column in the database. When CDT relationships are configured in the data type designer, Appian sets the value of "indexed" to false, though it can be changed by modifying the XSD file if desired.

## Relationships

The following relationships are common in data design, and are not specifically Appian terms, though this page covers how they are used in Appian. The name for each relationship follows the intuitive pattern of: (number of parents)-to-(number of children). For example, in a Many-to-One relationship, many parent values can have the same single child value.

### Flat Relationship

When a related table is used only rarely, you may not want a specific relationship built into your CDTs, as doing so would automatically query the related table every time the parent is queried. In a Flat relationship, there is no explicit relationship between CDTs. The parent CDT has a field of the same type as the Primary Key (PK) of the child CDT, which identifies the child CDT, and queries on the parent CDT will only return this PK value. In the database, the column corresponding to this field is usually a foreign key. Appian can detect that setting, but it doesn't have any effect within the Appian application.

When the application should return data from related tables, the related table is queried directly and separately, using the PK values retrieved from the parent CDTs. This means that while it reduces the number of queries when you're just retrieving the parent, it may increase the number of queries to get both the parent and the child.

This pattern is most commonly used when the related table is only rarely needed, or when the application needs to take advantage of specific query performance optimizations made directly in the database.

### One-to-One Relationship

In a One-to-One relationship, each parent has exactly one child value, and parents cannot share child values - they're unique to each parent.

The _Employee_ and _Address_ example given above exemplifies this relationship.

### Many-to-One Relationship

In a Many-to-One relationship, each parent has exactly one child value, but multiple parents can share a child value.

Many-to-One relationships are most commonly used to manage "lookup" values that are common across the application. An example of this would be the structure described above, where each _Patient_ references the _Hospital_ they're checked in to.

### One-to-Many Relationship

In a One-to-Many relationship, each parent has one or more children, and parents cannot share child values - they're unique to each parent.

While Appian recommends a cascade setting of ALL in this relationship, this may vary based on the needs of your applications. An application to manage _Customers_ who each have multiple _Contracts_ could be modeled as a One-to-Many relationship, but the application constraints will dictate whether updating a _Customer_ value should be allowed to update any _Contracts_ at the same time.

### Many-to-Many Relationship

Many-to-Many is the most complex and rarely used relationship, modeling the situation where both tables can reference multiple values from the other. In a database, this can also be modeled as a One-to-Many relationship on each table, but Many-to-Many can be easier to work with in Appian.

An example of this would be an application to manage _Employees_ and _Projects_. Each _Project_ has a team of multiple _Employees_, but a given _Employee_ might currently be on more than one _Project_.

## Configuring Relationships

CDT relationships can be configured in the data type designer. When a CDT is selected as the type of a CDT field, a relationship of Many-to-One (or One-to-Many if the Array checkbox is checked) is configured by default. To select either of the other two types of relationships, or change the cascade setting, click the Foreign Key icon for that field to further configure the relationship.

![screenshot of CDT with relationships](images/CDT_with_relationship.png) ![screenshot of the Configure Field Relationship dialogue](images/CDT_default_relationship.png)

Appian establishes CDT relationships by generating the appropriate XSD annotations on the field that controls the relationship. If more complex configurations are needed that cannot be specified in the data type designer, use the [Download XSD option](Custom_Data_Types.html#create-new-version-from-xsd) to directly update the XSD with the desired configuration.

Appian does not recommend configuring a field with a CDT type without an explicit relationship. It will behave almost identically to a Many-to-One or One-to-Many relationship (again, depending on the Array checkbox), but with small differences in reading and writing that do not become apparent until much later in application design.

When configuring a relationship that already exists in the database, it is necessary to specify the exact column name in Appian. Otherwise, the data store containing the CDT will not verify and will try to generate new columns instead. To avoid this, select the checkbox labeled "I know what column(s) this fields should use in the database" when configuring the field's relationship. This will display new fields, with instructions for which database information should be entered into them.

![screenshot of the Configure Field Relationship dialogue, showing editing the Column Name field](images/CDT_column_relationship.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...