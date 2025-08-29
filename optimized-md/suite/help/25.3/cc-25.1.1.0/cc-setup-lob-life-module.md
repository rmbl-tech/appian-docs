---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-lob-life-module.html
original_path: cc-25.1.1.0/cc-setup-lob-life-module.html
version: "25.3"
title: "Setting Up LOB Life Module"
page_id: "cc-25.1.1.0/cc-setup-lob-life-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up LOB Life Module

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

This guide provides the bare minimum incorporation steps required to utilize the full functionality of the Life LOB add-on module.

These steps include:

-   [Configure the Summary page](#step-1-configure-the-summary-page).
-   [Configure the Intake and Edit forms](#step-2-configure-the-intake-and-edit-forms).
-   [Configure the Supplement type references](#step-3-configure-the-supplement-type-references).
-   [Configure the CCM\_ClaimSupplement record](#step-4-configure-the-ccm_claimsupplement-record)
-   [Configure the CCM\_ClaimSupplement record](#step-5-configure-the-ccm_claimsupplement-record)
-   [Configure the Supplement relationship](#step-6-configure-the-supplement-relationship).
-   [Configure the Beneficiary Supplement related action](#step-7-configure-the-beneficiary-supplement-related-action).

Implementers are free to customize the security, display names, and other aspects of the application to best suit their needs.

### System Prerequisites

-   Appian platform running version 25.1 or greater with the Record Chat feature enabled.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Life LOB add-on module application containers, including:
    -   CCM Add-On: LOB Life

## Step 1: Configure the Summary page

To incorporate the Life LOB add-on module with Connected Claims, you need to configure the Summary page with the Life category type.

To configure the Summary page:

1.  In the target environment, log in as the deployment user.
2.  Navigate to **Appian Designer**.
3.  Navigate to **Connected Claims Management Base** application and search and open for the `CCM_WFL_ClaimSummary_FormSelector` expression rule.
    1.  Add the following code inside `a!match`.

        ![cc_claim_summary_form_selector_exr](images/cc_claim_summary_form_selector_exr.png)

        ```
        1
        2
        3
        4
          equals: "6497a9d2-9fe6-4e03-a121-71367a63c13c",
            then: rule!CCM_Category_Life_Type_Generic_Life_SummaryView(
              recordId: ri!recordId
            ),
        ```

4.  Save the expression rule.

## Step 2: Configure the Intake and Edit forms

Next, you need to configure the Intake and Edit forms.

To configure the forms:

1.  In the **Connected Claims Management Base** application, search for and open the `CCM_WFL_CreateClaim_FormSelector` interface.
    1.  Add the below code inside `a!match`

        ![cc_create_claim_form_selector_exr](images/cc_create_claim_form_selector_exr.png)

        ```
        1
        2
        3
        4
        5
        6
        7
        8
          equals: "b9492e78-88d5-487e-bd67-975a7a41d27f",
            then: rule!CCM_Category_Life_Type_Generic_Life_IntakeForm(
              data: ri!data
            ),
            equals: "c19698e1-cd2b-4dd3-9b32-b993eacfbb04",
            then: rule!CCM_Category_Life_Type_Generic_Life_EditForm(
              data: ri!data
            ),
        ```

2.  Save the interface.

## Step 3: Configure the Supplement type references

In this step, you will configure the supplement type references for the Life LOB by updating the associated expression rules.

## Configure the `CCM_CONF_supplementTypeReference` expression rule

To configure the expression rule:

1.  In the **Connected Claims Management Base** application, search for and open the `CCM_CONF_supplementTypeReference` expression rule.
    1.  Find the **LIFE-BENEFICIARY** comment.
    2.  Add the following rule below the comment:

        `rule!CCM_CAT_LIFE_Beneficiary_supplementTypeReference()`

        ![cc_add_rules_life_lob](images/cc_add_rules_life_lob.png)

2.  Save the expression rule.

### Configure the `CCM_CONF_SupplementType_ClaimTypeMap` expression rule

To configure the rule:

1.  In **Connected Claims Management Base** application, search for and open the `CCM_CONF_SupplementType_ClaimTypeMap` expression rule.

    1.  Find the **LIFE-BENEFICIARY** comment.
    2.  Add the following rule below the comment:

    `rule!CCM_CAT_LIFE_Beneficiary_SupplementType_ClaimTypeMap()`

    ![cc_add_rules_life_lob02](images/cc_add_rules_life_lob02.png)

2.  Save the expression rule.

## Step 4: Configure the `CCM_ClaimSupplement` record

Follow the steps in this section to configure the `CCM_ClaimSupplement` record by updating the `CCM_CAT_LIFE_Beneficiary` relationship and record action to the record.

### Update the `CCM_CAT_LIFE_Beneficiary` relationship

To update the relationship:

1.  In to **Connected Claims Management Base** application, search and open for the **CCM\_ClaimSupplement** record.
    1.  Click **Add Relationship** and update the following:
        1.  **Related Record Type**: `CCM_CAT_LIFE_Beneficiary`
        2.  **Relationship Name**: lifeBeneficiaries
        3.  **Relation Type**: One to Many
        4.  **Column**: `claimSupplementId`

            ![cc_claim_supplement_record.](images/cc_claim_supplement_record.png)

2.  Save the record.

### Configure the related actions

1.  In the **CCM\_ClaimSupplement** record, click the **Actions** tab.
    1.  Under **Related Action**, click **Configure New Action Manually** and configure the action as shown.

        1.  **Display Name**: Select **Use Expression**.
            1.  In the expression editor, pick **Add Beneficiary** from the translation set
        2.  **Process Model**: `CCM_CAT_LIFE_ClaimSupplement_CreateBeneficiary`
        3.  **Key**: `addBeneficiary`
            -   **Note**: Should be automatically populated
        4.  In the context, add the code as shown:

        ![cc_edit_related_action](images/cc_edit_related_action.png)

        ```
        1
        2
        3
        4
        5
        6
        7
        8
        9
        10
        11
        12
        13
        14
        15
           a!localVariables(
             local!claimSupplement: rule!CCM_QR_getClaimSupplement(
               returnType: "SINGLE_OBJECT",
               ids: rv!identifier
             ),
             {
               /* CCM_ClaimSupplement */
               /*Initializing supplement with one default beneficiary*/
               claimSupplement: a!update(
                 local!claimSupplement,
                 'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{d93ad0b1-f087-4ef8-a4fb-5498c49f4914}lifeBeneficiaries',
                 rule!CCM_CAT_LIFE_Beneficiary_Initialize(claimSupplement: local!claimSupplement)
               )
             }
           )
        ```

2.  Save the record.

## Step 6: Configure the Supplement relationship

Next, you need to configure the Supplement relationship by updating the associated expression rule and interface rules.

### Configure the `CCM_CAT_LIFE_Beneficiary_supplementTypeReference` expression rule

To configure the expression rule:

1.  From **Appian Designer**, navigate to the **CCM Add-on: Category Life** application.
2.  Search for and open the `CCM_CAT_LIFE_Beneficiary_supplementTypeReference` expression rule:
    1.  In **line 5**, add the `claimSupplementRelationship` as shown:

        ![cc_CCM_CAT_LIFE_Beneficiary_supplementTypeReference01](images/cc_CCM_CAT_LIFE_Beneficiary_supplementTypeReference01.png)

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.lifeBeneficiaries` relationship will need to be updated to reference the value created in the target environment.

            ```
            1
            claimSupplementRelationship: 'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{d93ad0b1-f087-4ef8-a4fb-5498c49f4914}lifeBeneficiaries',
            ```

3.  Save the expression rule.

### Configure the Create Beneficiaries interface rule

To configure the interface rule:

1.  Navigate back to the **CCM Add-on: Category Life** application.
2.  Search for and open the `CCM_CAT_LIFE_ClaimSupplement_RecordAction_CreateBeneficiaries` interface rule:
    1.  In **lines 15, 28, 48, 50, 98** and **100**, map `ri!claimSupplement.lifeBeneficiaries` as shown:

        ![cc_ra__CreateBeneficiaries01](images/cc_ra__CreateBeneficiaries01.png)

        ![cc_ra__CreateBeneficiaries02](images/cc_ra__CreateBeneficiaries02.png)

        ![cc_ra__CreateBeneficiaries03](images/cc_ra__CreateBeneficiaries03.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the supplement relationship that should be replaced with the content shown.

        ```
        1
           ri!claimSupplement['recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{d93ad0b1-f087-4ef8-a4fb-5498c49f4914}lifeBeneficiaries']
        ```

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.lifeBeneficiaries` relationship will need to be updated to reference the value created in the target environment.
3.  Save the interface rule.

## Step 7: Configure the Beneficiary Supplement related action

Finally, you need to configure the Supplement relationship by updating the associated interface rule.

To configure the interface rule:

1.  From **Appian Designer**, navigate to the CCM Add-on: Category Life application.
2.  Search for and open the `CCM_CAT_LIFE_Beneficiary_summaryDisplayInterface` interface rule.
    1.  In **lines 41** and **77**, configure add beneficiary action as shown:

        ![cc_ir_summaryDisplayInterface01](images/cc_ir_summaryDisplayInterface01.png)

        ![cc_ir_summaryDisplayInterface02](images/cc_ir_summaryDisplayInterface02.png)

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.lifeBeneficiaries` relationship will need to be updated to reference the value created in the target environment.

        ```
        1
        'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.actions.{94ff8753-c5cd-40cf-97b7-67207ded4bc9}addBeneficiary'
        ```

3.  Save the interface rule.

## Next steps

Now that you have finished setting up the Life LOB add-on module with your Connected Claims Base application, you can start using this functionality with your Connected Claims solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...