---
source_url: https://docs.appian.com/suite/help/25.3/Record_Type_Object.html
original_path: Record_Type_Object.html
version: "25.3"
title: "About Record Types"
page_id: "Record_Type_Object"
section: "About record types"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Record Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

What are Record Types?

Watch this video from the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) for a quick overview of the record type. If you're new to using record types in Appian, check out [this Academy Online course](https://academy.appian.com/#/online-courses/5b2907c2-2c77-4431-a91d-a5b80942b522) before getting started.

This page describes the record type object. If you're already familiar with the record type, learn how to [create a record type](Create_a_Record_Type.html) in your application.

## About record types

A record type is a design object that allows you to structure and model your enterprise data so you can easily build data-centric applications.

Each record type represents a major business concept or process in your organization. For example, in an order fulfillment organization, you could have record types for Products, Inventory, Order Submissions, and Customers since these are primary concepts and activities involved in the organization.

You can have as many record types as you need to represent your [data model](data-modeling-with-appian-records.html). In our order fulfillment example, this means that you could have numerous record types, as illustrated in the image below.

[![images/recordTypesConnected.png](images/recordTypesConnected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img364)

[![](images/recordTypesConnected.png)](#_)

Once you've configured your record types, you can use them to [reference data](Using_the_Records_Tab.html) throughout your applications—in interfaces, expressions, process models, and more.

## Synced and unsynced record types

When you create a record type, you can choose whether or not to enable [data sync](about-data-sync.html) on the record type. Record types with data sync enabled are called _synced record types_, while record types without data sync enabled are called _unsynced record types_.

Based on your application requirements, you may use a combination of synced and unsynced record types to build your application.

For example, let's say the Appian Retail company needs to create an application to track and manage orders. This company has over 7 million rows of order data. To build their application, the Appian Retail company could create synced and unsynced record types to manage order data and use throughout the application.

[![images/synced_and_unsynced_records_graphic.png](images/synced_and_unsynced_records_graphic.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img365)

[![](images/synced_and_unsynced_records_graphic.png)](#_)

The sections below provide examples of where you could use these record types in your applications.

### Example: Active orders record type

The core requirement of the Appian Retail application is to allow employees to process orders. This includes tasks like verifying customer details and product availability, processing payments, and sending order confirmations.

Since these tasks only apply to active orders, you could create a synced record type called **Active Orders** and only sync orders that are currently in progress. Then, you can use this record type to build review forms, process models to process payments and send confirmations, and build a report that allows employees to monitor the status of their active orders.

Since the record type has data sync enabled, you can also leverage features like [record-level security](record-level-security.html) to easily ensure that employees can only see orders they're assigned to, and add [relationships](record-type-relationships.html) to other record types so you can display related data (like customers associated with each order).

[![images/active_orders_synced_example.png](images/active_orders_synced_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img366)

[![](images/active_orders_synced_example.png)](#_)

### Example: Closed orders record type

Another application requirement is to allow managers to review how many orders their direct reports completed each month, so they can assess employee performance at the end of the year.

Since this task only applies to closed orders, you could create a synced record type called **Closed Orders** and only sync orders that are complete within the last year. Then, you could use this record type to build a company-wide report on orders completed by month and share with all managers.

Since this record type has data sync enabled, you can also show this record type in [data fabric insights](allow-users-to-build-reports.html) so managers can build their own custom reports that focus on their specific employees.

[![images/closed_orders_synced_example.png](images/closed_orders_synced_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img367)

[![](images/closed_orders_synced_example.png)](#_)

### Example: Orders record type

In addition to managing and monitoring recent orders, the company also wants to analyze how overall order trends have changed over the years.

Since this task relies on orders from the last few years, you could create an unsynced record type called **Orders** that displays all 7 million rows of data. Then, you could use this record type to create a report on order trends for the last five years.

[![images/orders_unsynced_example.png](images/orders_unsynced_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img368)

[![](images/orders_unsynced_example.png)](#_)

Since you're querying a large volume of source data, you may need to create additional indexes, views, caches, or other tuning to optimize query performance in the source system. By syncing subsets of the data in the **Active Orders** and **Closed Orders** record types, you can take advantage of automatic performance tuning and [sync-enabled features](about-data-sync.html#what-is-data-sync) in targeted areas of your application.

### Example: Dashboard using all record types

One of the final application requirements is to provide executives with a comprehensive overview of the company's sales and order performance over different time periods. Using all of the record types above, you could create a dashboard that displays an analysis of orders from the last five years, year-to-date order sales, key performance indicators (KPIs) of new orders, and even a breakdown of orders by customer.

[![images/synced_and_unsynced_recordType_dashboard.png](images/synced_and_unsynced_recordType_dashboard.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img369)

[![](images/synced_and_unsynced_recordType_dashboard.png)](#_)

## Elements of a record type

Each record type contains the following elements:

| Element | Description |
| --- | --- |
| **Record data** | The data available in the record type, including your source data and any [custom record fields](custom-record-fields.html). This data can be [unified](record-type-relationships.html), [filtered](records-filter-source-data.html), [secured](appian-records-security.html), and referenced using the record type object. |
| **Records** | Each row of data in the record type. For example, in a Customer record type, a single record would be John Smith. |
| **Record views** | One or more interfaces that displays information about a single record. You can use a combination of [interface components](SAIL_Components.html) and data to create a comprehensive view of the record. By default, each record has a [summary view](record-view.html#default-record-views). |
| **Record list** | A single, drillable [list](record-list.html) that users can [search and filter](filter-the-record-list.html) to find records. |
| **Record actions** | Links to process models that a user can start directly [from a record](record-actions.html#related-actions) or [from the record list](record-actions.html#record-list-actions). This allows users to create, update, or delete data while viewing the data. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...