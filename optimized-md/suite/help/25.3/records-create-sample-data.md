---
source_url: https://docs.appian.com/suite/help/25.3/records-create-sample-data.html
original_path: records-create-sample-data.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create Sample Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use Appian AI to Generate Sample Data

Need test data for your new record types? In this tutorial, you’ll learn how to use Appian AI Copilot to quickly generate sample data for your applications.

This page describes how to create AI-generated sample data for your record type.

## Overview

When you [create a new record type](Create_a_Record_Type.html), you'll often need to fill it with test data to see how different parts of your application interact. Develop and test your applications faster by generating this sample data with artificial intelligence (AI). With [Appian AI Copilot](appian-ai-copilot.html), you can automatically create realistic record data for existing record types and bypass lots of manual entry. This capability provides [secure](private-ai.html), authentic record data suitable for effective demos and in-depth testing.

For more complex setups, like a fully developed application environment, you can create sample data for the record type and its related record types all at once. This approach is more efficient than updating each record type individually.

[![images/sdg-example.gif](images/sdg-example.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img555)

[![](images/sdg-example.gif)](#_)

## Requirements and intended use

This capability is available only for record types that use an [existing database](configure-record-data-source.html#connect-to-a-database) as their source and have [data sync enabled](records-data-sync.html). It's not meant for performance simulation or identifying issues in production environments.

AI Copilot can create sample data for a record type and any of its one-to-many related record types. However, AI Copilot cannot create sample data:

-   for record types that do not use an integer as their primary key.
-   when you do not have at least **Viewer** permission to the record type or its related record types.
-   when the relationship from the base record type to the related record type is not [configured to write and delete related records](record-type-relationships.html#write-and-delete-related-records).
-   for related record types that are part of a one-to-one or many-to-one relationship.
-   for custom record fields.

### Compliance

You must contact Appian Support to enable this feature. This capability is available only on Appian Cloud.

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

## How it works

-   When you generate sample data, [Appian AI Copilot](appian-ai-copilot.html) uses the record type's name, its user-friendly display name and descriptions, as well as its field names to create preliminary sample data.
-   To further tailor the generated data, you can use [advanced configuration options](#advanced-configuration) to provide AI Copilot with detailed instructions on the type of data to generate.
-   If your record type has one-to-many [relationships](record-type-relationships.html), you can also create sample data for those related record types.
-   Once you are satisfied with the sample data, AI Copilot writes your customized sample data to your database table. The sample data also appears on the **Data Preview** tab and is ready to go wherever your record type is in use.

### Related record types

If your base record type has related record types, a different screen displays before the sample data is presented. Here you can choose whether you want to create sample data for your related record types. If you don't want to make sample data for some related record types, just clear the checkbox next to their names.

[![images/sdg-related-checkbox.png](images/sdg-related-checkbox.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img556)

[![](images/sdg-related-checkbox.png)](#_)

If you have trouble creating sample data because of related record types, a screen will display and show you which ones are causing the issues. See [Related record type issues](#related-record-type-issues) in the [Troubleshooting](#troubleshooting) section for more detailed information.

## Create and preview sample data

To create sample data:

1.  In the record type, go to **Data Preview**.
2.  Click **GENERATE SAMPLE DATA**.
    ![screenshot showing where the generate sample data button is in the UI](images/generate-sample-data-btn.png)
    **Result**: [Appian AI Copilot](appian-ai-copilot.html) analyzes your record type's name, its user-friendly display name and descriptions, as well as its fields. Using this information, it creates preliminary sample data and presents it on the Create Sample Data screen. However, depending on your data model's configuration, one of the following results may occur instead.

    | **If there are related record types that you…** | **Then…** |
    | --- | --- |
    | can create data for              | a screen displays where you can choose whether you want to create sample data for your related record types. Clear the checkbox next to any related record types for which you don't want to create sample data. |
    | [cannot create data for and they currently don't have data](#related-record-type-issues) | a screen displays with a list of the related record types that your record type depends on. These related record types either don't contain data or you can't access them. To continue, insert sample data in the related record types or if access is an issue, contact your system administrator. After the issue is resolved, you can return to your base record and try to again. |

3.  Review the [advanced configuration options](#advanced-configuration) and make any necessary adjustments.
4.  Click **Insert**.
    **Result**: Your customized sample data is written to your database table and appears in the **Data Preview** tab, ready to go wherever your record type is in use. Note that if you're inserting data into a record type that already contains 60 or more records, the new sample data may not be visible on the Data Preview tab.

## Advanced configuration

With the advanced configuration options, you can customize your sample data exactly how you want it: select the specific number of records, choose which fields to include, and add any special instructions.

To display the advanced configuration options, click **Show Advanced Configuration**. Click **Hide Advanced Configuration** to collapse the panel.

[![images/sample-data-advanced-config.png](images/sample-data-advanced-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img557)

[![](images/sample-data-advanced-config.png)](#_)

| **Option** | **Description** |
| --- | --- |
| **How many records do you want to generate?** | Choose how much sample data you need - 10, 25, or 50 new records. |
| **How many records do you want to generate for each base record?** | (Related record types only) Choose how much sample data you need - 1, 2, or 3 new records for each base record that gets created. |
| **Record Fields** | Select which details you want to create. AI Copilot will create sample data for the record fields you select. Clear the checkbox next to the field(s) that you don't want sample data for. Primary key and relationship fields are automatically selected and locked to prevent deselection. This safeguard ensures their connections remain intact. |
| **Additional Instructions** | Tell AI Copilot about any specific details you want it to consider when creating your sample data. For example, you could provide details about what to include or avoid. For example, you can enter something like this: `Include a range of 50 to 90 percent in the discount column.` |
| **REFRESH ALL DATA** | Click **REFRESH ALL DATA** to simultaneously regenerate sample data for both the base record type and any related record types, provided you're also creating data for related record types. |

## Edit sample data from the record type

Once you have created your sample data, you can edit the generated data or add entire new rows of sample data directly from the **Data Preview** page in the record type.

To add a new row, simply click **ADD ROW** and enter the sample data for one or more new rows to include in the record type.

To edit a field value in an existing row of data, click the edit icon next to any row and make the necessary changes.

Once you're done adding and editing rows, you'll see your changes above the grid in a **Write Changes** section. You must click the **Write Changes** button to apply these changes to the source data, even if you click the **Save Changes** button on the record type.

## Troubleshooting

### Related record type issues

If your record type depends on related record types that do not have any data, you might see a message like this:

_These are related record types that your record type depends on, but they don't contain data or you can't access them. To continue, insert sample data in the related record type(s) or if access is an issue, contact your system administrator._

[![images/sdg-relatedrecordtype-missingdata.png](images/sdg-relatedrecordtype-missingdata.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img558)

[![](images/sdg-relatedrecordtype-missingdata.png)](#_)

To resolve this issue:

1.  **Verify related record types**: Verify that your current record type truly depends on the identified related record types and that they have data.
2.  **Populate related record types first**: If the related record types are empty, populate them with sample data first. After they have sample data, return to your base record type to create and insert its sample data.
3.  **Check Access Permissions**: If the related record types contain data but you're unable to access them, it's likely an issue with your permissions. Contact your system administrator if access is an issue.

### Why you might not get all the records you asked for

If AI Copilot doesn't return the requested amount, several factors might be at play:

-   AI Copilot might not have access to a sufficient amount of relevant data to fulfill the request, leading to fewer rows of sample data being generated.
-   For highly specialized or complex data requests, AI Copilot may create fewer records, prioritizing the quality and relevance of the sample data over quantity to ensure the sample data is both accurate and valuable.
-   AI Copilot is programmed to avoid generating data that could be misused, contain sensitive information, or inadvertently create privacy issues.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...