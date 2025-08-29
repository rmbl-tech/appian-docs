---
source_url: https://docs.appian.com/suite/help/25.3/Complex_Gateway_Node.html
original_path: Complex_Gateway_Node.html
version: "25.3"
title: "Complex Gateway"
page_id: "Complex_Gateway_Node"
section: "Configuring incoming flows for a complex gateway"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Complex Gateway

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

![](images/Smart_Service_Icons/Complex_Gateway.png)

This type of gateway allows you to selectively accept (or restrict) incoming paths and evaluate rules to determine outgoing paths. For example, you can restrict the node to accept only the first three out of four incoming paths, or require input from certain nodes before continuing. Outgoing paths can be configured in the same manner as other gateway nodes.

-   Looping flow should not be directed into a Complex gateway itself, but into another upstream activity.
-   When multiple flows enter a complex gateway, it allows only the first flow through, despite allowing you to configure it to wait for a configurable number of instance tokens to arrive before activating. Then, the gateway waits until all other incoming flows arrive before activating the outgoing flow again.

## Configuring incoming flows for a complex gateway

On the **Decision** tab of the Configure Complex dialog, select one the following options.

![](images/Complex_gateway_input_options.png )

-   **Require _n_ of _n_ incoming paths to arrive**.
    -   Select the number of incoming paths that must arrive before the next task can be executed. — or —

    -   **Require these specific node paths**. When selected, a list of nodes appear. Select the checkbox next to the name of each node you want to designate as a required source path.

## Configuring outgoing flows for a complex gateway

Select one of the following options.

-   **Execute all outgoing paths at the same time**.
    -   All outgoing paths execute simultaneously.
    -   This setting mirrors the behavior of an [AND Gateway](AND_Node.html).
        — or —

-   **Execute only one outgoing path**.
    -   This option connects the incoming paths with a single outgoing path. The path taken is determined by one or more conditions that you set. Each outgoing path is assigned a condition. The conditions are evaluated according to their top-to-bottom ranking. (The first condition listed is the first one tested.) As soon as a True condition is discovered, the workflow takes the associated path. This setting mirrors the behavior of an [XOR Gateway](XOR_Node.html). When this option is selected, the New Condition button appears.
        -   See the [XOR Gateway](XOR_Node.html) help topic for more information on how to configure these conditions.
            — or —

-   **Execute one or more outgoing path(s)**.
    -   This option directs incoming workflows to one of many possible output paths, based on the condition(s) you set. Each outgoing path is assigned a condition. The conditions are evaluated according to their top-to-bottom ranking. (The first condition listed is the first one tested.) As soon as a True condition is discovered, the workflow takes the associated path. If all conditions evaluate as False, you can also specify a path to follow. If any condition has an output that can't be evaluated as True or False, the node will not open any output paths. This setting mirrors the behavior of an [OR Gateway](OR_Gateway.html).
    -   See the [OR Gateway](OR_Gateway.html) help topic for more information on how to configure these conditions.

## Usage considerations

-   Specifying an expression that does not evaluate to either `true` or `false` results in the process being paused by exception.
-   Conditions are evaluated in bulk, without regard to the order in which you list them.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...