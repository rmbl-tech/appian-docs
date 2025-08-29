---
source_url: https://docs.appian.com/suite/help/25.3/AND_Node.html
original_path: AND_Node.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AND Gateway

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

![](images/Smart_Service_Icons/And_Gateway.png)

The AND Gateway directs all incoming workflow(s) to all of the possible branches. If more than one incoming path is used, all incoming paths must reach the node before the process can continue. It is also used to join all incoming paths.

This node allows you to execute a specific set of tasks in parallel, before moving on to the next stage of your process.

## Configuring an AND gateway

1.  On the tools Palette of the Process Modeler, select the **Workflow** folder to expand the node categories.
2.  Select the **Gateways** node category. The Gateway nodes display.
3.  Select the **AND** node, and drag it onto the canvas.
4.  In the Process Modeler, click the **Connect** button ![](images/Connect_pm_toolbar.gif ) on the toolbar.
5.  Drag the Connect tool from a connection point **x** on a prior node (or nodes) to a connection point on the AND node.
6.  Drag the tool from a connection point **x** on the AND node to connection points on the nodes that represent your optional paths. The AND node requires that you have at least one incoming and one outgoing path.
7.  Open the **AND Properties** dialog.
    -   Right-click on an **AND** node on the designer canvas. Select **Properties**.
        — or —

    -   Double-click an **AND** node on the Canvas. The Configure AND dialog is displayed.
8.  Click the **General** tab.
9.  Enter a descriptive name for the node, by typing it in the **Name** field. When additional languages are enabled, a tab for each language appears on the General tab. If so, the **Name** field must be populated for each language.

No conditions are applied to the incoming or outgoing paths of an AND Gateway node.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...