---
source_url: https://docs.appian.com/suite/help/25.3/about-data-sync.html
original_path: about-data-sync.html
version: "25.3"
title: "About Data Sync"
page_id: "about-data-sync"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Data Sync

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

[Record types](Record_Type_Object.html) allow you to seamlessly connect to your enterprise data so you can build data-rich applications with ease. When you enable data sync on your record types, you can build powerful applications even faster.

This page explains the benefits of enabling data sync on your record types and provides tools and strategies you can use to leverage data sync, regardless of the size or location of your data.

## What is data sync?

Data sync unlocks powerful features that can speed up your entire development process. These features make it easy to change your data model, access the data you need, and even allow Appian to configure parts of your applications for you.

See the table below for a full list of features that are only available when you enable data sync:

|
Feature

 |

Description

 |
| --- | --- |
|

[Data fabric insights](allow-users-to-build-reports.html)

 |

Allow business users to build their own custom reports and dashboards using your synced record data in Process HQ.

 |
|

[Record type relationships](record-type-relationships.html)

 |

Establish relationships between record types to easily reference related record data throughout your applications. Build relationships between data from different sources, and easily create comprehensive reports and queries using more of your enterprise data.

 |
|

[Custom record fields](custom-record-fields.html)

 |

Extend your data by transforming and manipulating existing record data into new custom record fields. Using predefined templates or expression mode, you can perform operations that calculate new values, group your data, manipulate text, and more. These values are then saved as new fields in the record type.

 |
|

[No-code security configurations](appian-records-security.html)

 |

Specify, in plain language, who can view which [records](record-level-security.html), [views](record-view-security.html), and [actions](record-action-security.html) on a record type. Appian will automatically enforce your security configuration anywhere the record type is used in your app.

 |
|

[Record events](record-events.html)

 |

Seamlessly track what happens in your applications and when, with minimal configuration on your part. You can use this feature to provide application users with a timeline of events, enable collaboration amongst team members, and improve your business processes using [process insights](process-insights.html).

 |
|

[Document management with record types](manage-docs-with-records.html)

 |

Use record types to manage where documents are stored, how they're secured, and how those documents relate to your other application data. Plus, you can leverage the out-of-the-box [Document record type](document-record-type.html) to seamlessly display, filter, and aggregate by key document information.

 |
|

[Generate sample data](records-create-sample-data.html)

 |

Automatically create realistic record data for existing record types and their related record types all at once.

 |
|

Auto-generate elements of the record type

 |

