---
source_url: https://docs.appian.com/suite/help/25.3/build-best-data-fabric.html
original_path: build-best-data-fabric.html
version: "25.3"
title: "Build Your Best Data Fabric"
page_id: "build-best-data-fabric"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Build Your Best Data Fabric

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Enterprise data is often vast, complex, and mission-critical, so businesses take great care to carefully construct a data fabric that grows with their automation processes.

This page outlines several best practices for building a scalable, performant, and AI-ready data fabric. Review and implement these suggestions as you create record types to ensure a strong foundation for your applications.

## Use synced record types

[Appian's data fabric](data-fabric.html) is powered by record types with [data sync](about-data-sync.html) enabled. We call these _synced record types_.

As a best practice, you should [enable data sync](configure-record-data-source.html) on all new record types. This allows you to take advantage of powerful [sync-enabled features](about-data-sync.html#what-is-data-sync) and work with performant, up-to-date data.

If your existing record types do not have data sync enabled (_unsynced record types_), you can create new synced record types to use in Process HQ and in new development. Learn more about how you can [incorporate synced record types into your existing applications](use-synced-record-types-in-existing-apps.html).

## Identify the best way to work with large data sources

Each record type with data sync enabled can sync up to [20 million rows](Appian_Tiers.html) of data from a source. While this is a significant amount of data, very large data sources or growing data sources may require you to adapt your data model so you can access all the data you need.

Depending on your business case, you can easily adapt your data model:

|
If...

 |

Then...

 |
| --- | --- |
|

You only need the most recent data from a large database table.

 |

[Enable **Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) on your record type. This sync option will dynamically sync the latest rows of data from your source.

 |
|

You only need a portion of the data from a large data source.

 |

[Configure sync filters](records-filter-source-data.html#about-sync-filters) to choose which data to sync in the record type. You can create multiple record types using the same data source and use sync filters to sync different portions of data in each record type.

 |
|

You need all data from the large data source.

 |

Create an [unsynced record type](Record_Type_Object.html#synced-and-unsynced-record-types) to store the entire dataset, and create synced record types to store subsets of data to address [specific scenarios in your applications](about-data-sync.html#when-to-enable-data-sync).

Depending on your use case, you may need to create additional indexes, views, caches, or other tuning to optimize query performance in the source system. By syncing subsets of the data, you can take advantage of automatic performance tuning and [sync-enabled features](about-data-sync.html#what-is-data-sync) in targeted areas of your application.

 |

For example, let's say your [Event History record type](record-events-configuration.html#generated-event-history-record-type) has 9.6 million rows of data and captures numerous events each day. Since you only need to display a timeline of the latest events that occur in your application, you could enable the **Keep data available at high volumes** option to dynamically sync the latest events.

Alternatively, you may have a database table with 7 million rows of support cases and you need to create an application that monitors all open cases. In this example, you could create a record type called **Open Cases** and configure sync filters to only sync cases that have a status of Open or In Progress.

You can also use a combination of synced and unsynced record types throughout your applications, depending on your application requirements. See an [example here](Record_Type_Object.html#synced-and-unsynced-record-types).

## Provide meaningful metadata

Data is often more valuable and easier to understand if it's clear how that data was created, what it's used for, or what it means. Together, these details establish the context, and help people and technology understand how your data works together.

Metadata is essential to establishing context for your data, and therefore essential for making sense of it. These recommendations mention specific metadata to include in your data fabric.

### Unique plural record type names

In places like the [Data Catalog of Process HQ](data-catalog-page.html), users see the plural names of your record types, so it is important that each record type has a unique name. Sometimes this means you'll need to edit the system-generated plural name for a record type.

**Example**: You have two record types with the following singular names with different purposes: **CM Employee** and **HR Employee**. By default, Appian suggests **CM Employees** and **HR Employees** as the plural names, respectively. We recommend that you provide more descriptive plural names, such as **Case Employees** and **Company Employees**, so users and technology can more quickly distinguish between similarly named record types.

### Record type descriptions

Descriptions also help provide business context to users. The clearer the descriptions are, the more information users will have when exploring the data model. Additionally, this information helps make AI features more effective at querying your data by providing valuable context. These descriptions should be good enough that a person who isn't familiar with your data model can understand it after reading these descriptions.

**Tip:**  If the record type will appear in [Process HQ](processhq.html), avoid any developer terminology (like "record type" or "data sync enabled") in the description since it will be visible to business users.

**Example #1**: A record type called **Case Type** contains both categories of cases (such as `Commercial` or `Public Sector`) and case types (such as `Demolition` or `Construction`). Based on field names alone, a person (or AI model) might have trouble distinguishing these two fields and the data each one contains. To help make this clear, the following description would be appropriate:

`Contains the different types of cases. There are categories of cases and there are types within those categories. If the isCaseCategory field is set to true, the case type is a category, otherwise it is a type within a category. For example, Commercial is a category and Demolition a type within the Commercial category.`

**Example #2**: To specify a many-to-many relationship between **Employee** and **Project**, you need to use [a third record type](record-type-relationships.html#add-many-to-many-relationships), called **Assignments**. The third record type should include a description such as:

`Maps employees to projects. For example: Employee A and Employee B work on Project 1, Employee B and Employee C work on Project 2. Project 1 and 2 each have two employees assigned to work on them. Employee A and Employee C each work on one project, Employee B works on two projects.`

[![images/many-to-many-diagram.png](images/many-to-many-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img420)

[![](images/many-to-many-diagram.png)](#_)

### Field display names and descriptions

You can [add display names and descriptions](configure-record-data-source.html#add-field-display-names-and-descriptions) to fields in your record types. Good field names, display names, and descriptions provide users and AI with additional context. Consider listing synonyms or acronyms in your descriptions to provide this context.

**Example**: In the **Case** record type, each record has a `dueDate` field which contains **Date and Time** data. You also have a custom record field (`daysTilDue`)that calculates the difference between today's date and the due date, so you can quickly see how many days are left until the deadline.

To help a person or AI model understand the information that this custom record field contains, you could add a display name and field description that contains any synonyms or acronyms users might use.

-   Field display name: `Days until deadline`
-   Field description: `Number of days left until a deadline; or number of days until service-level-agreement (or SLA).`

You can also easily use both the display name and description for your record field throughout your application using record field references. To learn more about referencing these and other parts of your record field, see [Referencing records](reference-records.html#reference-record-field-properties).

### Reusable validations and interfaces for fields

You can [create and add common validations and reusable user interfaces to your existing record fields](configure-record-data-source.html#add-reusable-validations-and-interfaces-to-record-fields). Configuring validations and interfaces for record fields that can be reused throughout your application allows for convenient, reliable, and uniform reuse without the need to continually configure the way a field displays or validates.

The following sections provide general recommendations on when to configure these reusable elements.

#### Reusable record field validations

Using validations in interfaces help ensure that your users submit the right information in the right format. To speed up your interface development, you can configure reusable validations for your record fields.

Record field validations allow you to make a one-time definition of your most commonly used validations so you can easily apply them to that record field throughout your apps.

For example, if you have a record field for email addresses that you use in multiple interfaces, you might create validations to make sure that all inputs to that field include an `@` symbol or use a specific domain.

The expression in the [**Validations** section in the record field](configure-record-data-source.html#add-reusable-validations) might look like this:

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
15
16
17
18
{
  if(
    a!isInText(
      text: recordType!Employee.fields.email,
      subtext: "@"
    ),
    "",
    "Email address must contain an @ symbol."
  ),
  if(
    a!endsWith(
      text: recordType!Employee.fields.email,
      endsWithText: "appian.com"
      ),
    "",
    "Email address must be from the appian.com dommain."
  )
}
```

Instead of writing that expression every time you use the record field in an interface, you can define the expression one time in the record field and call it wherever you need it in your app.

The validations configured on a record field are not automatically evaluated and you must use the [a!applyValidations function](fnc_system_a_applyValidations.html) function to reference them. This ensures that the reusable validations are being run intentionally.

For example, here's what using the `a!applyValidations()` function to reference your record field validations might look like when used in a [reusable input interface for a record field](#reusable-record-field-interfaces):

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
a!textField(
  label: recordType![Employee.fields.email.properties.displayName],
  labelPosition: "ABOVE",
  showWhen: fn!true(),
  value: ri!record[recordType!Employee.fields.email],
  saveInto: ri!record[recordType!Employee.fields.email],
  align: "LEFT",
  validations: {
    a!applyValidations(
      recordField: recordType!Employee.fields.email,
      context: ri!record
    )
  }
)
```

Only add validations to the record field that you want to apply consistently throughout your app. If you need to run one-time validations on a record field to meet the needs of a specific interface or expression, you can define additional validations using the [a!applyValidations function](fnc_system_a_applyValidations.html). These one time validations are not saved as part of the record field validations and are not reusable.

#### Reusable record field interfaces

Configuring reusable user interfaces for record fields allows you to build applications faster by directly referencing the record field and the associated interface, instead of having to continually configure the field to match the scenario each time.

You can add two reusable user interfaces to a record field:

-   **A read-only interface**: Defines what the record field should look like when used in read-only interfaces, like summary views.
-   **An input interface**: Defines what the record field should look like when used in input interfaces, like forms.

You can either generate interfaces for the record field directly from the record field or add your own custom ones.

The generated interfaces include the component associated with the record field, the basic component configurations, and connections to the record field. And, if a record field has validations configured, the generated input interface for the record field will automatically use the `a!applyValidations()` function.

For example, if you have a record field for email addresses, the expression for the generated input interface might look like this:

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
a!textField(
  label: recordType!Employee.fields.email.properties.displayName,
  labelPosition: "ABOVE",
  showWhen: fn!true(),
  value: ri!record[recordType!Employee.fields.email],
  saveInto: ri!record[recordType!Employee.fields.email],
  align: "LEFT",
  validations: {
    a!applyValidations(
      recordField: recordType!Employee.fields.email,
      context: ri!record
    )
  }
)
```

To keep your applications clutter-free, only create reusable user interfaces for record fields that will be used in interfaces multiple times throughout your application.

Learn more about [adding reusable interfaces and validations to record fields](configure-record-data-source.html#add-reusable-validations-and-interfaces-to-record-fields).

### Relationship names

As you configure your record fields and [relationships](record-type-relationships.html), ensure that your field names and relationship names can be easily understood by other developers and end users. These names will appear in [records-powered components](Using_the_Records_Tab.html#interface-components) and in Process HQ when users build their own reports. If you [plan to use AI in your applications](#ai-specific-best-practices), the AI models will also use this information to better understand your data.

[![images/datasetRelationships.png](images/datasetRelationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img421)

[![](images/datasetRelationships.png)](#_)

Use camel casing to format your field names and relationship names. For example, a field for last names should be formatted as `lastName`. Appian will automatically convert camel cased fields and relationship names to title case in end-user workspaces, so they're easy for end-users to read. You should also avoid adding application prefixes to your relationship names since these names will also appear to end users. For example, if you have a relationship name like `nacCustomer`, you should update it to `customer`.

Learn more about [preparing data for self-service reporting in Process HQ](prepare-data-for-reports.html).

## Create bi-directional record type relationships

[Add relationships](record-type-relationships.html#add-relationships) to any and all related record types, on both sides of the relationship. These relationships make easier for both people and AI models to find the information that might be related to each other.

**Example**: You have two record types: **Case** and **Case Type**. A case can only have one case type, but there can be multiple cases of the same type. Therefore, **Case** has a [many-to-one relationship](record-type-relationships.html#supported-relationship-types) with **Case Type**, and **Case Type** has a one-to-many relationship with **Case**.

Ensure you [add relationships](record-type-relationships.html#add-relationships) to both record types, with common fields mapped appropriately. Appian suggests these relationships for you as well.

[![images/bidirectional-relationship.png](images/bidirectional-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img422)

[![](images/bidirectional-relationship.png)](#_)

## Create custom record fields

Sometimes, a record type won't explicitly contain the necessary data to answer a question. For example, you may need to aggregate, extract, or change your existing data to show specific insights. This is a good opportunity to use [custom record fields](custom-record-fields.html).

**Example**: You have an **Order Item** record type which contains fields like `cost` and `salesPrice`. You can create a `profit` field to the record type, which subtracts `cost` from `salesPrice`.

See additional examples of [when to use custom record fields](custom-record-fields.html).

## Store lookup data in a separate record type

Lookup data refers to a list of static values. These values don't change very often, and they can be shared across multiple record types. To easily maintain static data and avoid duplicating it, you should create separate record types for lookup data.

For example, in an application, you may have a **Customer** record type and an **Employee** record type. In both record types, you need to reference the state a person lives in. To avoid adding a `state` field on each record type that could potentially store the information inconsistently (such as accidentally using a mix of state abbreviations and full state names), you could create a **State** record type. Then, using [record type relationships](record-type-relationships.html), you can relate the **State** record type to both the **Customer** and **Employee** record types so they can easily reference a person's home state.

You can easily generate a new related record type to hold your lookup data by adding a [choice list field](create-record-data-source.html#add-a-choice-list-field). You can edit the choice list field values, as well as any other source data, directly from the **Data Preview** page of the related record type and simultaneously download the database script for those changes.

Additionally, you can generate translation strings for lookup data in [record fields](translation-set-object.html#create-translation-strings-from-a-record-type) and [choice list fields](create-record-data-source.html#add-a-choice-list-field) directly from the record type.

## Track record events

[Record events](record-events.html) allow you to track what happens in your applications, with minimal configuration on your part. Once you start tracking record events, you can display your event data as an activity log to business users or use that data to drive process improvements for your organization.

We recommend configuring record events on the record types that relate your major business processes. For example, in a Case Management application, you should configure record events on the **Case** record type to track events related to creating and managing cases.

Review the [guidelines](record-events.html#guidelines) before configuring record events.

## Make record types available in data fabric insights

Within Process HQ, users can only access and ask questions about the record types that are available as datasets in the Data Catalog. [Choose the record types](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets) you want to make available as datasets in Process HQ to enable your users to gain insights.

## Protect sensitive data with record-level security

Enterprise data often includes information that must be protected for business, privacy, or regulatory reasons. For example, you may want to restrict customer information to the salesperson working with a client, or you may need to allow only managers and executives to view company financial data.

As you construct your data model, identify the information that requires protection and the users or groups that are allowed to access it. When you build the record type that includes sensitive data, you can then configure security controls to ensure protected record data can only be viewed by certain users or groups.

Appian's AI features also respect all [record type object and record-level security configurations](appian-records-security.html). If AI Copilot provides answers that don't seem correct, it may be because of how record-level security is set up for a given user.

To learn more about the security features available for record types with data sync enabled, see [Record-Level Security](record-level-security.html).

## AI-specific best practices

Data isn't just the foundation of your applications, it's [also the key](collect-data.html) to making the most of artificial intelligence (AI) capabilities. Building an intentional, high-quality data architecture with Appian's data fabric will enable you to easily integrate powerful AI features into your workflows.

This section includes specific best practices for how to create record types and other data objects in Appian so your applications are setup to take advantage of AI.

### Store usernames consistently

Usernames come in a variety of formats, such as firstname.lastname (`john.smith`), email addresses (`john.smith@acme.com`), or first initial + last name (`jsmith`). To help users and AI models parse this information, use a format that includes the user's first and last name.

**Example**: The **Case** record type stores assignee usernames as `j.smith`. A user may ask AI Copilot a question such as "How many cases are assigned to John Smith?". However, the username doesn't include the first name. To help the AI model successfully reference the username field when answering this question, use a format that includes the first and last name in the username.

If you're having trouble getting accurate responses for questions including usernames, contact [Appian support](https://forum.appian.com) to update your site's properties to use the appropriate format.

### Describe fields that indicate soft deletions of records

It's common to build a ["soft deletion"](manage-record-data.html#soft-delete-a-record) mechanism into a record type. For example, setting the value of a field like `isActive` to `false` retains the data but filters it from most queries.

For AI features to return current data to the user, use these fields to filter out the soft deleted data by adding this instruction to the descriptions for these fields.

**Example**: If you have a field called `isActive` of type `Boolean` for a record type containing groups in a work department, you could add the following description:

`Indicates if the group still exists or not. When asking AI Copilot to return a list of departments, this field should be used to filter for only active departments, unless otherwise stated.`

### Indicate business reasons why a field may be empty

Sometimes fields in a record type could be empty. This could be a data entry issue that may cause issues with queries. Other times, a field could be empty for legitimate business reasons, so it's important to add this to the description of the field.

**Example**: You have an **Employee** record type with a `startDate` and an `endDate` fields. The `endDate` field may be empty for employees who still work at the company. In the field description, add something like:

`The date an employee leaves the organization. If this field is empty, it means the employee is active.`

### Test to see if changes have the desired effect

When you use AI in your applications, your data is analyzed by an AI model. So by integrating these best practices, you are effectively engineering your data to be easier to analyze. This is more of an art than a science. Make sure to test and confirm your changes have the desired effect.

### Add lookup record types

Add lookup record types if you are using defined values like status or priority. Lookup record types help standardize values and improve data consistency.

### Use good field descriptions

-   **Avoid adding field descriptions** if the field name is self-explanatory to keep the interface clean and easy to scan.
-   **Avoid duplicating context** by including synonyms or shared information in the record type description instead of in individual field descriptions. This keeps field descriptions focused and prevents unnecessary repetition.

### Relationship names

-   **Name mapping record types using the pattern Xs to Ys**, where both X and Y are the plural form of the related record types. Use nouns in the record type name. This naming convention makes it clear that the record type represents a relationship between two entities.
    -   For example, a record type that maps "Product" records to "Supplier" records should be named **Products to Suppliers**.
-   **Remove app prefixes from relationship names** to avoid redundancy and make relationship names more readable.
-   **Ensure relationship names match the names of the related record types** and use the pattern xToYMapping or yToXMapping where X and Y are the singular forms of the related record types. This improves clarity when building and maintaining record data models.
    -   For example, a relationship from the Supplier record type to the mapping record type could be named **supplierToProductMapping**.
        ![relationship name](images/automation/relationshipName.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...