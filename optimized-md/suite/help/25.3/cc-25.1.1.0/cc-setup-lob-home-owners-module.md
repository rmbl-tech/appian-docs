---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-lob-home-owners-module.html
original_path: cc-25.1.1.0/cc-setup-lob-home-owners-module.html
version: "25.3"
title: "Setting Up LOB Home Owners Module"
page_id: "cc-25.1.1.0/cc-setup-lob-home-owners-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up LOB Home Owners Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Claims, which must be purchased separately from the Appian base platform. This content was written for Appian 25.1 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After installing the [Life LOB](cc-lob-life-module-overview.html) add-on module, you need to set it up before using it with the Connected Claims Base application. This guide walks you through the incorporation steps.

This guide provides the bare minimum incorporation steps required to utilize the full functionality of the Home Owners LOB add-on module.

These steps include:

-   [Configure the Summary page](#step-1-configure-the-summary-page).
-   [Configure the Intake and Edit forms](#step-2-configure-the-intake-and-edit-forms).

Implementers are free to customize the security, display names, and other aspects of the application to best suit their needs.

### System Prerequisites

-   Appian platform running version 25.1 or greater with the Record Chat feature enabled.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Home Owners LOB add-on module application containers, including:
    -   CCM Add-On: LOB Home Owners

## Step 1: Configure the Summary page

To incorporate the Home Owners LOB add-on module with Connected Claims, you need to configure the Summary page with the Home Owners category type.

To configure the Summary page:

1.  In the target environment, log in as the deployment user.
2.  Navigate to **Appian Designer**.
3.  Navigate to **Connected Claims Management Base** application.
4.  Search for and open the `CCM_WFL_ClaimSummary_FormSelector` expression rule.
    1.  Add the following code inside `a!match`:

        ![cc_claim_summary_form_selector_life_lob](images/cc_claim_summary_form_selector_life_lob.png)

        ```
        1
        2
        3
        4
        equals: "07816f1d-1ca4-47ae-9d5d-59ec55882af7",
          then: rule!CCM_Category_Home_Owners_Type_Generic_Home_Owners_SummaryView(
            recordId: ri!recordId
          ),
        ```

5.  Save the expression rule.

## Step 2: Configure the Intake and Edit forms

Next, you need to configure the Intake and Edit forms.

To configure the forms:

1.  In the **Connected Claims Management Base** application, search for and open the **CCM\_WFL\_CreateClaim\_FormSelector** interface.
    1.  Add the following code inside `a!match`:

        ![cc_create_form_selector.](images/cc_create_form_selector.png)

        ```
        1
        2
        3
        4
        5
        6
        7
        8
        equals: "41f0f824-2058-45e3-8dcf-285c6ea03599",
          then: rule!CCM_Category_Home_Owners_Type_Generic_Home_Owners_IntakeForm(
            data: ri!data
          ),
          equals: "b44624d8-7196-41a0-bb42-abccbc7f9d12",
          then: rule!CCM_Category_Home_Owners_Type_Generic_Home_Owners_EditForm(
            data: ri!data
          ),
        ```

2.  Save the interface.

## Next steps

Now that you have finished setting up the Home Owners LOB add-on module with your Connected Claims Base application, you can start using this functionality with your Connected Claims solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...