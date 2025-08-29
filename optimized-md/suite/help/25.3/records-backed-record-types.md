---
source_url: https://docs.appian.com/suite/help/25.3/records-backed-record-types.html
original_path: records-backed-record-types.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Records-Backed Record Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers). It describes how to create records-backed record types to perform complex data transformations so data is prepared for analysis in process insights.

## Overview

In most cases, you should be able to [transform and enrich data](prepare-data.html) from your existing [case or event history record types](key-pi-terms.html#case-record-type-and-event-history-record-type) using record type relationships and custom record fields.

However, there are times when more transformation is necessary, like when you need to:

-   [Merge multiple event history record types](#merge-event-data-from-two-record-types) into one unified record type.
-   [Extract case data](#create-a-case-record-type-from-an-event-history-record-type) or [event history data](#create-an-event-history-record-type-from-a-case-record-type) from a record type.

In these scenarios, you can create a records-backed record type to perform these transformations.

## About the records-backed record type

A records-backed record type allows you to query, manipulate, and transform your existing record data in an [expression rule](Expression_Rules.html) and then use that transformed data as the source of the record type.

Records-backed record types should only be used as part of data preparation for process insights. Records-backed record types will not appear in the [Data Catalog](allow-users-to-build-reports.html), and they cannot be used for other parts of application development. For example, you cannot reference a records-backed record type in an [interfaces](interface_overview.html) or in a [Write Records](Write_Records_Smart_Service.html) or [Sync Records](Sync_Records_Smart_Service.html) smart service.

Before you create your own records-backed record type, make sure that:

-   The record types you want to transform have [data sync](about-data-sync.html) enabled.
-   You have at least **Viewer** permission for any existing record types you want to transform, like an existing case record type or different record types that store your event data separately.
-   You have access to all records in the record type. Review the record type's [record-level security](record-level-security.html) to ensure you can see all records.

For more information about capturing data to transform using a records-backed record type, see [Capturing Process Data](capture-process-data.html).

## Records data source requirements

A records-backed record type relies on an expression rule that queries and transforms existing record data into new data to use as the source. This expression rule is called a _records data source_.

The records data source must meet the following requirements:

-   **Function requirements**:
    -   You must use an [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) function to query record data.
    -   You cannot use `a!queryRecordType()` or `a!queryRecordByIdentifier()` more than 5 times.
    -   You cannot use these functions in a looping function or in the _recordType_ parameter of another `a!queryRecordType()` function.
-   **Output requirements**: The expression must return a list of [map](Appian_Data_Types.html#map-type), dictionary, or CDT.
-   **Batching requirements**: The expression rule must have exactly one rule input of type Number (Integer) to allow Appian to sync data in batches. Records-backed record types can sync up to 2,000 records at a time.
-   **Synced row limit**: Records-backed record types can sync up to 4 million rows.

## Create a records-backed record type

When you create a records-backed record type, you can create a new records data source from scratch, or you can use an existing records data source.

### Using a new records data source

To create a records-backed record type using a new records data source:

1.  [Create a new record type](Create_a_Record_Type.html#create-a-record-type).
2.  On the **Data Model** page, click **TELL US ABOUT YOUR DATA**.
3.  In the **Configure Data Source** dialog, click **Create a records-backed record type**.
4.  For **Data Sync Enabled**, click **NEXT**. By default, a records-backed record type will have data sync enabled.
5.  Leave **New Expression** selected.
6.  In the **Select the record type you want to use as a data source** field, select the record type you want to query.

    **Tip:**  You can query multiple record types in your records data source expression. Selecting a record type here gives you a jump start on your query.

7.  In **Create Expression Rule**, configuring the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the new expression rule you'll use as the records data source. |
    | **Description** | (Optional) Enter a description of the new expression rule. |
    | **Application** | Select the application where you want Appian to create the expression rule. |
    | **Save In** | Select the folder to save the rule in. |

8.  Click **NEXT**.
9.  For **Map source fields to record fields**, configure the following field properties:

    <table class="appianTable"><tbody><tr><td><b>Property</b></td><td><b>Action</b></td></tr><tr><td><b>Primary Key</b></td><td>Select a Number (Integer) or Text field to be the primary key.</td></tr><tr><td><b>Source Field Name</b></td><td>Use the checkbox next to a <b>Source Field Name</b> to add or remove a field from your record type. You can have up to 100 fields.</td></tr><tr><td><b>Record Field Name</b></td><td>Enter the name for the record field. This is the name that will be used to reference the field in Appian Designer.</td></tr><tr><td><b>Record Field Type</b></td><td>Use the dropdown to select the data types for the record fields.<br>We automatically suggest types based on the data type in the source.<br><br>We recommend at least the following changes:<ol><li>For fields containing usernames, change the type from Text to <a href="Appian_Data_Types.html#user">User</a>.</li><li>For fields containing group identifiers, change the type from Number (Integer) to <a href="Appian_Data_Types.html#group">Group</a>.</li></ol></td></tr><tr><td><b>Display Name</b></td><td>Enter a user-friendly field name to display to business users in <a href="processhq.html">Process HQ</a>. Use title case formatting and spaces in the display name so it's easy for users to read. For example, <code>Year-to-Date</code>.<br><br>When this field is blank, the <b>Record Field Name</b> is displayed in Process HQ using title case formatting.</td></tr><tr><td><b>Description</b></td><td>Enter a description of the field to display to business users in Process HQ.</td></tr></tbody></table>

10.  Drag and drop the rows to change the order in which the record fields are displayed.
11.  Click **FINISH**.
12.  Click **SAVE**.

### Using an existing records data source

To create a records-backed record type using an existing records data source:

1.  [Create a new record type](Create_a_Record_Type.html#create-a-record-type).
2.  On the **Data Model** page, click **TELL US ABOUT YOUR DATA**.
3.  In the **Configure Data Source** dialog, click **Create a records-backed record type**.
4.  For **Data Sync Enabled**, click **NEXT**. By default, a records-backed record type will have data sync enabled.
5.  Click **Existing Expression**.
6.  In the **Record Data Source** field, select the name of the expression rule to use as the source of the records-backed record type.
7.  Click **NEXT**.
8.  For **Map source fields to record fields**, configure the following field properties:

    <table class="appianTable"><tbody><tr><td><b>Property</b></td><td><b>Action</b></td></tr><tr><td><b>Primary Key</b></td><td>Select a Number (Integer) or Text field to be the primary key.</td></tr><tr><td><b>Source Field Name</b></td><td>Use the checkbox next to a <b>Source Field Name</b> to add or remove a field from your record type. You can have up to 100 fields.</td></tr><tr><td><b>Record Field Name</b></td><td>Enter the name for the record field. This is the name that will be used to reference the field in Appian Designer.</td></tr><tr><td><b>Record Field Type</b></td><td>Use the dropdown to select the data types for the record fields.<br>We automatically suggest types based on the data type in the source.<br><br>We recommend at least the following changes:<ol><li>For fields containing usernames, change the type from Text to <a href="Appian_Data_Types.html#user">User</a>.</li><li>For fields containing group identifiers, change the type from Number (Integer) to <a href="Appian_Data_Types.html#group">Group</a>.</li></ol></td></tr><tr><td><b>Display Name</b></td><td>Enter a user-friendly field name to display in <a href="processhq.html">Process HQ</a>. Use title case formatting and spaces in the display name so it's easy for users to read. For example, <code>Onboarding Event</code>.<br><br>When this field is blank, the <b>Record Field Name</b> is displayed in Process HQ using title case formatting.</td></tr><tr><td><b>Description</b></td><td>Enter a description of the field to display in Process HQ.</td></tr></tbody></table>

9.  Drag and drop the rows to change the order in which the record fields are displayed.
10.  Click **FINISH**.
11.  Click **SAVE**.

## Refine the records data source expression

Once the records-backed record type has been created, you can click the name of the expression rule to begin refining the query.

When you generate a new expression rule while configuring your records-backed record type, it will look something like this:

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
a!localVariables(
  local!batchSize: 2000,
  a!queryRecordType(
    recordType: recordType!Order Event History,
    pagingInfo: a!pagingInfo(
       startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
       batchSize: local!batchSize
    )
  ).data
)
```

This expression will only return the primary key field from the selected record type. You should use this expression as a starting point to specify certain fields and perform additional transformations.

For example, the following expression would exclude events that match certain [activities](key-pi-terms.html#cases-activities-events):

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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
      a!localVariables(
         local!batchSize: 2000,
         local!order: a!queryRecordType(
            recordType: recordType!Order Event History,
            fields: recordType!Order Event History.fields.orderNumber,
            pagingInfo: a!pagingInfo(
               startIndex: ri!batchNumber,
               batchSize: local!batchSize
            )
         ).data,
         local!orderId: tointeger(index(local!order[recordType!Order Event History.fields.orderNumber], 1, -1)),
         if(
            local!orderId < 0,
            {},
            a!localVariables(
               local!events: a!queryRecordType(
                  recordType: recordType!Order Event History,
                  fields: {
                    recordType!Order Event History.fields.id,
                    recordType!Order Event History.fields.orderId,
                    recordType!Order Event History.fields.activity,
                    recordType!Order Event History.fields.startTime,
                    recordType!Order Event History.fields.endTime,
                  },
                  filters: a!queryFilter(
                     field: recordType!Order Event History.fields.orderId,
                     operator: "=",
                     value: local!orderId
                  ),
                  pagingInfo: a!pagingInfo(
                     startIndex: 1,
                     batchSize: 2000
                  )
               ).data,
               a!forEach(
                  items: local!events,
                  expression: a!match(
                     value: fv!item[recordType!Order Event History.fields.activity],
                     equals: "Canceled Order",
                     then: {},
                     equals: "Returned Order",
                     then: {},
                     default: a!map(
                        id: fv!item[recordType!Order Event History.fields.id],
                        order: fv!item[recordType!Order Event History.fields.orderId],
                        activity: fv!item[recordType!Order Event History.fields.activity],
                        start: rule!formatTimeStamp(fv!item[recordType!Order Event History.fields.startTime]),
                        end: rule!formatTimeStamp(fv!item[recordType!Order Event History.fields.endTime])
                     )
                  )
               )
            )
         )
      )
```

For detailed examples, see the [example records data source expressions](#examples) below.

## Schedule full syncs

After creating a records-backed record type, you should [schedule a full sync](records-data-sync.html#schedule-full-syncs) so the data will always be available and up-to-date with the record types it's referencing.

## Configure security

Records-backed record types do not inherit security configurations from the record types queried in the records data source. Instead, you will need to configure [object security](record-security.html) for the new record type when you create it.

**Note:**  You cannot configure record-level security on a records-backed record type.

Make sure the account that is [deploying](deploy-to-production.html) to production has the following permissions:

-   At least **Viewer** permission for the new [record type](record-security.html).
-   At least **Viewer** permission for all record types queried in the records data source.
-   Access to all [records](record-level-security.html) queried in the records data source.

Make sure any users who modify the records data source have access to all records in the queried record types. If the user who last modified the expression is missing access to any records, those records will not be included in the records-backed record type.

If you already know which users will use this record type to add processes, you can [assign **Data Steward** permissions](configure-security.html#assign-data-stewards-to-record-types) before deploying. Because records-backed record types are only used for process insights, you do not need to configure additional record type security.

**Note:**  Data stewards need to be able to accurately select fields for analysis, obfuscate data, and create custom attributes when adding processes. As a result, data stewards can see all rows of data for record types they have access to in Process Insights, even if you configured [record-level security](record-level-security.html) for those record types.

## Deploy to production

Once your new records-backed record type is fully configured, [deploy](deploy-to-production.html) it to production so data stewards can use it to [add a process for analysis](add-process.html).

**Note:**  Ensure the service account has the necessary [security](#configure-security) configured.

## Examples

The following examples illustrate some common uses for records-backed record types, including records data source expressions you can use for reference when transforming your own data.

### Merge event data from two record types

You may have [event data](key-pi-terms.html#case-data-and-event-data) for a process that is stored in multiple locations. You can use a records-backed record type to combine the event data into a single [event history record type](key-pi-terms.html#case-record-type-and-event-history-record-type) for process insights.

For example, let's say you have a customer onboarding process that includes the following [activities](key-pi-terms.html#cases-activities-events):

-   Application Received
-   Completed Pre-Onboarding Compliance Check
-   Completed Know Your Customer (KYC) Review
-   Completed Financial Document Verification
-   Completed Financial Review
-   Approved Document
-   Completed User Account Provisioning
-   Funded Account

In this example, all events are stored in the Onboarding Event History record type except events for the Completed Financial Document Verification activity. Because this activity takes place in a separate system, its events have been stored in the Doc Verification Event History record type.

The Onboarding Event History record type in this example has the following fields:

-   `id`
-   `caseId`
-   `activityId`
-   `timestamp`
-   `user`
-   `automationType`
-   `comment`

The Doc Verification Event History record type in this example has the following fields:

-   `id`
-   `timestamp`
-   `eventType`
-   `documentId`

The following records data source expression queries these two record types and combines them into one output. The output of this expression is a list of map that returns 7 fields, with a total of 2,000 rows of data (1,000 from each of the original record types).

See a line-by-line breakdown of the expression below.

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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
a!localVariables(
  local!batchSize: 1000,
  local!baseEvents: a!queryRecordType(
    recordType: recordType!Onboarding Event History,
    fields: a!selectionFields(
              allFieldsFromRecordType: {
                recordType!Onboarding Event History,
                recordType!Onboarding Event History.relationships.onboardingEventType
              }
            ),
    filters: {
      a!queryFilter(
        field: recordType!Onboarding Event History.fields.activityID,
        operator: "<>",
        value: 4
      )
    },
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
  local!extraEvents: a!queryRecordType(
    recordType: recordType!Doc Verification Event History,
    fields: a!selectionFields(
              allFieldsFromRecordType: {
                recordType!Doc Verification Event History,
                recordType!Doc Verification Event History.relationships.Document
              }
            ),
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
  a!flatten(
    {
      a!forEach(
        items: local!baseEvents,
        expression: a!map(
          id: fv!item[recordType!Onboarding Event History.fields.id] & "&" & 1,
          caseId: fv!item[recordType!Onboarding Event History.fields.caseId],
          activity: fv!item[recordType!Onboarding Event History.relationships.onboardingEventType.fields.activity],
          timestamp:  fv!item[recordType!Onboarding Event History.fields.timestamp],
          user: fv!item[recordType!Onboarding Event History.fields.user],
          automationType: fv!item[recordType!Onboarding Event History.fields.automationType],
          comment: fv!item[recordType!Onboarding Event History.fields.comment]
        )
      ),
      a!forEach(
        items: local!extraEvents,
        expression: a!map(
          id: fv!item[recordType!Doc Verification Event History.fields.id]  & "&" & 2,
          caseId: fv!item[recordType!Doc Verification Event History.relationship.Document.fields.caseID],
          activity: fv!item[recordType!Doc Verification Event History.fields.eventType],
          timestamp:  fv!item[recordType!Doc Verification Event History.fields.timestamp],
          user: null,
          automationType: null,
          comment: null
        )
      )
    }
  )
)
```

#### \[Line 1-26\] Query data from each record type

The first part of the expression sets up local variables by querying data from the Onboarding Event History record type and the Document Verification Event History record type.

Because we are combining records from two record types and records-backed record types can sync up to 2,000 records at a time, `local!batchSize` is set to return 1,000 records from each record type.

The `local!baseEvent` variable queries 1,000 records from the Onboarding Event History record type and the Onboarding Event Type Lookup record type, excluding events where the activityID is 4. In this example, activityID 4 corresponds to the Completed Financial Document Verification activity. Since we need to get events for that activity from the Document Verification Event History record type instead, we're excluding them here.

The `local!extraEvents` variable queries 1,000 records from the Document Verification Event History record type and the Document record type.

```sail
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
{
a!localVariables(
  local!batchSize: 1000,
  local!baseEvents: a!queryRecordType(
    recordType: recordType!Onboarding Event History,
    fields: a!selectionFields(
              allFieldsFromRecordType: {
                recordType!Onboarding Event History,
                recordType!Onboarding Event History.relationships.onboardingEventType
              }
            ),
    filters: {
      a!queryFilter(
        field: recordType!Onboarding Event History.fields.activityID,
        operator: "<>",
        value: 4
      )
    },
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
  local!extraEvents: a!queryRecordType(
    recordType: recordType!Doc Verification Event History,
    fields: a!selectionFields(
              allFieldsFromRecordType: {
                recordType!Doc Verification Event History,
                recordType!Doc Verification Event History.relationships.Document
              }
            ),
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
```

#### \[Line 27-55\] Merge the data into a single record type

The second part of the expression combines the queried data from the Onboarding Event History record type and the Document Verification Event History record type.

Here, we use [a!flatten()](fnc_array_a_flatten.html) to make sure the data is merged into a single flat list rather than multiple lists.

Each `a!forEach()` function returns data from one of the record types (using `local!baseEvent` and `local!extraEvents`) and maps it to the following fields:

-   `id`
-   `caseId`
-   `activityId`
-   `timestamp`
-   `user`
-   `automationType`
-   `comment`

To make sure values in the records-backed record type `id` field are unique, we're customizing the id values from each original record type. Ids for events from the first record type are appended with "& 1" (1 & 1, 2 & 1, 3 & 1, etc.), and ids for events from the second record type are appended with "& 2" (1 & 2, 2 & 2, 3 & 2, etc.).

Because the Document Verification Event History record type is missing some required fields (such as `user`), we specify "null" as the value for each missing required field.

```sail
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
{
  a!flatten(
    {
      a!forEach(
        items: local!baseEvents,
        expression: a!map(
          id: fv!item[recordType!Onboarding Event History.fields.id] & "&" & 1,
          caseId: fv!item[recordType!Onboarding Event History.fields.caseId],
          activity: fv!item[recordType!Onboarding Event History.relationships.onboardingEventType.fields.activity],
          timestamp:  fv!item[recordType!Onboarding Event History.fields.timestamp],
          user: fv!item[recordType!Onboarding Event History.fields.user],
          automationType: fv!item[recordType!Onboarding Event History.fields.automationType],
          comment: fv!item[recordType!Onboarding Event History.fields.comment]
        )
      ),
      a!forEach(
        items: local!extraEvents,
        expression: a!map(
          id: fv!item[recordType!Doc Verification Event History.fields.id]  & "&" & 2,
          caseId: fv!item[recordType!Doc Verification Event History.relationship.Document.fields.caseID],
          activity: fv!item[recordType!Doc Verification Event History.fields.eventType],
          timestamp:  fv!item[recordType!Doc Verification Event History.fields.timestamp],
          user: null,
          automationType: null,
          comment: null
        )
      )
    }
  )
)
```

### Create an event history record type from a case record type

You may have a single record type for all of your process data, meaning your [case and event data](key-pi-terms.html#case-data-and-event-data) are stored together in a single source. You can use a records-backed record type to split this data into two [separate record types](key-pi-terms.html#case-record-type-and-event-history-record-type).

For example, let's say you have an Invoice record type containing your case and event data. The record type includes the following columns with timestamps for when each invoice was created, posted, approved, and completed:

| id | createdOn | postedOn | approvedOn | completedOn |
| --- | --- | --- | --- | --- |
| 23124 | 2024-03-24 12:23:10 | 2024-03-24 16:24:10 | 2024-03-26 7:30:11 | 2024-03-26 17:05:01 |
| 23125 | 2024-03-22 4:23:10 | 2024-03-23 4:19:52 | 2024-03-26 4:39:08 | 2024-03-27 4:13:45 |

This data model contains information about your process, but because it is all stored in a single record type, it is not compatible with process insights. We need to create a separate record type for the event data, and that record type will need `id`, `caseId`, `activity`, and `timestamp` fields.

We can use a records-backed type to extract the event information from the case record type. Then, we can use the records-backed record type as the event history record type in process insights.

In this example, we'll use the records data source expression to convert the `createdOn`, `postedOn`, `approvedOn`, and `completedOn` columns in our table into event types, which will be stored in the new `activity` field on the event history record type. The possible values for the `activity` field will be:

-   Created Invoice
-   Posted Invoice
-   Approved Invoice
-   Completed Invoice

Then, we need to map the timestamps from each of these columns to a new `timestamp` field. Our goal is to convert each timestamp in each case record into an event in an event history record type. In this example, the transformed case data would look something like this:

| id | caseId | activity | timestamp |
| --- | --- | --- | --- |
| 1 | 23124 | Created Invoice | 2024-03-24 12:23:10 |
| 2 | 23125 | Created Invoice | 2024-03-22 4:23:10 |
| 3 | 23124 | Posted Invoice | 2024-03-24 16:24:10 |
| 4 | 23125 | Posted Invoice | 2024-03-23 4:19:52 |
| 5 | 23124 | Approved Invoice | 2024-03-26 7:30:11 |
| 6 | 23125 | Approved Invoice | 2024-03-26 4:39:08 |
| 7 | 23124 | Completed Invoice | 2024-03-26 17:05:01 |
| 8 | 23125 | Completed Invoice | 2024-03-27 4:13:45 |

The following records data source expression queries the Invoice record type (the case record type), maps the different columns into a standard list of [activities](key-pi-terms.html#cases-activities-events), and then converts each timestamp into an event. The output of this expression is a list of map that returns 4 fields that are required for an event history record type, with a total of 2,000 rows of data (500 from each batch).

See a line-by-line breakdown of the expression below.

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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
a!localVariables(
  /* Max batch size return is 2000. Since we have 4 activities, */
  /* we will query 500 rows for each activity (4 activities * 500 cases = 2000 events) */
  local!batchSize: 500,
  /* First query for a set of fields and rows for the current batch */
  local!queryResult: a!queryRecordType(
    recordType: recordType!Invoices,
    fields: {
      recordType!Invoices.fields.createdOn,
      recordType!Invoices.fields.postedOn,
      recordType!Invoices.fields.approvedOn,
      recordType!Invoices.fields.completedOn
    },
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
  /* Start by looping through those rows */
  a!flatten(
    a!forEach(
      items: local!queryResult,
      expression: a!localVariables(
        /* Store the current loop's value in a local variable since we are nesting a forEach here */
        local!queryResultItem: fv!item,
        /* Create a list of the combination of possible events we are looking to create, */
        /* matching the activity names to the columns that represent the timestamps for those activities */
        local!possibleActivities: {
          a!map(
            column: recordType!Invoices.fields.createdOn,
            activity: "Created Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.postedOn,
            activity: "Posted Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.approvedOn,
            activity: "Approved Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.completedOn,
            activity: "Completed Invoice"
          )
        },
        /* Now, for each of those activities we will create the possible events that happened in that case */
        a!forEach(
          items: local!possibleActivities,
          expression: a!localVariables(
            /* Store the timestamp in a variable since we will be referencing it twice */
            local!timestamp: local!queryResultItem[fv!item.column],
            /* First check if there was a timestamp recorded for the current event */
            if(
              a!isNotNullOrEmpty(local!timestamp),
              /* Create a map that represents our new event using the data from above */
              a!map(
                /* Combining the caseID and index to ensure we get a unique ID for each event */
                id: local!queryResultItem[recordType!Invoices.fields.id] & "--" & fv!index,
                caseId: local!queryResultItem[recordType!Invoices.fields.id],
                activity: fv!item.activity,
                timestamp: local!timestamp
              ),
              {}
            )
          )
        )
      )
    )
  )
)
```

#### \[Line 1-38\] Query data and map timestamp columns to acitivies

The first part of the expression sets up local variables by querying data from the Invoice record type.

Because records-backed record types can sync up to 2,000 records at a time, the `local!queryResult` variable queries records from the Invoices record type, and uses `local!batchSize` to return 500 records in each batch.

The `local!possibleActivities` variable maps the `createdOn`, `postedOn`, `approvedOn`, and `completedOn` columns to their corresponding activity names.

We use `a!flatten()` to make sure the data is returned as a single flat list rather than multiple lists.

```sail
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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
{
a!localVariables(
  /* Max batch size return is 2000. Since we have 4 activities, */
  /* we will query 500 rows for each activity (4 activities * 500 cases = 2000 events) */
  local!batchSize: 500,
  /* First query for a set of rows for the current batch */
  local!queryResult: a!queryRecordType(
    recordType: recordType!Invoices,
    fields: {
      recordType!Invoices.fields.createdOn,
      recordType!Invoices.fields.postedOn,
      recordType!Invoices.fields.approvedOn,
      recordType!Invoices.fields.completedOn
     },
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data,
  /* Start by looping through those rows */
  a!flatten(
    a!forEach(
      items: local!queryResult,
      expression: a!localVariables(
        /* Store the current loop's value in a local variable since we are nesting a forEach here */
        local!queryResultItem: fv!item,
        /* Create a list of the combination of possible events we are looking to create, */
        /* matching the activity names to the columns that represent the timestamps for those activities */
        local!possibleActivities: {
          a!map(
            column: recordType!Invoices.fields.createdOn,
            activity: "Created Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.postedOn,
            activity: "Posted Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.approvedOn,
            activity: "Approved Invoice"
          ),
          a!map(
            column: recordType!Invoices.fields.completedOn,
            activity: "Completed Invoice"
          )
        },
```

#### \[Line 39-63\] Transform the timestamp values into events

The second part of the expression transforms the queried data from the Invoice record type to create event data.

Now that we've mapped the timestamp columns to their corresponding activities, we need to create a new timestamp field that displays the date and time when each activity occurred.

For each activity (`local!possibleActivities`), the `a!forEach()` function looks for a timestamp. If there is a timestamp, it creates an event of that activity and maps the record data to the following fields:

-   `id`
-   `caseId`
-   `activity`
-   `timestamp`

To make sure values in the records-backed record type `id` field are unique, we're customizing the id values by combining the `caseId` and index from each record.

```sail
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
{
        /* Now, for each of those rows we will create the possible events that happened in that row */
        a!forEach(
          items: local!possibleActivities,
          expression: a!localVariables(
            /* Store the timestamp in a variable since we will be referencing it twice */
            local!timestamp: local!queryResultItem[fv!item.column],
            /* First check if there was a timestamp recorded for the current event */
            if(
              a!isNotNullOrEmpty(local!timestamp),
              /* Create a map that represents our new event using the data from above */
              a!map(
                /*combining the caseID and index to ensure we get a unique ID for each event*/
                id: local!queryResultItem['recordType!Invoices.fields.id'] & "--" & fv!index,
                caseId: local!queryResultItem['recordType!Invoices.fields.id'],
                activity: fv!item.activity,
                timestamp: local!timestamp
              ),
              {}
            )
          )
        )
      )
    )
  )
)
```

### Create a case record type from an event history record type

You may have an event history record type with your data for a process, but you don't have a separate record type for your [case data](key-pi-terms.html#case-data-and-event-data). Like the [example above](#create-an-event-history-record-type-from-a-case-record-type), you can use a records-backed record type to split this data into two [separate record types](key-pi-terms.html#case-record-type-and-event-history-record-type).

For example, let's say you have an Employee Event History record type that stores events in your employee management process, but you don't have an Employee record type that stores your case data. Your Employee Event History record type looks something like this:

| id | caseId | employeeName | activity | timestamp |
| --- | --- | --- | --- | --- |
| 412 | 253 | Employee A | Promoted | 2024-03-26 7:30:11 |
| 413 | 253 | Employee A | Created | 2024-03-22 4:23:10 |
| 414 | 255 | Employee B | Created | 2024-03-21 13:27:04 |

This data model contains information about your process, but because it is all stored in a single record type, it is not compatible with process insights. We need to create a separate record type for the case data.

We can use a records-backed type to extract the case information from the event history record type. Then, we can use the records-backed record type as the case record type in process insights.

In this example, the extracted case data would look like this:

| caseId | employeeName |
| --- | --- |
| 253 | Employee A |
| 255 | Employee B |

The following expression queries the Employee Event History record type and groups by the case ids and employee names fields. The output of this expression is a list of map that returns 2 fields with the unique case ids and employee names.

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
13
14
15
16
17
18
19
20
21
22
a!localVariables(
  local!batchSize: 2000,
  a!queryRecordType(
    recordType: recordType!Employee Event History,
    fields: a!aggregationFields(
      groupings: {
        a!grouping(
          field: recordType!Employee Event History.fields.caseId,
          alias: "caseID"
        ),
        a!grouping(
          field: recordType!Employee Event History.fields.employeeName,
          alias: "employeeName"
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data
)
```

#### \[Line 1-22\] Group values by caseId and employeeName

The expression queries data from the Employee Event History record type and uses `a!aggregationFields()` to group values by field.

The first `a!grouping()` function returns unique values from the `caseID` column. In this example, this would include values like 253 and 255, which correspond to each unique employee.

```sail
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
{
a!localVariables(
  local!batchSize: 2000,
  a!queryRecordType(
    recordType: recordType!Employee Event History,
    fields: a!aggregationFields(
      groupings: {
        a!grouping(
          field: recordType!Employee Event History.fields.caseId,
          alias: "caseID"
        ),
```

The second `a!grouping()` function returns unique values from the `employeeName` column. In this example, this would include values like Employee A and Employee B.

```sail
11
12
13
14
15
16
17
18
19
20
21
22
23
{
        a!grouping(
          field: recordType!Employee Event History.fields.employeeName,
          alias: "employeeName"
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1 + (ri!batchNumber - 1) * local!batchSize,
      batchSize: local!batchSize
    )
  ).data
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...