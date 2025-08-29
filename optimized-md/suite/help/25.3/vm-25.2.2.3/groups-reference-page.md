---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/groups-reference-page.html
original_path: vm-25.2.2.3/groups-reference-page.html
version: "25.3"
title: "Groups Reference Page"
page_id: "vm-25.2.2.3/groups-reference-page"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Vendor Management comes with a number of groups provided by default. By adding users to these groups, you can grant access to separate parts of the application.

There are three categories that the default groups belong to:

-   **Business Groups**

    -   These groups represent the different business roles that will interact with the application.

    -   Examples include **Contracting Officer** and **Contract Specialist**.

-   **Security Groups**

    -   These groups are set as the security for certain Appian objects. Different business groups are members of security groups to grant access to application functionality to entire roles.

    -   Examples include **AS VM Vendor Management Site Access** and **AS VM Create Vendor User PM Access**.

-   **Wrapper Groups**

    -   These groups are used to combine a number of groups associated with the same category. For instance, a list of business groups may be added to a certain wrapper group. This allows for querying for all groups of a certain category in different parts of the application.

    -   Examples include **AS VM Business Roles** and **AS VM Departments**.

This page lists the default groups provided with VM, what business groups belong to which wrapper and security groups, and what actions members of the security groups can perform.

## Group visibility

In order for the correct groups to show up in application pickers, each type of group has the following visibility settings:

| Group Type | Visibility | Reason |
| --- | --- | --- |
| Business group | Public | End users should be able to select business groups in application pickers. |
| Security group | Private | End users should never see security groups in application pickers. |
| Wrapper group | Private | End users should never see wrapper groups in application pickers. |

## Wrapper group membership

This table lists all of the default business groups and the wrapper group to which they belong.

These business groups are members of the **AS VM All Business Users** group type.

| Wrapper Group | Business Group |
| --- | --- |
| AS VM Internal Users (AS VM Contracting Personnel) | Contracting Officer |
| Contract Specialist |
| Contracting Manager |
| AS VM External Users | Vendors |

## Actions users can perform based on their group membership

This table lists all of the actions that are available in VM and the security groups that control access to each action. It also lists the business groups that are members of each security group.

For security groups where no business group is listed, Appian recommends that you grant membership to individual users.

These security groups are members of the **AS VM Security Groups** group.

| Actions with Security Group | Security Group |
| --- | --- |
| Manage Appian design objects for VM solution. | AS GAM Appian Administrators |
| Receive automatic process model alerts. | AS VM Designer Alerts Group |
| View the VM site. | AS VM Vendor Management Site Access |
| View an opportunity. | AS Vendor Management Settings Site Access |
| View a proposal. | AS Vendor Management Site Access |
| View a document. | AS VM Evaluation Record Access |
| View a vendor. | AS VM Vendor Record Access |
| Deactivate a vendor user. | AS VM Deactivate Vendor User PM Access |
| Create a user for an existing vendor. Calls the ‘Create Vendor User’ process model. | AS VM Create User for Vendor PM Access |
| Create notifications for an opportunity. | AS VM Create Notification PM Access |
| Register as a vendor. | AS VM Register Vendor PM Access |
| Submit decision on vendor registration. | AS VM Submit Decision Access |
| Create a user during vendor registration. | AS VM Create Vendor User PM Access |
| Withdraw proposal. | AS VM Withdraw Proposal PM Access |
| Bulk upload proposal documents. | AS VM Vendor Bulk Upload PM Access |
| Submit a proposal. | AS VM Submit Proposal PM Access |
| Mark a proposal as interested. | AS VM Mark as Interested PM Access |
| Will add ‘AS GAM Appian Administrators’ as admin, ‘AS VM Internal Users’ as editors, and if opportunity is private, will set associated vendors as viewers. | AS VM Setup Opportunity Folder PM Access |
| Close an opportunity. | AS VM Close Opportunity PM Access |
| Create or update an opportunity. | AS VM Create or Update Opportunity PM Access |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...