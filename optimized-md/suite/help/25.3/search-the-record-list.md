---
source_url: https://docs.appian.com/suite/help/25.3/search-the-record-list.html
original_path: search-the-record-list.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Customize the Record List Search

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to customize the out-of-the-box search on the record list. See [Add User Filters](filter-the-record-list.html) to allow users to filter the record list.

## Overview

Each record type includes a fully configured search box available on the [record list](record-list.html) and any [records-powered grids](Using_the_Records_Tab.html#read-only-grid). By default, users can search by all Text and Number fields included in the record list or grid.

You can customize the search by choosing which fields to search on and changing the search's placeholder text. Alternatively, you can hide the search box if you're only working with a small number of records.

For example, in a Support Case record type, you may have a record list with 20 columns and thousands of rows of data. To improve the search performance and make your search more precise, you could limit the search to only the `caseId` field. Then, you could change the placeholder text to say, `“Search Case Number”` so users know what to search by.

![Search section of RTD](images/search-configuration-records.png)

## Limit search to selected fields

**Note:**  This option is not available on [unsynced record types](Record_Type_Object.html#synced-and-unsynced-record-types) that use a Salesforce object or other web service as the source.

When working with large sets of records, or a record list with numerous columns, you can improve the search performance and precision by limiting the search to certain fields.

To limit the search to only certain fields:

1.  In your record type, go to **Filters**.
2.  Under **Search**, select the **Limit search to selected fields** checkbox.
3.  Select up to 10 record fields or related record fields of type Text, Number (Integer), User, or Group.

    **Tip:**  Appian does not recommend selecting fields from a one-to-many relationship since it may impact performance.

4.  Click **SAVE**.

## Customize the search placeholder

The search placeholder is the text that appears in the search box when it's empty. By default, the placeholder text is "Search" followed by the record type's display name. For example, "Search Support Cases".

If you [limit the fields to search on](#limit-search-to-selected-fields), consider making your placeholder text more specific to explain what fields a user can search.

To customize the search placeholder:

1.  In your record type, go to **Filters**.
2.  Under **Search**, select the **Use custom placeholder** checkbox.
3.  Enter an expression to display as the placeholder text.
4.  Click **SAVE**.

## Hide the search box

By default, the search box is configured to show on the record list. However, if you're working with a small set of records, you may consider hiding the search box.

When you hide the search box, you are only hiding it from the record list. You can still [show the search box on any records-powered grid](Paging_Grid_Component.html), and users will be able to search across all fields in the grid.

To hide the search box from the record list:

1.  In your record type, go to **Filters**.
2.  Under **Search**, clear the **Show search box** checkbox.
3.  Click **SAVE**.

## Enable search for unsynced service-backed record types

For [unsynced service-backed record types](configure-record-data-source.html#unsynced-web-service), you'll need to enable search for your record list and records-powered grids.

Before enabling search, make sure your [record data source expression](configure-record-data-source.html#create-a-record-data-source) and [integration](configure-record-data-source.html#create-an-integration) have a rule input of type [Text](Appian_Data_Types.html#text).

If not, update the expression and integration before completing these steps.

To enable search on an unsynced service-backed record type:

1.  In the record type, go to **Data Model**.
2.  For **Search Text**, select a rule of type Text.

    **Note:**  You can also [enable paging](record-list.html#enable-paging-for-unsynced-service-backed-record-types) for your record list and records-powered grids.

    [![image](images/Create_Record_Type/Paging_and_Search_Dropdowns.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img588)

    [![](images/Create_Record_Type/Paging_and_Search_Dropdowns.png)](#_)

3.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...