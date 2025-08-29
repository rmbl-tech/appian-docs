---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/groups-reference-page.html
original_path: cs-23.3.2.6/groups-reference-page.html
version: "25.3"
title: "Groups Reference Page"
page_id: "cs-23.3.2.6/groups-reference-page"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Connected Servicing comes with a number of groups provided by default. By adding users to these groups, you can grant access to separate parts of the solution.

There are three categories that the default groups belong to:

-   **Business Groups**
    -   These groups represent the different business roles that will interact with the solution.
    -   Examples include **Client Servicing** and **Legal**.
    -   **Customers** is a special type of business group. In order to ensure customers can only see their data and no other customer data, a user may only be [added to one customer group](setting-up-groups.html#managing-group-membership) at a time.
-   **Security Groups**
    -   These groups are set as the security for certain Appian objects. Different business groups are members of security groups to grant access to solution functionality to entire roles.
    -   Examples include **AS SRQ Create Service Request** and **AS SRQ Upload Document**.
-   **Wrapper Groups**
    -   These groups are used to group together a number of groups of the same category. For instance, a list of business groups may be added to a certain wrapper group. This allows for querying for all groups of a certain category in different parts of the application.
    -   Examples include **AS FS Internal Users** and **AS FS Managers**.

This page lists the default groups provided with Connected Servicing, what business groups belong to which wrapper and security groups, and what actions members of the security groups can perform.

To update group membership from the Connected FS Settings site, see [Managing Group Membership](setting-up-groups.html). To modify groups and add users from Appian Designer, see [Modifying groups](modifying-groups.html).

## Group visibility

In order for the correct groups to show up in application pickers, each type of group has the following visibility settings:

| Group Type | Visibility | Reason |
| --- | --- | --- |
| Business group | Public | End users should be able to select business groups in application pickers. |
| Security group | Private | End users should never see security groups in application pickers. |
| Wrapper group | Private | End users should never see wrapper groups in application pickers. |

## Wrapper group membership

This table lists all of the default business groups and the wrapper group that they belong to.

Department head groups are also members of the associated Connected Servicing Internal Users groups. For example, **Client Servicing Department Heads** is also a member of **Client Servicing**.

The business groups are all members of the **AS FS All Business Users** group type.

| Wrapper Group | Business Group |
| --- | --- |
| AS FS External Users | Customer |
| AS FS Internal Users | Back Office |
| Client Servicing |
| Compliance |
| Credit |
| Finance |
| Front Office |
| KYC |
| Legal |
| Middle Office |
| Risk |
| Sales |
| Tax |
| All department head groups (subgroups of these groups) |
| AS FS Managers | Back Office Department Heads |
| Client Servicing Department Heads |
| Compliance Department Heads |
| Credit Department Heads |
| Finance Department Heads |
| Front Office Department Heads |
| KYC Department Heads |
| Legal Department Heads |
| Middle Office Department Heads |
| Risk Department Heads |
| Sales Department Heads |
| Tax Department Heads |

## Actions users can perform based on their group membership

This table lists all of the actions that are available in Connected Servicing and the security groups that control access to those actions. It also lists the business groups that are members of each security group.

For security groups where no business group is listed, it is preferable to grant membership to individual users.

The security groups are all members of the **AS SRQ Security Groups** group.

| Actions that Members Can Perform | Security Group | Member Business Groups |
| --- | --- | --- |
| Receive automatic process model alerts. | AS FS Designer Alerts Group |  |
| Manage Appian design objects. | AS FS Appian Administrators |
| [View the Connected FS Settings site and update onboarding processes from this site.](using-fs-settings.html#accessing-the-connected-fs-settings-site) | AS SRQ Manage Onboarding Processes |
| [View the Connected FS Settings site and update group membership.](setting-up-groups.html) | AS FS GM Manage Group Membership |
| [Assign owners to onboardings.](managing-service-requests.html) | AS SRQ Assign Owner |
-   Client Servicing
-   Client Servicing Department Heads (subgroup)

 |
| [Cancel an Service Request.](managing-service-requests.html) | AS SRQ Cancel Service Request |
| [Completing an Service Request.](managing-service-requests.html) | AS SRQ Complete Service Request |
| [Create custom tasks for an Service Request.](managing-tasks.html) | AS TMG Create Ad Hoc Task |
| [Send out queued tasks.](managing-tasks.html) | AS TMG Initiate Tasks |
| [Reopen tasks that have been completed, marked not needed, or canceled.](managing-tasks.html) | AS TMG Reopen Tasks |
| Update onboarding information from the onboarding record. | AS TMG Update Onboarding Access |
| [Update individual task due dates.](setting-up-processes.html) | AS TMG Update Task Due Date Access |
| Update funding information for an onboarding. | AS IO Update Funding Details Access |
| Create onboardings. | AS IO Create Onboarding Access |

-   Client Servicing
-   Client Servicing Department Heads (subgroup)
-   Sales
-   Sales Department Heads (subgroup)

 |
| Create new customer records. | AS FS Create Customer | AS FS Internal Users |
| [View customer records.](managing-customers.html#viewing-information-for-a-customer) | AS FS Customer Viewers |
| [Attach documents to Service Requests.](managing-documents.html#attaching-a-document) | AS SRQ Upload Document |
| [View the Home page for users who aren't department heads.](home-page-overview.html) | AS SRQ Home Page Viewers |
| View the Service Request records. | AS SRQ Service Request Viewers |
| [Receive tasks.](managing-tasks.html) | AS TMG Task Recipients |
| Update customer details from the customer record. | AS FS Update Customer |
| Post to an onboarding discussion.</a> | AS SRQ RC Create Comment |
| Update contact information for a customer. | AS FS Create Update Contact |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...