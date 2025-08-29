---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/modifying-priority-scoring.html
original_path: cu-25.2.1.7/modifying-priority-scoring.html
version: "25.3"
title: "Configure Scoring Fields"
page_id: "cu-25.2.1.7/modifying-priority-scoring"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Scoring Fields

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

Users with business administrator access can create scoring sets and configure them to create a new priority scoring rule, which dictates the overall priority score for a submission. Connected Underwriting P&C ships with a variety of scoring set fields. However, additional business needs may require you to extend the Connected Underwriting P&C solution by configuring priority scoring by adding new scoring set fields not included in the application.

This page explains how to add a new scoring set field to the current Connected Underwriting P&C infrastructure and customize the solution to meet your needs.

**Note:**  The modifications and extensions listed here are non-exhaustive and more complex kinds of changes can be made to these features, if desired.

## Add a New Scoring Set Field

These scoring sets are based on a single field on a submission record or on a related record.

To add a new scoring set field:

1.  Add a constant for the name of the code for the new Scoring Set Field. Using the naming convention `ISU_ENUM_SCORING_FIELD_CODE_<NAME_OF_FIELD>`. This should hold the text value of the Scoring Set Field code to be stored in the database for Scoring Sets that use this field.
2.  Create a translation string set key and corresponding text value for the front end display of the Scoring Set Field.
3.  Create a new interface expression to host the grid which front-end users can use to add individual Scoring Set Conditions for Scoring Sets that use the new Field. Use the naming convention `ISU_editScoringValueDynamicInterface<NameOfField>`.
    -   Add the following rule inputs to this interface:
        -   **scoringSet** (type: ISU\_Record\_R\_Scoring\_Set)
        -   **i18nData** (type: Any Type)
        -   **scoringConditions** (type: list of ISU\_Record\_R\_Scoring\_Condition)
        -   **fieldLabel** (type: Text)
    -   This interface should ultimately contain an a!gridLayout() component that contains columns for:
        -   **Value for the Field**: a column to hold an a!dropdownField(), a!textField(), or other user-input component that allows users to select a potential value for the new Field. Within the saveInto of this component, the condition field of the Scoring Condition should be updated by using the updateConditionRule rule accessed by calling the rule `ISU_returnOperatorReferenceByCode`.
        -   **Score**: a column to hold an a!integerField() that saves into the Score for the corresponding row’s Scoring Condition.
        -   **Delete**: a column to hold an a!richTextIcon() that allows for deletion of a corresponding row.
    -   The grid should create rows for each rule-inputted Scoring Condition and should include a row for setting the default score for the Scoring Set by using the sub-component `ISU_scoringSetDefaultValueGridRow`.
    -   The grid should also include an addRowLink that adds an additional Scoring Condition to the list of rule-inputted Scoring Conditions.
    -   Use the existing interface rules `ISU_editScoringValueDynamicInterfaceBrokerAddressState` or `ISU_editScoringValueDynamicInterfaceConstructionYear` as guides for creating this rule.
4.  Create a new expression rule used to evaluate which Scoring Conditions apply for the new Field. This rule should return an `ISU_Record_R_Scoring_Set` record with the Scoring Condition relationship updated to contain the Scoring Condition which applies for the Submission. Use the naming convention `ISU_evaluateScoringField<NameOfField>`.
    -   Add the following as rule inputs to this expression:
        -   **submission** (type: ISU\_Record\_Submission)
        -   **scoringSet** (type: ISU\_Record\_R\_Scoring\_Set)
        -   **scoringConditions** (type: list of ISU\_Record\_R\_Scoring\_Condition)
        -   **submissionLob** (type: ISU\_Record\_Submission\_Lob)
    -   This rule should use the filter() function to filter the list of rule inputted Scoring Conditions for the correct match based on the value for the new Field on the Submission. This can be done by calling `ISU_filterScoringConditionWithOperatorEquals` or `ISU_filterScoringConditionWithOperatorBetween` and passing in the value on the Submission for the new Field as the runtimeValue parameter.
5.  Lastly, add a new map to the list of maps in `ISU_CONF_scoringFieldReference` for the newly created Field. Set in the map the following key value pairs:
    -   **label**: the translation string set key of the new Field
    -   **code**: the constant created containing the code for the new Field
    -   **editScoringValueInterface**: the reference to the interface created containing the grid for editing the Scoring Set
    -   **evaluateScoringSetRule**: the reference to the expression rule used to evaluate which Scoring Condition is applicable for a Submission

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...