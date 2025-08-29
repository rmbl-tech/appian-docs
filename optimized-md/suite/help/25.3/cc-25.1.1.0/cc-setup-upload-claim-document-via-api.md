---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-upload-claim-document-via-api.html
original_path: cc-25.1.1.0/cc-setup-upload-claim-document-via-api.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Uploading Claim Document API Module

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

After installing the [Upload Claim Document API](cc-install-upload-claim-doc-api.html) add-on module, you can use it to create a claim directly in the Connected Claims Base application. This provides definitions for the Create Claim via API available after installing this add-on module in the same environment as your Connected Claims Base application.

All documentation listed below is pertinent to Upload Claim Document APIs version 1.0.

### System prerequisites

This section details the minimum requirements your system must meet to run the Upload Claim Document API add-on module.

-   Appian platform running version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).- Imported **Connected Claims Management Base Application** application version 1.0 and higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Upload Claim Document API add-on module application containers, including:
    -   `CCM Add-On: Claim Upload Document API (CCM_API_CUD)`

## Endpoint

The Upload Document API has a default endpoint of ccm-claim-upload-document. Additionally, the version of API can be appended to the _very_ end of the endpoint; for example, `ccm-claim-upload-document/…../v1` indicates a call to version 1 of the Upload Document API. If no additional version path is provided, v1 of the Upload Document API will be used.

## Expected Request Structure

### Headers

Clients are expected to send a ‘Content-Type `header as “binary”. This should ensure that the actual documents sent in the request maintain their original integrity (i.e., extension) in Appian. Additionally, clients can optionally specify the name of the document in Appian by providing a header` Appian-Document-Name\` and stating the name of the document. By default, “Untitled document from web API” will be used for the document’s name. Note that this is platform-level behavior for Appian API objects that accept documents.

### Query Parameters

There are no expected query parameters that should be sent in a request to the Claim Upload Document API.

### Path

In addition to the version of the API, the claimId to which the document should be uploaded and the documentType of the document should be passed in the path of the call to the API. The expected structure of the path for the API is:

`…./ccm-claim-upload-document/&lt;claimId>/&lt;documentType>/&lt;version (optional)>`

The `claimId` parameter in the above structure relates to the Claim ID of the Claim as it is displayed on the front-end in the solution. This specifies which Claim to which the document should be attached, which is required in the path structure of requests. The `documentType` parameter in the path specifies the type of the document. The value provided for this part of the path corresponds to a specific value from a predefined list of Document Types, which is the list of reference data in the corresponding Document Type table. The value referenced in the path should correspond to a value in the `API_CODE` column of the Document Type table. Failure to provide a valid value for both `claimId` and `documentType` in the path will result in a 400 error response.

### Body

The document, provided as binary, should be the sole thing provided in the body of the request. Bodies are required in all requests.

## Possible Responses

The following response codes can be sent back to the caller of the Claim Upload Document API:

### Response Code 200

This response code indicates a successful request and attachment of a Document to a Claim in Appian. The provided response body will specify that the document was successfully attached to the Claim.

### Response Code 400

This response code indicates a bad request was sent by the caller. Documents will not be attached given a 400 error response. In the response body, additional information will be provided as to why the request was bad. Possible errorCodes contained in the response body include:

-   **MISSING\_REQUIRED\_FIELD**: A field that was required in the request body was not present. The field that was missing will be provided.
-   **INVALID\_CODE**: A field that expects a code datatype did not have a valid value. The field that had an invalid value will be provided.
-   **DATA\_INTEGRITY\_VIOLATION**: Additional validations that take place on the request were violated. Specifically in the case of the Upload Document API, this error code will be provided if an invalid Claim ID was provided in the path of the request.

### Response Code 404

This response code is an Appian default and indicates there was a problem authenticating.

### Response Code 500

This response code is an Appian default and indicates there was a backend expression or process error.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...