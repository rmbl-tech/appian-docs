---
source_url: https://docs.appian.com/suite/help/25.3/prepare-data-for-reports.html
original_path: prepare-data-for-reports.html
version: "25.3"
title: "Prepare Data for Data Fabric Insights"
page_id: "prepare-data-for-reports"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Prepare Data for Data Fabric Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers). It describes how to prepare record types for data fabric insights.

## Overview

Data fabric insights allows business users to securely explore [synced record types](about-data-sync.html) as [datasets](allow-users-to-build-reports.html#datasets). Using those datasets, users can build custom reports and dashboards that leverage the record data and other elements of the record type.

To provide users with the best experience, review the following elements of your record type since they will be visible to business users:

-   [Business process metrics](#calculate-business-process-metrics-with-record-events)
-   [Record type display names](#record-type-display-names)
-   [Record type descriptions](#record-type-descriptions)
-   [Field names](#field-names)
-   [Relationship names](#relationship-names)
-   [Data source logos](#data-source-logos)
-   [Summary view](#summary-view)
-   [Record actions](#record-actions)

## Create synced record types to use in data fabric insights

In Process HQ, business users can only access record types with [data sync](about-data-sync.html) enabled. These are often called _synced record types_.

If your applications are built using CDTs and DSEs, or even record types without data sync enabled (_unsynced record types_), you can create new synced record types for the purpose of data fabric insights.

Configuration is simple:

1.  [Create a synced record type](configure-record-data-source.html) and use your existing data source as the source of the new record type.
2.  Configure [record type object security](record-security.html) and [record-level security](record-level-security.html) to easily determine who can see what data.
3.  [Show the record type in the Data Catalog of Process HQ](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets).
4.  [Deploy](Deploy_to_Target_Environments.html) the record type to production.

That’s it! Your data can now be safely explored in data fabric insights with just a few steps. As you [add and update data using Appian smart services](records-data-sync.html#use-smart-services-that-automatically-sync-data), that data will be automatically synced in the record type—empowering business users to build reports with the latest data.

Review the other data preparation below to ensure that it's easily accessible to business users.

## Calculate business process metrics with record events

You can take advantage of [record events](record-events.html) to calculate common success metrics for your business processes.

When you configure record events for a record type, Appian will automatically include the [custom record fields needed to calculate the total duration](record-events-configuration.html#modify-the-base-record-type) for each [instance of your business process](key-pi-terms.html#cases-activities-events).

If you already have record events configured, Appian will prompt you to use the [**Calculate Duration** custom record field template](custom-record-fields.html#calculate-duration-\(real-time-evaluation\)) to quickly add these fields to your record type, so they'll be available in datasets when users build reports.

## Record type display names

Each dataset is labeled with the **Display Name (Plural)** value from the record type.

Review the record type's display name to ensure that it does not include an application prefix and that it can be easily understood by business users.

To edit the record type’s display name:

1.  In your record type, go to **Settings** > **Properties**.
2.  Update the **Display Name (Properties)** as needed.
3.  Click **SAVE CHANGES**.

**Tip:**  Data governors can also [edit a record type's display name](data-governance-page.html#edit-a-record-types-display-name) directly from the **Data Governance** page of Process HQ. Any Data Governance configurations will take precedence over the record type configuration.

## Record type descriptions

When a user hovers over a dataset, they will see the record type's description.

Review the record type's description to ensure it does not include any developer terminology (like "record type" or "data sync enabled"), and that it is useful to a business user. The description should help users understand whether or not this is the information they're looking for.

To edit the record type’s description:

1.  In your record type, go to **Settings** > **Properties**.
2.  Update the **Description** as needed.
3.  Click **SAVE CHANGES** to close the dialog.
4.  Click **SAVE** to save the record type.

## Field names

When a user selects a dataset, they will see a list of fields from the base record type and any one-to-one and many-to-one related record types. They can use these fields to build a grid, chart, or KPI.

To ensure users can easily find the fields they need:

-   **Use camel case formatting for record field names**. A dataset will automatically convert any camel case field names to title case field names so they're easier to read. For example, if you have a record field called `lastName`, it would convert to `Last Name` in the dataset.

-   **Add field display names**. If your record field names contain acronyms or they are not easily understood by business users, you can configure display names on your record fields. Display names allow you to provide users with friendly field names in Process HQ. For example, if you have a record field called `YTDSales`, you can configure a display name of `Year-to-Date Sales` so business users can see an easily understand the field name and purpose.

-   **Logically group record fields together.** The fields in a dataset will appear in the same order as the fields in the record type. Ensure that fields like `firstName` and `lastName`, or `address` and `zipCode` are grouped together in the record type's data structure. This will ensure that the fields appear next to each other when a user selects fields for their report.

The image below illustrates how the fields in the Customer record type appear to business users in a dataset:

[![images/RecordFieldsToDatasetFields.png](images/RecordFieldsToDatasetFields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img776)

[![](images/RecordFieldsToDatasetFields.png)](#_)

To modify fields and the order they appear to business users:

1.  In your record type, go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  Edit the **Record Field Name** to rename a field.
4.  Enter a **Display Name** to provide a user-friendly field name to business users in Process HQ. When this field is blank, the **Record Field Name** is displayed in the dataset using title case format.
5.  Click ![Drag to reorder icon](images/drag-and-drop-icon.png) **Drag to reorder** and place the field in the proper order.
6.  Click **FINISH**.
7.  Click next to a [custom record field](custom-record-fields.html) to add a display name and description. You cannot reorder custom record fields.
8.  Click **SAVE**.

## Relationship names

When a user selects a dataset, the data from any one-to-one or many-to-one relationships will appear under the relationship name. For example, the image below displays the Customers dataset, where the related data appears under the relationship names.

[![images/datasetRelationships.png](images/datasetRelationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img777)

[![](images/datasetRelationships.png)](#_)

Review your relationship names to ensure that they are easily understandable and do not include an application prefix. For example, if you have a relationship name like `ARregion`, you should update the name to `region` so it displays as **Region** in a dataset.

To edit a relationship name:

1.  In your record type, go to **Data Model**.
2.  Under **RELATIONSHIPS**, click the relationship name you want to edit.
3.  Update the **Relationship Name** as needed.
4.  Click **OK**.
5.  Click **SAVE**.

## Data source logos

Each dataset will display the data source of the base record type and its related record types using vendor logos. The vendor logos that appear on a dataset are the same as the logos that appear in the record type relationship diagram.

A dataset will automatically display the logos for any [Appian supported databases](System_Requirements.html#databases) and [certain connected systems](Connected_System_Object.html).

The following connected systems will _not_ automatically display a vendor logo, but you can manually configure a logo to display:

-   [HTTP Connected System](http-connected-system.html).
-   [OpenAPI Connected System](openapi-connected-system.html).
-   [Custom JDBC Connected System](custom-jdbc-connected-system.html).

To display a vendor logo for these connected systems, select an image for the **System Logo** in the connected system's properties.

## Summary view

When users configure a grid in a report, they can add links to each record’s [summary view](record-view.html#default-record-views). By default, the link will open in the [**Default Start Page**](Appian_Administration_Console.html#user-start-pages) configured in the Admin Console, and display the summary view configured on the base record type.

Ensure a [summary view is configured](record-view.html#generate-a-record-view) on the record types available in data fabric insights. If no summary view is configured, only the [record title](record-view.html#record-title) will display when users open the link.

**Tip:**  If you don't have a summary view configured on a record type, you can quickly [generate one](record-view.html#generate-a-record-view).

## Record actions

In addition to links to the summary view, users can also display [record actions](record-actions.html) on a grid in a report.

Users can only display record actions from the base record type, and they must have [permission to the record action](record-action-security.html). Review the record actions are available on your record types, and ensure that users have the necessary permissions to access those actions.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...