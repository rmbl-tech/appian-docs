---
source_url: https://docs.appian.com/suite/help/25.3/Records_Monitoring_Details.html
original_path: Records_Monitoring_Details.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshoot Data Sync

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to resolve issues with [data sync](about-data-sync.html).

## Types of sync errors

When an error occurs during a sync, the record type will either have a sync status of:

-   **Failed**
-   **Failed and Skipped**
-   **Failed and Recovering**
-   **Failed and Retrying**

You can find the record type's status by viewing its [Sync History](monitoring_view.html#sync-history).

The type of error that occurs will determine the sync status on your record type, and whether or not the record type is available. It's important to understand which errors cause each status so you can determine how to address them.

### Failed sync

If you see a **Failed** sync status, this means that the sync failed and the record data is currently unavailable. As a result, any queries to the record type will not return data, the record list will be unavailable, and any grids or charts that use the record type may return an error.

A failed sync may also impact queries or components that reference the record type through a record type relationship. For example, suppose a query returns data from the Customer record type, which is related to an Order record type. If the Order record type has a sync status of **Failed** and the query includes fields from Order, the query will also fail.

Usually the best way to resolve failed syncs is to identify the problem and perform a [full sync](records-data-sync.html#manual-full-syncs). When viewing the record type, failed syncs will display with a link to an error message with more details. See [causes of sync errors](#causes-of-sync-errors) to find methods to resolve common errors.

### Failed and skipped

If you see a **Failed and Skipped** sync status, this means that a full sync failed, but the record data is still available because it skipped the failed sync and instead uses data from the last successful full sync. As a result, any queries to the record type will succeed. However, since the sync was skipped, the data in your record type may be outdated.

This sync status will only appear if you've enabled the [**Skip failed syncs**](records-data-sync.html#skip-failed-syncs) option on the record type. By default, this option is enabled on all new record types.

### Failed and recovering

If you see the **Failed and Recovering sync** status, this means that a [smart service sync](records-data-sync.html#use-smart-services-that-automatically-sync-data) or an [incremental sync](records-data-sync.html#schedule-incremental-syncs) failed due to issues connecting to the data source. While the record data is currently unavailable, a recovery sync will start shortly to automatically sync all source data.

This sync status will only appear if you've enabled [**recovery syncs**](records-data-sync.html#recover-failed-syncs) on your record type. By default, this option is disabled on all new record types.

### Failed and retrying

There are some instances where a sync can be automatically retried if an error occurs. In this case, you'll see a sync status of **Failed and Retrying**.

When the sync is retrying, the sync is still considered in progress and the data for the record type is still available. There are two ways that a retry occurs: retrying the entire sync or only retrying a single batch.

#### Full retry

When the entire sync is retried, the sync starts over from the first batch after a delay of a few minutes. A full retry can occur when some intermittent issues occur such as connection timeout with the source system. The retry occurs automatically.

#### Batch retry

When performing a [full sync](records-data-sync.html#schedule-full-syncs) or an [incremental sync](records-data-sync.html#schedule-incremental-syncs), data is queried in batches, all of which must finish for the sync to succeed.

In some cases, an intermittent error occurs that only affects a single batch. For instance, a record type that uses a web service as the source could have a request time out for a single batch, even if prior batches succeeded. Appian will automatically retry the failing batch. If the automatic retry succeeds, Appian will continue with the remainder of the sync.

The sync will fail or be skipped if either of the following occur:

-   **A single batch fails three times in a row.** A failed batch is automatically retried after a brief delay, up to a maximum of two retries. If the second retry (the third total attempt) fails, the entire sync fails.
-   **More than 10 failures occur across the entire set of batches in the full sync.** For example, say there are 30 batches in a full sync. If there are 10 total retries across any number of batches, then the entire sync fails.

The [Sync History](monitoring_view.html#sync-history) only shows information about the last failed batch. However, any failure is logged in the application server log to aid with additional troubleshooting.

## Sync failure alerts

When an error occurs that causes the sync to fail or skip, an email alert will be sent to system administrators, and any users with **Administrator** permissions for the record type. The email will contain a summary of the issue and a link to the record type so you can quickly resolve the issue.

**Note:**  Users will only receive email alerts if the sync fails during a scheduled full sync or when you use [select smart services](records-data-sync.html#use-smart-services-that-automatically-sync-data) to update your source data.

## Causes of sync errors

The following sections outline different sync errors and possible resolution or mitigation steps.

### Duplicate values in a unique field

**Relevant to**: All record types

In your data model, you can specify that a field can only have unique values. These fields are called _unique fields_.

You can [configure unique fields](configure-record-data-source.html#configure-unique-fields) directly in a service-backed record type, or you can create unique [custom record fields](custom-record-fields.html#prodlink-sync-time-evaluations) on any record type.

If you configure a unique field and it has duplicate field values, the record type will fail to sync.

#### Resolution steps

Review and edit the field configuration to ensure that only unique values are returned.

If you cannot return a list of unique values, edit the field and disable the unique values configuration.

To disable the unique values configuration:

1.  In the record type, go the **Data Model**.
2.  Click next to the field.
3.  De-select the **Unique Values** checkbox.
4.  Click **OK**.
5.  Click **SAVE**.

The field is no longer marked as unique and cannot be used as the [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration.

### Full sync timeout

**Relevant to**: All record types

If a [full sync](records-data-sync.html#schedule-full-syncs) takes longer than 4 hours, it's possible that the sync will time out and fail. When the sync fails, the record data will become unavailable and you'll receive an [alert message](#sync-failure-alerts).

A sync timeout can occur on any record type with data sync enabled, but may be more common on record types that use a web service as the source.

#### Mitigation steps

To prevent a sync from timing out, consider:

-   Removing the [rate limit](records-data-sync.html#rate-limit) to reduce the total sync time.
-   Adding a [database index](records-data-sync.html#generate-a-database-index) to the sort field used to [keep data available at high volumes](records-data-sync.html#keep-data-available-at-high-volumes).
-   Allowing for larger batch sizes in your [record data source](configure-record-data-source.html#create-a-record-data-source).
-   Adding a [sync filter](records-filter-source-data.html#about-sync-filters) to limit the number of rows synced in Appian.
-   Refactoring the source system to be more efficient.

If you cannot modify the above configurations, or your record type uses a database table as the source, you may choose to [disable data sync](#disable-sync-steps) on your record types that take longer than 4 hours to sync.

### Incremental sync errors

**Relevant to**: All record types

An incremental sync will fail if:

-   It attempts to sync more than 50,000 rows.
-   It takes longer than 10 minutes to complete the sync.

If you do not have [skipped failed syncs](records-data-sync.html#skip-failed-syncs) enabled and the incremental sync fails, the record data will become unavailable and you'll receive an [alert message](#sync-failure-alerts).

#### Mitigation steps

If you experience one or both of these issues, consider increasing how frequently the syncs occur so smaller portions of data are captured more regularly.

Additionally, you can enable [recovery syncs](records-data-sync.html#recover-failed-syncs) on the record type to automatically start a full sync if an incremental sync fails.

### Invalid Salesforce credentials

**Relevant to**: Salesforce-backed record types

When you set up your Salesforce object as the source for your record type, you have to provide login credentials in order to access Salesforce.

If the Salesforce object's credentials are determined to be invalid at the time of the sync, your sync will fail. It could simply be that the password has expired or that the credentials have changed. In order to successfully sync, you need to verify the credentials and re-sync the record type.

#### Resolution steps

To check the credentials and re-sync:

1.  In your application, go to the **Build** view.
2.  Open your Salesforce object for your record type.
3.  Verify that the credentials use the username-password OAuth authentication and are correct.
4.  Click **TEST CONNECTION**. If the test fails, contact your system administrator for help.
5.  Click **SAVE**.
6.  In your application, go to the **Monitor** view.
7.  In the gray bar menu, click **RECORD SYNC STATUS**.
8.  Select your record type and click **START SYNC**.

For more information on authentication, credentials, and configuring a Salesforce object, see [Salesforce Connected Systems](salesforce-connected-system.html).

### Invalid value in a source row field

**Relevant to**: Database-backed or Salesforce-backed record types

When data is entered into your source, it's possible to enter values that aren't compatible with data sync. This means that the value in a source field may work fine in your source, but may not be a compatible value for that field in Appian when data sync is enabled.

This most commonly occurs with date fields and date and time fields. Appian has a certain range that all date and date and time values must be within in order for the source data to work with data sync. This range may not be the same range that is accepted by the source; so it's possible that a value can be valid in the source's range but not in Appian's. If the value of a date or date and time field isn't within the range allowed by data sync, the sync will fail.

This specific error message appears when the value of a date and time field in the source is outside of the range of date values that work with data sync. To resolve the error, find the field with the invalid date and time value, update the value so that it is within the valid range, and then resync the record type to the source.

#### Resolution steps

| Field Type | Range | Other Limits |
| --- | --- | --- |
| Date & Time | Between `1707-09-22 00:12:43.145224193` and `2292-04-10 23:47:16.854775806` | Shouldn't contain the value of `00` for the day or month, or `0000` for the year. |

##### Date and time value in a database

To update the invalid date and time value in the database table:

1.  Copy the timestamp of the error.
2.  In your application, go to the **Navigation** menu and select **System Logs**.
3.  Open **Application Server Log** and search for the timestamp.
4.  Read the stack trace to determine which field and value caused the error. Example error: `APNX-3-1100-007: marshal: unsupported timestamp 3000-01-01 00:00:00 +0000 UTC`
5.  Open the SQL Workbench or phpMyAdmin for the database.
6.  Run a SQL statement to find the date and time field with the invalid value. Example SQL statement:

    ```
    1
       SELECT * FROM `< table name >` WHERE date(< field name >) = `< the invalid value >
    ```

7.  Update the invalid field value so that it is within the valid range.
8.  Return to your application and go to the **Monitor** view.
9.  Go to the **RECORD SYNC STATUS** tab.
10.  Select your record type and click **START SYNC**.

##### Date and time value in Salesforce

To update the invalid date and time value in Salesforce:

1.  Copy the timestamp of the error.
2.  In your application, go to the **Navigation** menu and select **System Logs**.
3.  Open **Application Server Log** and search for the timestamp.
4.  Read the stack trace to determine which field and value caused the error. Example error: `APNX-3-1100-007: marshal: unsupported timestamp 3000-01-01 00:00:00 +0000 UTC`
5.  Log in to Salesforce.
6.  Update the invalid date and time field value so that it is within data sync's valid range.
7.  Return to your application and go to the **Monitor** view.
8.  Go to the **RECORD SYNC STATUS** tab.
9.  Select your record type and click **START SYNC**.

### Mismatched schemas

**Relevant to**: All record types

When you enable data sync for your record type and configure your record fields, Appian automatically creates a mapping between the source schema and record type schema.

The source schema includes the names, types, and uniqueness constraints of all the fields in your source. This schema must match the record type's schema in order for Appian to sync the source data.

If a change is made to the source schema without making a corresponding change to the record type, the record type will fail to sync. There are three common causes for a mismatch between the two schemas:

-   The data type of a source field was changed.
-   The name of a source field was changed.
-   A source field was deleted.

#### Resolution steps

If there is a schema mismatch in a database-backed or Salesforce-backed record type, a banner will automatically appear at the top of the page indicating the number of record fields that are not properly mapped to a source field.

To remap fields in a database-backed or Salesforce-backed record type:

1.  In the record type, go to **Data Model**.
2.  Click **UPDATE MAPPINGS** in the banner. An **Update Mappings** dialog will appear.
3.  In the **Source Field** column, choose a source field from the dropdown. If there is a matching source field name, the column will auto-suggest the source field for you. Note that a source field can only be mapped to one record field.

    The **Record Field Type** column will reflect the Appian data type of the source field. If the data type of the source field changed, the original data type will display with an arrow pointing to the updated data type of the new source field.

4.  To remove a record field and its source field, click the delete icon.

    **Tip:**  Removing a record field will cause any existing field references to break. To see which objects reference a record field, click ![record-field-dependents](images/record-field-dependents.png) next to the record field on the **Data Model** page of the record type.

5.  To remove all unmapped fields, click **REMOVE ALL UNMAPPED FIELDS**.
6.  Click **OK**.
7.  Click **SAVE**.

If there is a schema mismatch in a service-backed record type, you will need to add the changed field as a new field in your record type. This means that you will also need to find and replace any broken references to the old record field.

To remap fields in a service-backed record type:

1.  In the record type, go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  Select the field that was changed.
4.  Click **FINISH**.
5.  Click **SAVE**.
6.  Replace the broken field references with references to your new field:
    -   Go to the [**Monitor** view](monitoring_view.html).
    -   In the **Health Dashboard**, review the [**Appian Design Guidance**](appian-recommendations.html) grid. This shows all objects that have active design guidance triggered.
    -   Open each object and replace the record field reference with your new field reference.

### Record type exceeds the synced row limit

**Relevant to**: All record types

Each record type with data sync enabled can sync up to [20 million rows](Appian_Tiers.html) of data.

**Note:**  If the record type has a sync filter configured to filter by a relationship, it can only sync up to 10 million rows of data. [Learn more about this limit](#synced-row-limit-when-filtering-by-a-relationship).

If you try to sync more rows than the limit allows, the sync will fail and the record data will be unavailable. Record types within 10% of the limit will sync successfully, but a warning will let you know that the record type is approaching or has reached the row limit.

#### Mitigation steps

To prevent a record type from exceeding the row limit, enable the [**Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) sync option. Appian will dynamically sync the latest rows of data—preventing the record type from exceeding the synced row limit.

If you need to sync more rows than the synced row limit allows, you can use [sync filters](records-filter-source-data.html) to divide up that large data source into multiple record types. Each record type can have a specific purpose. For example, if you have an extra large Order database table, you could create two record types: one with Open Orders and another with Closed Orders.

### Synced row limit when filtering by a relationship

**Relevant to**: Database-backed record types

By default, a record type can sync up to [20 million](Appian_Tiers.html) rows of data; however, if the record type has a sync filter that [filters by a relationship](records-filter-source-data.html#basic-mode), it can only sync 10 million rows of data.

This limit ensures optimal performance for record types that filter by related data. If a record type with the relationship filter exceeds 10 million rows, the sync will fail and the record data will be unavailable.

For example, let's say the Order record type has a sync filter configured to filter by its relationship to Customer. This will only sync orders for active customers in the Order record type. However, if there are more than 10 million orders related to active customers, the sync will fail on the Order record type and the order data will be unavailable.

[![images/example-rrsf.png](images/example-rrsf.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img370)

[![](images/example-rrsf.png)](#_)

#### Resolution steps

If you need to sync more than 10 million rows in the record type, [remove the relationship sync filter](records-filter-source-data.html#remove-sync-filters). You can still specify which data to sync in the record type by adding sync filters that filters by source fields. You can sync up to 20 million rows of data when you filter by source fields.

If you don't need more than 10 million rows, [add additional sync filters](records-filter-source-data.html#add-sync-filters) to further limit the data synced in the record type.

**Note:**  Depending on your hardware allocations, you can customize the row limit associated with a relationship filter. Contact your Appian representative to learn more.

### Sync Records smart service exceeds record limit

**Relevant to**: All record types

The [Sync Records smart service](Sync_Records_Smart_Service.html) allows you to specify which records to sync in Appian. You can sync up to 1,000 records at a time.

If you try to sync more than 1,000 records using this smart service, the sync will fail and the record data will be unavailable.

#### Mitigation steps

To prevent the smart service from syncing more than 1,000 records at a time, you can create a loop in your process model to execute the Sync Records smart service multiple times.

See [Syncing more than 1,000 records](Sync_Records_Smart_Service.html#syncing-more-than-1000-records) for more information.

### Syncing too much data in an Extra Long Text field

**Relevant to**: All record types

Record fields of type [Extra Long Text](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) can store values up to 64,000 characters long. If you try to sync values greater than 64,000 characters in these fields, the sync will fail.

#### Mitigation steps

To prevent values from exceeding 64,000 characters, you should configure character limits on any [paragraph](Paragraph_Component.html) or [styled text editor](Styled_Text_Editor_Component.html) components in your applications.

If a value exceeding 64,000 characters is provided outside of Appian, you will need to update the value in your source to reduce the number of characters. Then, you can manually trigger a full sync or wait until your next scheduled full sync to capture the changes.

### Web service errors

**Relevant to**: Service-backed record types

When you use a web service as the source of a record type, the web service itself could return an error. For instance, the web service could be temporarily unavailable or the request from Appian may not be structured correctly.

When these errors occur, the **Monitor** view can display the error received from the web service to help in troubleshooting. However, the source expression must be set up correctly to expose these error messages to the monitor.

#### Configuring web services to expose error messages

In the source expression rule, each batch result must return a list of dictionary, map, or CDT to perform a successful sync; any other result will cause the sync to fail.

However, if the expression rule returns a result of type _Integration Error_ in a batch, the batch will fail and the full details of the integration error will be displayed in the **Monitor** view for the record sync.

The [Integration Error](Appian_Data_Types.html#integrationerror) data type returns details on the error that occurred with any integration call. It is returned by default in any integration response using the `error` parameter. See below for an [example](#example-source-expression-with-integration-error) on how to configure the source expression to return the integration error.

Since the integration error typically contains the error received from the web service, it can help troubleshoot issues for the batch that failed.

![/sync alerts](images/sync_alerts.png)

##### Example source expression with integration error

To provide the integration error in a failed batch, make sure the source expression returns the appropriate integration error.

For example, the following source expression would return the results if the integration succeeds and the integration error if it fails.

```
1
2
3
4
5
6
7
8
a!localVariables(
  local!integration: rule!EX_IntegrationResult(batch: ri!batch),
  if(
    local!integration.success,
    local!integration.result.body, /* Returns the result body when the request succeeds */
    local!integration.error /* Returns the integration error when the request fails*/
  )
)
```

#### Resolution steps

Check the integration error against common HTTP errors and update the configuration of the integration object to resolve the error. For example, an error code of **401** typically means that the request did not have the correct authentication, so the credentials may need to be updated.

In some cases, it may be necessary to contact the owner of the web service to troubleshoot further.

### Other sync errors

**Relevant to**: All record types

Sometimes record types fail to sync to the source because of issues that require troubleshooting outside of Appian. When this happens, check the error message for information to help you troubleshoot the issue or contact your system administrator for further assistance.

Here are a few brief explanations of these issues and their possible causes:

| Issue | Error Message | Possible Cause |
| --- | --- | --- |
| Problem connecting to the source. | `Unable to sync because the data source did not respond.` | The source didn't respond, VPN failed, or the API limit has been reached. |
| Problem with the sync server. | `Unable to sync due to a system issue.` or `Not enough disk space to complete sync.` | The disk is full or the disk space is at or near 95% capacity. Alternatively, the sync server may be down. |
| Problem with row size. | `Unable to sync because a source row exceeds the size limit.` | A source row exceeds 1 MB. |
| Problem with resource use. | Generic error: `Unable to sync due to an error with the data source.` | Too much competition for resources between syncs and other processes. |
| Problem with invalid batches. | `Unable to sync due to an error with the data source. The Record Data Source did not apply the batch number correctly. The first two responses returned the same data.` | The sync expects that the data changes with each batch, but the first two batches returned the same data. |
| Problem with invalid primary key data. | `Unable to sync due to an error with the data source. The result batch contained multiple records with the same primary key. The primary key must be unique across all records in the same batch.` | The data source has multiple records that have the same primary key value. |

## Disable data sync

If your syncs continuously take longer than 4 hours, you may want to consider disabling data sync.

If you choose to disable data sync, you will need to update the source configuration of your record type. This will create new record fields with new UUIDs, so you will also need to update any existing references to your record fields with the new record field references.

### Disable data sync

To disable data sync:

1.  In the record type, go to **Data Model**.
2.  Next to **SOURCE**, click \> **Change Source**.
3.  Select your source type.
4.  Click **NEXT**.
5.  For **Choose how to access data**, select **Direct Data Access**. The data will be queried directly from the source.
6.  Click **NEXT**.
7.  Continue configuring your source and click **FINISH**.

### Find and replace existing field references

To find and replace existing field references in your environment:

1.  Find an instance of a reference that you need to replace.
2.  Copy the string.
3.  Comment it out by wrapping the reference in `/*` and `*/`.
4.  In your application, go to the **Build** view.
5.  Paste the string into the search box under **ALL OBJECTS**.

    **Tip:**  You can search for multiple strings at once by separating each string with a space.

6.  Next to the search button, click the down arrow and select **Expression**.
7.  Click the search icon.

Every object that references the string will appear in your search results. Once you have located all the references in your objects, update the field references. For updating field references in interfaces, we recommend updating the references in expression mode.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...