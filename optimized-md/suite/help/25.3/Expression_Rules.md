---
source_url: https://docs.appian.com/suite/help/25.3/Expression_Rules.html
original_path: Expression_Rules.html
version: "25.3"
title: "Expression Rules"
page_id: "Expression_Rules"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Expression Rules

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

An expression rule is a stored [expression](Expressions.html) that can be called from other expressions. Within your expression rules, you can add rule inputs so you can dynamically change the data returned by your expression.

This page explains how to create, edit, and delete expression rules.

For more information on expression rules, see:

-   [Testing an Expression Rule](#test-the-rule)
-   [User Contexts for Expressions](User_Contexts_for_Expressions.html)

## Properties

Each expression rule has the following properties:

| Property | Description |
| --- | --- |
| Name | The name that is used when executing the rule. This property is case-insensitive, but we recommend that you follow the [naming standard](Standard_Object_Names.html). |
| Description | Supplemental information about the rule that is displayed in the expression editor and in the objects grid of some Designer views. |
| Save In | The folder that the rule is saved into. |
| Rule Inputs | Rule inputs are used to pass data into the expression rule.
-   **Name**: The name that is used when referencing the input within the rule definition, such as `ri!input`, or when passing arguments by keyword. Input names are case insensitive and must be unique within a given rule.
-   **Description**: Short description of the rule input.
-   **Type**: The type of the rule input.
-   **Array**: Rule inputs can be either a single value or an array of values.

 |
| Test Cases | A set of test scenarios used to evaluate the expression rule. |
| Rule Definition | The expression that is evaluated when the rule is called. |

### Reserved names

The following names are reserved for process report metrics, and must not be used.

-   Completion
-   is\_process\_ontime
-   is\_process\_overdue
-   is\_task\_favorite
-   is\_task\_ontime
-   is\_task\_overdue
-   Lag
-   NetCompletion
-   NetLag
-   NetWork
-   process\_completion\_time
-   process\_deadline
-   process\_ee\_id
-   process\_start\_time
-   process\_status
-   pm\_avg\_completion
-   pm\_avg\_lag
-   pm\_avg\_work
-   task\_assignee\_owner
-   task\_assignment\_time
-   task\_attributed\_to
-   task\_avg\_completion
-   task\_avg\_lag
-   task\_avg\_work
-   task\_completion\_time
-   task\_deadline
-   task\_ee\_id
-   task\_status
-   total\_completion\_time
-   total\_lag\_time
-   total\_work\_time
-   Work

## Create

To create an expression rule:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Expression Rule**.
3.  In the **Create Expression Rule** dialog, configure the [expression rule properties](#properties).

    ![Create new expression rule dialog](images/create-expression-rule.png)

4.  Click **CREATE**.

The expression rule opens in a new dialog or window, where you can:

-   [Add rule inputs](#add-rule-inputs).
-   Enter an expression to [define the rule](#define-the-rule).
-   [Test](#test-the-rule) the rule input.

## Add rule inputs

Rule inputs allow you to dynamically pass values into your expression.

For example, if you want to return information about a single customer, you could create an expression rule that queries the Customer record type, and use a rule input to filter the query so it only returns data for a specific customer ID.

To create a rule input:

1.  In the expression rule, click **New Rule Input**.

    **Tip:**  If you don't see this option, expand the right-hand pane of the expression rule.

2.  Configure the following properties for your rule input:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the rule input. This is the name you'll reference in the expression. |
    | **Description** | A short description of the rule input. |
    | **Type** | The [data type](Appian_Data_Types.html) of the rule input. |
    | **Array** | Whether the rule input should accept an array of values or a single value. |

3.  To reference your rule inputs in an expression, use the [ri! domain](domain_prefixes.html#multiple-object-prefixes) followed by the rule input name.

### Editing rule inputs

As naming conventions and requirements evolve, you may need to update the names of your inputs to certain objects. Over time, rules and interfaces can gather many [dependents](Trace_Relationships_for_Impact_Analysis.html). This can make manual changes to update any keyword references to rules and interfaces difficult and prone to human error.

If you update the name of an input while editing an expression rule or interface, Appian will update any keyword references to that rule input in dependent objects.

There are certain cases when Appian cannot update the dependent object(s):

1.  The design object is locked.
2.  The design object is not an expression rule or interface.
3.  The design object does not use keyword syntax.
4.  There are more than 20 direct dependents.

If there is a blue banner in the rule inputs pane, Appian is going to attempt an automatic update of the keyword references.

![/rule-input-rename-info-banner](images/rule-input-rename-info-banner.png)

After you save your changes, a dialog will appear with a summary of what dependent objects were updated and any that you may need to update manually.

[![images/rule-input-rename.png](images/rule-input-rename.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img299)

[![](images/rule-input-rename.png)](#_)

If you accidentally exit the rename dialog before you've completed all manual updates, use design guidance to find the remaining objects to update. Any object using the wrong keyword reference will be flagged with the invalid keyword syntax [design guidance](appian-recommendations.html#expression-design-guidance) on the [health dashboard](monitoring_view.html#health-dashboard).

All objects that are updated automatically as a result of the rename will show the developer who renamed the input as the last modifier for the dependent objects.

## Define the rule

To define your expression rule:

1.  In the left-hand pane of the expression rule, use the [expression editor](expression-editor.html) to enter an expression, or use the [query editor](query-editor.html) to populate a query using a guided experience.

    For example, the following expression rule uses an `a!queryRecordType()` expression to return all critical cases for a specific customer.

    [![images/sample-query-expression-rule-25_2.png](images/sample-query-expression-rule-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img300)

    [![](images/sample-query-expression-rule-25_2.png)](#_)

2.  [Test](#test-the-rule) the expression rule. If you have rule inputs configured, you can add test inputs to test the values returned by your expression.

    [![images/test-sample-query-expression-rule-25_2.png](images/test-sample-query-expression-rule-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img301)

    [![](images/test-sample-query-expression-rule-25_2.png)](#_)

3.  Click **SAVE**.

## Test the rule

Testing your expression rule allows you to see what the expression rule outputs based on a given set of inputs.

There are two ways to test your expression rule: using [ad hoc testing](#ad-hoc-test) and running [test cases](#test-cases).

See [Expression Rule Testing](Expression_Rule_Testing.html) for more information.

### Ad hoc test

By default, the **Ad Hoc Test** view displays whenever you open an expression rule.

The **Ad Hoc Test** view allows you to quickly test your expression by providing sample values or expressions for your rule inputs.

This view is made up of three sections:

[![images/ad-hoc-test-pane.png](images/ad-hoc-test-pane.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img302)

[![](images/ad-hoc-test-pane.png)](#_)

<table class="appianTable"><tbody><tr><td>Call out letter</td><td>Name</td><td>Description</td></tr><tr><td>A</td><td>Test Inputs</td><td>Enter test values for the rule inputs configured on the expression. You can use an expression, or provide a static value.<ul><li>Click <b>TEST RULE</b> to test your expression rule and any test inputs.</li><li>Click <a href="#save-ad-hoc-test-values-as-a-test-case">Save as test value</a> to save your test values as a test case.</li></ul></td></tr><tr><td>B</td><td>Local Variables</td><td>If you use <a href="Local_Variables.html">local variables</a> in your expression, the values of your local variables will be displayed in this section.</td></tr><tr><td>C</td><td>Test Output</td><td>The results of your expression rule, and any test inputs configured. You can view your test outputs as a formatted map, a raw list, or as an expression.</td></tr><tr><td>D</td><td>Change indicators</td><td>When the test output contains record data, icons are shown next to each record field. A gray circle indicates that the value was unchanged by the expression rule. Yellow arrows mark fields with changed values. In the example, the Case `id` field is unchanged, but the `status` was changed to `"Reopened"`.</td></tr></tbody></table>

### Test cases

Test cases can be created and saved with an expression rule. This allows you to run test scenarios in bulk and review the results for all the tests together.

The **Test Cases** view displays all test cases. From this view, you can also:

-   [Create new test cases](#create-a-test-case)
-   [Generate test cases with AI](#generate-test-cases-with-ai)
-   See which test case is the default test case
-   Edit test cases
-   Run all test cases
-   Load test cases
-   Duplicate test cases
-   Update test case assertions in bulk
-   Delete test cases

![ERD test cases grid](images/ERD-testcasesgrid.png)

#### Create a test case

To create a test case:

1.  In the expression rule, go to the **Test Cases** view.
2.  Click **NEW TEST CASE**.
3.  In the **Create Test Case** dialog, configure the following properties:

    <table class="appianTable"><tbody><tr><td><b>Property</b></td><td><b>Action</b></td></tr><tr><td><b>Name</b></td><td>Enter a name for the test case.</td></tr><tr><td><b>Set as default test case</b></td><td>Select to set this test case as the default test case. The test pane will automatically load test rules from the default test case whenever you open an expression rule.</td></tr><tr><td><b>Test Inputs</b></td><td>Enter test values for the rule inputs configured on the expression. You can use an expression or provide a literal value. All expression or literal text values have a 4,000 character limit. You must have access to all selected users, groups, documents, or folders to create a test case.</td></tr><tr><td><b>Assertion</b></td><td>Select the assertion that determines whether a test case passes or fails. You can choose any of the following assertions. See <a href="#assertion-examples-and-recommendations">Assertion examples and recommendations</a> for more information.<ul><li><b>Test will pass when the expression evaluates without errors:</b> This is the default option, and most commonly used.</li><li><b>Test will pass when the test output matches a user-defined output:</b> A match occurs when output values are exactly the same (including case sensitivity for text) and are of the same <a href="Appian_Data_Types.html">type</a>.</li><li><b>Test will pass when a user-defined expression evaluates to true:</b> Use the <code>test!output</code> variable to access the test output in an expression in order to validate the output information (like its length or the value of a specific field). Reference the values of your test inputs as needed using the <code>ri!</code> domain. For example: <code>exact(index(test!output, "status", {}), "IN PROGRESS")</code></li></ul></td></tr><tr><td><b>Test Output</b></td><td>View the results of your expression rule and any test inputs configured. You can view your test outputs as a formatted map, a raw list, or as an expression.</td></tr></tbody></table>

4.  Click **CREATE**.

#### Generate test cases with AI

[Appian AI Copilot](appian-ai-copilot.html) helps to elevate your expression rule testing using AI-created test cases. Perfect for unit testing, this capability automatically generates test cases and proposes new scenarios for you to consider, saving you valuable time. While Appian AI Copilot does not possess the same in-depth understanding of the application as you do, it is designed to identify potential edge cases that may not be immediately obvious. These include scenarios involving null values or unusually large or small data inputs. You can discard suggestions you find irrelevant and refine the rest, just like you would with your own test cases.

[![images/tcg-example-testcases.gif](images/tcg-example-testcases.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img303)

[![](images/tcg-example-testcases.gif)](#_)

##### How it works

AI Copilot generates test cases using specific details from your expression rule, including the rule's name, description, full definition with comments, rule inputs, and any existing test cases to prevent duplicates. Using this information, it creates up to 15 preliminary test cases.

You must contact Appian Support to enable this feature. This capability is available only on Appian Cloud.

This feature is available for environments in [select regions](security-compliance.html).

If your Appian environment isn't in a supported region, you can elect to send your data to a supported region. This doesn't change your environment's region. Contact [Appian Support](https://forum.appian.com/) to learn more.

##### Generate test cases

To generate test cases:

1.  In the expression rule, go to the **Test Cases** view.

2.  Click **GENERATE TEST CASES**.
    **Result**: [Appian AI Copilot](appian-ai-copilot.html) analyzes your expression rule. Using this information, it creates up to 15 preliminary test cases and presents them on the Generated Test Cases screen.
3.  (Optional) Clear the checkbox next to the any test case that you do not want to keep.

    **Tip:**  Take a careful look at the test cases that display a ![status warning](images/status_warn_red_20.png) or ![progress stopped](images/progress_stopped_20.png) status. These icons signify that the test has identified potential issues in your expression rule that may need attention. They do not necessarily indicate problems with the AI-generated test cases. See [Run test cases](Expression_Rules.html#run-test-cases) for more details about these statuses.

4.  Click **ADD TEST CASES**.
    **Result**: The new test cases are automatically added to the existing list and become instantly accessible from the Test Cases tab. Here, you can fine-tune these test cases or enhance them with extra scenarios if needed. You can repeat this process as often as you want. AI Copilot will review any test cases you've already added to see if additional test cases should be included.

    **Tip:**   If the test cases don't seem to match what your expression rule is supposed to do, here are a few easy changes to help AI Copilot understand better:

    -   Enhance your rule input descriptions to be more detailed and include examples where possible.
    -   Add comments to your code to help AI Copilot understand your rules' logic and intentions.
    -   Improve your object's description. This can also make a difference in the test cases that get generated.

#### Save ad hoc test values as a test case

To save sample rule input values as a test case:

1.  From the **Ad Hoc Test** pane, under **Test Inputs**, enter an expression or value for your rule inputs.
2.  Click **Save as Test Case**.
3.  In the **Create Test Case** dialog, configure the following properties:

    <table class="appianTable"><tbody><tr><td><b>Property</b></td><td><b>Action</b></td></tr><tr><td><b>Name</b></td><td>Enter a name for the test case.</td></tr><tr><td><b>Set as default test case</b></td><td>Select to set this test case as the default test case. The test pane will automatically load test rules from the default test case whenever you open an expression rule.</td></tr><tr><td><b>Test Inputs</b></td><td>Update the values provided in the ad hoc test as needed. You can use an expression or provide a literal value. All expression or literal text values have a 4,000 character limit. You must have access to all selected users, groups, documents, or folders to create a test case.</td></tr><tr><td><b>Assertion</b></td><td>Select the assertion that determines whether a test case passes or fails. You can choose any of the following assertions. See <a href="#assertion-examples-and-recommendations">Assertion examples and recommendations</a> for more information.<ul><li><b>Test will pass when the expression evaluates without errors:</b> This is the default option, and most commonly used.</li><li><b>Test will pass when the test output matches a user-defined output:</b> A match occurs when output values are exactly the same (including case sensitivity for text) and are of the same <a href="Appian_Data_Types.html">type</a>.</li><li><b>Test will pass when a user-defined expression evaluates to true:</b> Use the <code>test!output</code> variable to access the test output in an expression in order to validate the output information (like its length or the value of a specific field). Reference the values of your test inputs as needed using the <code>ri!</code> domain. For example: <code>exact(index(test!output, "status", {}), "IN PROGRESS")</code></li></ul></td></tr><tr><td><b>Test Output</b></td><td>View the results of your expression rule and any test inputs configured. You can view your test outputs as a formatted map, a raw list, or as an expression.</td></tr></tbody></table>

4.  Click **CREATE**. The new test case appears in the **Test Cases** view.

To use a test case in the **Ad Hoc Test** view, select a test case and click **LOAD TEST CASE**.

#### Assertion examples and recommendations

The following examples demonstrate how to use test case assertions to validate that your expression rules are returning the expected results for a variety of scenarios.

**Example 1**: Expression rules commonly validate that a value is what is expected in a process or interface. Below is an example of test cases for a rule that checks if an email address is valid.

| Test Case Name | Rule Input | Assertion |
| --- | --- | --- |
| Valid email address | karen.jones@example.com | Output: true |
| Invalid email address - missing @ | karen.jonesexample.com | Output: false |
| Invalid email address - missing domain | karen.jones@ | Output: true |
| Null is an invalid email address | null | Output: false |
| List of email addresses still outputs a scalar boolean | `{"karen.jones@example.com","bob.smith@example.com"}` | `typeof(test!output) = type!Boolean` |

**Example 2**: Another common scenario for expression rules is to manipulate a complex data type or Appian object input which could result in varied outputs. Examples of useful assertion expressions in these scenarios are below.

| Scenario | Assertion |
| --- | --- |
| The output is not null | `not(isnull(test!output))` |
| Specific field in CDT equals some value | `exact(index(test!output,"someCDTfield",{}), cons!someConstantValue)` |
| List contains certain value(s) | `contains(test!output, {"A", "B"})` |
| Has # items in list | `count(test!output) = 4` |
| The output is no longer than a max length limited by a Smart Service | `len(test!output) < 4000` |

Assertion recommendations:

-   Expression rules should have enough test cases to accurately describe the behavior of the rule. This increases confidence that the rule works properly for runtime scenarios and helps with maintenance of the rule as it changes over time.

    **Note:**  It is not necessary to have an exhaustive list of all possible permutations for your test cases.

-   Avoid using the `and()` function to group assertions together when making an assertion expression since this will make debugging the rule's failed tests more difficult. Duplicate test cases and update their assertion expressions when you want to assert multiple things about the same output.
-   When it is necessary to reference an Appian object in an assertion, use the **Output matches the asserted output** option to select the object. Objects selected from this option will be identified as precedents to the expression rule. It is also acceptable to create test objects and rules to use in test case assertions when necessary.

#### Run test cases

Once you create your test cases, you can run a single test case or all test cases to see if they pass or fail.

Test results are not persisted with the expression rule on save, so tests must be run each time the rule is opened to view the results.

**Tip:**  In addition to running test cases for an individual expression rule, tests for multiple rules can be run in bulk to test an entire application or system at once. See the [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html) page for more details.

To run a single test case:

1.  In the expression rule, go to the **Test Cases** view.
2.  Select the checkbox next to the desired test case.
3.  Click **RUN SELECTED**.

To run all test cases:

1.  In the expression rule, go to the **Test Cases** view.
2.  Click **RUN ALL TESTS**.

The results of these tests are displayed in the **Test Cases** grid, which includes the evaluated output of the rule for each test case and the test's status.

A test case can have one of the following resulting statuses:

-   ![status OK](images/status_ok_20.png) _Test passed_ - the test's assertion passed
-   ![status warning](images/status_warn_red_20.png) _Test failed: test output did not match asserted output_ - the test output was not identical to the user specified output
-   ![status warning](images/status_warn_red_20.png) _Test failed: assertion expression returned false_ - the user specified assertion expression did not evaluate to true
-   ![progress stopped](images/progress_stopped_20.png) _Test failed to run_ - the test could not be run because either one of its test inputs or the defined assertion failed to evaluate. When the test input failed, an error message is displayed in the cell for the corresponding input.
-   ![progress stopped](images/progress_stopped_20.png) _Test returned an error_ - the rule encountered an expression error during evaluation. An error message is displayed in the output column for that test case.

#### Export and import of test values

Test cases are always exported with the expression rule, but can only imported if the destination environment has the _Allow Test Values to Be Imported with Design Objects_ setting enabled.

For more about this configuration, see the [Deployment](Appian_Administration_Console.html#deployment) section of the Admin Console.

## Edit

To edit an expression rule:

1.  In your application, go to the **Build** view.
2.  Select the expression rule name to open it.
3.  Make any necessary updates.
4.  Click **SAVE**.

Each time you modify and save an expression rule, a new version is created. All expressions that use the rule use the latest version. All versions are accessible to developers who can view the rule, and a rule can be reverted back to a previous version at any time.

For information on how to manage object versions, see [Managing Object Versions](Managing_Object_Versions.html).

## Design guidance

While editing your expression rules, you may encounter guidance. Appian [design guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. Design guidance for expression rules is calculated while editing the rule or when a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the rule is updated.

When a recommendation or warning is triggered, you'll see an indicator icon in the header (A) and next to the corresponding line in the expression editor (B).

Click on the icon in the header to learn more about the suggested guidance (C) and how it can be addressed.

If a recommendation is not applicable to your use case, you can **Dismiss** (D) that individual recommendation for that rule. Learn more about [recommendation dismissal](appian-recommendations.html#recommendation-dismissal). Warnings cannot be dismissed and should always be addressed to avoid complications when the logic in the object is executed.

Expression rule guidance is also visible outside of rules on the [Health Dashboard](monitoring_view.html#health-dashboard).

[![images/appian_guidance_expression_rule_designer_annotated_25-2.png](images/appian_guidance_expression_rule_designer_annotated_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img304)

[![](images/appian_guidance_expression_rule_designer_annotated_25-2.png)](#_)

## Move

Users with **Administrator** permission to this object or rule folder can move it to another folder:

1.  Navigate to the parent folder that the object or folder is in.
2.  Select the object or folder. You can select more than one.
3.  Click the **Move** button on the toolbar. The **Move Objects** dialog appears.
4.  Use the folder picker or browser to select the new parent folder.

    **Tip:**  You can also create a new folder in the browser, if you have **Editor** permissions to its parent folder.

5.  Click **Move**.

**Note:**  Any objects that are configured to inherit the security of the parent folder assume the security rights of the target folder.

## Duplicate

Developers with [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) to this object can duplicate it. There are two ways to duplicate an object:

-   From any view in an application, you can select the object you wish to duplicate and use the toolbar option to launch the duplication dialog. The duplicated object will be added to the application you're working in. This capability is only available for single object selections from the grid.
-   If you are in an interface, expression rule, integration or decision object, you can select **Duplicate** from the object's settings menu . From there, you can specify the target application for the new object.

Once you select the **Duplicate** option, you will see the following dialog:

![object duplication dialog](images/object_duplication_dialog_design_library.png)

You can only duplicate the most recent version of an object. If you have unsaved changes and attempt to duplicate the object from within the designer, the most recent saved version of the object will be duplicated **without** the unsaved changes. A banner appears when there are unsaved changes to remind you before duplicating.

![object duplication dialog with unsaved changes](images/object_duplication_unsaved_changes_banner.png)

## Delete

Deleting an expression rule prevents users from further viewing or editing it. However, the last version of the rule is still available to be used in processes, record views, and reports.

Rules can be deleted by users with **Administrator** permissions to it. Appian does not recommend deleting rules that are in use because the rule can no longer be exported.

To delete an expression rule:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the expression rule you want to delete.
3.  Click **DELETE**.
4.  In the **Delete Expression Rule?** dialog, ensure there are no objects that depend on the expression rule.

    **Note:**  If there are objects that depend on the expression rule, then deleting the expression rule will cause an error to appear in those objects.

5.  Click **DELETE**.

**Tip:**  System administrators have the ability to delete expression rules (and other objects) in bulk by selecting them and clicking **Delete** in the toolbar.

## Call an expression rule from another expression

Expression rules are called using the `rule!` domain. When calling a rule, values or variables can be passed to the rule inputs by position or by keyword, as shown below.

```
1
rule!userDisplayName(pp!initiator)
```

## Security

**Tip:**  Any user can invoke any expression rule that is used by an interface or process they can access.

The [security](object-security.html) role map of an expression rule controls which developers can see or modify it and its properties.

By default, expression rules [inherit](object-security.html#security-inheritance) the security of the folder that they are saved in. However, after creating the expression rule, you can disable that inheritance and modify the rule's security.

See [Editing Object Security](object-security.html#editing-object-security) to modify an expression rule's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in an expression rule's security role map:

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Evaluate the rule | Yes | Yes | Yes | Yes |
| View the rule definition | Yes | Yes | Yes | No |
| Duplicate the rule | Yes | Yes | Yes | No |
| View and run test cases | Yes | Yes | Yes | No |
| Update the rule definition | Yes | Yes | No | No |
| Create, update, and delete test cases | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Rename the rule | Yes | Yes | No | No |
| Delete the rule | Yes | No | No | No |
| Update the security | Yes | No | No | No |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...