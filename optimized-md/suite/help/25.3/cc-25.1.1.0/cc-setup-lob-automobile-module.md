---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-lob-automobile-module.html
original_path: cc-25.1.1.0/cc-setup-lob-automobile-module.html
version: "25.3"
title: "Setting Up the Automobile LOB Module"
page_id: "cc-25.1.1.0/cc-setup-lob-automobile-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Automobile LOB Module

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

After installing the [Automobile LOB](cc-lob-automobile-module-overview.html) add-on module, you need to set it up before using it with the Connected Claims Base application. This guide walks you through the incorporation steps.

This guide provides the bare minimum incorporation steps required to utilize the full functionality of the Automobile LOB add-on module. Implementers are free to customize the security, display names, and other aspects of the application to best suit their needs.

These steps include:

-   [Configure the Supplement type references](#step-1-configure-the-supplement-type-references).
-   [Configure the Supplement relationship](#step-2-configure-the-supplement-relationship).
-   [Configure the Vehicle Supplement related action](#step-3-configure-the-vehicle-supplement-related-action)

### System Prerequisites

-   Appian platform running version 25.1 or greater with the Record Chat feature enabled.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported Automobile LOB add-on module application containers, including:
    -   CCM Add-On: LOB Automobile

## Step 1: Configure the Supplement type references

To incorporate the Automobile LOB add-on module with Connected Claims, you need to configure the Supplement type references by updating the associated expression rule and record type.

### Configure the CCM\_CONF\_supplementTypeReference expression rule

To configure the first expression rule:

1.  In the target environment, log in as the deployment user.
2.  Navigate to **Appian Designer**.
3.  Navigate to **Connected Claims Management Base** application.
4.  Search for and open the **CCM\_CONF\_supplementTypeReference** expression rule.
    1.  Find the **AUTO-VEHICLE** comment.
    2.  Add the following rule below the comment as shown:

        `rule!CCM_CAT_AUTO_Vehicle_supplementTypeReference(),`

        ![cc_supplement_type_reference_auto](images/cc_supplement_type_reference_auto.png)

5.  Save the expression rule.

### Configure the CCM\_CONF\_SupplementType\_ClaimTypeMap expression rule

To configure the next expression rule:

1.  In **Appian Designer**, search for and open the **CCM\_CONF\_SupplementType\_ClaimTypeMap** expression rule.
2.  Find the **AUTO-VEHICLE** comment.
    1.  Add the following rule below the comment:

        `rule!CCM_CAT_AUTO_Vehicle_SupplementType_ClaimTypeMap(),`

        ![cc_supplement_type_claim_type_auto](images/cc_supplement_type_claim_type_auto.png)

3.  Save the expression rule.

### Configure the `CCM_ClaimSupplement` record

To configure the record:

1.  From **Appian Designer**, navigate to **Connected Claims Management Base** application.
2.  Search for and open the `CCM_ClaimSupplement` record.
    1.  Click **Add Relationship**.
        -   **Related Record Type**: `CCM_CAT_AUTO_Vehicle`
        -   **Relationship Name**: `autoVehicles`
        -   **Relation Type**: One to Many
        -   **Column**: `claimSupplementId`

            ![cc_edit_CCM_CAT_AUTO_Vehicle](images/cc_edit_CCM_CAT_AUTO_Vehicle.png)

3.  From the `CCM_ClaimSupplement` record, click the **Actions** tab.
    1.  Under **Related Action**, click **Configure New Action Manually** and update the following:
        -   **Display Name**: Select **Expression** and pick **Add Vehicle** from the translation set.
        -   **Process Model**: `CCM_CAT_AUTO_ClaimSupplement_CreateVehicle`
        -   **Key**: `addVehicle`
            -   **Note**: This parameter should automatically populate.
        -   In the **Context** field, add the following code:

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
                   /*Initializing supplement with one default vehicle*/
                   claimSupplement: a!update(
                     local!claimSupplement,
                     'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{fcf95825-d15d-4ba5-bb5f-72dc5d6af397}autoVehicles',
                     rule!CCM_CAT_AUTO_Vehicle_Initialize(claimSupplement: local!claimSupplement)
                   )
                 }
               )
            ```

            ![cc_CCM_ClaimSupplement_update](images/cc_CCM_ClaimSupplement_update.png)

4.  Save the record.

## Step 2: Configure the Supplement relationship

Next, you need to configure the Supplement relationship by updating the associated expression rule and interface rules.

### Configure the `CCM_CAT_AUTO_Vehicle_supplementTypeReference` expression rule

To configure the expression rule:

1.  From **Appian Designer**, navigate to the to **CCM Add-on: Category Automobile** application.
2.  Search for and open the `CCM_CAT_AUTO_Vehicle_supplementTypeReference` expression rule.
    1.  In **line 5**, add the `claimSupplementRelationship` as shown.

        ![cc_update_CCM_CAT_AUTO_Vehicle_supplementTypeReference](images/cc_update_CCM_CAT_AUTO_Vehicle_supplementTypeReference.png)

        ```
        1
        claimSupplementRelationship: 'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{fcf95825-d15d-4ba5-bb5f-72dc5d6af397}autoVehicles',
        ```

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.autoVehicles` relationship will need to be updated to reference the value created in the target environment.
3.  Save the expression rule.

### Configure the `CCM_CAT_AUTO_Vehicle_createClaimInterface` interface rule

To configure the interface rule:

1.  In the **CCM Add-on: Category Automobile** application, search for and open the `CCM_CAT_AUTO_Vehicle_createClaimInterface` interface rule.
    1.  In **lines 4, 34, 36, 74, 76** and **87**, map `ri!claimSupplement.autoVehicles` as shown.

        ![cc_update_CCM_CAT_AUTO_Vehicle_createClaimInterface](images/cc_update_CCM_CAT_AUTO_Vehicle_createClaimInterface.png)

        ![cc_update_cc_update_CCM_CAT_AUTO_Vehicle_createClaimInterface02](images/cc_update_cc_update_CCM_CAT_AUTO_Vehicle_createClaimInterface02.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the supplement relationship that should be replaced with the content shown.

        ```
        1
        ri!claimSupplement['recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{fcf95825-d15d-4ba5-bb5f-72dc5d6af397}autoVehicles']
        ```

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.autoVehicles` relationship will need to be updated to reference the value created in the target environment.
2.  Save the interface rule.

### Configure the `CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles` interface rule

To configure the interface rule:

1.  In the **CCM Add-on: Category Automobile** application, search for and open the `CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles` interface rule.
    1.  In **line 16, 30, 58, 60, 103** and **105**, map `ri!claimSupplement.autoVehicles` as shown.

        ![cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles01](images/cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles01.png)

        ![cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles02](images/cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles02.png)

        ![cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles03.png](images/cc_update_CCM_CAT_AUTO_ClaimSupplement_RecordAction_CreateVehicles03.png)

        -   **Note**: Each of the lines identified in this step will have an existing commented reference to the supplement relationship that should be replaced with the content as shown.

            ```
            1
            ri!claimSupplement['recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.relationships.{fcf95825-d15d-4ba5-bb5f-72dc5d6af397}autoVehicles']
            ```

            -   **Note**: Alternatively, you can copy and paste the following code: However, the `CCM_ClaimSupplement.autoVehicles` relationship will need to be updated to reference the value created in the target environment.

## Step 3: Configure the Vehicle Supplement related action

Next, you need to configure the Vehicle Supplement related action by configuring the associated expression rule.

To configure the expression rule:

1.  From **Appian Designer**, navigate to the to **CCM Add-on: Category Automobile** application.
2.  Search for and open the `CCM_CAT_AUTO_Vehicle_summaryViewInterface` expression rule.
    1.  In **line 27** and **68**, configure the `addVehicle` action as shown.

        ![cc_CCM_CAT_AUTO_Vehicle_summaryViewInterface01](images/cc_CCM_CAT_AUTO_Vehicle_summaryViewInterface01.png)

        ![cc_cc_CCM_CAT_AUTO_Vehicle_summaryViewInterface02](images/cc_cc_CCM_CAT_AUTO_Vehicle_summaryViewInterface02.png)

        -   **Note**: Alternatively, you can copy and paste the following code. However, the `CCM_ClaimSupplement.actions.addVehicle` action will need to be updated to reference the value created in the target environment.

            ```
            1
              'recordType!{608e153b-099e-4161-b841-6c7dd7911374}CCM_ClaimSupplement.actions.{3560bc71-fd04-4b62-a7ad-40933a8a3a8f}addVehicle'
            ```

## Next steps

Now that you have finished setting up the Automobile LOB add-on module with your Connected Claims Base application, you can start using this functionality with your Connected Claims solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...