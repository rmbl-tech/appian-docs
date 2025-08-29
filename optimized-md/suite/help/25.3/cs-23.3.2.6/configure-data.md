---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/configure-data.html
original_path: cs-23.3.2.6/configure-data.html
version: "25.3"
title: "Configure Data"
page_id: "cs-23.3.2.6/configure-data"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Data

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

The **Data** section of the Connected FS Settings site allows business users to manage dropdown values for their Service Request data.

![data_settings.png](images/data_settings.png)

This page describes how to manage:

-   [Account types](#configure-account-types)
-   [Customer types](#configure-customer-types)
-   [Document types](#configure-document-types)
-   [Product types](#configure-product-types)

## Configure account types

### Add an account type

To add a new account type:

1.  From the **Connected FS Settings** site, click **DATA**.
2.  Click **ACCOUNTS** > **NEW ACCOUNT TYPE**.
3.  Enter the account type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **CREATE ACCOUNT TYPE**.

### Remove an account type

To remove an account type:

1.  From the **Connected FS Settings** site, click **DATA** > **ACCOUNTS**.
2.  Click the account type that you would like to remove.
3.  Click **DELETE**.
4.  In the confirmation message, click **DELETE** again.

If this account type is set up to be a [default account type](#manage-default-account-types-for-products) for certain products, it will no longer be associated to those products. Additionally, if an account type is removed, anywhere it is already referenced will now show that it is inactive.

### Update an account type

To update an account type:

1.  From the **Connected FS Settings** site, click **DATA** > **ACCOUNTS**.
2.  Click the account type that you would like to update.
3.  Update the the account type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **UPDATE ACCOUNT TYPE**.

Updating the account type will reflect anywhere this account type is used.

## Configure customer types

The customer type dropdown is accessed when a new customer is created.

![customer_type.jpg](images/customer_type.jpg)

### Add a customer type

To add a new customer type:

1.  From the Connected FS Settings site, click **DATA**.
2.  Click **CUSTOMERS** > **NEW CUSTOMER TYPE**.
3.  Enter the customer type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **CREATE CUSTOMER TYPE**.

### Remove a customer type

To remove a customer type:

1.  From the Connected FS Settings site, click **DATA** > **CUSTOMERS**.
2.  Click the customer type that you would like to remove.
3.  Click **DELETE**.
4.  In the confirmation message, click **DELETE** again.

If a customer type is removed, anywhere it is already referenced will now show that it is inactive.

### Update a customer type

To update a customer type:

1.  From the Connected FS Settings site, click **DATA** > **CUSTOMERS**.
2.  Click the customer type that you would like to update.
3.  Update the customer type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **UPDATE CUSTOMER TYPE**.

Updating the customer type will be reflected for anywhere this type is used on both previous and new customers.

## Configure document types

The document type dropdown is accessed when a document is [uploaded](managing-documents.html) to Service Requests.

### Add a document type

To add a new document type:

1.  From the **Connected FS Settings** site, click **DATA**.
2.  Click **DOCUMENTS** > **NEW DOCUMENT TYPE**.
3.  Enter the document type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **CREATE DOCUMENT TYPE**.

### Remove a document type

To remove a document type:

1.  From the **Connected FS Settings** site, click **DATA** > **DOCUMENTS**.
2.  Click on the document type that you would like to remove.
3.  Click **DELETE**.
4.  In the confirmation message, click **DELETE** again.

If a document type is removed, anywhere it is already referenced will now show that it is inactive.

### Update a document type

To update a document type:

1.  From the **Connected FS Settings** site, click **DATA** > **DOCUMENTS**.
2.  Click the document type that you would like to update.
3.  Update the document type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **UPDATE DOCUMENT TYPE**.

Updating the document type will be reflected for anywhere this type is used on both previous and new documents.

### Set up document classification files

If Intelligent Document Processing (IDP) is being used in your environment, a business user has the ability to train Connected Servicing to recognize different document types. If trained, when a user uploads a document to the system, the system can automatically determine what type of document has been uploaded. This will save users time and ensure accuracy when attaching documents to Service Requests.

Classification files are groups of 10 example documents of the same document that will be used to train the system to recognize that format as a certain document type.

#### Add document classification files to a single document type

To add a document classification file:

1.  From the **Connected FS Settings** site, click **DATA** > **DOCUMENTS**.
2.  Click on the document type that you would like to add files to.
3.  Click **UPLOAD CLASSIFICATION FILE**.
    -   **Note:** If IDP is not enabled in the environment, the **UPLOAD CLASSIFICATION FILE** button will not be available.
4.  Attach a ZIP file with representative PDFs for the document type. Each ZIP file should contain at least 10 PDFs.
    -   **Note:** If the training model is processing, you must wait until it is done before submitting a new classification file. Training the model can take several hours.
5.  Click **SAVE**.

    ![bulk_doc_classificaiton.jpg](images/bulk_doc_classificaiton.jpg)

If there are any issues with the classification files and the system could not process them there will be an indicator next to the name of each document type with an issue.

![document_file_issue.jpg](images/document_file_issue.jpg)

When you click on a document type with an issue you will also see a message on the **UPDATE DOCUMENT TYPE** page.

![banner_warning_for_file.jpg](images/banner_warning_for_file.jpg)

You will need to [remove](#remove-document-classification-files) and re-upload the files to fix any issues.

#### Bulk add document classification files

It is possible to add multiple files in order to train the system on many document types at once.

To bulk add document classification files:

1.  From the **Connected FS Settings** site, click **DATA** > **DOCUMENTS**.
2.  Click **ADD CLASSIFICATION FILES**.
    -   **Note:** If IDP is not enabled in the environment, the **ADD CLASSIFICATION FILES** button will not be available.
3.  Attach a ZIP file with representative PDFs for each document type that you want to add classification files for. Each ZIP file should contain at least 10 PDFs.
    -   **Note:** If the training model is processing, you must wait until it is done before submitting a new classification file. Training the model can take several hours.
4.  Click **SUBMIT**.

![bulk_doc_classificaiton.jpg](images/bulk_doc_classificaiton.jpg)

#### Remove document classification files

To remove a document classification file:

1.  From the **Connected FS Settings** site, click **DATA**.
2.  Click **DOCUMENTS**.
3.  Click on the document type that you would like to remove the file from.
4.  Next to the file you would like to remove, click .
    -   **Note:** If the training model is processing, you must wait until it is done before removing a classification file. Training the model can take several hours.
5.  Click **UPDATE DOCUMENT TYPE**.

    ![remove_classification.jpg](images/remove_classification.jpg)

## Configure product types

### Add a product type

To add a new product type:

1.  From the **Connected FS Settings** site, click **DATA**.
2.  Click **PRODUCTS** > **NEW PRODUCT TYPE**.
3.  Enter the product type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **CREATE PRODUCT TYPE**.

### Remove a product type

To remove a product type:

1.  From the **Connected FS Settings** site, click **DATA** > **PRODUCTS**.
2.  Click on the product type that you would like to remove.
3.  Click **DELETE**.
4.  In the confirmation message, click **DELETE** again.

If a product type is removed, it will now show as _inactive_ anywhere it is already referenced.

### Update a product type

To update a product type:

1.  From the **Connected FS Settings** site, click **DATA** > **PRODUCTS**.
2.  Click on the product type that you would like to update.
3.  Update the product type **Name**.
    -   **Note**: This has a 100 character limit and must be unique.
4.  Click **UPDATE PRODUCT TYPE**.

Updating the product type will be reflected anywhere this type is used on both previous and new products.

### Manage default account types for products

Business users can set up which accounts will be automatically added for each product type by setting the default accounts for the product type while [updating the product type](#update-a-product-type) in the Connected FS settings site.

#### Add an account to a product type

To add an account to a product type:

1.  From the **Connected FS Settings** site, click **DATA** > **PRODUCTS**.
2.  Click on the product type that you would like to update.
3.  Click **ADD ACCOUNT**.
4.  Choose which existing account type to add.
5.  Click **ADD**.

#### Remove an account from a product type

To remove an account from a product type:

1.  From the Connected FS Settings site, click **DATA** > **PRODUCTS**.
2.  Click the product type that you would like to update.
3.  Click the red icon next to the account type you would like to remove.

## Configure service request types

Service request types and subtypes are available for selection when a user is [creating a service request](create-new-service-request.html).

![service_request_type_dropdown.jpg](images/service_request_type_dropdwon.jpg)

Each service request type can be tied directly to data or a data set that the users can update when creating a new service request. For example, if you change the customer information associated with a service request type, it will allow you to select the fields associated with the customer. Changing the product information will allow you to select the fields associated with products.

### Edit service request

Users are able to edit service request type names and [update their associated subtypes](#edit-subtypes).

To edit to a service request name:

1.  Click the service request card to begin editing.
2.  Locate the service request name and click **Edit**.

    ![edit_srq_name.jpg](images/edit_srq_name.jpg)

3.  Update the name of the service request type.
4.  Click **EDIT**.

#### Add subtypes

To add a subtype:

1.  Click **ADD**.
2.  Enter the subtype details.

    -   **Name**.
    -   If the subtype should be able to be scheduled.
    -   If the subtype can be directly started by the customers.

    ![add_subtype_step_1.jpg](images/add_subtype_step_1.jpg)

3.  Select which fields a user can updated during a service request with this subtype.

    -   **Note**: You can select fields that are related to the service request type that this subtype is associated with. For example, if you change the customer information associated with a service request type, it will allow you to select the fields associated with the customer. Changing the product information will allow you to select the fields associated with products.

    ![select_fields.jpg](images/select_fields.jpg)

4.  Add any documents to be required during the service request.
5.  Review that all the entered information is correct.
6.  Click **SUBMIT**.

#### Remove subtypes

To remove a subtype:

1.  Click **DELETE**.
2.  On the confirmation screen, click **DELETE**.

#### Edit subtypes

To edit a subtype:

1.  Click **EDIT**.
2.  Update the subtype details.

    -   Name
    -   If the subtype should be able to be scheduled.
    -   If the subtype can be directly started by the customers.

    ![edit_subtype.jpg](images/edit_subtype.jpg)

3.  Update which fields a user can updated during a service request with this subtype.

    -   **Note**: You can select fields that are related to the service request type that this subtype is associated with. For example, if you change the customer information associated with a service request type, it will allow you to select the fields associated with the customer. Changing the product information will allow you to select the fields associated with products.

    ![edit_subtype_fields.jpg](images/edit_subtype_fields.jpg)

4.  Add documents that you want required during the service request.
5.  Review and verify the entered information.

### View service request configuration history

The service request configuration history allows you to view who made changes to the service requests and when the updates were made.

To access the history, simply click **View History**.

![view_history.jpg](images/view_history.jpg)

The service request configuration history includes the following types of changes:

1.  If a service request subtype can be scheduled or not.
2.  Which fields can be edited during a service request type.
3.  If a service request subtype can be started by a customer.
4.  Which documents are required during for a specific service request subtype.
5.  Names of service request types and subtypes.

![configuration_history.jpg](images/configureation_history.jpg)

-   **Note**: This has a 100 character limit and must be unique.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...