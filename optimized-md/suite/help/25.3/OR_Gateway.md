---
source_url: https://docs.appian.com/suite/help/25.3/OR_Gateway.html
original_path: OR_Gateway.html
version: "25.3"
title: "OR Gateway"
page_id: "OR_Gateway"
section: "Path options"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# OR Gateway

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

![](images/Smart_Service_Icons/OR_Gateway.png)

An OR Gateway directs incoming flows to one of many possible output paths, based on the condition(s) you set.

## Path options

The node can have multiple incoming and outgoing paths. The incoming paths are evaluated in the order they arrive. Each outgoing path is assigned a condition.

Conditions are evaluated in bulk, without regard to the order in which you list them.

If all conditions evaluate as False, you can also specify a path to follow. If any condition has an output that can't be evaluated as either True or False, the node does not open any output paths.

## Configuring an OR gateway

1.  In the Palette of the Process Modeler, select the **Workflow** folder to expand the node categories.
2.  Select the **Gateways** node category. The Gateway nodes are displayed.
3.  Select the **OR** node, and drag it onto the canvas.
4.  In the Process Modeler, click the **Connect** button ![](images/Connect_pm_toolbar.gif ) on the toolbar.
5.  Drag the Connect tool from a connection point **x** on a prior node (or nodes) to a connection point on the OR node.
6.  Drag the tool from a connection point **x** on the OR node to connection points on the nodes that represent your optional paths. The OR node requires that you have at least one incoming and one outgoing path.
7.  Open the **OR Properties** dialog.
    -   Right-click an **OR** node on the designer canvas. Select **Properties**. — or —

    -   Double-click an **OR** node on the Canvas. The **Configure OR** dialog box is displayed.

![or_config.png](images/or_config.png)

1.  Click the **General** tab.
2.  Enter a descriptive name for the node, by typing it in the **Name** field. When additional languages are enabled, a tab for each language appears on the General tab. If so, the Name field must be populated for each language.
3.  Click the **Decision** tab.
4.  Click the **New Condition** button. A condition row is displayed. Add multiple condition rows if you have multiple outgoing paths.
5.  Create conditions for your Gateway decision using expressions:

    -   To perform a logical test of the value of a process variable, click **Open the Expression Editor**. Begin typing [your expression](Expressions.html) in the Expression Editor. Process variables can be accessed by any node in your process. Begin typing `pv!` to see a list of available process variables.
    -   Select an operator to use for comparison, such as greater-than (**\>**), less-than (**<**), or equals **\=**).
    -   The Operator is appended to the Expression. For example: `pv!Credit_Score >`
    -   Append a value to use in your comparison by typing it after the operator. For example: `pv!Credit_Score > 100`.
    -   The comparison value can also be a process variable, expression logic, or a constant.
    -   Specifying an expression that does not evaluate to either **True** or **False** will pause the process.
        1.  Click **Save and Close**. The Expression is displayed in the condition row with the prefix (=).

    ![](images/Conditional_expression.gif )

6.  Alternatively, type a comparison in the **Condition** field, using a known process variable **Name**, an operator (such as equals, less-than, or greater-than) and a **Value**. Use the following syntax: `pv!Name = Value`
7.  For each condition, select a destination node from the **Result** list.
8.  (Optional) Select a destination node from the **Result** list for the condition **If none of the above rules are TRUE**.
9.  If you have more than one condition, reorder them so that they are evaluated in proper sequence. The first condition listed is the first to be evaluated. In the **Order** column click the **Down** button ![](images/Down_reorder_condition_button.gif ) and the **Up** button ![](images/Up_reorder_condition_button.gif ) to change the order in which the condition is evaluated.

Specifying an expression that evaluates to neither `true` or `false` results in the process pausing at this gateway.

When multiple flows enter an OR node, the Gateway node pauses after the first instance token passes through – until all other incoming flows arrive. Work around this issue by placing an empty Script Task node between the incoming flows and the Gateway node.

## See also

-   [XOR Gateway](XOR_Node.html)
-   [AND Gateway](AND_Node.html)
-   [Complex Gateway](Complex_Gateway_Node.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...