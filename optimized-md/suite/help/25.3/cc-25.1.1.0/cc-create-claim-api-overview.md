---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-create-claim-api-overview.html
original_path: cc-25.1.1.0/cc-create-claim-api-overview.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a Claim via API Overview

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

Insurance organizations that rely on external data entry methods for claims processing can face significant hurdles, like increases in processing time, human errors, and delays in claim intake and initiation. These inefficiencies slow down the entire claims workflow, negatively impacting operational effectiveness and customer satisfaction.

The Create Claim API add-on module provides an endpoint for external systems to create a new claim in the Connected Claims Management application.

## Module benefits

With the Create Claim API add-on module, clients of the API are able to specify data about a claim in the body of their requests. Upon successful validation of their request, a success response containing the claim ID of the newly-created case is provided back to the caller. The structure of the Create Claim API mimics the structure and process of manual creation of a claim, and the same data points and validations are used in the API as they are in the manual wizard for creating a claim.

By allowing external systems to create new claims via an API, the Create Claim API add-on module streamlines the claims management process by automating the claim intake process. It eliminates the need for manual entry of claim data from external sources.

## Use case: automate auto insurance claim creation

Imagine a scenario where a large auto insurance company partners with numerous car dealerships. These dealerships frequently facilitate car sales that include insurance policies underwritten by the insurance company.

Previously, when a car was sold and a policy initiated, the dealership staff had to manually enter the new claim information into the insurance company's Connected Claims Management application. This process was time-consuming and prone to errors.

Now, with the Create Claim API add-on module, the insurance company enables their car dealership partners to integrate their sales systems directly with the Connected Claims Management application. When a car sale is finalized and an insurance policy is part of the transaction, the dealership's system automatically sends a request to the Create Claim API. This request contains all the necessary claim data such as policy information, vehicle details, customer information, and coverage details.

The API validates the incoming data and, upon successful validation, creates a new claim in the Connected Claims Management application. The API then returns a success response with the newly created claim ID to the dealership's system. The dealership system can then store this claim ID for tracking purposes and include it in their own records.

This integration streamlines the process, reduces manual data entry, minimizes errors, and accelerates the initiation of new claims, allowing the insurance company to begin processing claims faster and more efficiently. Additionally, it frees up staff at the car dealership so they can focus on sales activities rather than administrative tasks.

## Ready to get started?

See [Installing Create Claim API](cc-install-create-claim-api.html) to incorporate this module with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...