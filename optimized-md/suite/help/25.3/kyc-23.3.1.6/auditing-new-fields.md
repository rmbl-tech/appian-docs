---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/auditing-new-fields.html
original_path: kyc-23.3.1.6/auditing-new-fields.html
version: "25.3"
title: "Configure Auditing for a New Field"
page_id: "kyc-23.3.1.6/auditing-new-fields"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Auditing for a New Field

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Connected KYC solution includes an auditing process that allows you to audit Process Templates and specific field changes in a service request. Your business users can use this auditing process to track certain histories that may inform their decisions later on, including adding or removing a step in a process, modifying a template, or changing data.

Currently, the following changes are tracked:

-   Updates to templates in the Connected FS Site.
-   Updates to the funding details of an onboarding.

To view updates to templates made in the Connected FS Site:

1.  From the **Connected FS Settings** site, click on **PROCESS**.
2.  Click on **TEMPLATES**.
3.  Click the ![history_icon.png](images/history_icon.png) icon associated with the specific template you want to see the changes for.

    ![trends_tab.jpg](images/trends_tab.jpg)

To view the changes to funding details for an onboarding:

1.  From the **Connected KYC** site, select the **Onboardings** tab.
2.  Click on the name of the onboarding.
3.  Go to the **History** tab.

![history.jpg](images/history.jpg)

We also track changes for the following fields that may be used later on in business decisions in the database:

-   Categories
-   Reference tasks
-   An onboarding's primary owner

If a new field is added to an audited CDT, you will need to configure auditing for that field in order to start tracking it.

We currently track audits to the following CDTs:

-   `AS_KYC_R_TaskCategory`
-   `AS_KYC_R_TaskRef`
-   `AS_KYC_R_Template`
-   `AS_KYC_R_TemplateTask`
    -   Nested array in `AS_KYC_R_Template`
-   `AS_KYC_R_TemplateTask_Precedent`
    -   Nested array in `AS_KYC_R_TemplateTask`
-   `AS_KYC_OnboardingRequest`
-   `AS_KYC_OnboardingFundingDetails`
    -   Nested in `AS_KYC_OnboardingRequest`

![CDT_fields_audit.png](images/CDT_fields_audit.png)

| CDT Name | Expression Rule Name | Parameter to update |
| --- | --- | --- |
| `AS_KYC_R_TaskCategory` | `AS_KYC_ADT_BL_auditConfig_R_TaskCategory` | _simpleFields_ |
| `AS_KYC_R_TaskRef` | `AS_KYC_ADT_BL_auditConfig_R_TaskRef` | _simpleFields_ |
| `AS_KYC_R_Template` | `AS_KYC_ADT_BL_auditConfig_R_Template` | top-level _simpleFields_ |
| `AS_KYC_R_TemplateTask` | `AS_KYC_ADT_BL_auditConfig_R_Template` | _simpleFields_ in the `fieldName` parameter where "templateTasks" is the value. |
| `AS_KYC_R_TemplateTask_Precedent` | `AS_KYC_ADT_BL_auditConfig_R_Template` | _simpleFields_ in the "templateTaskPrecedents" structure |
| `AS_KYC_OnboardingFundingDetails` | `AS_KYC_ADT_BL_auditConfig_OnboardingRequest` | _simpleFields_ |
| `AS_KYC_OnboardingRequest` | `AS_KYC_ADT_BL_auditConfig_OnboardingFundingDetails` | _simpleFields_ |

If you modify one of the CDTs or one of the associated child CDTs listed in the table, reexamine the configuration rule for the modified CDT to determine if it requires updating.

Auditing configuration for each CDT are stored in following rules:

-   `AS_KYC_ADT_BL_auditConfig_< CDT Name >`
-   `AS_KYC_ADT_BL_auditConfig_R_TaskCategory`
-   `AS_KYC_ADT_BL_auditConfig_R_TaskRef`
-   `AS_KYC_ADT_BL_auditConfig_R_Template`
-   `AS_KYC_ADT_BL_auditConfig_OnboardingRequest`
-   `AS_KYC_ADT_BL_auditConfig_OnboardingFundingDetails`

## Setting up an audit

To audit a field in a CDT:

1.  Open the CDT and choose the field you want to audit.
2.  Find the expression rule associated with that CDT.

    -   See table above for list of expression rules and their associated CDTs.
3.  If you are auditing a parent CDT, update the top-level `simpleFields` parameter.
4.  If you are auditing a nested CDT, update the `simpleFields` parameter within that nested value.

### EXAMPLE: Adding and auditing a new field

You may want to add **Customer Type** as [a new parameter to your service request templates](sol-custom-suite-user-guide.html) and then monitor any changes made. See Template Selection Attributes.

To add and audit the **Customer Type** field to a template:

1.  Open the `AS_KYC_ADT_BL_auditConfig_R_Template` expression rule.
2.  Add the new `customerType` field to the `AS_KYC_R_Template` CDT.

    -   See the table above for associated expression rules and CDTs.
3.  Add the `customerType` field to the `simpleFields` array.
4.  Save your changes.

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
    16
    17
    18
    19
    20
    21
     /*
     Audit config for
     'type!{urn:com:appian:types:AS:KYC}AS_KYC_R_Template'
     */
     {
       idField: "templateId",
       simpleFields: {
         /*"templateId", excluded since it is the primary key*/
         "templateName",
         "templateDesc",
     !    "customerType",
         /*"templateTasks", excluded since it is tracked in complexFields*/
         "onboardingTypeCode",
         "regionCode",
         /*"createdBy", no need to track changes to this*/
         /*"createdDatetime", no need to track changes to this*/
         /*"modifiedBy", no need to track changes to this*/
         /*"modifiedDatetime" no need to track changes to this*/

       },
     ...
    ```

### EXAMPLE: Adding and auditing a new field in a nested array

Adding and auditing a new field in a nested array can be a complex set of steps. For example, if you want to add and track SLA Days in the `AS_IO_R_TemplateTask` CDT, which is nested in the `AS_KYC_R_Template` CDT, you will need to do the following:

1.  Open the associated `AS_KYC_ADT_BL_auditConfig_R_Template` expression rule.
2.  Locate the _fieldName_ templateTasks inside the _complexFields_ array.
3.  Locate the _simpleFields_ array.
4.  Add the "slaDays" field to the array.
5.  Save your changes.

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
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    26
    27
    28
    29
    30
    31
    32
    33
    34
     /*
     Audit config for
     'type!{urn:com:appian:types:AS:KYC}AS_KYC_R_Template'
     */
     {
       idField: "templateId",
       simpleFields: {
         /*"templateId", excluded since it is the primary key*/
         "templateName",
         "templateDesc",
         /*"templateTasks", excluded since it is tracked in complexFields*/
         "onboardingTypeCode",
         "regionCode",
         /*"createdBy", no need to track changes to this*/
         /*"createdDatetime", no need to track changes to this*/
         /*"modifiedBy", no need to track changes to this*/
         /*"modifiedDatetime" no need to track changes to this*/

       },
       complexFields: {
         {
           fieldName: "templateTasks",
           auditFieldName: "templateTasksChanges",
           idField: "templateTaskId",
           simpleFields: {
             /*"templateTaskId", excluded since it is the primary key*/
             /*"templateId", excluded since it is the foreign key to the parent*/
             "taskRef.taskRefId",
             "groupAssignee",
             "taskDesc",
             /*"templateTaskPrecedents", excluded since it is tracked in complexFields*/
     !        "slaDays"
           },
     ...
    ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...