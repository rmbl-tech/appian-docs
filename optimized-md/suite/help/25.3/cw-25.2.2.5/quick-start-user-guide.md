---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/quick-start-user-guide.html
original_path: cw-25.2.2.5/quick-start-user-guide.html
version: "25.3"
title: "Contract Writing Quick Start User Guide"
page_id: "cw-25.2.2.5/quick-start-user-guide"
section: "Getting started"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Contract Writing Quick Start User Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Writing, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Getting started

New to the Appian Contract Writing solution? Want to quickly get up and running so you can start managing your acquisition life cycle? Then you've come to the right place.

This quick start guide walks you through the most common views and actions you’ll use to manage your procurement processes and activities. It’s designed to get you up and running so that you can use CW to keep track of all of your procurements and quickly execute your tasks.

After reviewing this guide, you’ll understand how to:

-   [Navigate My Workspace](#my-workspace)
-   [Create a new solicitation](#creating-a-new-solicitation)
-   [View solicitations](#viewing-solicitations)
-   [Create a new award](#creating-a-new-award)
-   [View awards](#viewing-awards)
-   Create a new agreement
-   View agreements
-   [View and manage records](#directory)
-   Access Procurement Copilot

### User requirements

Before you begin using Contract Writing, be sure you have access to the appropriate user groups for viewing and editing the awards you manage. See the [Groups Reference Page](groups-reference-page.html) for more information about group types and visibility.

## My Workspace

When you log in to Contract Writing, it opens on the **MY WORKSPACE** page, which gives you immediate access to all of your active requirements, solicitations, awards, agreements, and open tasks.

![contracting_my_workspace.png](images/contracting_my_workspace.png)

Under **Active Procurements**, click between the **Requirements**, **Solicitations**, **Awards**, and **Agreements** tabs to perform the following:

-   **Requirements**
    -   See a list of your _active_ procurement requirements and key details like the requirement status, committed amount, estimated total contract value, and more.
    -   Search or filter your Requirements list by status.
    -   Take action on a requirement.
-   **Solicitations**
    -   See a list of your _active_ solicitations and key details like the solicitation status, assigned team, estimated total contract value, expected award date, and more..
    -   Search or filter your solicitations by status, team, or both.
    -   Create, update, duplicate, or delete a solicitation.
-   **Awards**
    -   See a list view of your _active_ awards and key details like the award status, assigned team, performance period, award amount, and more.
    -   Search or filter your awards by item status, team, or program.
    -   Create or import a new award.
    -   Update, duplicate, or delete an award.
-   **Agreements**
    -   See a list of your _active_ Other Transaction Agreements (OTs).
    -   Search or filter your agreements by status, performer, or both.
    -   Create a new agreement.

Under **Active Checklist Items**, you can view a list of all of your checklist items and a link to their associated solicitation or award. In addition, you can easily search for a specific checklist item and take action on a single checklist item.

Contract Writing gives you access to this real-time data so you can quickly evaluate where your requirements, solicitations, awards, agreements, and associated checklist items are at any point in the acquisition process.

## Procurements

Select the **PROCUREMENTS** page to see a complete list of all of your organization's solicitations and awards. From this page, you can easily:

-   View the status and key details for all solicitations and awards
-   Search, and filter the complete solicitations and awards lists
-   Create a new award or solicitation
-   Export a complete or filtered list

![solicitations_list.png](images/solicitations_list.png)

### Creating a new solicitation

Creating a new solicitation is one of the first tasks you may need to tackle in your organization's contract writing process. Manually creating a solicitation can be extremely time-consuming. Contract Writing simplifies this process by providing a guided experience that walks you through inputting the solicitation data.

To create a new solicitation:

1.  Click **CREATE SOLICITATION** under **Solicitations**. A guided configuration walks you through the process of entering the solicitation data required to create a new solicitation record.

    ![create_solicitation_details.png](images/create_solicitation_details.png)

2.  Fill in the following details in the guided configuration window:
    -   **Key Details**: Important key information about your solicitation such as number, title, solicitation method, and format type.
    -   **Office Information**: Who the solicitation is issued by, administered by, paid for by, and additional team information.
    -   **Response Collection**: Response information such as due date, timezone, and contact details.
    -   **Additional Details**: Additional solicitation information such as expected award date, POP start and end date, and DPAS rating.
    -   **Codes**: Any PSC and NAICS codes associated with the solicitation.
3.  Click **CREATE** to create the solicitation.

When you've finished creating a new solicitation, the **Solicitation Confirmation** dialog provides a link that allows you to go directly to the solicitation Summary view and confirm the solicitation data you entered.

### Viewing solicitations

You can take a closer look at your solicitations by clicking on the **Solicitations** tab to access a complete list of your active solicitations. You can also search and filter awards from the list to display the solicitations you want to see.

![solicitations_list.png](images/solicitations_list.png)

Want to see more details about a specific solicitation? Simply click a solicitation link from the list to access additional information, including the status, description, duration, line items, assigned team members, and much more.

Quickly take action on a solicitation, like assigning a checklist item, initiating a review process, creating an amendment, or creating an award.

![solicitation_summary.png](images/solicitation_summary.png)

#### Line Items

Under Line items, you can see the breakdown of line items for the solicitation. Here you can search, filter for, and drill down to each line item to view more information. If the solicitation is in draft status, you can update, add, or delete line items from the solicitation from this view.

![solicitation_line_items.png](images/solicitation_line_items.png)

#### Contract Text

The Contract Text section displays the contracts related to the solicitation. If the solicitation is in draft status, you can select a contract and click **+ADD TEXT** to add contract information. You can enter text manually or you can choose **Use AI assistance** to generate content automatically based on a prompt.

![solicitation_contract_text_genAI.png](images/solicitation_contract_text_genAI.png)

![solicitation_contract_text.png](images/solicitation_contract_text.png)

### Creating a new award

Once the contract is finalized, an award can be created and awarded to the vendor. CW simplifies this process by providing a guided experience that walks you through inputting the award data.

To create a new award:

1.  Click **CREATE AWARD** under **Awards**. A guided configuration walks you through the process of entering the award data required to create a new award record.

    ![create_award_details.png](images/create_award_details.png)

2.  Fill in the following details in the guided configuration window:
    -   **Award Details**: Important key information about your award such as title, contract period, instrument type, and description.
    -   **Codes**: Any PSC and NAICS codes associated with the award.
    -   **Office Information**: Who the award is issued by, administered by, paid for by, and additional team information.
    -   **Vendor Information**: The vendor's name, details, and point of contact.
    -   **Team Members**: The Contracting Officer, Contract Specialist, and Contracting Officer Representative from the agency side.
3.  Click **CREATE** to create the award.

An award can also be created directly from the solicitation summary view. To create an award, go to the summary view of a solicitation, click on the **…** icon, and click **Create Award**. Some award information will be populated based on the solicitation.

### Viewing awards

From the **Awards** tab, you can view a complete list of your organization's awards. Use the Search box, filters, or both to narrow down the list and display only the awards you want to see.

![awards_list.png](images/awards_list.png)

From the Awards list, you can drill down into a specific award to access its Summary page by clicking the award link. From here, you can quickly see the award details such as total amount, vendor, line item, and contract text

You can also take action from the summary page to upload documents, add checklist items, or update the award.

![award_summary.png](images/award_summary.png)

#### Funding

From the **Funding** tab, you can enter and manage the details of the Funding Sources used for the Award. You can add funding to an award if it is in draft status. To add funding, click **+ADD** and capture the details of the fund.

Adding a funding source makes it available to obligate on the [line items](#line-items) for that Award. The Obligated Amount and the Available Amount are automatically calculated based on obligations you make at the line item level.

![award_add_funding.png](images/award_add_funding.png)

#### Line Items

Under **Line items**, you can see the breakdown of line items for the award. Here you can search, filter, and drill down to each line item to view more information. If the award is in draft status, you can update, add, delete, duplicate, and obligate funding for your line item. Contracting personnel can create subline items (SLINs) underneath contract line items (CLINS), which provides more flexibility and granularity in tracking the goods or services expected to be delivered as part of the award.

![award_line_items.png](images/award_line_items.png)

Funding sources that are added to the [Funding](#funding) tab are made available to obligate at the line item level. When an award is in draft, you can obligate these funds by selecting the line item you want to update and clicking on **UPDATE**. You an also click **+ADD** from the Funding section on the line item summary.

Simply enter the amount you wish to obligate from each funding source and click **UPDATE**. Funding sources without an amount entered will not be obligated. Once added, the solution will update the balance of the total Obligated Amount and total Available amount for that funding source.

![line_item_funding.png](images/line_item_funding.png)

#### Contract Text

The **Contract Text** section displays any custom contract text to be included in the generated award documentation. If the award is in draft status, you can select a contract text section and click **+ADD TEXT** to enter the text. You can enter text manually or you can choose **Use AI assistance** to generate content automatically based on a prompt.

![award_contract_tex_genaAI_.png](images/award_contract_text_genAI.png)

![award_contract_text.png](images/award_contract_text.png)

### Clauses

If you also have purchased Government Clause Automation Solution (GCA) in addition to Contract Writing, the **Clauses tab** will appear on both your Solicitation and Award records.

From this tab, you can conveniently access the full power of our Clause Automation solution from within Contract Writing. This includes the ability to quickly create, validate and manage clause sets. Clauses added in your clause set are automatically included in your system-generated contract documentation.

![cw_clauses.png](images/cw_clauses.png)

![cw_create_clauses.png](images/cw_create_clauses.png)

## Directory

Select the **DIRECTORY** page to view a complete list of all of your organization's vendor, consortia, institution, program, office, contact, and user records.

-   Search your organization's vendors, consortia, institutions, programs, offices, contacts, and users.
-   Access the Summary view for detailed information about a specific item.
-   Create a new item in your directory.
-   Export the directory.

![directory_vendors.png](images/directory_vendors.png)

## Procurement Copilot

Select the **PROCUREMENT COPILOT** page to access the Procurement AI Copilot. With the Procurement AI Copilot, you can leverage the power of AI to streamline your contract writing processes.

For more information see the [Procurement AI Copilot Overview](ai-copilot-overview.html) and [Installing Procurement AI Copilot](setting-up-ai-copilot.html) for more information on installing and using this integration with your Contract Writing solution.

![procurement_AI_copilot_cw.png](images/procurement_AI_copilot_cw.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...