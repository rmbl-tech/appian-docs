---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-referral-task-module.html
original_path: cu-25.2.1.7/setting-up-referral-task-module.html
version: "25.3"
title: "Setting Up the Referral Task"
page_id: "cu-25.2.1.7/setting-up-referral-task-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Referral Task

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

After [installing](install-referral-task.html) the Referral Task module, you need to set it up before using it with the Connected Underwriting P&C Base application.

This guide walks you through the required incorporation steps. Before performing these incorporation steps, ensure that your system meets the [required prerequisites](#system-prerequisites)

### System prerequisites

This section details the prerequisites your system must meet to incorporate the Referral Task module with your CU P&C solution.

-   Appian platform running version 24.2 or greater.
-   A supported version of [MariaDB](https://docs.appian.com/suite/help/25.2/System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script must be modified to fit syntax requirements.
-   A supported [web browser](https://docs.appian.com/suite/help/25.2/System_Requirements.html#web-browsers).
-   **Connected Underwriting Base Application v1.6** installed in the target environment.
-   **ISU Add-On: Referral Task Type (ISU\_TRFL)** imported and installed in the target environment.

## Set up the Referral task type reference

To set up the Referral Task module with Connected Underwriting P&C, you need to update the Task Type Reference expression rule.

To update the expression rule:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Connected Underwriting (ISU)** application.
4.  Search for and open the **ISU\_CONF\_taskTypeReference** expression rule.
5.  Append the **ISU\_TRFL\_CONF\_taskTypeReference** rule to the existing array as shown.

    ![ISU_TRFL_CONF_taskTypeReference_rule](images/ISU_TRFL_CONF_taskTypeReference_rule.png)

6.  Click **SAVE**.

## Next steps

Now that you have set up the [Referral Task](cu-referral-task-overview.html) module you can use it in your CU P&C solution to create a new task that assigns your submission to a peer or manager for review.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...