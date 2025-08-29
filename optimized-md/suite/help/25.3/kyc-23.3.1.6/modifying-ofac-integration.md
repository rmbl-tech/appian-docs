---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/modifying-ofac-integration.html
original_path: kyc-23.3.1.6/modifying-ofac-integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying OFAC Integration

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

Some modifications to the OFAC integration require more changes than what is provided in the **System Administration Center**. These changes include:

-   [Changing the search parameters](#changing-the-search-parameters).
-   [Saving more information from OFAC](#saving-more-information).
-   [Changing the number of times the integration tries to connect to OFAC](#changing-the-try-count).

To learn about setting up and using the OFAC integration, see [Manage OFAC Integration](managing-integrations.html#integrating-with-ofac).

## Changing the search parameters

If a fuzzy name match on the customer's name is not specific enough or you would like to include more attributes of the customer in the search, create a new integration.

See the [Trade.gov website](https://developer.trade.gov/api-details#api=consolidated-screening-list&operation=search) for the available consolidated screening search parameters.

To change the search:

1.  If you want to use customer information that isn't included in the default solution, add the fields to the associated customer data types (CDT) and database tables. See [Modifying Record Fields](modifying-record-fields.html) for more information.
    -   **Note**: If you want to save different results, see [Saving more information](#saving-more-information).
2.  Create a [new integration](../Create_an_Integration.html) using the `AS FS Trade.gov Consolidated Screening` connected system.
3.  [Update the integration](../Call_an_Integration.html#call-an-integration-in-a-process-model) in the `AS FS CS Integration` process model.
4.  Update the integration in the `rule!AS_FS_CS_UT_queryAndMapScreeningResults` expression rule.
5.  If different results are returned or they are returned in a different style, update the `AS__GRD_consolidatedScreeningCheckResultsGrid`, `AS__CPS_reviewConsolidatedScreeningCheckTask_Results`, and `AS__CPS_reviewConsolidatedScreeningCheckTask` interfaces and the `AS_FS_CS_UT_mapResultsSources` expression rule.

## Saving more information

Each time the integration is called, the following information is stored in the `AS_FS_CS_RESULT` table:

-   Record ID (from the application) of the that the search was performed for.
-   Recored Type Code: Used to distinguish the record that the search was performed for. This will be `_` for .
-   Customer name used in search.
-   Customer ID (from the application).
-   Total number of results.
-   Sources checked.
-   Date and time of search.

If results are returned from the consolidated screening, stores the following information about each result in the `AS_FS_CS_RESULT_FINDING` table:

-   Result ID: key from the `AS_FS_CS_RESULT` table.
-   Score: how close of a match the result is.
-   Name: from the consolidated screening list.
-   Alt. Name(s): alternative names for the result.
-   Source: which list the information is from.
-   Source URL.
-   ID: from the consolidated screening list.
-   Is relevant: whether the result is marked as relevant.

More information from the API, such as addresses or citizenships, can be also be stored or displayed. The [Trade.gov website](https://api.trade.gov/apps/store/apis/info?name=ConsolidatedScreeningListAPI&version=v1&provider=dataservices@trade.gov) provides a list of available fields and their data types.

To save more information, add new fields to the OFAC integration records. See [Modifying Record Fields](modifying-record-fields.html) for more information.

The following may need to be updated when adding fields to these records:

-   **Database tables**: `AS_FS_CS_RESULT` and `AS_FS_CS_RESULT_FINDING`.
-   **CDTs**: `AS_FS_CS_Result` and `AS_FS_CS_Result_finding`
-   **Data store**: `AS FS OFAC Data Store`
-   **Main interfaces**: `AS__CS_reviewConsolidatedScreeningCheckTask` and `AS__GRD_consolidatedScreeningCheckResultsGrid`
-   **Main expression rules**: `rule!AS_FS_CS_UT_queryAndMapScreeningResults` and `rule!AS_FS_CS_UT_mapResultsSources`.

## Changing the try count

will try five times to connect to OFAC before designating the integration call as a failure.

If your IT has an integration try threshold that is different than five, change the try count by updating the `cons!AS_FS_CS_VAL_TRY_COUNT` constant.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...