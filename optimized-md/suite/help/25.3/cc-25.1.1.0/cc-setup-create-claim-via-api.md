---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-create-claim-via-api.html
original_path: cc-25.1.1.0/cc-setup-create-claim-via-api.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a Claim via API

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Claims, which must be purchased separately from the Appian base platform. This content was written for Appian 25.1 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After installing the [Create Claim via API](cc-install-create-claim-api.html) add-on module, you can use it to create a claim directly in the Connected Claims Base application. This provides definitions for the Create Claim via API available after installing this add-on module in the same environment as your Connected Claims Base application.

The current version of the Create Claim API add-on module is version 1.0. All documentation listed below is pertinent to this version.

### System prerequisites

This section details the minimum requirements your system must meet to run the Create Claim API add-on module.

-   Appian platform running version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).- Imported **Connected Claims Management Base Application** application version 1.0 and higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Create Claim API add-on module application containers, including:
    -   `CCM Add-On: Create Claim API (CCM_API_CC)`

## Endpoint

The Create Claim API has a default endpoint of `ccm-claim-create`. Additionally, the version of API can be appended to the end of the endpoint; for example, `ccm-claim-create/v1` indicates a call to version 1 of the Create Case API. If no additional version path is provided, v1 of the Create Case API will be used.

## Expected Request Structure

### Headers

Clients are expected to send a `Content-Type` header as `application/json`. This is standard behavior for Appian API objects.

### Query Parameters

There are no expected query parameters that should be sent in a request to the Create Claim API.

### Body

The expected structure of a request body can be seen below:

| Variable Name | Datatype | Required |
| --- | --- | --- |
| claimType | code | Conditional |
| policyNumber | text | Conditional |
| title | text | Required |
| lossAddressCountry | code | Required |
| lossAddressLine1 | text | Required |
| lossAddressLine2 | text | Optional |
| lossAddressCity | text | Required |
| lossAddressStateProv | code | Conditional |
| lossAddressPostalCode | text | Required |
| lossDate | date | Required |
| lossAmountCurrency | code | Required |
| lossAmount | decimal | Required |
| lossDescription | text | Required |
| relatedParties | list of dictionary | Required |

#### relatedParties Dictionary

Within each relatedParties dictionary, the following structure is expected:

| Variable Name | Datatype | Required |
| --- | --- | --- |
| entityType | code | Required |
| name | text | Required |
| roleTypes | list of code | Required |
| phoneNumber | text | Conditional |
| email | text | Conditional |

### Code Fields

The fields listed above with a `code` datatype indicate that requests are expected to have a specific value from a predefined list provided for these fields. In the backend, these fields correspond to a specific list of reference data. Failure to provide a valid value for any one of these fields will result in a 400 error response.

A list of codes valid for a particular field can be found in the `API_CODE` column of the corresponding reference data table. As additional pieces of reference data are added, values in this column can be updated so that the new piece of reference data can be accepted by this API or other APIs across the application.

For front-end editable reference data, like Claim Type, the value of the `API_CODE` column is not populated on data write when users take corresponding actions to create or edit that piece of data. This means that in order to enable these new records to be referenced in the API, a developer must execute a database script that populates the value in the `API_CODE` column.

## Possible Responses

The following response codes can be sent back to the caller of the Create Claim API:

-   Response Code 200: This response code indicates a successful request and creation of a Claim in Appian. The provided response body will contain the Claim ID of the newly-created claim.

-   Response Code 400: This response indicates a bad request was sent by the caller. Claims will not be made from requests that return a 400 error response. In the response body, additional information will be provided as to why the request was bad. Possible errorCodes contained in the response body include:

    -   MISSING\_REQUIRED\_FIELD
        -   A field that was required in the request body was not present. The field that was missing will be provided.
    -   INVALID\_CODE
        -   A field that expects a code datatype did not have a valid value. The field that had an invalid value will be provided.
    -   DATA\_INTEGRITY\_VIOLATION
        -   Additional validations that take place on the request body were violated. This can include a range of possibilities and mimic any additional validations present in manual creation of a Claim. Possible reasons include sending both claimType and policyNumber, sending a policyNumber that does not correspond to a policy in the system, or sending a stateProv code that does not correspond to its sent country code.
    -   DATABASE\_LENGTH\_VIOLATION
        -   A field provided in the request breached its maximum length allowed in the database. The field or fields that were too long will be provided.
-   Response Code 404: This response code is an Appian default and indicates there was a problem authenticating.

-   Response Code 500: This response code is an Appian default and indicates there was a backend expression or process error.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...