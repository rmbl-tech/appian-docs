---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/groups-reference-page.html
original_path: rm-24.4.2.2/groups-reference-page.html
version: "25.3"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Requirements Management (RM) comes with a number of groups provided by default. By adding users to these groups, you can grant access to separate parts of the application.

There are three categories that the default groups belong to:

-   **Business Groups**
    -   These groups represent the different business roles that interact with the application.
    -   Examples include **Requestor**, **Legal**, and **Contracting Manager**.
-   **Security Groups**
    -   These groups are set as the security for certain Appian objects. Different business groups are members of security groups to grant access to application functionality to entire roles.
    -   Examples include **AS RM Set Up Checklist and Acquisition Path** and **AS RM Requirement Document Viewers**.
-   **Wrapper Groups**
    -   These groups are used to group several groups of the same category. For instance, a list of business groups may be added to a certain wrapper group. This allows for querying for all groups of a certain category in different parts of the application.
    -   Examples include **AS RM Business Roles** and **AS RM Departments**.

This page lists the default groups provided with RM, what business groups belong to which wrapper and security groups, and what actions members of the security groups can perform.

## Group visibility

For the correct groups to show up in application pickers, each type of group has the following visibility settings:

| Group Type | Visibility | Reason |
| --- | --- | --- |
| Business group | Public | End users should be able to select business groups in application pickers. |
| Security group | Private | End users should never see security groups in application pickers. |
| Wrapper group | Private | End users should never see wrapper groups in application pickers. |

## Wrapper group membership

This table lists all of the default business groups and the wrapper group that they belong to.

The business groups are all members of the **AS RM All Business Users** group type.

| Wrapper Group | Business Group |
| --- | --- |
| AS RM Departments | IT |
| Legal |
| Policy |
| AS RM Business Roles | Requestor |
| Requestor Manager |
| Contracting Manager |
| Contracting Officer |
| Contract Specialist |

## Actions users can perform based on their group membership

This table lists all of the actions that are available in RM and the security groups that control access to those actions. It also lists the business groups that are members of each security group.

For security groups where no business group is listed, it is preferable to grant membership to individual users.

The security groups are all members of the **AS RM Security Groups** group.

| Actions with Security Group | Security Group | Business Groups with Access |
| --- | --- | --- |
| Receive automatic process model alerts. | AS RM Designer Alerts Group | NA |
| Manage Appian design objects. | AS RM Appian Administrators | NA |
| View and create checklist on the Requirement Management Settings site. | AS RM Requirements Management Settings Site Access | NA |
| View the Requirements Management site. | AS RM Requirements Management Site Access | NA |
| View an internal user. | AS RM Internal User Viewer | All Business Users |
| Update an internal user. | AS RM Update Internal user PM Access | All Business Users |
| Create and update an external contact. | AS RM Create or Update External User PM Access | All Business Users |
| Create or update a requirement. | AS RM Create or Update Requirement PM Access | Requestor
Requestor Manager
Contracting Manager
Contracting Officer
Contract Specialist |
| View a requirement. | AS RM Requirement Viewers | All Business Users |
| Review a requirement. | AS RM Review Requirement PM Access | Requestor
Requestor Manager
Contracting Manager
Contracting Officer
Contract Specialist |
| Submit a requirement to contracting. | AS RM Submit Requirement PM Access | Requestor
Requestor Manager |
| View a requirement document record. | AS RM Requirement Document Viewers | Requestor
Requestor Manager
Contracting Manager
Contracting Officer
Contract Specialist |
| Add or update requirement line items. | AS RM Requirement Line Item PM Access | Requestor
Requestor Manager
Contracting Manager
Contracting Officer
Contract Specialist |
| Upload a document to a requirement. | AS RM Upload Document PM Access | Requestor
Requestor Manager
Contracting Manager
Contracting Officer
Contract Specialist |
| Assign contracting officers to requirements. | AS RM Assign Requirement PM Access | Contracting Manager |
| Select an acquisition path. | AS RM Set Up Acquisition Path PM Access | Contracting Officer
Contract Specialist |
| Select a checklist and an acquisition path. | AS RM Set Up Checklist and Acquisition Path PM Access | Contracting Officer
Contract Specialist |
| Add document template and auto-populate document. | AS RM Create Word Doc from Template PM Access | All Business Users |
| View Activity Address Code record. | AS RM Activity Address Code Record Access | All Business Users |
| Send messages to other users | AS RM MSG Users | All Business Users |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...