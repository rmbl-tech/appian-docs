---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/create-new-customer.html
original_path: kyc-23.3.1.6/create-new-customer.html
version: "25.3"
title: "Create a New Customer"
page_id: "kyc-23.3.1.6/create-new-customer"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a New Customer

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

It is important to have easy access to all of your customer's data. In the Appian Know Your Customer (KYC) solution, the Customers record page contains all of this data, and allows users to take action on that data.

This page describes the customer workflow, including how to view, create, and update customer information.

See [Using Records](../Using_the_Records_Tab.html) for more information on Appian Records.

## Viewing information for a customer

From the Know Your Customer site, clicking **CUSTOMERS** displays a list of customer records. You can filter by searching for a customer or filtering by customer type.

Clicking a customer name displays the record for that customer. The record displays all of the pertinent information for a particular customer. This information is split into several different pages, which are outlined in the following sections.

### Summary tab

The **Summary** tab lists the important information about a customer.

The following customer information is listed on this page:

1.  **Customer highlights** - This is where the customer logo displays. It also lists important information about the customer, as well as who last updated the customer information.
2.  **Customer details** - This is where you can view specific information about a customer. This includes:

    -   **Customer Type**
    -   **Domicile**
    -   **Customer Region**
    -   **Industry Classification**
    -   **GMEI**
    -   **Tax ID**
