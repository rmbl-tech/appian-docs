---
source_url: https://docs.appian.com/suite/help/25.3/common-preparations.html
original_path: common-preparations.html
version: "25.3"
title: "Common Data Preparations"
page_id: "common-preparations"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Common Data Preparations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers) and [data stewards](processhq.html#-data-stewards). It describes how to perform common data preparations for process analysis.

## Overview

There are some [data preparations](prepare-data.html) that developers or data stewards will commonly want to perform. From standardizing event values, to hiding sensitive data, these common data preparations are easy to perform and require minimal effort.

This page describes how developers and data stewards can accomplish common data preparations.

For more advanced data preparations, like merging multiple event tables together or separating a single event table into multiple, consider creating a [records-backed record type](records-backed-record-types.html).

## Developer preparations

As the developer, you are responsible for [connecting to process data](capture-process-data.html) and preparing that data so it can be accessed and used in process insights. This means that you must ensure that record types containing process data all have [data sync](capture-process-data.html#synced-record-types) enabled and include the [required relationships](capture-process-data.html#relationships) and [fields](capture-process-data.html#fields).

To meet these requirements, you may need to perform the following data preparations:

-   [Keep data under the synced row limit](#keep-data-under-the-synced-row-limit)
-   [Standardize timestamps](#standardize-timestamps)
-   [Extract text from a field](#extract-text-from-a-field)
-   [Standardize automation type](#standardize-automation-type)

### Keep data under the synced row limit

By default, each record type with [data sync](about-data-sync.html) enabled can sync up to 20 million rows of data from a source.

For large or a growing data source, you should configure [different sync options](build-best-data-fabric.html#identify-the-best-way-to-work-with-large-data-sources) to keep the data under the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources).

As a best practice, Appian recommends enabling the [**Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) sync option on event history record types since they typically accumulate large quantities of data.

For example, let's say the Order Event History record type currently has 19.6 million rows of data, and your company expects an influx of orders over the holiday season. Since there will be more orders and an event is created each time an order is submitted, reviewed, approved, or shipped, you should enable the **Keep data available at high volumes** option on the Order Event History record type. Enabling this option will dynamically sync the most recent order events, preventing the record type from exceeding the synced row limit.

### Standardize timestamps

One of the [required fields](capture-process-data.html#fields) on an event history record type is a **timestamp** field of type [Date and Time](Appian_Data_Types.html#date-and-time). This field captures when an event started or ended, and it can have any date and time formatting, so long as it's consistent across all events. Process HQ uses this timestamp to determine the order in which [activities](key-pi-terms.html#cases-activities-events) appear in your [process diagram](explore.html#review-the-process-diagram).

**Tip:**  If the process diagram shows activities in an unexpected order, you may want to determine whether your data source is providing date information without time information (for example, `"2022-05-25 00:00:00"`).

If your timestamp field is a different data type (like Text), or the date formatting is inconsistent across events, you can create a [sync-time custom record field](custom-record-fields.html#prodlink-sync-time-evaluations) to standardize the format and change the field's data type.

For example, let's say an Event History record type has a timestamp field formatted like `"2022-05-25 00:07:10"`. While the format of the field is fine, the field's data type is type Text so it cannot be analyzed in process insights.

To convert the field's data type, you can create a sync-time custom record field to display the same timestamp values and set the data type to Date and Time.

To create the custom record field in this example:

1.  In the record type, click **NEW CUSTOM RECORD FIELD**.
2.  Select [**Write Your Own Expression**](custom-record-fields.html#write-your-own-expression) and keep **Sync-Time Evaluation** selected.
3.  Click **NEXT**.
4.  In the **EXPRESSION** box, write an expression that returns the timestamp in the data format you need.

    In this example, we want to keep the same timestamp format, so we'll use the [left()](fnc_text_left.html) and [mid()](fnc_text_mid.html) functions to extract the corresponding values needed in the [datetime()](fnc_date_and_time_datetime.html) function.

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
     if(
       a!isNotNullOrEmpty(rv!record[recordType!Event History.fields.startTime]),
       datetime(
          year: left(rv!record[recordType!Event History.fields.startTime], 4),
          month: mid(rv!record[recordType!Event History.fields.startTime], 6, 2),
          day: mid(rv!record[recordType!Event History.fields.startTime], 9, 2),
          hour: mid(rv!record[recordType!Event History.fields.startTime], 12, 2),
          minute: mid(rv!record[recordType!Event History.fields.startTime], 15, 2),
          second: mid(rv!record[recordType!Event History.fields.startTime], 18, 2)
        ),
       null()
     )
    ```

5.  Click **NEXT**.
6.  Configure the following field properties:

    | Property | Action |
    | --- | --- |
    | **Record Field Name** | Enter a name for the field, like `structuredTimestamp`. |
    | **Record Field Type** | Select **Date and Time**. |
    | **Display Name** | (Optional) Enter a user-friendly field name for Process HQ users, like `Event Timestamp`. |
    | **Description** | (Optional) Enter a helpful description about the field, like `The timestamp structured in a way that is compatible with process insights.` |

7.  Click **CREATE**.

### Extract text from a field

Your case or event history record type may have a field that stores freeform text that's manually entered by users. This freeform text may explain why a support case was closed or why an order was canceled, which is important information to consider when investigating the efficiency of your business process. But as unstandardized, freeform text, this information can't be effectively analyzed in process insights.

To allow process insights to analyze this information, you can create a [sync-time custom record field](custom-record-fields.html#prodlink-sync-time-evaluations) to extract values with certain keywords and transform them into new, standardized values.

For example, let's say the Quote record type (a case record type) has the field `voidReason`, which stores freeform text about why a quote was voided.

To standardize the void reasons so they can be analyzed by process insights, you can create a sync-time custom record field that extracts values from the `voidReason` field that have certain keywords, like price, cost, or pricing, and then group those values in a single, standardized value, like "Pricing Issues."

To create the custom record field in this example:

1.  In the record type, click **NEW CUSTOM RECORD FIELD**.
2.  Select [**Write Your Own Expression**](custom-record-fields.html#write-your-own-expression) and keep **Sync-Time Evaluation** selected.
3.  Click **NEXT**.
4.  In the **EXPRESSION** box, write an expression that replaces all existing field values with new, simplified values.

    This example expression is similar to the one used in the [standardize activities](#standardize-activities-\(event-types\)) example. The only difference here is that we are using [a!match()](fnc_logical_match.html) to replace all existing field values with new ones, whereas the other example only replaced certain field values.

    This expression states that: if a field value contains any of the following words, replace it with a new term. If a field value doesn't match any of the terms, replace it with the value "Other".

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
     a!match(
       value: rv!record[recordType!Quote.fields.voidReason],
       whenTrue: or(search({"price", "pricing", "cost"}, fv!value) > 0),
       then: "Pricing Issue",
       whenTrue: or(search({"contract", "legal", "regulations"}, fv!value) > 0),
       then: "Contract Issue",
       whenTrue: or(search({"no response", "unresponsive", "did not respond"}, fv!value) > 0),
       then: "Unresponsive",
       default: "Other"
     )
    ```

5.  Click **NEXT**.
6.  Configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Record Field Name** | Enter a name for the field, like `standardVoidReason`. |
    | **Record Field Type** | Select **Text**. |
    | **Display Name** | (Optional) Enter a user-friendly field name for Process HQ users, like `Void Reason`. |
    | **Description** | (Optional) Enter a helpful description about the field, like `A standardized list of reasons why a quote was voided.` |

7.  Click **CREATE**.

**Tip:**  Another way to extract text from a field is using the custom record field template [**Groups Based on Text Values**](custom-record-fields.html#groups-based-on-text-values--_synctime). This template is best when your extraction logic isn't very complex.

### Standardize automation type

Process insights can quickly analyze how automated your process is, so you can identify more opportunities for automation or explore an automation that may not perform as efficiently.

To support this capability:

-   The event history record type must include a Number (Integer) field that stores the automation identifier of a [standard automation type](record-events-automation.html#standard-automation-types).
    -   If you've [configured record events](record-events.html), this field (`automationTypeId`) is automatically included in the [generated **Event History** record type](record-events-configuration.html#generated-event-history-record-type). Then, you'll use the [Write Records smart services](Write_Records_Smart_Service.html) to [capture automation types](record-events-automation.html#update-process-models-to-capture-automation-types).
    -   If you've created your own event history record type to [connect to an existing database or external system](capture-process-data.html), you will likely need to [add a new field](update-source-from-record-type.html#add-a-field) for this purpose.
-   The data steward must map the automation ID field as an [**Automation** attribute](add-process.html#map-attributes) when they [add the process](add-process.html).

Once your process includes an **Automation** attribute, automation statistics are automatically generated in the [**Conformance and Costs** tab](explore.html#review-conformance-and-costs) of any view. You can also take advantage of the Automation attribute to [configure your own custom KPI](process-custom-kpis.html).

## Data steward preparations

As a data steward, you are responsible for choosing what data to include for process analysis, and ensuring that data is secure and understandable to business users.

When you [add or edit a process](add-process.html), you can perform the following data preparations to simplify and secure data:

-   [Remove ad hoc events](#remove-ad-hoc-events)
-   [Standardize activities (or event types)](#standardize-activities-\(event-types\))
-   [Provide user-friendly attribute names](#provide-user-friendly-attribute-names)
-   [Hide sensitive data](#hide-sensitive-data)
-   [Group the difference between two dates](#group-the-difference-between-two-dates)
-   [Use data from a one-to-many relationship](#use-data-from-a-one-to-many-relationship)

### Remove ad hoc events

[Ad hoc events](record-events.html#decide-whether-to-track-ad-hoc-events), like "John Doe commented on an order" or "Jane Smith updated an employee," are typically not useful when analyzing how the process itself is doing. As a result, ad hoc events should be excluded from event data that will be used in process insights.

To exclude ad hoc events, apply a process filter while [configuring event data for a process](add-process.html#configure-process-data) and use filter operators like `Does not equal` or `Does not include` to exclude certain events from the process data.

For example, let's say the Invoice Event History record type captures an event whenever a user comments on an event history list component. Since comments are considered an ad hoc event, you should add a process filter like the one below. This example is filtering out any events that have "Comment" in the event type name. Any comment-related events, like "Commented on Invoice," will be excluded from the process data.

[![Process filter that filters out events with the word comment in the event type name ](images/process_insights/process-filter-remove-comments-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img655)

[![](images/process_insights/process-filter-remove-comments-example.png)](#_)

In process insights, AI Copilot can automatically detect ad hoc events and suggest filters to help you remove them. If any potential ad hoc events are detected, a prompt will appear to help you filter out unwanted events.

**Tip:**  Ad hoc event detection is available in [select regions](security-compliance.html#ai-copilot-regional-availability).

### Standardize activities (event types)

Another [required field](capture-process-data.html#fields) in the event history record type is an **activity** field. If you've [configured record events](record-events.html), this required field is also known as an **event type**. This field must either store the [activity](key-pi-terms.html#cases-activities-events) that occurred, or store a number that references the activity in a lookup record type.

Activities should have short, human-readable names. They should not include dynamic details about the event, like the user who completed the activity or the time it was completed—this type of information should be stored in separate fields, like `user` and `timestamp`.

If your activities contain dynamic values or have varying degrees of specificity, you can add a custom attribute using the [Find and Replace](process-custom-attributes.html#find-and-replace) template.

For example, let's say an Event History record type includes a field for `activityName`, which stores the different types of activities that can occur. However, there are some values in this field that are too detailed for meaningful use in process insights. Some example values in this field include:

-   Submitted by jane.smith
-   Completed Document Review
-   Approved

To standardize the activities for process insights, you can use the Find and Replace custom attribute template to find an activity name in a text attribute, then save that name in a new custom attribute.

To add a custom attribute to standardize your activity names:

1.  While [adding or editing a process](add-process.html) in process insights, navigate to the the **Configure Event Data** step.
2.  Click **ADD CUSTOM ATTRIBUTE**.
3.  Select the **Find and Replace** template, then click **NEXT**.
4.  Using the **Find and Replace Values in** dropdown, select the name of the field with activity names you want to replace.
5.  In the **Find** field, enter the activity name (or part of the activity name) you want to replace. You can enter a list of names to replace all of them with the same name.
6.  In the **Replace With** field, enter the new activity name.
7.  If you want to find values that exactly match what you entered in the **Find** field, select the **Exact Match** checkbox.
8.  Click **Add Row** to add more values to find and replace as needed.
9.  Choose whether you want to replace any other values:

    | Property | Action |
    | --- | --- |
    | **Replace Other Non-null Values** | Enter an activity name to replace all other names that aren't specified in the **Find** and **Replace With** fields above. |
    | **Replace Null Values** | Enter a default activity name to use in case an activity name is blank. |

10.  Click **TEST** to see a preview of your data with the old and new activity names.

     In the example below, we've renamed values in the **Event Name** field to remove dynamic details, like the name of the user that completed the activity. We've also updated activity names to make sure they reflect the [specific action](record-events.html#make-your-event-types-specific) that was taken to complete the event.

     [![screenshot of the find and replace custom attribute page showing an example of how to replace activity names](images/process_insights/custom-attribute-find-replace-example_24-4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img656)

     [![](images/process_insights/custom-attribute-find-replace-example_24-4.png)](#_)

11.  Click **NEXT**.
12.  In the **Name** field, enter a name for the custom attribute. Since this attribute contains your new activity names, choose a name that's easy to recognize, like "Activity" or "Event Type".
13.  In the **Map To** dropdown, select **Activity**.

     [![screenshot of the find and replace custom attribute properties page showing an example of how to name and map the custom attribute](images/process_insights/custom-attribute-find-replace-example-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img657)

     [![](images/process_insights/custom-attribute-find-replace-example-properties.png)](#_)

14.  Click **CREATE**.

### Provide user-friendly attribute names

User-friendly [attribute](key-pi-terms.html#attributes) names allow business users to easily understand what data is included in a process.

By default, attribute names reflect the record field names or the display names [configured on the record type](configure-record-data-source.html#add-field-display-names-and-descriptions). However, data stewards and analysts may want to rename attributes since they typically have the most business context.

Data stewards can rename an attribute while [configuring process data](add-process.html#configure-process-data), while analysts can rename attributes as they [explore the process](add-process.html#rename-attributes).

For example, you may want to rename a field like `annualContractValue` to `Annual Contract Value (ACV)`. Or, you may want to completely change a field name, like `firstAndLastName` to `Display Name`.

Data stewards can also add descriptions to attributes to give analysts more context about what each attribtue represents or how it is calculated.

### Hide sensitive data

Process insights relies on a comprehensive view of your process data to give you accurate and valuable insights. To ensure you get a holistic view of your process, [record type object security](record-security.html) and [record-level security](record-level-security.html) are not applied in process insights.

As a data steward, you're responsible for balancing the utility of your process data with your own data security policies. This means that you should omit personal identifiable information, personal health information, financial information, or other sensitive data from a process.

In process insights, you can hide sensitive data from your process in the following ways:

-   Deselect fields containing sensitive information.
-   [Apply process filters](#hide-sensitive-data-with-a-process-filter).
-   [Create custom attributes](#hide-sensitive-data-with-a-custom-attribute).

#### Hide sensitive data with a process filter

You may have a record type with data you want to be analyzed by process insights, but it contains cases that aren't relevant or need to be restricted for security purposes.

You can remove unneeded or sensitive cases from your process by applying a filter while [configuring case data for a process](add-process.html#configure-process-data).

For example, let's say you have an Customer record type that stores data about customers in a Financial Onboarding app. However, the analyst only has permission to view data about customers for the US region. You can apply a filter like "Region equals US" so that the process only includes case data for customers from the US.

#### Hide sensitive data with a custom attribute

Sometimes, a record type includes data you want to be analyzed by process insights, but that data is too sensitive to expose in its raw form.

For example, let's say the Customer record type (a case record type) contains a field for Net Worth. Net worth is likely sensitive information that should not be exposed to analysts, but an obfuscated version of that data could be a valuable attribute to explore in a process.

To allow process insights to analyze this data without exposing the raw data to analysts, you can create a [custom attribute](process-custom-attributes.html) to group the different net worth values into larger buckets. This way, process insights can analyze customer net worth without actually displaying the raw numbers.

To create the custom attribute in this example:

1.  While [adding or editing a process](add-process.html), click **ADD CUSTOM ATTRIBUTE**.
2.  Select [**Groups Based on a Range**](process-custom-attributes.html#groups-based-on-a-range).
3.  Click **NEXT**.
4.  For **Create Groups From**, select the **Net Worth** field.
5.  For **Number of Groups**, set the value to **3**.
6.  For **Custom Attribute Value**, enter the value to return based on the specified range.

    In this example, any customers with a net worth less than or equal to 150,000 will have a custom attribute value of "Base". Customers with a net worth between 150,000 and 500,000 will have a custom attribute value of "Medium", and customers with a net worth greater than 500,000 will have a custom attribute of "High". If a customer does not have a value in the net worth field, then they will have a custom attribute value of "Unknown".

    [![images/customAttribute-commonPrep.png](images/customAttribute-commonPrep.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img658)

    [![](images/customAttribute-commonPrep.png)](#_)

7.  Click **NEXT**.
8.  Enter a **Name** for the custom attribute.
9.  Click **CREATE**.

Now that you've created the custom attribute to hide this sensitive field, you can remove the Net Worth field with the raw data from the process without removing any potential value from insights.

### Group the difference between two dates

You may want to assess how long certain activities took to complete in your business process. However, it may not be as simple as just understanding how long it took, you may also need to know if the amount of time it took is good or bad. For example, if a support case takes three days to complete, is that inline with the company's standard-level agreement (SLA) or does it exceed it?

If your record type has separate timestamp fields to calculate when something started versus when it ended, you can create a [custom attribute](process-custom-attributes.html) to get the difference between these two times and then group the results into specific categories.

For example, let's say you want to assess how long it takes customers to pay their invoices. To more easily understand whether the amount of time it takes is good or bad, you need to know if customers are paying the invoices on time, early, or late.

Since the Invoice record type (a case record type) has the fields **Payment Due Date** and **Amount Received Date**, you can create a custom attribute to get the difference between these dates and then group the results into "Early Payment", "On-Time Payment", or "Late Payment".

To create the custom attribute in this example:

1.  While [adding or editing a process](add-process.html), click **ADD CUSTOM ATTRIBUTE**.
2.  Select [**Groups Based on a Date Difference**](process-custom-attributes.html#groups-based-on-a-date-difference).
3.  Click **NEXT**.
4.  For **Select Dates**:
    -   Choose **Payment Due Date** as the **Start Date**.
    -   Choose **Amount Received Date** as the **End Date**.
5.  For **Select Interval**, keep **Day** selected.
6.  For **Create Groups**:

    -   Set the **Number of Groups** to **3**.
    -   Configure the **Custom Attribute Values** so certain date differences fall into early, on-time, or late.
    -   Set **Handle Null Values** to **Not Paid** to account for when an invoice hasn't been paid yet, so it doesn't have an end date.

    [![images/customAttribute-dateDiff-ex.png](images/customAttribute-dateDiff-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img659)

    [![](images/customAttribute-dateDiff-ex.png)](#_)

7.  Click **NEXT**.
8.  Enter a **Name** for the custom attribute.
9.  Click **CREATE**.

### Use data from a one-to-many relationship

When you [add or edit a process](add-process.html), you can select fields from the case record type, the event history record type, and any one-to-one or many-to-one relationships configured on those record types to include in your process.

You can't include fields from a one-to-many relationship within a process. However, if there is useful process data stored in a one-to-many relationship, you can still access that data by creating a [custom attribute](process-custom-attributes.html) on the case or event history record type.

For example, let's say the Order record type (a case record type) has a one-to-many relationship to the Order Items record type. You may want to explore whether the number of items in an order is impacting how quickly an order is shipped. To access order item data, you can create a custom attribute on the Order record type to get the count of items for each order. Then, you can group the results into "Small", "Medium", or "Large" item amounts.

To create the custom attribute in this example:

1.  While [adding or editing a process](add-process.html), click **ADD CUSTOM ATTRIBUTE**.
2.  Select [**Groups Based on Aggregations**](process-custom-attributes.html#groups-based-on-aggregations).
3.  Click **NEXT**.
4.  For **Aggregate Data**:
    -   Select the **Id** field from the **Order Item** record type as the **Aggregation Field**.
    -   Select **Count** as the **Aggregation Function**.
5.  For **Create Groups**:

    -   Set the **Number of Groups** to **3**.
    -   Configure the **Custom Attribute Values** so a certain number of items is grouped as small, medium, or large.

    [![images/customAttribute-aggregate-ex.png](images/customAttribute-aggregate-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img660)

    [![](images/customAttribute-aggregate-ex.png)](#_)

6.  Click **NEXT**.
7.  Enter a **Name** for the custom attribute.
8.  Click **CREATE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...