Automatically generate and configure core elements of the record type, like [user filters](filter-the-record-list.html), [record views](record-view.html#generate-a-record-view), and [record actions](record-actions.html).

 |
|

Automatic performance tuning

 |

Synced data is automatically optimized so your applications are overall more performant---No manual performance tuning necessary.

 |

## How does data sync work?

Data sync caches your source data in Appian. Think of it like a cache on your web browser: when you cache web content locally on your browser, your site content loads faster and improves the speed of your browsing. The same applies when you sync your source data—Appian only has to execute queries against your synced data instead of the external source, so your record data will load faster. In addition to faster queries, Appian also leverages the proximity to your synced data to provide the powerful [features listed above](#what-is-data-sync).

As you build applications, you can keep your synced data up to date with the source by using [smart services that automatically sync data](records-data-sync.html#use-smart-services-that-automatically-sync-data) in your process models, interfaces, and expression rules.

For example, let’s say you have a Customer record type that uses a database table as the source. If you use the [Write Records](Write_Records_Smart_Service.html) smart service to add new customers, then that new customer data will also be synced and immediately reflected in the record type.

[![images/syncrecords.png](images/syncrecords.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img417)

[![](images/syncrecords.png)](#_)

If there are other systems besides Appian that are writing to your source, you can also schedule [full syncs](records-data-sync.html#schedule-full-syncs) or [incremental syncs](records-data-sync.html#schedule-incremental-syncs) to capture those changes.

If a smart service sync occurs at the same time as a scheduled full sync, all changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available.

## How is my synced data secured?

Appian applies the same [object-level](object-security.html) security to your data across the platform. Whether it is being displayed in an interface, updated in a process, or synced in Appian, any user’s ability to view or edit data is determined by the permissions structure of your application.

You retain complete control over your business data, even when you sync it in Appian. Users can only build with and view synced data through the Appian design objects in your applications; they cannot access it directly. You can even specify who can view your synced data by applying [record-level security](record-level-security.html) on your record type.

If, at any time, you want to make your currently synced data unavailable to all users, you only need to [disable data sync](Records_Monitoring_Details.html#disable-sync-steps) on that record type.

## When to enable data sync

As a best practice, you should [enable data sync](configure-record-data-source.html) on all new record types. This allows you to take advantage of powerful [sync-enabled features](#what-is-data-sync) and work with performant, up-to-date data.

If you have existing record types that do not have data sync enabled ([_unsynced record types_](Record_Type_Object.html#synced-and-unsynced-record-types)), you can [create new synced record types to use in Process HQ and in new development](use-synced-record-types-in-existing-apps.html#benefits-of-using-synced-record-types-in-existing-apps).

Appian does not recommend enabling data sync on an existing record type. If you enable data sync on an existing record type, it will create new record fields with new UUIDs. As a result, you will need to [update any existing record field references](Records_Monitoring_Details.html#find-and-replace-existing-field-references) with new record field references. By creating new synced record types, there’s no application re-work required.

## Usage considerations

Before you enable data sync on your record type, consider the following:

-   **Row considerations**:
    -   Each record type with data sync enabled can sync up to [20 million rows](Appian_Tiers.html) from a source. If you’re working with an extra large data source or a growing data source, you may need to [adapt your data model](#sync-data-from-large-data-sources) to access all the data you need.
-   **Field considerations**:
    -   A single primary key field is required.
    -   Each synced record type can have up to 100 fields, including [custom record fields](custom-record-fields.html).
    -   Unique fields can have a maximum of 765 characters.
    -   Text fields containing values longer than 4,000 characters will be truncated in Appian. Instead, set fields that store large amounts of data to type [**Extra Long Text**](#use-extra-long-text-fields-to-store-large-volumes-of-data), so you can store values up to 64,000 characters.
    -   Database columns must be a supported data type. Review the list of [unsupported database column types](#unsupported-database-columns).
-   **Salesforce API considerations**:
    -   Syncing 1,000 rows of data requires a single API call, so [ensure the API limit on your Salesforce instance is large enough](#api-limit-to-sync-rows-from-salesforce) to support the number of rows you need to sync. Consider using [sync filters](records-filter-source-data.html#about-sync-filters) to only sync the most relevant data in the record type.
-   **Write considerations**:
    -   Any data changed by [select smart services](records-data-sync.html#use-smart-services-that-automatically-sync-data) will be automatically synced in Appian. If you're writing to a database table that is the source of multiple record types, consider [syncing data independently from the writes to the source](#syncing-changes-from-the-same-database-table-in-multiple-record-types).
    -   If you use other smart services or systems to write to your source, you can sync those changes using the [Sync Records smart service](records-data-sync.html#use-the-sync-records-smart-service), [scheduled incremental syncs](records-data-sync.html#schedule-incremental-syncs), or [scheduled full sync](records-data-sync.html#schedule-full-syncs).
    -   Different sync behaviors will occur when [certain sync types occur at the same time](records-data-sync.html#multiple-syncs-at-the-same-time).
-   **Additional database encryption**:

    -   You do not need to enable the [database encryption](Appian_Cloud_Database_Encryption.html) capability offered by Appian Cloud. This is an additional layer of protection that can be enabled on top of the out-of-the-box disk encryption provided by Appian Cloud.

    **Note:**  This only applies to customers on [Professional or Signature Success Plans](https://appian.com/support/resources/success-plans).

### Sync data from large data sources

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

### Dynamically scale data fabric queries

**Note:**  This feature is included in Appian's [advanced and premium capability tiers](Appian_Tiers.html). Usage limits may apply. You can choose to dynamically scale the [data service](Data_Server.html) up and down in response to changes in user and process activity. This dynamic scaling ensures that your application users experience consistent query performance and reduces the need for manual scaling.

Dynamic scaling of the data service is best for applications with high throughput query processing requirements. To start scaling your data fabric queries in your production or performance testing environments, [open a support case](https://community.appian.com/support/).

### Use Extra Long Text fields to store large volumes of data

Text values with more than 4,000 characters will be truncated in Appian. While you can use the truncated data in your apps, it’s best to configure fields with large volumes of data as type **Extra Long Text**.

Extra Long Text fields can store up to 64,000 characters. This allows you to store and display unstructured data, like employee’s yearly performance reviews, in an interface. Extra Long Text fields can be queried in `a!queryRecordType()` or `a!queryRecordByIdentifier()`; however, to ensure optimal performance, you cannot use these fields in filters, sorts, aggregations, or [records-powered components](Using_the_Records_Tab.html#interface-components).

You can configure a field to be type Extra Long Text when you [choose a data source](configure-record-data-source.html) or [generate a database table](create-record-data-source.html). You can also change an existing Text field to type Extra Long Text at any point in development.

To change a Text field to type Extra Long Text:

1.  In the record type, go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  For **Record Field Type**, use the dropdown to select **Extra Long Text**.

    **Tip:**  You should only have a maximum of three Extra Long Text fields on a record type for optimal performance.

    [![images/map-record-fields-unique.png](images/map-record-fields-unique.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img418)

    [![](images/map-record-fields-unique.png)](#_)

4.  Click **FINISH**.
5.  Click **SAVE**.

### API limit to sync rows from Salesforce

When your record type uses Salesforce as the source, syncing 1,000 rows of data requires a single API call. For example, if your record type has 20 million rows, the API limit on your Salesforce instance must be at least 20,000 per day.

If you have multiple record types that use a Salesforce object with data sync enabled, ensure your API limit is large enough to support all your record types. For example, say you have five record types that total to 400,000 rows, and each record type has a scheduled full sync. To successfully sync each record type, you would need at least 120,000 API calls per month.

If the API limit is not high enough, the sync will fail and the record data will be unavailable.

Consider applying [sync filters](records-filter-source-data.html#about-sync-filters) to only sync the most relevant data in your record type.

### Syncing changes from the same database table in multiple record types

When [working with large datasets](#sync-data-from-large-data-sources), you may create multiple record types that point to the same database table, and use source filters to sync different portions of data in each record type.

Whenever you use a [smart service that automatically syncs data](records-data-sync.html#use-smart-services-that-automatically-sync-data) to update data in that database table, Appian will start a sync on each of the record types to capture the changes. After configuring multiple record types that sync to the same database table, you can expect a proportional increase in sync requests.

For applications requiring a high rate of writes, you can use [this pattern](https://community.appian.com/success/w/guide/3623/writing-to-synced-record-types-at-high-throughput) to sync data independently from the writes to the source.

### Unsupported database columns

There are some databases that have unique data types that are not supported in synced record types. In general, Appian does not support binary large object (BLOB), spatial, or XML types, or any user-defined types.

For binary types, you may still be able to manually map a field in your record type to that column, but it is not guaranteed to work correctly and may fail completely with a future version of Appian.

**Note:**  If your table includes `LONG` or `BIGINT` columns, the safe range of values is from `-2,147,483,647` to `2,147,483,647`. Numbers outside that range may not be synced correctly. See the [Number (Integer) data type](Appian_Data_Types.html#number-integer) for more information about number values in Appian.

The following table provides a reference of unsupported data types and may not be comprehensive. Vendor-specific and user-defined types are generally not supported and may cause record types to not sync or other issues.

|
Database Vendor

 |

Unsupported types

 |
| --- | --- |
| IBM DB2 |

-   `BINARY`
-   `BLOB`
-   `DBCLOB`
-   `GRAPHIC`

 |
| Maria DB and MySQL |

-   `BLOB`
-   `BINARY`
-   `LONGBLOB`
-   `MEDIUMBLOB`
-   `MULTILINESTRING`
-   `MULTIPOINT`
-   `MULTIPOLYGON`
-   `POINT`
-   `POLYGON`
-   `TINYBLOB`
-   `VARBINARY`
-   `YEAR`

 |
| Microsoft SQL Server |

-   `binary`
-   `datetimeoffset`
-   `geography`
-   `geometry`
-   `hierarchyid`
-   `image`
-   `rowversion`
-   `sql_variant`
-   `varbinary`

 |
| Oracle |

-   `BFILE`
-   `BINARYDOUBLE`
-   `BINARYFLOAT`
-   `BLOB`
-   `INTERVAL_DAY_TOSECOND`
-   `INTERVAL_YEAR_TOMONTH`
-   `ROWID`
-   `TIMESTAMP_WITH_LOCALTZ`
-   `TIMESTAMP_WITH_TZ`
-   `UROWID`
-   `VARBINARY`

 |
| PostgreSQL |

-   `BIT`
-   `BIT_VARYING`
-   `BOX`
-   `BYTEA`
-   `CIDR`
-   `CIRCLE`
-   `INET`
-   `INTERVAL`
-   `JSON`
-   `JSONB`
-   `LINE`
-   `LSEG`
-   `MACADDR`
-   `MACADDR8`
-   `MONEY`
-   `PATH`
-   `PG_LSN`
-   `PG_SNAPSHOT`
-   `POINT`
-   `POLYGON`
-   `TSQUERY`
-   `TSVECTOR`
-   `TXID_SNAPSHOT`
-   `UUID`
-   `XML`

 |

## How to enable data sync

You'll choose whether to enable data sync when you [configure the source of your record type](configure-record-data-source.html). If you [generate a database table for the record type](create-record-data-source.html), the record type will automatically have data sync enabled.

When configuring the source of your record type, select **Optimized Data Access** to enable data sync.

[![images/enable-data-sync-dialog-option.png](images/enable-data-sync-dialog-option.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img419)

[![](images/enable-data-sync-dialog-option.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...