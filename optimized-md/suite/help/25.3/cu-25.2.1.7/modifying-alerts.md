---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/modifying-alerts.html
original_path: cu-25.2.1.7/modifying-alerts.html
version: "25.3"
title: "Configure Alerts"
page_id: "cu-25.2.1.7/modifying-alerts"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Alerts

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

Alerts are generated after particular actions are taken on a submission. These alerts provide business users with brief overviews of important information that may have been missing or added to a submission. While Connected Underwriting P&C ships with some pre-built alert configurations, you may want to add other types of alert conditions for your underwriting submissions process.

This page explains how to add a new alert configuration to your solution's infrastructure currently in place in the application and customize the solution to meet your needs.

**Note:**  The modifications and extensions listed here are non-exhaustive and more complex kinds of changes can be made to these features, if desired.

## Adding a new alert configuration

The alert configuration logic controls how Connected Underwriting P&C generates alerts, and allows you to configure alerts to extend the solution to meet your specific business requirements.

To add a new alert configuration:

1.  Add a row to `ISU_R_ALERT_CONFIG` with the proper message and name to be displayed.
2.  Add child rows for the newly inserted Alert Config into `ISU_R_ALERT_SET`, with the proper AND or OR operators specified.
3.  Add child rows for the newly inserted Alert Sets into `ISU_R_ALERT_CONDITION`, with a valid value provided for the operator parameter of the Condition JSON dictionary and a valid value provided for the field code.
    -   If the operator in the JSON dictionary is brand new, then add a corresponding constant with the naming convention `ISU_ENUM_OPERATOR_<OPERATOR_NAME>` and a value corresponding to the text value of the new operator.
        -   Then, add this new constant to `ISU_CONF_operatorReference`. You may need to create a new updateConditionRule for the operator as well.
            -   While this family of rules is currently only relevant to Priority Scoring and does not pertain to Alerts, future extensibility of the solution and extensibility of Alert Configuration to be front-end-controlled may use this family of rules to define how user inputs can be saved into the CONDITION\_JSON field when building an alert.
    -   If the field code is brand new, then create a new constant with the naming convention `ISU_ENUM_ALERT_FIELD_CODE_<RECORD>_<FIELD>` that holds the text value of the field code inserted into the Alert Condition table.
        -   If the field is contained in a Submission-related record that is not contained in the Change Log structure, ensure that the corresponding record type is added to and accounted for in the rules `ISU_getValuesForChangeLog`, `ISU_createChangeLogOldValues`, and `ISU_updateChangeLogNewValues`.
        -   Then, create a new rule with the naming convention `ISU_evaluateAlertField<RecordField>` that will host the logic as to how to evaluate that particular field. Follow examples in other rules that begin with `ISU_evaluateAlertField`.
            -   **NOTE**: Ensure that all possible operators that this particular field can have are accounted for appropriately in this rule.
        -   Then, add the newly created constant, newly created rule, and corresponding translation set string to `ISU_CONF_alertFieldReference`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...