3.  **Addresses** - Lists the address for the customer. More than one address can be listed. See [Adding addresses and contacts](#addresses-&-contacts) for information on adding and updating addresses.
4.  **Contacts** - You can filter contacts by Active or All. Each contact can have more than one phone number or address. The top-right side of the box lists the relationship type, such as Trading, and contact type, such as Authorized Signatory. See [Adding addresses and contacts](#addresses-&-contacts) for information on adding and updating contacts.
5.  **Structure** - Lists the parent and child relationships for the customer.

### Documents tab

The Documents tab shows all of the documents associated with a customer.

You can learn more about documents on the [Managing Documents](managing-documents.html) page.

## Creating a new customer

New customers can be created from the Customers record page. The guided experience for creating a new customer walks you through the process of entering the information you need to start the service request process. It consists of the following guided steps:

1.  [Customer Search](#customer-search)
2.  [Customer Info](#customer-info)
3.  [Additional Details](#additional-details)
4.  [Owners & Entities](#owners-&-entities)
5.  [Addresses & Contacts](#addresses-&-contacts)
6.  [Review](#review)

To begin creating a new customer, from the **CUSTOMERS** record page, click **CREATE CUSTOMER**.

The top of the screen contains the various data collection steps required to create a new customer. You can click **NEXT** at the bottom of the form to go to the next step.

![create_customer_milestone.jpg](images/create_customer_milestone.jpg)

### Customer Search

The first step of the create customer process is to search for the customer from your company's source of truth for customers. This is an external source, most likely a customer relationship management (CRM) system or database. If there is not an external source connected, this step will be skipped entirely and the user will be started on the [Customer Info](#customer-info) step to fill in the data manually in the following steps.

Connecting an external source will reduce the need for manual entry and in turn save time and lower the number of errors made. Connected Servicing uses [Dun & Bradstreet](managing-integrations.html#integrating-with-dun-&-bradstreet) and [Companies House](managing-integrations.html#integrating-with-company-house) as two examples of ways to connect a source of truth for customers.

To search for a customer:

1.  Enter **Name** and **Domicile**, click **LOOK UP CUSTOMER**.
    -   The **LOOK UP CUSTOMER** button will only become enabled once both **Name** and **Domicile** are filled out.

        ![look_up_customer.jpg](images/look_up_custoemr.jpg)

2.  From the list of results, select the matching customer by clicking on the row.
    -   The max number of results returned from Dun & Bradstreet is 10.
    -   The confidence value is provided to help select the correct customer. It is a numeric value from 1 (low) up to 10 (high) indicating the level of certainty at which this possible candidate was included in this result set.
    -   Changing the **Name** or **Domicile** will require you to re-search by clicking **LOOK UP CUSTOMER** again.
    -   If none of the results are accurate, click **NEXT** to proceed to **Customer Info** and enter the information manually.

        ![select_customer.jpg](images/select_customer.jpg)

3.  (_Optional_) To use Companies House information for the customer being created, enter the **Customer Number**.
    -   To look up the **Customer Number**, click on **Search Companies House**. A new window will appear and allow you to search by name in order to find the **Customer Number**.

        ![customer_number.jpg](images/customer_number.jpg)

4.  Click **NEXT**.

### Customer Info

On the **Customer Info** step, fill in the fields. **Name**, **Acronym**, **Type**, and **Domicile** are required. **Name** and **Domicile** will be pre-populated from the [Customer Search](#customer-search) step.

![customer_info_page.jpg](images/customer_info_page.jpg)

### Additional Details

On the **Additional Details** step, if the **Company Number** was entered during **Customer Search** the fields will be pre-populated by Companies House. However, you can enter the following sections manually or update them if need be:

1.  Additional customer details.
2.  [Previous customer names](#adding-previous-customer-names).
3.  [Customer links](#adding-customer-links).

![additional_details.jpg](images/additional_details.jpg)

#### Adding previous customer names

To add a new previous customer name:

1.  Click **Add Previous Customer Names**.
2.  Enter the **Previous Name**, **Effective From** date, and **Ceased On** date.
    -   The **Ceased On** date must be in the past and after the **Effective From** date.
3.  Click **SAVE**.

    ![previous_cust_name.jpg](images/previous_cust_name.jpg)

#### Adding customer links

To add or update a customer links:

1.  Click **Add Link**.
2.  Select the **Link Type** and enter the **Link URL**.
    -   **Note**: You may only have one link per link type.
    -   **Note**: The **Link Type** values can be added in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to add these.
3.  To add an additional link, click **Add Link** again. To delete a relationship, click the red **x**.

    ![customer_links.jpg](images/customer_links.jpg)

### Owners & Entities

On the **Owners & Entities** step, add [Beneficial Owners](#adding-beneficial-owners) and [Entity Relationships](#adding-entity-relationships). If you selected a customer result during **Customer Search**, beneficial owners may be pre-populated, if available from Dun & Bradstreet. It is also possible to add beneficial owners and entity relationships manually.

![owners_and_entities.jpg](images/owners_and_entities.jpg)

#### Adding Beneficial Owners

To add a beneficial owner:

1.  Click **Add Beneficial Owners**.
2.  Enter the beneficial owner details.
    -   The default owner types that can be selected are: **Entity** and **Person**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  Click **SAVE**

After you click **SAVE**, you can use the edit icon to edit the beneficial owner, or use the **delete** icon to delete the beneficial owner.

![beneficial_owner.jpg](images/beneficial_owner.jpg)

#### Adding Entity Relationships

To add an entity relationship:

1.  Click **Add Entity Relationship**
2.  Select whether the new customer is a **Parent** or **Child**.
3.  Search for the customer name that is related to the new customer. This customer must already exist in the solution. If it does not, [Add a New Customer](#creating-a-new-customer) from the Customer tab.
4.  Enter the percentage of control.
5.  To add an additional relationship, click **Add Entity Relationship** again. To delete a relationship, click the red **x**.

![add_entity_relationship.jpg](images/add_entity_relationship.jpg)

Validations will be applied to the entity relationships to prevent incorrect data from being entered such as ownership over 100%. See [Smart relationship validations](#smart-relationship-validations) to learn about all of the entity relationship restrictions.

### Addresses & Contacts

On the **Addresses & Contacts** step, add [addresses](#adding-addresses) and [contacts](#adding-contacts). If you entered a customer number during **Customer Search**, addresses may be pre-populated, if available from Companies House. It is also possible to add addresses and contacts manually.

![address_and_contacts.jpg](images/address_and_contacts.jpg)

#### Adding Addresses

To add an address:

1.  Click **Add Address**.
2.  Enter the address details.
    -   The default address types that can be selected are: **Headquarters**, **Home**, and **Work**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  Click **SAVE**.

![add_address.jpg](images/add_address.jpg)

After you click **SAVE**, you can use the edit icon to edit the address, or use the **delete** icon to delete the address.

#### Adding Contacts

To add a contact:

1.  Click **Add Contact**.
2.  Enter the contact details.
    -   The default relationship types that can be selected are: **Trading** and **Counterparty**.
    -   The default contact types that can be selected are: **PM** (portfolio manager), **CIO** (chief information officer), and **Authorized Signatory**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  To add a new phone number for the contact, click **New Phone**. Enter the phone number details.
4.  To add a new address for the contact, click **New Address**. Enter the address details.
5.  Click **SAVE**.

![add_contact.jpg](images/add_contact.jpg)

After you click **SAVE**, you can use the edit icon to edit the contact, or use the **delete** icon to delete the contact.

### Review

Use the **Review** step to reconfirm all the information entered on the previous pages and click **SUBMIT**.

![review_page.jpg](images/review_page.jpg)

Once submitted, you will see a confirmation page which will confirm that the customer has been created. Click the customer name to be taken to the newly created customer record or click **CLOSE** to be returned to the customer record list.

![confirmation_page.jpg](images/confirmation_page.jpg)

### Update customer details

The information for a customer can be updated on the **Basic Info** tab.

1.  Click **Edit Customer Details**.

    ![edit_cust_details.jpg](images/edit_cust_details.jpg)

2.  Update the form with new customer details.

    ![customer_details_update.png](images/customer_details_update.png)

3.  Click **UPDATE CUSTOMER DETAILS**.

### Update an entity relationship

On the **Summary** tab for a customer or during customer creation, **Entity Relationships** can be added by clicking **Add**. If a relationship has already been added click **Edit**.

#### Adding an relationship structure

You can optionally establish or update the relationship structure for the customer by adding parent and child relationships.

1.  Click **Add Relationship**
2.  Select whether the new customer is a **Parent** or **Child**.
3.  Search for the customer name that is related to the new customer. This customer must already exist in the solution. If it does not, [Add a New Customer](#creating-a-new-customer) from the Customer tab.
4.  Enter the percentage of control.
5.  To add an additional relationship, click **Add Entity Relationship** again. To delete a relationship, click the red **x**. When all relationships are added click **UPDATE ENTITY RELATIONSHIPS**

![create_entity_relationship.jpg](images/create_entity_relationship.jpg)

#### Automatically updated relationships

Relationships are automatically reflected in the entity relationship section of all related customer records.

For example, if the Penrose Investments customer record is updated to indicate that it is a parent of Almo Corp Inc.:

![penrose_parent.png](images/penrose_parent.png)

The Almo Corp customer record is automatically updated to reflect that it is a child of Penrose:

![almo_corp_child.png](images/almo_corp_child.png)

#### Smart relationship validations

Smart validations check the logic of your relationships. The entity relationship section includes the following validations.

-   The percentage of control for all child relationships must not exceed 100%.

    ![ownership_greater_than_100.jpg](images/ownership_greater_than_100.jpg)

-   You cannot create circular relationships where one customer is both a parent and a child of the same company.

    ![circular_relationship.jpg](images/circular_relationship.jpg)

-   You cannot create a duplicate relationship where the same company is listed more than once as a child or more than once as a parent.

    ![duplicate_relationship.jpg](images/duplicate_relationship.jpg)

### Update customer risk score

A customer's Risk Score is shown on the Summary tab of the customer record. The score is a numerical value with a corresponding red, amber, or green classification. The thresholds can be customized using the [Solutions Customization Suite](sol-custom-overview.html).

#### Update risk score manually

To update a customer's risk score:

1.  On the **Summary** tab for a customer, click **Update Risk Score**.
2.  Enter the updated risk score.
3.  Click **UPDATE CUSTOMER DETAILS**.

![update_risk_score.png](images/update_risk_score.png)

#### Update risk score with Northrow

If a [Northrow](managing-integrations.html#integrating-with-northrow) integration is set up, the risk score can be set and refreshed automatically.

When you create a new customer, the risk score will be pulled in from the Northrow company check. It will automatically refresh when the interval, set in the [Northrow properties](managing-integrations.html#updating-northrow-properties) of the System Administration Site, is reached.

A user also has the option to refresh and pull a new risk score or any alerts from Northrow by clicking the refresh button. The refresh button is not available if the Northrow integration is disconnected.

![refresh_buttton.png](images/refresh_buttton.png)

Additionally, when the Northrow risk score is gathered, Northrow also provides a detailed risk score report. Once generated, the report is available for download from the **DOCUMENTS** tab of the customer record.

If a customer's risk score should be checked more frequently than the default or turned off completely, update the risk score settings.

![settings.png](images/settings.png)

Updating the Northrow settings will only apply to the specific customer.

![risk_score_settings.png](images/risk_score_settings.png)

### Update beneficial owners

On the **Summary** tab for a customer or during customer creation, **Beneficial Owners** can be added manually or can be refreshed using [Dun & Bradstreet](managing-integrations.html#integrating-with-dun-&-bradstreet) if the integration is set up.

#### Add beneficial owners manually

1.  Click **Add Beneficial Owners**.
2.  Enter the beneficial owner details.
    -   The default owner types that can be selected are: **Entity** and **Person**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  Click **ADD BENEFICIAL OWNER**.

![add_benficial_owner.jpg](images/add_benficial_owner.jpg)

#### Refresh beneficial owners using Dun and Bradstreet

If the Dun and Bradstreet integration is turned on, you can pull back beneficial owner information if the DUNS number is available. A DUNS number is a customer identifying ID for the Dun and Bradstreet external system. If while [creating](#creating-a-new-customer) a customer you selected a result on the **Customer Search** page the DUNS number will already be saved.

![duns_number.png](images/duns_number.png)

If the DUNS number is not entered or needs to be updated, you can manually search for it:

1.  Click **Retrieve** or **Edit**.
2.  Click **LOOK UP CUSTOMER**.
    -   The current **NAME** and **DOMICILE** of the customer will be shown.
3.  Select the matching results by clicking on the row.
    -   If the name is not a perfect match, selecting the row will update the customer name to match.
4.  Click **SUBMIT**.

![get_duns_number_grid.jpg](images/get_duns_number_grid.jpg)

Once the DUNS number is available, the refresh button will enable in the beneficial owners section. Clicking this will call the Dun and Bradstreet system and display any beneficial owners from that external system.

![beneficial_owner_refresh_.png](images/beneficial_owner_refresh_.png)

Additionally, you can click the edit icon to edit an existing beneficial owner, or click the **delete** icon to delete a beneficial owner.

### Update addresses

On the **Basic Info** tab for a customer or during customer creation, **Addresses** can be added.

To add a new address:

1.  Click **Add Address**.
2.  Enter the address details.
    -   The default address types that can be selected are: **Headquarters**, **Home**, and **Work**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  Click **ADD ADDRESS**.

![add_address.jpg](images/add_address.jpg)

Additionally, you can click the edit icon to edit an existing address, or click the **delete** icon to delete an address.

![edit_address.jpg](images/edit_address.jpg)

### Update contacts

On the **Basic Info** tab for a customer or during customer creation, **Contacts** can be added.

To add a new contact:

1.  Click **Add Contact**.
2.  Enter the contact details.
    -   The default relationship types that can be selected are: **Trading** and **Counterparty**.
    -   The default contact types that can be selected are: **PM** (portfolio manager), **CIO** (chief information officer), and **Authorized Signatory**.
        -   **Note:** These values can be updated in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to update these values.
3.  To add a new phone number for the contact, click **New Phone**. Enter the phone number details.
4.  To add a new address for the contact, click **New Address**. Enter the address details.
5.  Click **ADD CONTACT**.

![add_contact.jpg](images/add_contact.jpg)

Additionally, you can click the edit icon to edit an existing contact, or click the **delete** icon to remove a contact.

![edit_contact.jpg](images/edit_contact.jpg)

### Update previous customer names

On the **Basic Info** tab for a customer or during customer creation, **Previous Customer Names** can be added.

To add a new previous customer name:

1.  Click **Add Previous Customer Names**.
2.  Enter the **Previous Name**, **Effective From** date, and **Ceased On** date.
    -   The **Ceased On** date must be in the past and after the **Effective From** date.
3.  Click **ADD PREVIOUS CUSTOMER NAME**.

![add_customer_name.jpg](images/add_customer_name.jpg)

Additionally, you can click the edit icon to edit an existing previous customer name, or click the **delete** icon to remove a previous customer name.

![edit_customer_names.jpg](images/edit_customer_names.jpg)

### Update customer links

On the **Basic Info** tab for a customer or during customer creation, **Customer Links** can be added.

To add or update a customer links:

1.  Click **Add Links**.
2.  Click **Add Link** again.
3.  Select the **Link Type** and **Link URL**.
    -   **Note:** You may only have one link per link type.
    -   **Note:** **Link Type** values can be added in the `AS_FS_R_DATA` table. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to add these.
4.  To add an additional link, click **Add Link** again.
    -   To delete a relationship, click the red **x**.
5.  When all relationships are added click **UPDATE CUSTOMER LINKS**

![links.jpg](images/links.jpg)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...