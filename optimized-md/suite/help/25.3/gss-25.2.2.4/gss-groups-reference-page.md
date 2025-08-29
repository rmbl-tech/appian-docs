---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-groups-reference-page.html
original_path: gss-25.2.2.4/gss-groups-reference-page.html
version: "25.3"
title: "Groups Reference Page"
page_id: "gss-25.2.2.4/gss-groups-reference-page"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Government Source Selection comes with a number of groups provided by default. By adding users to these groups, you can grant access to separate parts of the application.

There are three categories that the default groups belong to:

-   **Business Groups**
    -   These groups represent the different business roles that will interact with the application.
    -   Examples include **Contracting Officer**, **Legal** and **Contract Specialist**.
-   **Security Groups**
    -   These groups are set as the security for certain Appian objects. Different business groups are members of security groups to grant access to application functionality to entire roles.
    -   Examples include **AS GSS Source Selection Site Access** and **AS GSS Upload Documents PM Access**.
-   **Wrapper Groups**
    -   These groups are used to group together a number of groups of the same category. For instance, a list of business groups may be added to a certain wrapper group. This allows for querying for all groups of a certain category in different parts of the application.
    -   Examples include **AS GSS Business Roles** and **AS GSS Departments**.

This page lists the default groups provided with GSS, what business groups belong to which wrapper and security groups, and what actions members of the security groups can perform.

## Group visibility

In order for the correct groups to show up in application pickers, each type of group has the following visibility settings:

| Group Type | Visibility | Reason |
| --- | --- | --- |
| Business group | Public | End users should be able to select business groups in application pickers. |
| Security group | Private | End users should never see security groups in application pickers. |
| Wrapper group | Private | End users should never see wrapper groups in application pickers. |

## Wrapper group membership

This table lists all the default business groups and the wrapper group to which they belong.

These business groups are members of the **AS GSS All Business Users** group type.

| Wrapper Group | Business Group |
| --- | --- |
| AS GSS Departments | IT |
| Legal |
| Policy |
| AS GSS Business Roles | Contracting Officer |
| Contract Specialist |
| Contracting Manager |
| Document Reviewer |
| AS GSS Viewers | Program Managers |
| AS GSS Departments |

## Actions users can perform based on their group membership

This table lists all the actions that are available in GSS and the security groups that control access to each action. It also lists the business groups that are members of each security group.

For security groups where no business group is listed, Appian recommends that you grant membership to individual users.

These security groups are members of the **AS GSS Security Groups** group.

| Actions with Security Group | Security Group | Business Groups with Access |
| --- | --- | --- |
| Receive automatic process model alerts. | AS GSS Designer Alerts Group |
-   NA

 |
| Manage Appian design objects for source selection solution. | AS GAM Appian Administrators |
| Manage Appian design objects for task management. | AS GSS TMG Appian Administrators |
| View and create approach on the GSS Settings site. | AS GSS Source Selection Settings Site Access |
| View the Source Selection site. | AS GSS Source Selection Site Access |

-   All Business Users

 |
| View an Evaluation. | AS GSS Evaluation Record Access |
| View a Vendor. | AS GSS Vendor Record Access |
| Upload a document to a evaluation. | AS GSS Upload Document PM Access |
| Move a document. | AS GSS Move Document PM Access |
| View an evaluation document. | AS GSS Evaluation Document Viewers |
| Manually sync vendor information with SAM.GOV. | AS GSS Sync Vendor From SAM GOV PM Access |
| Create a document from a template. | AS GSS Create Word Doc from Template PM Access |
| Create or update a vendor. | AS GSS Add or Update Vendor PM Access |

-   Contracting
-   Contracting Manager

 |
| Create or update an evaluation. | AS GSS Create or Update Evaluation PM Access |

-   Contracting Officer
-   Contract Specialist
-   Contracting Manager

 |
| Submit a document for review. | AS GSS Submit Document for Review PM Access |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...