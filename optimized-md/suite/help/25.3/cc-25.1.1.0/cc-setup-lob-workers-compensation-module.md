---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-lob-workers-compensation-module.html
original_path: cc-25.1.1.0/cc-setup-lob-workers-compensation-module.html
version: "25.3"
title: "Setting Up LOB Workers Compensation Module"
page_id: "cc-25.1.1.0/cc-setup-lob-workers-compensation-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up LOB Workers Compensation Module

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

After installing the [Workers Compensation LOB](cc-lob-workers-compensation-module-overview.html) add-on module, you need to set it up before using it with the Connected Claims Base application. This guide walks you through the incorporation steps.

This guide provides the bare minimum incorporation steps required to utilize the full functionality of the Workers Compensation LOB add-on module.

These steps include:

-   [Configure the Summary page](#step-1-configure-the-summary-page).
-   [Configure the Intake and Edit forms](#step-2-configure-the-intake-and-edit-forms).
-   [Configure the Supplement type references](#step-3-configure-the-supplement-type-references).
-   [Configure the CCM\_ClaimSupplement record](#step-4-configure-the-ccm_claimsupplement-record)
-   [Configure the Supplement relationship](#step-5-configure-the-supplement-relationship).
-   [Configure the Treatment Supplement related action](#step-6-configure-the-treatment-supplement-related-action).

Implementers are free to customize the security, display names, and other aspects of the application to best suit their needs.

### System Prerequisites

-   Appian platform running version 25.1 or greater.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Workers Compensation LOB add-on module application containers, including:
    -   `CCM Add-on: Category Workers Comp`

## Step 1: Configure the Summary page

To incorporate the Workers Compensation LOB add-on module with Connected Claims, you need to configure the Summary page with the Workers Compensation category type.

To configure the Summary page:

1.  In the target environment, log in as the deployment user.
2.  Navigate to **Appian Designer**, then search for and open the **Connected Claims Management Base** application.
3.  Next, search and open for the **CCM\_WFL\_ClaimSummary\_FormSelector** expression rule.
    1.  Add the following inside `a!match`.

        ```
        1
        2
        3
        4
        5
        equals: "37555ee2-0774-484d-8528-61f58620fbcb",
        then:
        rule!CCM_Category_Workers_Compensation_Type_Generic_Workers_Compensation_SummaryView(
        recordId: ri!recordId
        ),
        ```

        ![cc_wc_claim_summary_expression_rule](images/cc_wc_claim_summary_expression_rule.png)

4.  Save the expression rule.

## Step 2: Configure the Intake and Edit forms

Next, you need to configure the Intake and Edit forms.

To configure these forms:

1.  From **Appian Designer**, navigate to the **Connected Claims Management Base** application.
2.  Next, search for and open the **CCM\_WFL\_CreateClaim\_FormSelector** interface rule.
    1.  Add the following inside `a!match`.

        ```
        1
        2
        3
        4
        5
        6
        7
        8
              equals: "39cfdd59-73b2-4f8e-9140-0a6f2994c0aa",
          then: rule!CCM_Category_Workers_Compensation_Type_Generic_Workers_Compensation_IntakeForm(
            data: ri!data
          ),
          equals: "0cc73e08-fd1a-4bfc-b6f2-39658ba82fac",
          then: rule!CCM_Category_Workers_Compensation_Type_Generic_Workers_Compensation_EditForm(
            data: ri!data
          ),
        ```

        ![cc_wc_create_claim_interface](images/cc_wc_create_claim_interface.png)

3.  Save the interface rule.

## Step 3: Configure the Supplement type references

In this step, you will configure the supplement type references for the Workers Compensation LOB by updating the associated expression rules.

### Update the `CCM_CONF_supplementTypeReference` expression rule

To configure the expression rule:

1.  In the **Connected Claims Management Base** application, search for and open the `CCM_CONF_supplementTypeReference` expression rule.
    1.  Find the **WRCM-TREATMENT** comment.
    2.  Add the following rule below the comment:

        `rule!CCM_CAT_WRCM_Treatment_supplementTypeReference(),`

        ![cc_wc_add_rule_01](images/cc_wc_add_rule_01.png)

2.  Save the expression rule.

### Update the `CCM_CONF_SupplementType_ClaimTypeMap` expression rule

To configure the expression rule:

1.  Navigate back to the **Connected Claims Management Base** application.
2.  Search for and open the `CCM_CONF_SupplementType_ClaimTypeMap` expression rule.
    1.  Find the **WRCM-TREATMENT** comment.
    2.  Add the following rule below the comment as shown.

        `rule!CCM_CAT_WRCM_Treatment_SupplementType_ClaimTypeMap(),`

        ![cc_wc_add_rule_02](images/cc_wc_add_rule_02.png)

3.  Save the expression rule.

## Step 4: Configure the `CCM_ClaimSupplement` record

Next, you need to configure the `CCM_ClaimSupplement` record by updating the relationship and adding a related action.

To update the record:

1.  Navigate back to the **Connected Claims Management Base** application.
2.  Search for and open the **CCM\_ClaimSupplement** record.
    1.  Click **Add Relationship** and update the following:
        -   **Related Record Type**: `CCM_CAT_WRCM_Treatment`
        -   **Relationship Name**: `wrcmTreatments`
        -   **Relation Type**: One to Many
        -   **Column**: `claimSupplementId`

            ![cc_wc_record_relationship_01](images/cc_wc_record_relationship_01.png)

    2.  Click the **Actions** tab.
        1.  Under **Related Action**, click **Configure New Action Manually** and update the following:
            -   **Display Name:** Select **Use Expression** and pick **Add Treatment** from the translation set.
            -   **Process Model**: CCM\_CAT\_WRCM\_ClaimSupplement\_CreateTreatment - **Key**: `addTreatment`
            -   **Note**: This parameter should automatically populate.
        2.  In the context, add the code as shown:

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
                /*Initializing supplement with one default treatment*/
                claimSupplement: a!update(
                  local!claimSupplement,
                  'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{7949b6ae-1364-4e0e-8cb2-9c107ca29a40}wrcmTreatments',
                  rule!CCM_CAT_WRCM_Treatment_Initialize(claimSupplement: local!claimSupplement)
                )
              }
            )
            ```

            ![cc_wc_edit_related_action](images/cc_wc_edit_related_action.png)

3.  Save the record.

## Step 5: Configure the Supplement relationship

Follow the steps in this section to configure the Supplement relationship by updating the associated expression rule and interface rules.

### Update the `CCM_CAT_WRCM_Treatment_supplementTypeReference` expression rule

To update the expression rule:

1.  From **Appian Designer**, navigate to **CCM Add-on: Category Workers Comp** application and search for and open the `CCM_CAT_WRCM_Treatment_supplementTypeReference` expression rule.
    1.  In **line 5**, add the `claimSupplementRelationship` as shown:

        ![cc_add_claimSupplementRelationship](images/cc_add_claimSupplementRelationship.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the Supplement relationship that should be replaced with the content shown above.

            ```
            1
              claimSupplementRelationship: 'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{b2251053-276f-437d-a9af-f2f83fd46e49}wrcmTreatments',
            ```

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.wrcmTreatments` relationship will need to be updated to reference the value created in the target environment.

2.  Save the expression rule.

### Update the `CCM_CAT_WRCM_Treatment_createClaimInterface` interface rule

To update the interface rule:

1.  Navigate back to the **Connected Claims Management Base** application.
2.  Search for the `CCM_CAT_WRCM_Treatment_createClaimInterface` interface rule.
    1.  In **lines 4, 35, 37, 71, 73** and **84**, map `ri!claimSupplement.wrcmTreatments` as shown:

        ![cc_update_CCM_CAT_WRCM_Treatment_createClaimInterface](images/cc_update_CCM_CAT_WRCM_Treatment_createClaimInterface.png)

        ![cc_update_CCM_CAT_WRCM_Treatment_createClaimInterface02](images/cc_update_CCM_CAT_WRCM_Treatment_createClaimInterface02.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the Supplement relationship that should be replaced with the content as shown.

            ```
            1
            ri!claimSupplement['recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{b2251053-276f-437d-a9af-f2f83fd46e49}wrcmTreatments']
            ```

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.wrcmTreatments` relationship will need to be updated to reference the value created in the target environment.

3.  Save the interface rule.

### Update the `CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments` interface rule

To update the interface rule:

1.  Navigate back to the **Connected Claims Management Base** application.
2.  Search for the `CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments` interface rule.
    1.  In **lines 18, 46, 48, 82** and **84**, map `ri!claimSupplement.wrcmTreatments` as shown:

        ![cc_CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments01](images/cc_CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments01.png)

        ![cc_CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments02](images/cc_CCM_CAT_WRCM_ClaimSupplement_RecordAction_CreateTreatments02.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the supplement relationship that should be replaced with the content shown above.

            ```
            1
            ri!claimSupplement['recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{b2251053-276f-437d-a9af-f2f83fd46e49}wrcmTreatments']
            ```

        -   **Note**: Alternatively, you can copy and paste the code shown. However, the `CCM_ClaimSupplement.wrcmTreatments` relationship will need to be updated to reference the value created in the target environment.

3.  Save the interface rule.

## Step 6: Configure the Treatment Supplement related action

Finally, you need to configure the Add Treatment related action on the `CCM_CAT_WRCM_Treatment_summaryViewInterface` interface rule

To update the interface rule:

1.  From **Appian Designer**, navigate to **CCM Add-on: Category Workers Comp** application.
2.  Search for and open the `CCM_CAT_WRCM_Treatment_summaryViewInterface` interface rule.

    1.  In **lines 30** and **70**, configure the `add treatment` action as shown:

    ![cc_CCM_CAT_WRCM_Treatment_summaryViewInterface01](images/cc_CCM_CAT_WRCM_Treatment_summaryViewInterface01.png)

    ```
    1
       'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.actions.{e427b721-e6d7-4e0e-b15d-91fa017d999a}addTreatment'
    ```

    -   **Note**: You can copy the following code. However, the `CCM_ClaimSupplement.actions.addTreatment` action will need to be updated to reference the value created in the target environment.
3.  Save the interface rule.

## Next steps

Now that you have finished setting up the Workers Compensation LOB add-on module with your Connected Claims Base application, you can start using this functionality with your Connected Claims solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...