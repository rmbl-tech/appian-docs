---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-survey-and-question-module.html
original_path: cc-25.1.1.0/cc-setup-survey-and-question-module.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up the Surveys and Questions Add-On Module

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

After [installing the Surveys and Questions](cc-install-survey-and-question-module.html) add-on module, you need to set it up before using it with Connected Claims. This guide walks you through the recommended setup steps, which include:

-   [Adding the runtimeSurvey relationship to Task record](#step-1-adding-the-runtimesurvey-relationship-to-task-record).
-   [Configuring the Survey site pages in Studio](#step-2-configuring-the-survey-site-pages-in-studio).
-   [Enabling dynamic display when creating Runtime Survey tasks on a claim](#step-3-enabling-dynamic-display-when-creating-runtime-survey-tasks-on-a-claim).
-   [Enabling dynamic display when creating Reference Survey tasks](#step-4-enabling-dynamic-display-when-creating-reference-survey-tasks).
-   [Enabling additional relationships when creating Survey tasks](#step-5-enabling-additional-relationships-when-creating-survey-tasks).
-   [Querying survey-related relationships when completing a task](#step-6-querying-survey-related-relationships-when-completing-a-task).
-   [Enabling dynamic display when completing Runtime Survey tasks on a claim](#step-7-enabling-dynamic-display-when-completing-runtime-survey-tasks-on-a-claim).
-   [Enabling dynamic display when viewing Survey Task records](#step-8-enabling-dynamic-display-when-viewing-survey-task-records).
-   [Setting additional survey relationships in the Task SetMetadata rule](#step-9-setting-additional-survey-relationships-in-the-task-setmetadata-rule).

### System Prerequisites

-   Appian platform running version 25.1 or greater.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`

## Step 1: Adding the runtimeSurvey relationship to Task record

To set up the Surveys and Questions module with Connected Claims you need to first update the Task record type by adding a new relationship for the Survey Runtime:

To update the record type:

1.  Open the **CCM\_Task** record type.
    1.  Add a new relationship to the record type called **stfRuntimeSurvey**.
    2.  Set up the relationship as shown:

        ![cc_runtime_survey_relationship_setup](images/cc_runtime_survey_relationship_setup.png)

## Step 2: Configuring the Survey site pages in Studio

Next, you need to add and configure the Survey site pages in Studio.

To add and configure site pages:

1.  Open the **CCM\_WFL\_Site\_Studio** site object.
    1.  In the **Pages** section, add a new page called **Surveys** to the **Tasking** page group.
        1.  Set up the **Surveys page** as shown:

            ![cc_survey_site_pages](images/cc_survey_site_pages.png)

    2.  In the **Pages** section, add a new page called **Questions** to the **Tasking** page group.
        1.  Set up the **Questions page** as shown:

            ![cc_surveys_questions_page_setup](images/cc_surveys_questions_page_setup.png)

## Step 3: Enabling dynamic display when creating Runtime Survey tasks on a claim

Next, you need to enable dynamic display to occur when creating Runtime Survey tasks on a claim.

To enable dynamic display:

1.  Open the **CCM\_Task\_Sub\_TaskBehaviorTypeCreateDynamicDisplay** interface.
    1.  Add the following code to the existing `a!match()` in the interface:

        ![cc_update_task_behavior_interface](images/cc_update_task_behavior_interface.png)

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
        /*Survey*/
              equals: cons!CCM_STF_REFID_TASK_BEHAVIOR_TYPE_SURVEY,
              then: {
                rule!CCM_STF_SurveyTaskBehaviorType_CreateDynamicDisplay(
                  brandingMap: ri!brandingMap,
                  targetRecord: ri!task,
                  contextJsonRecordField: 'recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0-ccm}CCM_Task.fields.{664672b3-911e-425a-a1b1-99917f4c255e-ccm}contextJson'
                )
              }
        ```

## Step 4: Enabling dynamic display when creating Reference Survey tasks

In this step, you will enable dynamic display when creating a Reference Survey task in Studio.

To enable dynamic display:

1.  Open the **CCM\_ReferenceTask\_Sub\_TaskBehaviorTypeCreateDynamicDisplay** interface.
    1.  Add the following code to the existing a!match() within this interface:

        ![cc_update_the_reference_survey_task_interface](images/cc_update_the_reference_survey_task_interface.png)

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
        /*Survey*/
            equals: cons!CCM_STF_REFID_TASK_BEHAVIOR_TYPE_SURVEY,
            then: {
              rule!CCM_STF_SurveyTaskBehaviorType_CreateDynamicDisplay(
                brandingMap: ri!brandingMap,
                targetRecord: ri!referenceTask,
                contextJsonRecordField: 'recordType!{3dbe5fed-28bf-4f27-aa59-eb2c940289b4-ccm}CCM_WFL_CFG_ReferenceTask.fields.{c634a732-7506-42e0-b52a-9d1a48df3999}contextJsonDefault'
              )
            }
        ```

## Step 5: Enabling additional relationships when creating Survey tasks

In this step, you need to update the Task Behavior expression rules to enable additional relationships when Survey tasks are created.

1.  Open the **CCM\_Task\_TaskBehaviorTypeCreateDynamicInitialValues** expression rule.
    1.  Add the following code to the existing `a!match()` in this rule:

        ![cc_update_task_behavior_expression_rule](images/cc_update_task_behavior_expression_rule.png)

2.  Open the **CCM\_Task\_TaskBehaviorTypeSetDynamicValuesNewOccurrence** expression rule.
    1.  Add the following code to the existing `a!match()` in this rule:

        ![cc_new_occurrence_expression_rule_update](images/cc_new_occurrence_expression_rule_update.png)

## Step 6: Querying survey-related relationships when completing a task

Next, you will update the **CCM\_TaskBehaviorType\_returnCompleteActionDynamicQueryFields** expression rule to allow users to query survey-related relationships when completing a task.

To update the expression rule:

1.  Open the **CCM\_TaskBehaviorType\_returnCompleteActionDynamicQueryFields** expression rule.
    1.  Add the following code to the existing `a!match()` in this rule:

        ![cc_complete_actoin_query_fields_exp](images/cc_complete_actoin_query_fields_exp.png)

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
        /*STF Add ON: Survey*/
          equals: cons!CCM_STF_REFID_TASK_BEHAVIOR_TYPE_SURVEY,
          then: a!map(
            fields: {
              'recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0-ccm}CCM_Task.relationships.{c45e9bb7-71f1-430d-bd28-ee138bba8dab}stfRuntimeSurvey'
            },
            relatedRecordData: {
              a!relatedRecordData(
                relationship: 'recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0-ccm}CCM_Task.relationships.{c45e9bb7-71f1-430d-bd28-ee138bba8dab}stfRuntimeSurvey.relationships.{43d501cc-ad5a-4a92-9edf-64ddca9fcfe1}runtimeQuestions',
                limit: 100,
                sort: a!sortInfo(
                  field: 'recordType!{04daddea-2f84-4d5a-ba7b-cfe048fb6199}CCM_STF_RuntimeQuestion.fields.{e3ceccf7-c375-447a-888f-68b0ef8cb283}positionOrder',
                  ascending: true
                )
              ),
              a!relatedRecordData(
                relationship: 'recordType!{ee5aa46d-0228-430f-a794-1134a11fbcc0-ccm}CCM_Task.relationships.{c45e9bb7-71f1-430d-bd28-ee138bba8dab}stfRuntimeSurvey.relationships.{43d501cc-ad5a-4a92-9edf-64ddca9fcfe1}runtimeQuestions.relationships.{c52a4351-2dd6-4926-b01c-d2c95c0c58e3}runtimeAnswers',
                limit: 100
              )
            }
          )
        ```

## Step 7: Enabling dynamic display when completing Runtime Survey tasks on a claim

Next, you need to enable dynamic display to occur when completing Runtime Survey tasks on a claim.

To enable dynamic display:

1.  Open the **CCM\_Task\_Sub\_TaskBehaviorTypeCompleteDynamicDisplay** interface.
    1.  Add the following code to the existing `a!match()` in this interface:

        ![cc_complete_runtime_survey_interface](images/cc_complete_runtime_survey_interface.png)

## Step 8: Enabling dynamic display when viewing Survey Task records

In this step, you will update the **CCM\_Task\_Sub\_TaskBehaviorTypeSummaryDynamicDisplay** interface to enable dynamic display to occur when viewing Survey Task records.

To enable dynamic display:

1.  Open the **CCM\_Task\_Sub\_TaskBehaviorTypeSummaryDynamicDisplay** interface.
    1.  Add the following code to the existing `a!match()` in this interface:

        ![cc_survey_tasky_records_interface](images/cc_survey_tasky_records_interface.png)

## Step 9: Setting additional survey relationships in the Task SetMetadata rule

Finally, in this step you will update the **CCM\_Task\_SetMetadata** expression rule to enable users to set additional survey relationships.

1.  Open the expression rule **CCM\_Task\_SetMetadata**.
    1.  Add the following code to the list of maps in the `childRelationships` input of the call to (around Line ~379):

        ![cc_set_task_metadata_rule_update](images/cc_set_task_metadata_rule_update.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...