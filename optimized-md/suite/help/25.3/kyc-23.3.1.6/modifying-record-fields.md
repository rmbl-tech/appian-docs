---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/modifying-record-fields.html
original_path: kyc-23.3.1.6/modifying-record-fields.html
version: "25.3"
title: "Modifying Record Fields"
page_id: "kyc-23.3.1.6/modifying-record-fields"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Record Fields

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Each organization's processes are unique and often complex. Connected Onboarding is flexible enough to allow you to modify all of the form and data fields that you use to collect and view information for each onboarding.

The two main records that hold this data are the onboarding and customer records. This page provides guidance for adding or modifying fields for the two main records.

The methods discussed on this page apply to other records as well. The main difference is that other records don't have record lists on the Connected Onboarding site, so you don't need to update the record list database views and CDTs.

## Adding fields

If you need to capture more data than what exists in the default Connected Onboarding solution, you can add fields to the custom data type (CDT).

There are four main steps to add fields to the onboarding and customer records.

### Step 1: Update the database table

Add the extra column with the appropriate type into the database table.

For the onboarding records, the name of this table is `AS_IO_ONBOARDING_REQUEST`. For customer records, it is `AS_FS_CUSTOMER`.

### Step 2: Update the CDT

Add the extra field to the corresponding CDT, making sure the column name matches that of the column name in the CDT's XSD file.

The two main CDTs for the records are `AS_IO_OnboardingRequest` and `AS_FS_Customer`.

See [Mapping Custom Data Types (CDTs) to Pre-defined Database Tables](../Mapping_CDTs_to_Pre-defined_Database_Tables.html#update) for more information about making changes to CDTs.

### Step 3: Verify the data store

Verifying the data store makes sure that the CDT is mapped and ready to be used in your process.

To verify the data store:

1.  Navigate to the data store that holds the CDT.
    -   **Note**: `AS_IO_OnboardingRequest` and `AS_FS_Customer` are in `AS IO Data Store` and `AS FS Tables` data stores respectively.
2.  Click **VERIFY**.
3.  Make sure an "Entity mappings verified" message displays.
    -   If this message does not display, the database table or CDT updates may not match the data store.
4.  Click **SAVE & PUBLISH**.

See [Data Stores](../Data_Stores.html) for more information about editing data stores.

### Step 4: Add the new field to desired interfaces

You may also want to update the interfaces that use the CDT in order to capture and display the new data. We recommend making copies of the default objects. See [Best practices for modifying objects](#best-practices-for-modifying-objects) for more information.

The main interfaces are listed below, but there may be many more.

For the onboarding record, the main interfaces are:

-   `AS_IO_FM_onboardingSummary`: Summary view of the onboarding record.
-   `AS_IO_FM_createOrUpdateRequest`: Allows users to populate the data fields for an onboarding.

For the customer record, the main interfaces are:

-   `AS_FS_FM_customerSummary`: Summary view of the customer record.
-   `AS_FS_FM_customerDetails`: Allows users to populate the data fields for a customer.

## Modifying fields

Modifying fields in a CDT requires more care than just adding fields to a CDT. This is because every reference to an existing field must be updated if the name or data type changes.

There are four main steps to modifying the fields of the `AS_IO_OnboardingRequest` or `AS_FS_Customer` CDT.

**Note:**  Always follow Appian best practices when modifying CDT fields. See [Mapping Custom Data Types (CDTs) to Pre-defined Database Tables](../Mapping_CDTs_to_Pre-defined_Database_Tables.html#update) for more information on updating a CDT.

### Step 1: Update the database table

The first step in modifying CDT fields is to change the data structure in your database table.

For the onboarding records, the name of this table is `AS_IO_ONBOARDING_REQUEST`. For customer records, it is `AS_FS_CUSTOMER`.

See [Mapping Custom Data Types (CDTs) to Pre-defined Database Tables](../Mapping_CDTs_to_Pre-defined_Database_Tables.html#update) for more information about making changes to the database tables.

### Step 2: Update the database view

Because the solution contains the Onboardings and Customers record lists, you need to update the database view that backs the record list.

For the onboarding records, the name of this view is `AS_IO_V_ONBOARDING_REQUEST` . For customer records, it is `AS_FS_V_CUSTOMER`.

### Step 3: Update the CDTs

Update the fields in the CDTs for both the record and record list.

For the onboarding records, the name of these CDTs are:

-   `AS_IO_OnboardingRequest`
-   `AS_IO_V_OnboardingRequest`

For customer records, the name of these CDTs are:

-   `AS_FS_Customer`
-   `AS_FS_V_Customer`

### Step 4: Update the associated objects

Update the interfaces, expression rules, and process models that use the CDT. If you do not update the objects that reference the field you updated or deleted, the objects will break. We recommend making copies of the default objects. See [Best practices for modifying objects](#best-practices-for-modifying-objects) for more information.

The main interfaces are listed below, but there may be many more.

For the onboarding record, the main interfaces are:

-   `AS_IO_FM_onboardingSummary`: Summary view of the onboarding record.
-   `AS_IO_FM_createOrUpdateRequest`: Allows users to populate the data fields for an onboarding.

For the customer record, the main interfaces are:

-   `AS_FS_FM_customerSummary`: Summary view of the customer record.
-   `AS_FS_FM_customerDetails`: Allows users to populate the data fields for a customer.

## Best practices for modifying objects

To make sure you always have the default interfaces, expression rules, and process models to refer back to, we suggest the following:

-   Create copies of the interfaces, expression rules, and process models you want to update.
-   Name them with an identifiable prefix. For example, something different than `AS_IO`.
-   Use your new objects instead of the original objects.

**Tip:**  Do not create copies of the CDTs. This would require you to update every reference to the CDT in the application. Instead, just modify the default CDTs provided in the application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...