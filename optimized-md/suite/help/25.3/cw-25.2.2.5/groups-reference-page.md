---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/groups-reference-page.html
original_path: cw-25.2.2.5/groups-reference-page.html
version: "25.3"
title: "Groups Reference Page"
page_id: "cw-25.2.2.5/groups-reference-page"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Groups Reference Page

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

Appian Contract Writing comes with a number of groups provided by default. By adding users to these groups, you can grant access to separate parts of the solution.

There are three categories that the default groups belong to:

-   **Business Groups**
    -   These groups represent the different business roles that will interact with the solution.
    -   Examples include Contract Officer and Contracting Manager.
-   **Security Groups**
    -   These groups are set as the security for certain Appian objects. Different business groups are members of security groups to grant access to solution functionality to entire roles.
    -   Examples include AS GCW Create or Update Solicitation PM Access and AS GCW Line Item Record Access.
-   **Wrapper Groups**
    -   These groups are used to group together a number of groups of the same category. For instance, a list of business groups may be added to a certain wrapper group. This allows for querying for all groups of a certain category in different parts of the application.
    -   Examples include AS GCW Business Roles and AS GCW Departments.

This page lists the default groups provided with Contract Writing, what business groups belong to which wrapper and security groups, and what actions members of the security groups can perform.

## Group visibility

In order for the correct groups to show up in application pickers, each type of group has the following visibility settings:

| Group Type | Visibility | Reason |
| --- | --- | --- |
| Business group | Public | End users should be able to select business groups in application pickers. |
| Security group | Private | End users should never see security groups in application pickers. |
| Wrapper group | Private | End users should never see wrapper groups in application pickers. |

## Wrapper group membership

This table lists all of the default business groups and the wrapper group that they belong to.

Department head groups are also members of the associated Contract Writing Internal Users groups.

The business groups are all members of the **AS GCW All Business Users** group type.

| Wrapper Group | Business Group |
| --- | --- |
| AS GCW Departments | IT |
| Legal |
| Policy |
| AS GCW Business Roles | Contracting Officer |
| Contract Specialist |
| Contracting Manager |
| Contracting Officer Representative |
| AS AM Viewers | Program Managers |
| AS GCW Departments |

## Actions users can perform based on their group membership

This table lists all of the actions that are available in and the security groups that control access to those actions. It also lists the business groups that are members of each security group.

For security groups where no business group is listed, it is preferable to grant membership to individual users.

| Actions with Security Group | Security Group | Business Groups with Access |
| --- | --- | --- |
| Receive automatic process model alerts. | AS GCW Designer Alerts Group |
-   NA

 |
| Manage Appian design objects for solution. | AS GAM Appian Administrators |
| Manage Appian design objects for task management. | AS GCW TMG Appian Administrators |
| View and create a checklist on the GCW Settings site. | AS GCW TMG Task Management Access |
| View the Contract Writing site. | AS GCW Contract Writing Site Access |

-   All Business Users

 |
| View an award. | AS GCW Award Record Access, Recipient Group |
| View a solicitation. | AS GCW Solicitation Record Access |
| Upload a document to an award. | AS GCW Upload Document PM Access, Recipient Group |
| Move a document to a different contract file folder. | AS GCW Move Document PM Access |
| View a solicitation or award document. | AS GCW Document Viewers |
| Create a document from a template. | AS GCW Create Word Doc from Template PM Access |
| Add Checklist | AS GCW Add Checklist Setup PM Access |
| Create an alert checklist item. | AS GCW Create Alert Task PM Access |
| Create or update award alerts. | AS GCW Add or Update Award Alerts PM Access |
| Create or update award line item alerts. | AS GCW Add or Update Line Item Alerts PM Access |
| Submit a document for review. | AS GCW Submit Document for Review PM Access |
| Create an Ad Hoc Task | AS GCW TMG Create Ad Hoc Tasks Access |
| Cancel a Task | AS GCW TMG Cancel Tasks PM Access |
| Create or update a vendor. | AS GCW Add or Update Vendor PM Access |

-   Contracting Officer
-   Contract Specialist
-   Contracting Manager

 |
| Create or update a solicitation. | AS GCW Create or Update Solicitation PM Access |
| Release Solicitation | AS GCW Release Solicitation PM Access |
| Create Amendment | AS GCW Create Amendment PM Access |
| Release Amendment | AS GCW Release Amendment PM Access |
| Create or update an award. | AS GCW Create or Update Award PM Access |
| Release Award | AS GCW Release Award PM Access |
| Close An Award | AS GCW Close Award PM Access |
| Create Modification | AS GCW Create Modification PM Access |
| Release A Modification | AS GCW Release Modification PM Access |
| Import an award. | AS GCW Import Award PM Access |
| Add viewers to an award. | AS GCW Update Viewers PM Access |
| Create Or Update Contract Text | AS GCW Create or Update Contract Text PM Access |
| Create or Update A Line Item | AS GCW Create or Update Line Item PM Access |
| Add Or Update Line Item Delivery Information | AS GCW Add Or Update Delivery PM Access, Recipient Group |
| Add or Update Line Item Inspection and Acceptance Information | AS GCW Add Or Update Inspection And Acceptance PM Access, Recipient Group |
| Create or Edit Program Information | AS GCW Create or Edit Program PM Access |
| Associate A Program To An Award | AS GCW Associate Award to Program PM Access |
| Create or Update A Clause Set | Must have GCA application |
| Validate A Clause Set | Must have GCA application |
| Create or Update Funding Sources | AS GCW Create or Update Award Funding PM Access |
| Obligate Funds To Line Items | AS GCW Write Funding Information From Line Items PM Access |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...