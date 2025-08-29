---
source_url: https://docs.appian.com/suite/help/25.3/Rule_Event.html
original_path: Rule_Event.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rule Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

![](images/Smart_Service_Icons/Rule_Event.png)

Rule events can be added to a process model in one of two ways. They can either be added to the process flow as a process node, or they can be used within an activity to trigger an [exception flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab).

At any time in a process model when there are certain conditions that need to be met before the process flow proceeds, an intermediate rule event should be used. Once an intermediate rule event is activated, it remains active until the rule evaluates to true.

## Configuring a Rule Event

To configure a Rule Event:

1.  In the Process Modeler, select and drag the **Rule Event** node from the palette to the canvas.
2.  Connect it to your process model.
3.  Double-click the **Rule Event** node. The **Rule Event** dialog box displays.
4.  Type a name for your event.
5.  Select the **Setup** tab.
6.  Select **New Condition** or **New Expression**.

With an expression, you can use a Rule Event to monitor global constants and process variables. Each time a global constant or process variable is changed, the rule is reevaluated.

**Best Practice**: As a best practice, we recommend using conditions rather than expressions whenever possible because conditions consume fewer processing resources and less memory than expressions.

## Building a Rule Event condition

To build a Rule Event condition:

1.  Click **New Condition** on the toolbar. A row is added to the **Rules to Continue Flow** list.
2.  Click the first list box.
    -   A list of process variables is displayed.
3.  Select the process variable you want to use as a comparison value.
4.  In the second list box, select the operator you wish to use for the condition. The following options are available:

    | Select | To perform this operation… |
    | --- | --- |
    | \= | equals to |
    | <> | not equal to |
    | < | less than |
    | \> | greater than |
    | <= | less than or equal to |
    | \>= | greater than or equal to |

5.  In the text-entry field, type the value you want to compare against the process variable selected in step two.

## Creating an expression

To create an expression:

1.  Click **New Expression** from the toolbar. A row is added to the **Rules to Continue Flow** list, containing a text-entry field and the Expression Editor button.
2.  Click ![](images/Exp_editor.gif) to display the Expression Editor.
3.  Select the **Rules & Constants** tab.
4.  Select a rule to use from the displayed list - OR - Create a new expression using the process variables and properties listed on the **Data** tab and the logical functions listed on the **Functions** tab.

    **Note:**  Expressions that are created as a rule must evaluate to true or false. Creating an expression that does not evaluate to true or false causes the expression to be automatically set to false.

5.  Save the expression for reuse by clicking **Save as new expression rule**.

## Usage considerations

### Limitations

-   You cannot use the [map type](Appian_Data_Types.html#map-type) in this event. This means you cannot reference a process variable of type map, or construct a map using the a!map() function; otherwise, an error will occur.
-   You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...