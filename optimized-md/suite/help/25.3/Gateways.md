---
source_url: https://docs.appian.com/suite/help/25.3/Gateways.html
original_path: Gateways.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Gateways

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Gateway nodes allow you to evaluate different criteria to make decisions on which path(s) your workflow should follow – as well as how many instances are allowed to follow each optional path.

Appian provides the following types of gateway nodes:

| Node | Type | Description |
| --- | --- | --- |
| **[XOR](XOR_Node.html)** | Exclusive Decision/Merge (Exclusive OR) | This type of gateway node allows one incoming path to continue, while excluding any others. It executes a single outgoing path determined by the conditions you set. |
| **[OR](OR_Gateway.html)** | Inclusive Decision/Merge | This type of gateway directs incoming flows to one of many possible output paths, based on the condition(s) you set. |
| **[COMPLEX](Complex_Gateway_Node.html)** | Complex Decision/Merge | This type of gateway allows you to selectively accept (or restrict) incoming paths and evaluate rules to determine outgoing paths. For example, you can restrict the node to accept only the first 3 out of 4 incoming paths, or require input from certain nodes before continuing. Outgoing paths can be configured in the same manner as other gateway nodes. |
| **[AND](AND_Node.html)** | Parallel Fork/Join | This type of gateway directs all incoming workflow(s) to all of the possible branches. If more than one incoming path is used, all incoming paths must reach the node before the process can continue. It can also be used to join all incoming paths into a single workflow. |

## Access gateway nodes

To access a gateway node:

1.  Open the Process Modeler.
2.  On the **Palette**, select the **Standard Nodes** folder to expand the node categories.
3.  Select the **Gateways** node category. The gateway nodes are displayed.

    ![Gateway_nodes](images/Gateway_nodes.png)

    **Tip:**  Gateway names displayed on the designer canvas can be edited inline by clicking the name. When editing a gateway name inline, it can be styled using the **Font Palette**.

-   Click the gateway name.
-   Select the text you want to style.
-   Select a style from the **Font Palette**, such as **B** for boldface text.
-   If the `Font Palette` is not displayed, select **Tools** > **Show Font Palette**.

## Usage considerations

Gateways can be used to route the process flow, or to create a loop among activities in a process model. If there are multiple incoming paths to a gateway, and a loop involving the gateway is established in your process model, the gateway only resets itself when all incoming paths have been activated.

-   If one of the incoming paths to a gateway has not been activated and the process flow reaches the same gateway again through a loop, the process does not proceed past the gateway. This is because all input paths from the first instance of the gateway have not yet been activated.
-   If you want the flow to proceed when a single flow token loops back to the gateway (and not wait for all incoming flow tokens) place a new activity upstream of the gateway. Route the looped flow through this new activity rather than into the gateway itself.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...