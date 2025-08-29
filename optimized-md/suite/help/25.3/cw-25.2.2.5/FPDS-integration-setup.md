---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/FPDS-integration-setup.html
original_path: cw-25.2.2.5/FPDS-integration-setup.html
version: "25.3"
title: "Setting up FPDS Integration"
page_id: "cw-25.2.2.5/FPDS-integration-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up FPDS Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Writing, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Contract Writing (CW) solution comes with an integration with the Federal Procurement Data System (FPDS). This integration supports data flow between the FPDS and CW and enables the creation of Contract Action Reports (CARs) for Indefinite Delivery Vehicles (IDVs) directly from CW.

This page provides instructions for setting up the integration.

## System Requirements

Minimum requirements for the FPDS integration:

-   Appian 25.1 or greater
-   Contract Writing 2.4.0 or greater

### Additional Requirements

Additional requirements for the FPDS integration include one required plugin and environmental constants that must be added to the properties file before deploying CW 2.4.

**Required Plugin:**

-   Advanced Call web service

**Environmental constants:**

-   `AS_GCW_FPDS_TXT_USER_ID`
-   `AS_GCW_FPDS_TXT_PASSWORD`
-   `AS_GCW_FPDS_TXT_NG_AGENCY_ID`
-   `AS_GCW_FPDS_TXT_CO_AGENCY_ID`
-   `AS_GCW_FPDS_TXT_ENDPOINT_ADDRESS_GUI_SERVICES`
-   `AS_GCW_FPDS_TXT_ENDPOINT_ADDRESS_BUSINESS_SERVICE`

**Caution:**  These constants must be included in the properties file before deploying CW 2.4

## Setup the FPDS integration

Complete the following prerequisites to begin using the FPDS integration:

1.  For users that need the ability to create Contract Action Reports from CW, add the _Service Originator ID_:
    1.  The _Service Originator ID_ is the user account in FPDS. Make sure this account is properly configured for each necessary web service method.
    2.  In the target environment, sign in as a system administrator to complete this setup for any accounts that require it.
    3.  Navigate to the **Admin Console** and select **Users**.
    4.  Search for the appropriate usernames and select.
    5.  In the **Custom Fields** section, add the _Service Originator ID_ value in **Custom Field 10**.
2.  Authenticate with FPDS account:
    1.  Successful integration requires an FPDS username (system ID) and password (API key).
    2.  Add these values to the following constants:
        1.  `AS_GCW_FPDS_TXT_USER_ID`
        2.  `AS_GCW_FPDS_TXT_PASSWORD`ß
3.  Enable the integration in the **Contract Writing Settings Site** on the **Integrations** tab.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...