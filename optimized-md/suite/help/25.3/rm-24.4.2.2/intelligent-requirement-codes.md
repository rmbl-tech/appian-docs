---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/intelligent-requirement-codes.html
original_path: rm-24.4.2.2/intelligent-requirement-codes.html
version: "25.3"
title: "Configuring Intelligent Requirement Codes"
page_id: "rm-24.4.2.2/intelligent-requirement-codes"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Intelligent Requirement Codes

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

Requirement Management (RM) provides powerful tools for intelligently searching for code values that can be associated with each requirement. These codes allow for the categorization of requirements and are also valuable for identifying relevant best-in-class contracts.

We know that finding the correct product service code (PSC) and North American Industry Classification System (NAICS) code can be challenging, so RM provides the ability to find the right code using just one or several keywords.

## Search and add requirement codes

During the [new requirement creation process](creating-new-requirement.html), you can type a few keywords into the PSC search bar and click **SEARCH** and the solution lists the relevant PSC values.

![NAICS code auto-recommendations and manual search option.](images/search_and_add_requirement_codes.png)

Alternatively, if you know exactly which PSC code you want to enter, you can type it directly into the search bar and click **SEARCH** to pull it up.

![PSC code keyword search results and recommended NAICS codes on requirement creation page.](images/facilitates_speed_and_accuracy_2.png)

Based on the PSC code you select, the solution also automatically displays a list of relevant NAICS codes to save you time and effort. However, you can manually override these NAICS code recommendations by clicking **Manually search for a code**.

Similar to the PSC code search, the NAICS code search provides intelligent text searching capabilities. Additionally, you can search for a NAICS code using the exact code value.

![NAICS code auto-recommendations and manual search option.](images/search_and_add_requirement_codes_2.png)

RM provides this intelligent search feature by connecting to an [external source](https://psctool.us/) maintained by the **Defense Pricing and Contracting (DPC)** office.

You can also opt to add NIGP (National Institute of Governmental Purchasing) codes instead of PSC or NAICS codes.

![Requirement form showing NIGP codes section.](images/search_and_add_requirement_codes_3.png)

## Configure requirement codes

The system admin can enable either PSC and NAICS or the NIGP fields by modifying the constant values.

To enable PSC and NAICS codes:

1.  Go to **Appian Designer** > **RM Application** > **Requirements Management**.

    ![Requirements Management dropdown with Appian Designer highlighted.](images/configuration.png)

2.  Click Search icon to open the **Search objects** bar.
3.  Search for and select the constant `AS_RM_BOL_PSC_NAICS_TOGGLE` to open the **Constant Properties** wizard.

    ![Appian Designer: Search for AS_RM_BOL_PSC_NAICS_TOGGLE constant.](images/configuration_2.png)

4.  Select **True** using the **Value** radio button.
5.  Click **SAVE** to save changes and close the wizard.

    ![Constant Properties wizard for AS_RM_BOL_PSC_NAICS_TOGGLE showing Value True.](images/configuration_4.png)

6.  Search for and select the constant `AS_RM_BOL_NIGP_CODES_TOGGLE` to open the **Constant Properties** wizard.
7.  Select **False** using the **Value** radio button.
8.  Click **SAVE** to save changes and close the wizard.

**Note:**  These actions enable PSC and NAICS codes and disable NIGP codes feature when creating and updating requirements.

To enable NIGP codes:

1.  Search for and select the constant `AS_RM_BOL_NIGP_CODES_TOGGLE` to open the **Constant Properties** wizard.

    ![Searching for and selecting AS_RM_BOL_NIGP_CODES_TOGGLE constant.](images/configuration_3.png)

2.  Select **True** using the **Value** radio button.
3.  Click **SAVE** to save changes and close the wizard.

    ![AS_RM_BOL_NIGP_CODES_TOGGLE constant properties: Value True.](images/configuration_5.png)

4.  Search for and select the constant `AS_RM_BOL_PSC_NAICS_TOGGLE` to open the **Constant Properties** wizard.
5.  Select **False** using the **Value** radio button.
6.  Click **SAVE** to save changes and close the wizard.

**Note:**  These actions enable NIGP codes and disable PSC and NAICS codes feature when creating and updating requirements.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...