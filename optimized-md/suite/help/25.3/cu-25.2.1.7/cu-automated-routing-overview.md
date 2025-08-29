---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/cu-automated-routing-overview.html
original_path: cu-25.2.1.7/cu-automated-routing-overview.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Automated Routing Module Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

One of the most common challenges underwriting managers face is getting the right submissions to the right teams as quickly as possible. Additionally, once a submission is routed to the correct team, underwriting managers need to ensure work is evenly distributed across the team. To tackle these challenges, many underwriting managers rely on a manual process to assign and route submissions to the right people. However, this approach can be slow and error-prone. It can lead to an imbalanced work distribution, resulting in reduced productivity.

For example, suppose you manage several teams, where each team has a specific responsibility for handling a particular submission type. Currently, you have to manually evaluate each new submission to determine which team should handle it, then assess each team member's active work to decide who can take on a new submission. This approach is not only time-consuming but can also create a bottleneck for your teams who are processing submissions. To address this issue, you need a way to create business rules that automatically route new submissions to the appropriate team.

Connected Underwriting (CU) P&C ships with Automated Routing, a pre-built module that allows underwriting managers to streamline the submission assignment process by creating rules that automate submission assignments and routing them to teams based on submission type. For more information, see [Install Automated Routing](install-automated-routing.html) and [Set Up Automated Routing](setting-up-automated-routing.html).

After setting up the Automated Routing module with CU P&C, underwriting managers can access the Assignment Rules site to define business rules that automatically assign incoming submissions to teams based on the rule logic. This eliminates the manual submission assignment step and reduces the time it takes to process a submission.

This guide provides a brief overview of the Automated Routing module and how it can help streamline submission processing in CU P&C.

## What does the Automated Routing module offer?

### Centralized view of assignment rules

Once incorporated into your CU P&C Base application, the Automated Routing module includes a separate Assignment Rules site within the CU P&C solution. This site provides a centralized view of all your organization's submission assignment rules.

![assignment_rules_settings](images/assignment_rules_settings.png)

From the Assignment Rules site, underwriting managers can:

-   View all submission assignment rules.
-   Search and filter existing rules.
-   Create new submission assignment rules.
-   Modify existing submission assignment rules.
-   Manage how existing submission assignment rules are executed.

The Submission Assignment grid lists all existing submission assignment rules and details, including the rule priority, rule name, group (team) assignment, routing type, and last modified timestamp. You can search the list to find the rule you need to edit to match organizational, process, or team changes.

## Simplified creation of complex rules

The Automated Routing module also includes user-friendly, intuitive interfaces that simplify the creation of new submission assignment rules.

![create_assignment_rule](images/create_assignment_rule.png)

From simple to complex, the Automated Routing module allows you to configure the conditional logic that controls how incoming submissions are assigned and routed to teams.

Do you need a specific submission to match a single, multiple, or condition group to ensure it routes to the right team? The Create Assignment Rule dialog allows you to define conditional logic using AND or OR operators to create simple or complex submission assignment rules.

-   **Match All Conditions**: This is the\* AND\* operator. When selected, CU P&C routes an incoming submission to a specific team when it matches all the conditions in the rule.
-   **Match Any Conditions**: This is the _OR_ operator. When selected, CU P&C routes an incoming submission to a specific team when it matches any conditions in the rule.

The Assignees section uses auto-suggest to enable you to quickly define the team you want to assign to the rule. This section even includes an Exclude Users field to restrict one or more team members from the overall group from the submission assignment.

Finally, when creating new assignment rules, you can select from three routing type options:

-   **Round Robin**: This option routes the incoming submission to a team member based on turn order.
-   **Workload Balance**: This option routes the incoming submission to the team member with the least workload capacity based on in-progress work.
-   **Shared Queue**: This option assigns an incoming submission to the designated team and allows any user on the team to accept it.

### Rule prioritization and usage control

This Submission Assignment grid displays rules by order of priority, allowing you to see which rules are executed first and the power to change the execution order to match your process needs. In addition, you can deactivate rules that are no longer in use.

![manage_assignment_rules](images/manage_assignment_rules.png)

How does the Automated Routing module handle conflicting submission assignment rules? Simple, the rule with a lower number takes precedence over the rule with a higher number.

## Ready to get started?

To incorporate the Automated Routing module with CU P&C, see [Installing Automated Routing](install-automated-routing.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...