---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/create-new-service-request.html
original_path: cs-23.3.2.6/create-new-service-request.html
version: "25.3"
title: "Create New Service Request"
page_id: "cs-23.3.2.6/create-new-service-request"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create New Service Request

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Client servicing is the process of fulfilling customer requests. This can include updating customer data or providing an ad-hoc report for a customer. The Connected Servicing solution provides a guided experience for collecting and updating this information. Enabled by Appian Records, end users can [view and update](managing-service-requests.html) this information from simple, informative record interfaces after creating a service request.

This page provides instructions for creating a new service request.

## Creating a new service request

Creating a new service request walks you through the process of entering the information needed to start the service request process. The information entered here will populate the Service Request record, as well as determine which [service request process template](setting-up-processes.html) will be used to complete the request.

The guided experience for creating a new service request walks you through the process of entering the information you need to start the service request process. It consists of the following guided steps:

1.  [Choose a customer](#choose-a-customer).
2.  [Provide service request details](#provide-service-request-details).
3.  [Select required documents](#select-required-documents).
4.  [Review service request](#review-and-submit-service-request).

You can customize these steps and the fields that display in each form. See [How to Configure Connected Servicing](setting-up-the-solution.html) for more details on how to customize the solution.

### Beginning a service request

Starting a new service request will start the data collection process. In order to start a new service request, you must be a member of the **AS SRQ Create Service Request** security group. By default, the **Client Servicing** and **Client Servicing Department Heads** groups belong to this security group.

To start a new service request:

-   From either the **HOME** or **SERVICE REQUEST** page, click **\+ NEW SERVICE REQUEST**.

The top of the screen contains the various data collection steps required to create a new service request. You can click **NEXT** at the bottom of the form to go to the next step.

## Choose a customer

When creating a new service request, the first step is to identify the customer you're creating the request for. In order to locate the customer, they must already be [created](managing-customers.html) in the system.

![choose_customer.jpg](images/choose_customer.jpg)

To choose a customer:

1.  In the **Choose a Customer** field, search for the existing customer by name or acronym.
2.  Select the customer that you want to create the request for.

The customer is a required field and you will not be able to move forward through the form without selecting one. The information for the selected customer will auto populate in the remaining steps.

## Provide service request details

From the Provide Service Request Details page, you can specify what information is relevant to the request. The solution will pre-populate specific fields. During the service request, you can change the data in these fields based on the service request type and subtype assigned. You can also manually update these fields in the Connected FS Settings site.

To provide service request details:

1.  Enter a **Target Completion Date** for the request.
    -   **Note:** The target completion date will be used to determine task due dates.
2.  Select an **Owner** for the request.
    -   This user will become the primary owner of the service request.
3.  Select a **Type**.
4.  Select a corresponding **Subtype**.

    -   Depending on the **Type** and **Subtype**, enter any additional information needed for the request.

    -   Example: If the type selected is **Customer information update** and the sub-type is **Contact update**, you will need to enter the updated contact information. - **Note:** The type and subtype selected are used to determine which process template is selected for the request. See [Modifying Service Request Process Selection Attributes](modify-service-request-process-selection-logic.html) for information on how to update these values.

![service_request_details.jpg](images/service_request_details.jpg)

## Select required documents

The Select Required Documents step is used to keep track of the documents needed to complete the request. Required documents will be pre-populated based on the type and subtype of the request. Documents required by default for each subtype can be updated in the Connected FS Settings site.

To add additional required documents:

1.  Click **Add Required Document**.
2.  Select the **Document Requirement Type**.
3.  (_Optional_) Provide a **Document Requirement Name**.
4.  Click **ADD**.

![select_req_docs.png](images/select_req_docs.png)

If a required document is not needed, select the checkbox next to the document requirement name then click **REMOVE DOCUMENT REQUIREMENT**.

## Configure required documents

The Configure Required Documents step is used to add details about the required documents for the service request such as the assignee for the upload and review tasks and the due dates for them. If the user chooses to, they are also able to upload the document directly at this time.

![configure_req_docs.png](images/configure_req_docs.png)

## Review and submit service request

On the final REVIEW step of the process, a summary of all of the information entered for the service request displays.

1.  Review the information for accuracy.
2.  When you are ready, click **CREATE SERVICE REQUEST** to finish creating the new service request.

If you need to change any information, click **BACK** button or click on any of the blue milestone steps at the top.

Each individual page is configured with validations, so you will be unable to move forward to the next page without completing the errors on that page.

## Confirm service request

Once you have created a service request, a confirmation displays with a link to the newly created service request record link.

From here, you can immediately go to the new service request or close out to monitor the request another time.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...