---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/modifying-ofac-integration.html
original_path: cu-25.2.1.7/modifying-ofac-integration.html
version: "25.3"
title: "Modify OFAC Integration"
page_id: "cu-25.2.1.7/modifying-ofac-integration"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modify OFAC Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Changes to the OFAC integration require developer modification. This document covers the procedure for making common anticipated changes. These changes include:

-   [Changing the search parameters](#change-the-search-parameters).
-   [Saving more information from OFAC](#save-more-information).

To learn about setting up and using the OFAC integration, see [Manage OFAC Integration](managing-integrations.html#integrate-with-ofac).

## Change the search parameters

If a fuzzy name match on the customer's name is not specific enough or you would like to include more attributes of the customer in the search, create a new integration.

See the [Trade.gov website](https://developer.trade.gov/api-details#api=consolidated-screening-list&operation=search) for the available consolidated screening search parameters.

To change the search:

1.  Modify `ISU_TRADEGOV_GET_consolidatedScreeningSearch` to utilize the desired search options.
2.  If different results are returned, or they are returned in a different style, update `ISU_editSanctionsResultsList` to display the appropriate values in the sanctions results grid.
3.  Review `ISU_updateSanctionsResult` to ensure that the appropriate fields are still being passed into `ISU_createRecordSanctionsResult` to ensure sanctions results are correctly saved to the submission upon completion of the check.

## Save more information

Each time the integration is called, the following information is stored in the `ISU_Record_Sanctions_Check` record and associated database table:

-   **Submission ID**: database pk for the submission on which the search was performed.
-   **Customer ID**: database pk for the customer that was associated with the submission at the time of the sanctions check.
-   Customer name used in the search.
-   Date and time of the search.

If results are returned from the consolidated screening, Connected Underwriting P&C stores the following information about each result in the `ISU_Record_Sanctions_Result` record and associated database table:

-   **Sanctions Check ID**: key from `ISU_Record_Sanctions_Check`.
-   **Search Score**: how close of a match the result is.
-   **Name**: from the consolidated screening list.
-   **Alt. Name(s)**: alternative names for the result. Multiple names are stored as a semicolon-separated text string.
-   **Source Name**: which list the information is from.
-   **Source List URL**
-   **Source Result ID**: from the consolidated screening list.
-   **Is relevant**: whether the result is marked as relevant.

More information from the API, such as addresses or citizenships, can also be stored or displayed. The [Trade.gov website](https://api.trade.gov/apps/store/apis/info?name=ConsolidatedScreeningListAPI&version=v1&provider=dataservices@trade.gov) provides a list of available fields and their data types.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...