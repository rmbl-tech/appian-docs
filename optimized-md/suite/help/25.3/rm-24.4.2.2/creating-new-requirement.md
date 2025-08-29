---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/creating-new-requirement.html
original_path: rm-24.4.2.2/creating-new-requirement.html
version: "25.3"
title: "Creating a New Requirement"
page_id: "rm-24.4.2.2/creating-new-requirement"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a New Requirement

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Requirement Management is the process of creating, reviewing, and executing a requirement package for goods and services needed to conduct business. The Appian Requirement Management (RM) solution provides a guided experience for collecting and maintaining requirement information about the goods and services needed to be purchased and delivered. Enabled by Appian's powerful records, after a requirement is created, end users can view and update this information from simple, informative record interfaces.

Creating a new requirement initiates the data collection process. To do so, you must be a member of the `AS RM Create or Update Requirement PM Access` security group. By default, this group includes the `Requestor`, `Requestor Manager`, and `Contracting` teams.

## Create requirements

To create a requirement:

1.  Navigate to **HOME** > **My Requirements**. Alternatively, click the **REQUIREMENTS** tab.
2.  Click **ADD** to open the **Create New Requirement** wizard.

    ![Appian My Requirements screen with the highlighted Add button.](images/create_requirement.png)

    The Create New Requirement wizard has the following tabs on the sidebar to be filled for creating the requirement:

    1.  [Requestor](#select-a-requestor)
    2.  [Requirement Information](#enter-requirement-details)
    3.  [Codes](#select-requirement-codes)
    4.  [Funding](#enter-funding-details)
    5.  [Addresses](#enter-requirement-addresses)
    6.  [Additional Information](#enter-additional-information)

    ![Create New Requirement wizard with Requestor tab selected and DoDAAC details.](images/create_requirement_2.png)

### Select a requestor

The workflow for creating a new requirement starts by asking you to specify details for the requestor responsible for completing the package, such as their name, Department of Defense Activity Address Code (DoDAAC), and contact information.

The details associated with the user creating the requirement are auto-populated in the tab. Continue to the other tabs if these are the correct details, or select another DoDAAC, or another user.

To select a different requestor:

1.  Select the **Requestor** tab (default).
2.  Enter and select the **DoDAAC** code using the autosuggest field. This action auto-populates the related Requestor fields. Verify and edit the populated details.
3.  Enter and select the **Point of Contact** using the autosuggest field. This action auto-populates the POC fields. Verify and edit the populated details.

![Create New Requirement wizard: Requestor tab showing auto-populated DoDAAC and contact details.](images/select_a_requestor.png)

### Enter requirement details

To enter requirement details:

1.  Select the **Requirement Information** tab.
2.  Enter a **Title** for the requirement.
3.  Select the **Type** using the dropdown. This action indicates whether the requirement is new or for an award modification.
4.  Select the **Category** using the dropdown. This field determines which key dates are required and must be entered for this requirement.

    **Note:**  The requirement categories can be modified to reflect the organization. Out-of-the-box values are `Facilities`, `IT Hardware`, `IT Services`, `IT Software`, `Telecom`, and `Other`. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

5.  Select the **Priority** using the dropdown. This field communicates the importance of the goods or services to your organization.

    **Note:**  The priorities can be modified to reflect the organization. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

6.  Enter a **Description** of the requirement in the text field.

![Requirement Information tab of the Create New Requirement wizard.](images/enter_requirement_details.png)

#### Select dates

The dates you select are based on the requirement's category.

For goods and other non-service items, organizations need to define the expected delivery definition. You can select one of two options: **Date or Dates** or **Lead Time**. Choose **Date or Dates** to schedule a delivery for a specific date. Choose **Lead Time** to indicate a time frame after a specific event in which you need the goods. For example, after the award date, you need the item within two months.

For service categories, organizations need to define the period of performance (POP) needed for the services they are buying. For example, consulting services are needed from a specific company for one year.

To add dates for categories related to goods and other non-services items such as `Facilities` and `IT Hardware`:

1.  Select a **Requested Award Date** using the calendar.
2.  Select a **Delivery Type** for the goods or other non-services you are buying.

    **Note:**  Out-of-the-box, the values are `Date or Dates` and `Lead Time`. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

    1.  If you select **Date or Dates**, choose a **Delivery Description** and enter the date in the adjacent field.

        ![Requirement dates form: Requested Award Date and Delivery Type set to Date or Dates.](images/select_dates.png)

        **Note:**  The delivery descriptions can be modified to reflect the organization. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

    2.  If you select **Lead Time**, choose a **Lead Time Event**, a **Lead Time Description**, a **Duration**, and a **Duration Unit**.

        ![Requirement dates: Lead Time delivery fields for event, description, duration, and unit.](images/select_dates_2.png)

        **Note:**  The lead time events, lead time descriptions, and duration units are determined by your organization. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

To add dates for categories related to services such as `IT Services`:

1.  Select a **Requested Award Date** using the calendar.
2.  Enter a **POP Begin** date for the requirement. This is the Period of Performance (POP) start date for the services you purchase.
3.  Enter a **POP End** date for the requirement. This is the Period of Performance (POP) end date for the services you purchase.

![Service requirement dates: Requested Award Date, POP Begin, and POP End fields.](images/select_dates_3.png)

#### Add NIGP codes

NIGP codes (National Institute of Governmental Purchasing codes) are a standardized classification system used to categorize goods and services in public procurement. These codes facilitate efficient communication, bidding, and purchasing processes for government agencies and vendors. Each code represents a specific category, making it easier to manage contracts and track procurement activities.

**Note:**  You can add NIGP codes only if the admin has disabled adding PSC codes.

To add NIGP codes:

1.  Click **Plus icon in a circleAdd**.
2.  Enter the NIGP **Code**.
3.  Enter a **Description** for the NIGP code.
4.  Click **Plus icon in a circleAdd** to add more NIGP codes. A maximum of 10 NIGP codes is permitted.
5.  Click X icon corresponding to a NIGP code to remove it.

![NIGP Codes input table displaying two existing codes and an Add button.](images/add_nigp_codes.png)

### Select requirement codes

**Note:**  The Codes tab is visible only when the admin disables adding NIGP codes.

To select codes for a requirement:

1.  Select the **Codes** tab.
2.  Enter a few keywords in the **PSC** search bar and click Search icon to search and list the related PSC codes.
3.  Select the required **PSC** code.
4.  Click **View suggested NAICS codes** to display a list of relevant NAICS codes based on your PSC code.

    ![Codes tab: PSC code selected, with NAICS code search prompt.](images/select_requirement_codes.png)

5.  Select the required **NAICS Code**. Alternatively, click **Manually search for a code** to override these NAICS code recommendations.

    ![Recommended NAICS codes table, with code and description columns.](images/select_requirement_codes_2.png)

Similar to the PSC code search, the NAICS code search provides intelligent text-searching capabilities.

![NAICS code search results, displaying codes and descriptions.](images/select_requirement_codes_3.png)

View [Configuring Intelligent Requirement Codes](intelligent-requirement-codes.html) for configuration and other details regarding requirement codes.

### Enter funding details

To enter funding details for the requirement:

1.  Select the **Funding** tab.
2.  Enter an **Estimated Total Contract Value**. This is the estimated overall value of the contract, including the base period and any potential extensions or options.
3.  Enter a **Committed Award Amount**. This is the total committed funds allocated for the contract
4.  Enter an **Estimated Fiscal Year Amount**. This is the estimated amount to be spent in the first fiscal year.
5.  Enter an **Estimated Base Period Value**. This is the estimated total contract value for the base period, excluding any options or extensions.
6.  Select the **Fiscal Year** using the dropdown.

![Funding tab showing estimated contract, committed award, and fiscal year amounts.](images/enter_funding_details.png)

### Enter requirement addresses

To enter requirement addresses:

1.  Select the **Addresses** tab.
2.  Select a **Location Type** using the dropdown to describe the address.

    **Note:**  The location types can be modified to reflect the organization. See [Modifying Dropdowns](modifying-dropdown.html) for information on how to update these values.

3.  Search and select the **DoDAAC** associated with the address.
4.  Select **Address Type** for the DoDAAC.

    **Note:**  If there is only one address associated with the DoDAAC, the address type is automatically populated in this field.

5.  Search and select the **Point of Contact** for the address. If the required point of contact is not found, click **NEW CONTACT** next to the Point of Contact search box to create a new contact. The newly created contact appears in the search box after it is added.
6.  Select a **Point of Contact Type** using the dropdown. Out-of-the-box values for point of contact type are `Acceptor`, `Recipient`, or `Alternative Acceptor`.
7.  Click **Plus iconADD ADDRESS** to continue adding addresses to the requirement.
8.  Click Trash icon to remove an address.

![Addresses tab: enter requirement locations and points of contact.](images/enter_requirement_addresses.png)

### Enter additional information

The Additional Information tab contains questions only if they are configured by the admin user. Select the **Additional Information** tab to respond to the questions.

![Additional Information tab showing configurable requirement questions.](images/enter_additional_information.png)

### Create requirement and select a checklist

After filling out the tabs in the Create New Requirement wizard:

1.  Click **CREATE** to save changes and complete the requirement creation. Once you have created the requirement, a confirmation is displayed showing the requirement number, related past procurements, and best in class contracts.
2.  Click **SELECT CHECKLIST** to [set up checklist](managing-checklists.html#set-up-checklists) for the created requirement, or click **CLOSE** to close the wizard and set up checklist at a later time.

![Requirement created successfully, with ID, checklist selection, and related procurements.](images/set_up_checklists_without_recommendations_5.png)

## Update requirements

To update a requirement:

1.  Navigate to **HOME** > **My Requirements**.
2.  Select a requirement record using the checkbox.
3.  Click **UPDATE** to open the **Update Requirement** wizard.

    ![My Requirements list, showing a selected requirement and the 'UPDATE' button.](images/update_requirements.png)

4.  Follow the steps detailed in [create requirements](#create-requirements) to update the requirement details.
5.  Click **UPDATE** to save changes.

    ![Update Requirement form, Requestor tab showing DoDAAC, address, and contact details.](images/update_requirements_2.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...