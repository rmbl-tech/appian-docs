---
source_url: https://docs.appian.com/suite/help/25.3/Create_a_Decision.html
original_path: Create_a_Decision.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Decision

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to create and configure a [decision object](Decisions.html).

To create a decision:

1.  [Create the object](#create-the-object).
2.  Review the [security](Decisions.html#prodlink-security) and update as needed.
3.  [Select a hit policy](#select-a-hit-policy).
4.  [Configure inputs](#configure-inputs).
5.  [Configure outputs](#configure-outputs).
6.  [Configure decision rules](#configure-decision-rules).
7.  [Test your decision](#test-your-decision).

## Create the object

1.  In the **Build** view of your application, click **NEW** > **Decision**.
2.  In the **Create Decision** dialog, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the object. This name is not case sensitive, but we recommend following the [Standard Object Names](https://docs.appian.com/suite/help/25.2/Standard_Object_Names.html) convention. This name must be unique in the Appian environment. |
    | **Descriptions** | Enter a short description for the object. This text displays in the expression editor and in the objects grid of some Designer views. |
    | **Save In** | Select the rule folder that the decision is saved into. |

3.  Click **CREATE**. The decision object displays. You will see a blank decision table that includes four rows, two blank input columns, one blank output column, and a notes column.

    For example:

    [![images/default-decision-table.png](images/default-decision-table.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1700)

    [![](images/default-decision-table.png)](#_)

## Select a hit policy

The hit policy specifies how your decision evaluates overlapping rules, that is, when more than one row matches the input data.

Appian supports hit policies defined in the Decision Model and Notation (DMN) standard.

To select a hit policy:

1.  In the decision object, click the hit policy selector.

    ![hit policy dropdown](images/hit_policy_dropdown.png)

2.  Select a hit policy from the dropdown list:

    | Abbreviation | Name | Description |
    | --- | --- | --- |
    | **U** | Unique | (Default) Returns outputs for only one possible match. Only a single rule can ever be matched and all rows must be unique. If a decision with this hit policy contains overlapping logic, the evaluation of the decision will fail, and design guidance will [indicate which rows in your decision overlap](#design-guidance). The decision stops evaluating after finding the first match (in rule order). |
    | **F** | First | Only returns outputs for the first match and stops evaluating. Multiple (overlapping) rules can match. |
    | **R** | Rule Order | Evaluates the entire decision and returns outputs for all matches in row order. Decisions with this hit policy must always return an array type. |

3.  Click **SAVE**.

## Configure inputs

Every decision object requires at least one input. When you create a new decision, the table will be populated with two inputs.

You can edit the existing inputs, or add your own. You can add as many inputs as you need. If needed, you can also delete inputs.

You can also add **Descriptions** to the inputs, which can be used to share important information with developers. This information might include examples, standardized values, or whether the input is required.

### Edit an existing input

To edit an existing input:

1.  At the top of any input column, click the three-dot menu .
2.  Select **Edit Input**.
3.  In the **Edit Input** dialog, edit the following properties as needed:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the input. This name will appear as the title of the column. Used for referencing the input when passing arguments by keyword. Input names are case insensitive and must be unique within a given decision. |
    | **Description** | Used to share important information with developers. Information might include examples, standardized values, or whether the input is required. |
    | **Type** | The [data type](Appian_Data_Types.html) of the input. The following data types are supported for inputs: Boolean, Date, Number (Decimal), Number (Integer), and Text. |
    | **Use a dropdown to list values…** | Allows you to select input values based on a predefined list of values when [configuring decision rules](#configure-decision-rules). Learn more about [using defined lists](#use-defined-lists). |

4.  Click **OK**.

### Add a new input

To add a new input:

1.  At the top of any input column, click the three-dot menu .
2.  Select **Add Input**.
3.  In the **New Input** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the input. This name will appear as the title of the column. Used for referencing the input when passing arguments by keyword. Input names are case insensitive and must be unique within a given decision. |
    | **Description** | Used to share important information with developers. Information might include examples, standardized values, or whether the input is required. |
    | **Type** | The [data type](Appian_Data_Types.html) of the input. The following data types are supported for inputs: Boolean, Date, Number (Decimal), Number (Integer), and Text. |
    | **Use a dropdown to list values…** | Allows you to select input values based on a predefined list of values when [configuring decision rules](#configure-decision-rules). Learn more about [using defined lists](#use-defined-lists). |

4.  Click **CREATE**. The new column will appear to the right of the existing column.

    **Note:**  Columns can be reordered by clicking on the column and selecting **Move Right** or **Move Left**.

### Delete an input

To delete an input:

1.  At the top of any input column, click and select **Delete**.
2.  In the **Delete Input?** dialog, click **DELETE INPUT**.

## Configure outputs

Every decision object requires at least one output. When you create a new decision, the table will be populated with one output. You can edit the existing output, or add your own.

You can add as many outputs as you need. If you have multiple outputs, the result will return a dictionary.

### Edit an existing output

To edit an existing output:

1.  At the top of the output column, click the three-dot menu .
2.  Select **Edit Output**.
3.  In the **Edit Input** dialog, edit the following properties as needed:

    |
    Property

     |

    Description

     |
    | --- | --- |
    |

    **Name**

     |

    The name of the output. This name will appear as the title of the column. Used as the field name for the output value when the decision returns a dictionary. Output names are case insensitive and must be unique within a given decision.

     |
    |

    **Type**

     |

    The [data type](Appian_Data_Types.html) of the output.

    Supported types include:

    -   Boolean
    -   Date
    -   Document
    -   Folder
    -   Group
    -   Number (Decimal)
    -   Number (Integer)
    -   Process Model
    -   Text
    -   User
    -   User or Group

    **Note:** Decisions that are defined with [Appian Objects](Appian_Data_Types.html#appian-object-data-types) as output values will have these objects identified as [precedents](Trace_Relationships_for_Impact_Analysis.html) to the decision. Appian recommends only using objects that will exist in all of your environments for your decisions.

     |
    |

    **Array (multiple values)**

     |

    Select this checkbox if your output has multiple values.

     |
    |

    **Use a dropdown to list values...**

     |

    Allows you to select output values based on a predefined list of values when configuring decision rules. Learn more about [using defined lists](#use-defined-lists).

     |

4.  Click **OK**.

### Add a new output

To add a new output:

1.  At the top of any output column, click the three-dot menu .
2.  Select **Add Output**.
3.  In the **New Output** dialog, configure the following properties:

    |
    Property

     |

    Description

     |
    | --- | --- |
    |

    **Name**

     |

    The name of the output. This name will appear as the title of the column. Used as the field name for the output value when the decision returns a dictionary. Output names are case insensitive and must be unique within a given decision.

     |
    |

    **Type**

     |

    The [data type](Appian_Data_Types.html) of the output.

    Supported types include:

    -   Boolean
    -   Date
    -   Document
    -   Folder
    -   Group
    -   Number (Decimal)
    -   Number (Integer)
    -   Process Model
    -   Text
    -   User
    -   User or Group

    **Note:** Decisions that are defined with [Appian Objects](Appian_Data_Types.html#appian-object-data-types) as output values will have these objects identified as [precedents](Trace_Relationships_for_Impact_Analysis.html) to the decision. Appian recommends only using objects that will exist in all of your environments for your decisions.

     |
    |

    **Array (multiple values)**

     |

    Select this checkbox if your output has multiple values.

     |
    |

    **Use a dropdown to list values...**

     |

    Allows you to select output values based on a predefined list of values when configuring decision rules. Learn more about [using defined lists](#use-defined-lists).

     |

4.  Click **CREATE**.

### Delete an output

To delete an output:

1.  At the top of any output column, click the three-dot menu .
2.  Select **Delete**.
3.  In the **Delete Output?** dialog, click **DELETE Output**.

## Configure decision rules

Decision rules specify the business logic used to evaluate the input values. Learn more about [defining decision logic](#define-decision-logic).

After configuring your input and output columns, you can now configure your blank decision rules and add more rules as needed.

For each row in the decision table, complete the following steps:

1.  For each input:
    1.  In the operator column, use the dropdown to select an operator. Depending on the **Type** configured for the input, [operators](#define-decision-logic) will differ.
    2.  In the second column, enter a value for the input, or select from a dropdown list of configured choices.

        **Note:**  A decision is invalid if not all of its input values are defined. When a decision with undefined values is evaluated, it will fail to return a value.

2.  For each output, specify the value to return based on the results of the inputs. Depending on how the output is configured, you might enter a single value or an array of values, or you might select from a dropdown list of configured choices.
3.  In the **Notes** column, add any relevant information. This column will not be evaluated in the decision. It is used for reminders or descriptions for you and other developers.

For example, in the following table, the first decision rule determines that if a person is below 18 and they are from any country, they cannot be served alcohol.

![configure decision rows](images/example-decision-rule.png)

You can also do the following as needed:

-   **Define the default output:** In the **ELSE** row of the table, define the output to return if no rules match the inputs.
-   **Add more decision rules:**
    -   To add a blank decision rule, click **\+ Add New Row**, then configure the inputs, outputs, and notes for the rule.
    -   To add a rule based on an existing rule, click **Duplicate Row**, then edit the inputs, outputs, and notes for the rule as needed.
-   **Change the rule order:** Click **Move Up** or **Move Down**. This might be necessary if your decision has a [hit policy](#select-a-hit-policy) of **Rule Order** or **First**.
-   **Remove a rule**: Click **Delete Row**.

### Define decision logic

Each input cell in the decision table corresponds to a logical operation that is evaluated with the value passed into the input at execution time. When called, the decision evaluates each row in order. If any cell in the row evaluates to false then the decision stops evaluating that row.

If all the logical conditions for a row evaluate to true, then that row is said to be a hit, or a match, and the decision will result in the defined output value for that row. The decision's [hit policy](#select-a-hit-policy) determines whether it will continue to evaluate rows or finish once it has found a match.

The following logical operations are available per input type:

| Logical Operator | Description | Available Types |
| --- | --- | --- |
| \= | Equals. When using the list of values feature with Text and Integer types, multiple values can be selected and the operation will check if the Inputs equals _any_ of the selected values. | All |
| not | Does not equal. When using the list of values feature with Text and Integer types, multiple values can be selected and the operation will check if the Inputs does not equal _any_ of the selected values. | All |
| is null | The input value is null | All |
| not null | The input value is any value but null | All |
| any | The input can be any value, it is irrelevant in this row of logic. The cell will always evaluate to true. | All |
| < | Less than
**Note**: For Date inputs, the operator's label is "before" | Date, Number (Decimal), Number (Integer) |
| \> | Greater than
**Note**: For Date inputs, the operator's label is "after" | Date, Number (Decimal), Number (Integer) |
| <= | Less than or equal to | Number (Decimal), Number (Integer) |
| \>= | Greater than or equal to | Number (Decimal), Number (Integer) |
| from | Inclusive range of values. Specify two numbers, and all values in that range, including those numbers, will be in the set. For example, "from 1 to 3" means the numbers 1, 2, and 3 are in the set. | Date, Number (Decimal), Number (Integer) |
| between | Exclusive range of values. Exclusive range of values. Specify two numbers, and all values strictly between those two numbers will be in the set. For example, "between 1 to 3" means only the number 2 is in the set. This is most useful for certain types of decimal value ranges. | Date, Number (Decimal), Number (Integer) |

### Compound output

Like inputs, a decision can have multiple outputs. This is considered a **compound output**. When a decision has a compound output, it will return a [dictionary](parts-of-an-expression.html#dictionaries) with fields that correspond to each output column of the decision. The field names in the dictionary are the output names specified in the decision.

Decisions have an explicit return type, this helps designers understand what to expect when integrating the decision into their applications. The return type is displayed in the inline help within expression editors along side the decision's description and inputs. A decision's return type depends on the type of output, whether it has a compound output, and its [hit policy](#select-a-hit-policy).

| Hit Policy | Compound Output | Output Type |
| --- | --- | --- |
| Unique, First | No | The type defined in the decision's single output column. Available types are listed above. |
| Unique, First | Yes | Map |
| Rule Order | No | The type defined in the decision's single output column. decisions with the Rule Order hit policy must output an array type. |
| Rule Order | Yes | List of Map |

When a decision is evaluated but there are no matching rows and no [default output](#default-output) is defined, the decision will return either a null of its output type or an empty list of its output type if it is an array type (which is determined by the scenarios outlined in the table above).

### Default output

In the Decision Model and Notation (DMN) standard, you can specify a default output for your decision.

In the decision, the last row in the decision table is used to define the default output. The default output will be returned when the decision is evaluated but there are no matching rows.

[![images/Decision_Images/decision_default_output_25-2.png](images/Decision_Images/decision_default_output_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1701)

[![](images/Decision_Images/decision_default_output_25-2.png)](#_)

## Test your decision

Testing your decision gives you rapid feedback on what a given set of inputs will evaluate to, allowing you to quickly understand and adjust the decision to produce the exact results required. Not only does the decision table provide feedback about any gaps in your logic, [design guidance](#design-guidance) also validates any overlapping rules depending on the hit policy of the decision.

To test your decision:

1.  In the **Test Inputs** pane, enter sample values for your input fields.
2.  (Optional) Click **Set as default test values** to save the values you just enetered.

    **Note:**  Default test values are always exported with the decision, but can only be imported if the destination environment has the **Allow Test Values to Be Imported with Design Objects** setting enabled. For more about this configuration, see the [Deployment](Appian_Administration_Console.html#deployment) section of the Admin Console.

3.  Click **Test**. The **Test Output** section populates with the type and value of the output.

    For example:

    [![images/Decision_Images/rule_order_testing_25-2.png](images/Decision_Images/rule_order_testing_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1702)

    [![](images/Decision_Images/rule_order_testing_25-2.png)](#_)

4.  Review the results of the evaluation.

    -   If the logic passes, the decision table will highlight the matching rules in green. For example, entering the following test values return an expected output:

    ![test decision green](images/test_decision_green.png)

    -   If there is an error, the conflicting rules will be highlighted in red. For example, the following decision table uses a **Unique** hit policy, but there are two decision rules with the same inputs. When you test the decision, the test output and table will notify you that there are rules with overlapping logic.

    ![validate rules](images/validate_rules.png)

## Use defined lists

Values for an input or output can be selected from a list instead of being specified free-form.

**Note:**  This configuration only constrains the experience of configuring the decision, and has no effect on how the decision evaluates.

To use a defined list to configure an input or output:

1.  On an input or output, click .
2.  Click **Edit Input**.
3.  In the **Edit Input** dialog, select the **Use a dropdown to list values you can select for this input/output** checkbox.

    [![images/Decision_Images/define_as_list.png](images/Decision_Images/define_as_list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1703)

    [![](images/Decision_Images/define_as_list.png)](#_)

4.  Choose to configure the list of options using:

    -   **Choice Values**: The values are defined in a free-form, newline-separated list. This is useful for reducing the amount reentry that is necessary when specifying logic in your decision table.
    -   **Edit as an expression**: Click this button to use an expression to generate the list of values for the input or output. The values returned from the defined expression are what are used inside the decision when the decision is called. This allows you to leverage application reference data that is stored in constants, a database table, or an external system just as you do throughout the rest of your application.

    **Note:**  The defined expression is not evaluated when executing the decision, it only gets evaluated when opening the decision in the designer and saving the individual input or output. When using this option, only reference values that will be consistent across all of your environments.

5.  Click **OK**.

## Design guidance

Appian [design guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. Guidance is calculated as you edit expressions within the decision or when a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the decision is updated.

In addition to general expression guidance, design guidance for decision objects identifies invalid values during editing and identifies missing cell values, overlapping rules, and logic completeness when you save or test the decision.

### Overlapping rules validation

When using the **Unique** hit policy, the designer will highlight which of your rows overlap with each other to identify when rules won't ever be matched.

When a **Unique** hit policy Decision has overlapping rules, it will fail to evaluate. Overlapping rules are highlighted red on the decision table and when you hover over the error icon for that row, a tooltip will appear identifying which rows it overlaps with.

[![images/Decision_Images/overlapping_rules_25-2.png](images/Decision_Images/overlapping_rules_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1704)

[![](images/Decision_Images/overlapping_rules_25-2.png)](#_)

### Completeness check

The designer also checks for completeness of your decision logic and identifies gaps in your logic. This design information is meant as a suggestion for helping you craft more robust decisions and does not affect the evaluation of a decision.

The completeness check icon will appear on the left side of an input's column header when there are gaps in the logic you defined for that input. Hover over the icon to display a tooltip that identifies values which that input does not have logic accounting for.

[![images/Decision_Images/completeness_check_25-2.png](images/Decision_Images/completeness_check_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1705)

[![](images/Decision_Images/completeness_check_25-2.png)](#_)

Completeness check identifies the following gaps:

-   When your logic doesn't account for all the items in the [list of values](#use-defined-lists) you've configured for a given input.
-   When an input of the Boolean type doesn't use both true and false values.
-   When there are missing ranges of number or date values between the lowest and highest values you've configured for a given numeric or date input.

The completeness check icon disappears once the identified missing gaps are covered.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...