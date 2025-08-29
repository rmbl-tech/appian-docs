---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-upload-claim-document-api-overview.html
original_path: cc-25.1.1.0/cc-upload-claim-document-api-overview.html
version: "25.3"
title: "Upload Claim Document API Module Overview"
page_id: "cc-25.1.1.0/cc-upload-claim-document-api-overview"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upload Claim Document API Module Overview

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

When external systems lack a direct, programmatic way to attach documents to existing claims a manual document uploading is necessary. This can lead to potential bottlenecks, increased processing time, and higher chances of human error.

The Upload Claim Document API add-on module provides an endpoint for external systems to attach a document to an existing claim in the Connected Claims application. Clients of the API are able to provide a Claim ID, the document type, and the document itself (sent as binary) in their requests. Upon successful validation of their request, a success response is sent to the caller validating that the document was successfully attached to the Claim provided.

## Module benefits

With the Upload Claim Document API add-on module, clients of the API are able to provide a Claim ID, the document type, and the document itself (sent as binary) in their requests. Upon successful validation of their request, a success response is sent to the caller validating that the document was successfully attached to the Claim provided.

## Use case:

Imagine a scenario where a a partner organization has a web portal that allows customers to submit claim information and supporting documents. After submission, the partner manually downloads the claim documents, then uploads them into their claims management application. Or a scenario where a third-party insurance adjuster uses a separate system for initial claim intake and document collection. Then at a separate time they download and attach the supporting photos and a damage report directly to a claim in their claims management application. In both scenarios, the document upload process would be inefficient and time-consuming.

With the Upload Claim Document API add-on module, the partner organization and the claims adjuster can automatically send the Claim ID, document type, and the document files to the API endpoint. Upon successful upload, the API returns a confirmation, ensuring the documents are associated with the correct claim. Essentially, the Upload Claim Document API automates and streamlines document upload and eliminates the need for manual intervention.

## Ready to get started?

See [Install Upload Claim Document API](cc-install-upload-claim-doc-api.html) to incorporate this module with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...