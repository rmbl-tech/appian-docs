---
source_url: https://docs.appian.com/suite/help/25.3/Optimizing_Record_Lists_for_Export_to_Excel.html
original_path: Optimizing_Record_Lists_for_Export_to_Excel.html
version: "25.3"
title: "Export Records to Excel"
page_id: "Optimizing_Record_Lists_for_Export_to_Excel"
section: "How can I export data to Excel?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Export Records to Excel

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides information for the most commonly asked questions around exporting records to Excel.

## How can I export data to Excel?

There are two methods of exporting to Excel:

-   Exporting from a [records-powered grid](Paging_Grid_Component.html#using-records-powered-grids) or a [record list](record-list.html#add-an-export-to-excel-button). These options are typically used when a user would like to export data from an interface and apply filters from a grid.
-   Using the [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) or [Export Process Report to Excel](Export_Process_Report_Excel_Smart_Service.html) smart services. These smart services are commonly used when exporting data within a process model to use within integrations.

**Note:**  Users should only export data from your application or sites. You should not export grid data from an interface in Appian Designer.

## How much data can be exported?

The amount of data that can be exported is determined by row and column limits.

In all scenarios, exports are limited to 50 columns. However, the row limit varies across export method and data source.

### Export limit for record lists and read-only grids

When exporting data from a record list or read-only grid, the record type’s data source will impact how much data can be exported:

|
Record Type Data Source

 |

Export Limit

 |
| --- | --- |
| Database | 100,000 rows |
| Web service |
| Process Model | 10,000 rows |

The _Export to Excel_ button will be disabled if the list or grid exceeds the maximum amount. As such, Appian recommends adding a user filter to record lists or grids that exceed these limits. This will allow users interacting with the record list or grid to filter the records below the limit and export them to Excel.

### Export limit from a smart service

Depending on the smart service, you can export a different amount of data:

|
Smart Service

 |

Export Limit

 |
| --- | --- |
| Export Data Store Entity to Excel | None\* |
| Export Process Report to Excel | 10,000 rows |

\* To prevent the export from timing out, Appian recommends limiting exports to 100,000 rows or fewer.

## How do you optimally export data from one-to-many relationships?

When configuring a record list or read-only grid, Appian recommends displaying one-to-many related data using a related record field reference instead of using a relationship reference. This avoids querying more data than necessary, which can impact the grid's performance and cause the grid to exceed the maximum amount of data that can be exported.

For example, to display a list of cases associated with each customer, you should use the related record field reference `recordType!Customer.relationships.cases.fields.title` in the grid column. You should _not_ use the relationship reference `recordType!Customer.relationships.cases` since it will return all related record fields—like the case title, created on date, and status—which could ultimately display more than the record limit for export to Excel.

Additionally, if possible, Appian recommends using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function to filter and limit the number of related records returned for each base record. This will make your list or grid easier to read, and also assist with performance.

## How do you avoid query timeouts when exporting data?

Exporting data from either record lists or smart services relies on sorting the entity by its primary key. This sorting ensures that data is exported consistently—that is, all rows are exported and no row is exported more than once.

Designers should adhere to [Database Performance Best Practices](https://community.appian.com/w/the-appian-playbook/197/database-performance-best-practices) when creating their schema relationships. Because database views do not have a primary key, or the ability to have indexes, Appian recommends exporting data only from record types sourced from tables or materialized views in order to avoid query timeouts with large data sets.

## How is data exported?

When you export the record list, the way the Appian components appear in Excel may differ. Since Excel has its own formatting and styling restrictions, consider how the following components will display in Excel when designing your record list.

You can also customize the format for exporting columns from a read-only grid using the [_exportWhen_](Paging_Grid_Component.html#export-data-to-excel) parameter. This allows you to display alternative data when there are limitations on what can be exported in the column.

### Exporting rich text

Excel supports only one text format per cell. Therefore, if the text in the cell includes more than one text format it will export without formatting. This includes text formatted with links, different [rich text types](Rich_Text_Component.html#rich-text-types), and different formats using [rich text item](Styled_Text_Component.html).

Additionally, for [rich text icons](Styled_Icon_Component.html), only the value of the _altText_ parameter will be exported. If the _altText_ parameter doesn't have a value, nothing will be exported.

### Exporting images

Images cannot be exported to Excel, but image captions can. Add captions to the images in your record list or grid to make sure that information is exported.

Within your captions, you can add links to allow users to learn more. Depending on how you configure the caption and the link, the export results may vary.

For example:

-   An image with a caption and a nested link will export the image's caption and the corresponding hyperlink.
-   An image with no caption and a supported nested link will export the nested link as text and as a hyperlink.
-   An image with no caption and an [unsupported nested link](#exporting-links) will export the nested link label as text.

If your record list or grid displays an image without captions, then the _document_ parameter on the [document image](Document_Image_Component.html) or the _source_ parameter on the [web image](Web_Image_Component.html) will be exported.

### Exporting grid background colors

Read-only grid background colors cannot be exported to Excel. Instead, you can save the page as a PDF if you want to share the grid to those without access to your app.

### Exporting links

Excel only supports one link per cell. If multiple links are provided, Appian will export the link label followed by each link URL as text in parenthesis.

All link types will export as expected _except_ for these three:

-   [Dynamic Link](Dynamic_Link_Component.html)
-   [Start Process Link](Start_Process_Link_Component.html)
-   [Authorization Link](authorization_link_component.html)

These link types will export as text.

## Why is export for unsynced service-backed record types disabled by default?

[Unsynced record types that use a web service](configure-record-data-source.html#unsynced-web-service) as the source require additional logic to handle [paging, sorting, searching, and filtering](configure-record-data-source.html#unsynced-web-service). Therefore, the _Export to Excel_ button is not displayed by default on a record list or read-only grid that uses an unsynced service-backed record type. This is to ensure developers test the additional logic prior to enabling it.

To test the expression's paging, sorting, searching, and filtering functionality:

1.  In the record type, go to **List**.
2.  Under **URL**, click the link. The record list displays where you can try paging, sorting, searching, and filtering the list.

Once you test your expression's configuration, you'll need to review the record list or grid's supported page size.

When record lists are displayed on a web or mobile device, it is typical to have a small page size, like 25 or 50 records. Since record lists and grids are exported using batches to minimize memory usage, developers must support a page size of 1,000 records, which is the page size used when exporting service-backed records. Make sure to test your Web API or integration with this page size to determine whether the export operation will succeed.

Finally, Appian recommends testing the export to Excel functionality before deploying.

To test the export to Excel functionality:

1.  In the record type, go to **List**.
2.  Select the **Show Export to Excel Button** checkbox.
3.  Click **SAVE**.
4.  Under **URL**, click the link. The record list appears.
5.  Click **Export to Excel** a few times to test for any errors. Any error raised by the source expression will be logged to the Excel file. Use the error message for further troubleshooting.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...