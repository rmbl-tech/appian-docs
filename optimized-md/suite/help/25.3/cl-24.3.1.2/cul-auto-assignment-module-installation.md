---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-auto-assignment-module-installation.html
original_path: cl-24.3.1.2/cul-auto-assignment-module-installation.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Auto-Assignment with CU Life

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Installing the Auto-Assignment add-on module with your CU Life Workbench consists of two steps, including:

-   [Step 1: Import the database script](#step-1-import-the-database-script)
-   [Step 2: Import the application](#step-2-import-the-application)

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to ensure all minimum requirements are met.

### System Prerequisites

-   Appian platform version 23.3 or greater.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported CU Life Workbench Base application version 1.2 or higher, which includes the following application containers:
    -   `Insurance Life Underwriting (ISL)`

See [Verify the Appian version and database type](installing-cu-life.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the CU Life Workbench Base application version.

## Step 1: Import the database script

To import the database script:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Cloud Database**.
3.  Click the **Appian** database.
    -   **Note**: If the Connected Underwriting Life Workbench Base application uses a different database than the Appian database, select and click it.
4.  Click the **Import** tab.
5.  Upload the `sql` file and click **Import.**

## Step 2: Import the application

To install the Auto Assignment add-on module and use it with your CU Life Workbench, you must import the application files into the target environment.

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
    1.  Click **UPLOAD** and choose the application `zip` file.
    2.  Click **INSPECT**.
    3.  Review the inspection results. If there are no issues, click **IMPORT**.
        -   **Note**: The import may time out due to file size, but the import will continue in the background.
    4.  Review the import results.
    5.  Click **SAVE**.

## Step 3: Incorporation with CU Life

The following incorporation steps are **required** to utilize the full functionality of the Auto-Assignment add-on module.

### Configuration of Assignment Rules on the Settings site

1.  In the target environment, log in.
2.  Navigate to the **Appian Designer**.
3.  Open the **Insurance Life Underwriting** application package.
4.  Search for and open the following interface object: **ISL\_SitePage\_AdminSettings.**
5.  In expression mode, add an additional map item to `local!navBarSections`, as seen below:

    ![cul_add_on_module_expression](images/cul_add_on_module_expression.png)

6.  In the `match()` statement in the second column layout (the column that displays the left sidebar navigation), add a condition for displaying the assignment rules page, as seen below:

    ![cul_add_on_module_expression02](images/cul_add_on_module_expression02.png)

7.  Save the interface.

### Disable default selection and manual selection of assigned group and underwriter

1.  Search for and open the **ISL\_API\_CreateCase\_ConstructCaseFromRequestBody** expression rule.
2.  Delete or comment out the initialization of the role-related record.
3.  Click **SAVE**.
4.  Search for and open the **ISL\_Case\_Sub\_UpdateMiscellaneous** interface object.
5.  In expression mode, where `ISL_Role_Sub_Manage` is called, pass in _false_ for the **showAssignees** expression rule input instead of _true_.
6.  Click **SAVE**.

### Incorporate the auto-assignment logic in the case creation process

1.  Search for and open the **ISL\_Case\_Create** process model.
2.  Just before the end event, add a synchronous subprocess node labeled Auto Assign. Set up the node as seen below:

placeholder

1.  Save and publish the process model.

    ![cul_add_on_configure_auto_assign](images/cul_add_on_configure_auto_assign.png)

### Optional Incorporation

The following steps are _optional_ to utilize the full functionality of the Auto-Assignment add-on module.

#### Adding New Fields to Drive Auto Assignment Rules

The following steps are _optional_ and allow you to add additional fields in the auto-assignment logic.

1.  Identify which additional fields on the case record type, or on its nested record types, you want to include in auto-assignment logic.
    -   **Example**: Coverage Purpose.
2.  Navigate to the **Appian Designer** and open the **ISL Auto-Assignment of Cases** application package.
3.  Search for and open the **ISL\_AA\_CFG\_assignmentFieldReference** expression rule.
    -   **Note**: This rule stores the configurations for each field that is able to be used in the auto-assignment logic. Take some time to review the design paradigm. Each field has its own map item that contains a reference to its evaluation rule, a reference to its configuration interface, allowed operators, etc.

        ![cul_ISL_AA_CFG_assignmentFieldReference](images/cul_ISL_AA_CFG_assignmentFieldReference.png)

4.  Create an evaluation rule for your new field by duplicating an existing evaluation rule and following the same design approach.
    -   **Note**: Choose an existing evaluation rule to duplicate that is most similar to your new field evaluation. For example, since a coverage purpose rule condition will have similar evaluation logic to a product type rule condition, duplicate **ISL\_AA\_RuleCondition\_evaluationForProductType**.
        -   Example: **ISL\_AA\_RuleCondition\_evaluationForCoveragePurpose**
        -   Required rule inputs:
            -   **ruleCondition**: `ISL_AA_CFG_RuleCondition`
            -   **case**: `ISL_Case`
        -   **Note**: The rule should contain a `match()` statement where each possible operator for the field has its own expression to evaluate.
5.  Ensure that the new rule is added to the **ISL Auto-Assignment of Cases** application package.
6.  Create a configuration interface for your new field by duplicating an existing configuration interface and following the same design approach.
    -   **Note**: Choose an existing configuration interface to duplicate that is most similar to your new field configuration. For example, since coverage purpose will be configured in a similar way to product type (selecting a value from a dropdown of options from a reference table), duplicate `ISL_AA_RuleCondition_configurationComponentForProductType`.
        -   Example: `ISL_AA_RuleCondition_configurationComponentForCoveragePurpose`
            -   **Required rule inputs**:
                -   **currentRuleCondition**: `ISL_AA_CFG_RuleCondition`
                -   **genBundle**: Any Type
                -   **conditionMap**: Map
                -   **isLabelCollapsed**: Boolean
                -   **accessibilityText**: Text
7.  Ensure that the new interface is added to the **ISL Auto-Assignment of Cases** application package.
8.  Add a map item to `ISL_AA_CFG_assignmentFieldReference`.
    -   **code**: Create a constant for the code that you want to use to represent this field, and call the constant here.
    -   **evalRule**: Rule reference to the evaluation rule you just created.
    -   **label**: Create a key-value pair in the ISL\_AA bundles for the label that will display when configuring this type of rule condition (i.e., “Coverage Purpose”), and call the key here.
    -   **configurationComponent**: Interface reference to the configuration interface you just created.
    -   **allowedOperators**: List of allowed operators using the available constants (same as the operators used in the `match()` statement of the evaluation rule).
        -   `{cons!ISL_AA_TXT_CONDITION_OPERATOR_EQUALS, cons!ISL_AA_TXT_CONDITION_OPERATOR_NOT_EQUALS}`
9.  Search for the existing operator constants by searching for **ISL\_AA\_TXT\_CONDITION\_OPERATOR\_**.
10.  Repeat steps 8-9 for each desired additional field.
11.  Save **ISL\_AA\_CFG\_assignmentFieldReference**.
12.  Test the new rule condition types by creating and applying assignment rules using them.

## Next steps

Now that you have installed the Auto Assignment add-on module, follow the steps in [Setting Up Auto Assignment](cul-auto-assignment-module-setup.html) to start using this functionality with CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...