---
source_url: https://docs.appian.com/suite/help/25.3/excel-guidance.html
original_path: excel-guidance.html
version: "25.3"
title: "Using Excel with Appian"
page_id: "excel-guidance"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Using Excel with Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Microsoft Excel is a powerful tool that many businesses are familiar with to organize and communicate data. Consequently, your business processes may require interacting with Microsoft Excel - either by reading, writing, or manipulating data within a workbook. Appian has multiple capabilities to automate working with Excel.

Because the strategy you use to interact with Excel depends on your purposes and the data involved, we've assembled guidance and tips to improve your design experience. This page describes how and when to use Excel features in Appian based on your goals.

-   [Read data from an Excel workbook](#read-data-from-an-excel-workbook)
-   [Write data to an Excel workbook](#write-data-to-an-excel-workbook)

## Best practices for using Appian and Excel

Record types have built-in functionality to export records to Excel. Once enabled, anyone with access to the record list or a records-powered grid can use this option if they need to present the data in Excel format, or perform analysis on record data using Excel.

Records contain data of many types and structures, which can impact how it appears in the exported Excel workbook. Learn how to [optimize record lists for export to Excel](Optimizing_Record_Lists_for_Export_to_Excel.html).

In general, if you need to work with larger Excel files (file size, numbers of rows) we recommend using the actions within the RPA [**Excel: License Required**](rpa-9.17/actions-excel-license-required.html) module when possible. The **Excel: License Required** module doesn't rely on the agent’s memory the way the **Excel: License Not Required** module does, and therefore is more performant and can handle more data.

## Read data from an Excel workbook

You can read from an Excel workbook by using the recommended smart services, plug-ins, or RPA actions listed in the table below.

We recommend using the smart services and functions included in the Excel Tools plug-in. Use RPA if you need more sophisticated functionality. Note that [RPA requires additional infrastructure](rpa-9.17/rpa-system-requirements.html#host-machine-requirements) and other considerations around robot availability and management, so you’ll want to carefully consider if other features meet your needs.

| I'm trying to… | Use… |
| --- | --- |
| Read data from an XLSX or CSV file | **Import CSV to Database** or **Import Excel to Database** smart services in the [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools). |
| Read data from XLS, XLSM, XLSB file | [Get value action](rpa-9.17/actions-excel-nolicense.html#get-value) in a robotic task. |
| Read data from multiple sheets in Excel where the number of sheets is dynamic | In a robotic task, use the [Get worksheet names action](rpa-9.17/actions-excel-nolicense.html#get-worksheet-names) to count the number of worksheets. Then, [build a loop](rpa-9.17/actions-general.html#loops) with the [Get value action](rpa-9.17/actions-excel-nolicense.html#get-value). |
| Read a specific cell, row, or column from a file | **Read Excel Cell by Name** or **Read Excel Cell by Number** functions in the [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools)

or

[Get value action](rpa-9.17/actions-excel-nolicense.html#get-value) in a robotic task. |

### Performance considerations

If you want to import a large amount of data (20,000+ rows) into an Appian database, but are unable to do so using out-of-the-box capabilities due to your file type, use RPA to manipulate the file first. For example, you can use RPA to convert an Excel file to an XLSX file. By converting the file, the data can be structured in a way that is easily read and loaded into an Appian database using plug-ins or smart services, which can improve performance and reduce errors.

If for some reason this isn’t feasible and you need to use only RPA actions, design your robotic task to extract data in batches and leverage the [**Start Process** action](rpa-9.17/actions-appian-services.html#start-process) to send the data to the process iteratively. This design pattern prevents a mass storage of data into a single process variable, which could lead to memory issues.

## Write data to an Excel workbook

You can read from an Excel workbook by using the recommended smart services, plug-ins, or RPA actions listed in the table below.

Use Appian smart services for data export and document generation. RPA provides more sophisticated functionality, if needed.

| I'm trying to… | Use… |
| --- | --- |
| Write record list to an XLSX file | Configure the [Export to Excel](Optimizing_Record_Lists_for_Export_to_Excel.html) option for your record lists |
| Write transactional data from a database to an XLSX file (no formatting needed) | [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) smart service. If multiple tabs need to have data, use multiple nodes of this smart service. |
| Write transactional data to CSV | [Export Data Store Entity to CSV](Export_To_CSV_Smart_Service.html) |
| Write transactional data to [a template with supported formatting](Export_To_Excel_Smart_Service.html#exporting-data-to-a-formatted-excel-sheet) | [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) smart service |
| Write transactional data to [a template without supported formatting](Export_To_Excel_Smart_Service.html#exporting-data-to-a-formatted-excel-sheet) | [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Write formatted text into an Excel file | [Write into worksheet](rpa-9.17/actions-excel-nolicense.html#write-into-worksheet) in a robotic task. |
| Write formulas into an Excel file | [Write into worksheet](rpa-9.17/actions-excel-nolicense.html#write-into-worksheet) in a robotic task. |
| Write data to an XLSM, XLSB, or XLS | [Write into worksheet](rpa-9.17/actions-excel-nolicense.html#write-into-worksheet) in a robotic task. |
| Export data from a grid | Call [a!exportDataStoreEntityToExcel()](Export_To_Excel_Smart_Service.html) from the interface |
| Update specific cells in a particular sheet | [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) using the Custom Cell Positions and Custom Cell Values input parameters |
| Export more than 50 columns | [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Export with a custom sort (not the primary key) | [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Write calculated fields into an Excel file | Use Appian expressions and update fields in the database, then use [Export Data Store Entity to Excel](Export_To_Excel_Smart_Service.html) |

### Performance considerations

If you plan to use the **Excel: License Not Required** module to write data into a workbook, keep in mind the number of rows and columns you need to write. The more columns of data you have, the fewer rows you can write before running into an out of memory exception. Additionally, opening big files with the **Excel: License Not Required** module may decrease the performance of the RPA agent. To handle larger files with the **Excel: License Not Required** module, increase the agent memory manually through the configuration file.

When writing data to Excel, keep in mind that there are limits for querying certain data types in Appian:

-   [Query Record Type Limits](fnc_system_queryrecordtype.html).
-   [Query Limits to External Databases](Post-Install_Configurations.html#query-limits-to-external-databases).

To stay within these limits, [build loops](rpa-9.17/actions-general.html#loops) in your robotic task to write data to the workbook in batches.

## Additional Excel actions

The below table provides the recommended smart services, plug-ins, or RPA actions, that will enable you to manipulate and format an Excel file.

| I'm trying to… | Use… |
| --- | --- |
| Merge Excel workbooks | **Merge Excel Documents** in the [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Convert an XLSX to a CSV | **Convert Excel to CSV** in the [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Protect an Excel workbook with password | **Encrypt Excel with Password** smart service in the [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Convert any Excel file extension to another Excel file extension (XLSX, XLS, XLSB, XLSM, CSV) | [Save workbook as](rpa-9.17/actions-excel-nolicense.html#save-workbook-as) in a robotic task.

or

For XLSX to CSV, use [Excel Tools Plug-in](https://community.appian.com/b/appmarket/posts/excel-tools) |
| Run a macro. For example, to refresh or generate a chart | [RPA keyboard shortcuts](rpa-9.17/actions-keyboard.html#press-keyboard-shortcuts) |
| Manipulate a file. For example, by inserting rows or deleting rows. | [Insert row or column](rpa-9.17/actions-excel-license-required.html#insert-row-or-column) in a robotic task.

or

[Delete from row or column](rpa-9.17/actions-excel-license-required.html#delete-from-row-or-column) in a robotic task. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...