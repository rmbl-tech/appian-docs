---
source_url: https://docs.appian.com/suite/help/25.3/use-synced-record-types-in-existing-apps.html
original_path: use-synced-record-types-in-existing-apps.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use Synced Record Types in Existing Apps

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

3 Tips for Using Data Fabric in Your Existing Apps

Check out these three quick tips for how you can use Appian’s data fabric in your apps.

## Overview

Appian's data fabric is powered by [record types](Record_Type_Object.html). When you enable [data sync](about-data-sync.html) on your record types, you unlock [powerful features](about-data-sync.html#what-is-data-sync) that help accelerate application development. We call these _synced record types_.

If you’re working on an existing application that was built before data fabric, your application may be built using [custom data types (CDTs)](Custom_Data_Types.html) or [data store entities (DSEs)](Data_Stores.html). You might think this means you need to refactor your existing app entirely, but that’s not the case.

Instead of refactoring, you can simply add new synced record types into your existing app. Then, you can get started right away [using features like Process HQ and AI, and building new additions to your app](#benefits-of-using-synced-record-types-in-existing-apps)—all while keeping your synced data up to date with the source.

[![images/general-synced-records-flow.png](images/general-synced-records-flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img592)

[![](images/general-synced-records-flow.png)](#_)

## Benefits of using synced record types in existing apps

You can easily incorporate synced record types into your existing applications by [creating new record types](Create_a_Record_Type.html) that connect to the same data source as your existing DSEs.

This way, you can use your existing DSEs and CDTs to maintain your current interfaces, queries, and process models, and you can use the new synced record types to:

-   **Use Process HQ**. Business users can explore data from synced record types in [Process HQ](processhq.html). By simply creating a synced record type and enabling the [Show in Data Catalog setting](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets), users can instantly start exploring their data fabric and building custom reports and dashboards.

-   **Use AI features**. Features such as the [records chat component](Records_Chat_Component.html) and [AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric) are only available for use with synced record types. By creating synced record types to use AI features, you can allow business users to be more productive and easily gain new insights about your organization.

-   **Build new additions to your applications**. If you're adding a new report or dashboard to your application, consider creating synced record types to use in your interface. This way, you can leverage features like [record type relationships](record-type-relationships.html) and [custom record fields](custom-record-fields.html) in your interface, and experience faster performance since data sync can make your applications overall more performant.

## How to use synced record types in existing apps

Appian does not recommend refactoring your entire existing application to use record types instead of CDTs and DSEs. This is because you don’t need to. You'll get the most benefits by using synced record types [in Process HQ and in new additions to your app](#benefits-of-using-synced-record-types-in-existing-apps).

Additionally, when you use a synced record type that connects to the same database as your existing CDTs and DSEs, your process models are likely already set up to update and sync data in the record type. This is because creating or updating data using [certain smart services](records-data-sync.html#use-smart-services-that-automatically-sync-data), like Write to Data Store Entity and Delete to Data Store Entity, will also automatically sync the data in the record type.

## Example

Let's look at an example of how you can incorporate synced record types into an existing application.

### Existing application objects

Imagine you're a developer working on the Appian Retail application. This app was built a few years ago, so it only uses CDTs and DSEs to write and display data.

For example, the Order DSE and Order CDT are used to build record views, queries, and process models that display and update order data.

[![images/existingDataModel.png](images/existingDataModel.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img593)

[![](images/existingDataModel.png)](#_)

Now, the Appian Retail company wants to allow employees to build self-service reports in Process HQ, and they want you to add more enhancements to existing interfaces in the app.

### Use Process HQ

To allow users to access data so they can build reports, you can [create synced record types for Process HQ](prepare-data-for-reports.html#create-synced-record-types-to-use-in-data-fabric-insights) that use the same data source as the existing DSEs.

For example, you could create a synced Orders record type that connects to the same database table as the Orders DSE. Once you [enable the record type to show in the Data Catalog](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets), business users can instantly build order reports, and ask questions to [AI Copilot](allow-users-to-build-reports.html#ai-copilot) to gain real-time insights into their data.

[![images/ordersRecordTypePHQ.png](images/ordersRecordTypePHQ.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img594)

[![](images/ordersRecordTypePHQ.png)](#_)

### Build new additions to the app

You can also leverage the Orders record type to build new additions to the application. For example, you have an interface that uses the Orders CDT and DSE to show profit and revenue for orders. However, stakeholders have long requested more key performance indicators (KPIs) on this interface so they can quickly understand the current state of the business.

You can enhance your existing interface by adding new charts and KPIs that use the Orders record type as the source. Using a record type is the fastest and easiest way to configure a component, so you can display key information in just a few clicks.

You could even add [custom record fields](custom-record-fields.html) on your Orders record type to aggregate data and then use those fields to display and sort data in your interface.

[![images/ordersRecordTypeInterface.png](images/ordersRecordTypeInterface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img595)

[![](images/ordersRecordTypeInterface.png)](#_)

### Seamlessly keep data the record type up to date

Now that you're using the Orders record type in Process HQ and in your application, you want to ensure that the record type always has the latest order data.

Since the Orders record type uses the same database table as the Orders DSE, your existing process models are already set up to write and update order data. Your process models also use the **Write to Data Store Entity** smart service, which is a [smart service that automatically syncs data](records-data-sync.html#use-smart-services-that-automatically-sync-data), so any data changes will be immediately synced and available in the record type.

[![images/immediateSyncOrders.png](images/immediateSyncOrders.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img596)

[![](images/immediateSyncOrders.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...