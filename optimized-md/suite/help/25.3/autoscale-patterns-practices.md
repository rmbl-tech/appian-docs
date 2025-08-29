---
source_url: https://docs.appian.com/suite/help/25.3/autoscale-patterns-practices.html
original_path: autoscale-patterns-practices.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Autoscale Patterns and Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td style="padding-right: 20px; padding-left: 10px; margin-left: 0px;"><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>This Appian Cloud capability is separately licensed and is only available for Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Appian Autoscale Best Practice: Handle Uncommon Scenarios

Learn how to design autoscaled process models that include attended activities, like user input tasks, for a small subset of processes.

## Overview

Autoscale makes it easy to build processes that can handle the high-scale needs of your application. To help your processes run smoothly, Appian recommends the following design patterns and best practices.

## Keep process variables small

During development, test the size of your process variables with the largest data you expect to handle to ensure you do not hit the size limit of 5 MB.

To help stay under the limit, we recommend building more, smaller process models with process variables that store less data, rather than a few complex process models that need larger process variables.

## Write throughput considerations with synced record types

There are certain [smart services that automatically sync data](records-data-sync.html#use-smart-services-that-automatically-sync-data) in a record type. However, when designing autoscaled processes, be aware that synced record types have write throughput limitations.

If your autoscaled processes require syncing more than 1,000 records per minute using these smart services across all applications, follow the steps in [this article](https://community.appian.com/success/w/guide/3623/writing-to-synced-record-types-at-high-throughput) to work around the write throughput limitations.

## Query throughput considerations with synced record types

You should [dynamically scale your data fabric queries](about-data-sync.html#dynamically-scale-data-fabric-queries) to ensure that your site can efficiently handle query workloads from autoscaled processes. Scaling your data fabric queries will ensure consistent query performance and eliminate the need for manual scaling.

[Open a support case](https://community.appian.com/support/) to start scaling your data fabric queries in your production or performance testing environments.

## Build separate process models to use unsupported nodes and smart services

You can only use [supported nodes and smart services](autoscale-processes.html#supported-nodes) in processes with autoscale enabled.

If you need to use nodes or smart services that aren't supported for autoscale, you'll need to design a separate process model that does not have autoscale enabled to contain that functionality. Then, you can run that process with the [Start Process smart service](Start_Process_Smart_Service.html).

These processes should only be started at low throughput. In a single environment, there is a queue for all of the processes started by autoscaled processes.

Processes can be started at a maximum rate of 700 per minute. If more than 700 processes are requested in one minute, they will be put into a queue that can hold a maximum of one million processes. If you try to start a process when the queue is full, the Start Process node will fail.

## Starting large numbers of autoscaled processes

The best way to start autoscaled processes from an external system is to use a [web API](Web_APIs.html) and the [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) function.

Keep in mind that frequent calls might cause high resource usage on the server, so you should use batching with web API calls when possible.

## Importing autoscaled processes

If you import an autoscaled process model into an environment that does not have autoscale enabled, the import will succeed, but your process model will automatically be set to run without autoscale.

## Avoid long-running calls to external systems

To help ensure your automated processes are using resources effectively, all nodes time out after 90 seconds. When testing your process models, check for any integration calls to external systems that are taking too long time to complete.

If the external system doesn't respond reliably, you can [create a retry loop](looping.html) to see if a subsequent call will succeed. This example uses a [timer event](Intermediate_Event_-_Timer.html) to retry failed integration calls.

[![Process model showing a retry flow built with a timer event](images/process-retry-timer.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img856)

[![](images/process-retry-timer.png)](#_)

1.  An XOR node checks if the external system returned data as expected.
2.  If the check fails, the timer event waits for a short period, such as 30 seconds.
3.  A script task increments a retry counter variable to keep track of how many retries have been attempted.
4.  If the retry loop runs a few times without a successful integration response, the process administrator is notified so they can investigate the problem.

## Making connections to external systems

Sites with autoscaled processes can have a number of additional process engines. Each engine can create connections to data sources or call integrations, and the systems Appian connects to should be assessed for their ability to handle the load.

For example, imagine your environment can have up to five process engines, and your connected system is configured for a maximum 100 connections. If only one process engine is in use, your application can make up to 100 concurrent connections. If all five process engines are needed to handle the amount of processes, the number of concurrent connections could reach 500. Adding the Appian application server, this rises to 600 connections.

## Considerations for using autoscale with existing process models

Your existing process models can be converted to autoscaled processes.

To check your model for compatibility:

1.  Enable autoscale by selecting the **Autoscale** checkbox in the process model's properties.
2.  From the menu bar, select **Tools > Validate**. Appian will list any issues that need to be resolved before the model can be successfully published and run with autoscale enabled.

**Note:**  Be sure to test a converted process model thoroughly before deploying it to a higher environment.

### Node behavior changes with autoscale

The following table details the node behavior changes to be aware of when converting an existing process.

| **Summary** | **Without autoscale enabled** | **With autoscale enabled** |
| --- | --- | --- |
| Gateways (AND, OR, XOR, and Complex) in swimlanes | Gateways always run as the process initiator, even when in a swimlane configured to run as the designer. | Gateways use the swimlane configuration but will default to the process initiator when the node is not in a swimlane. |
| Gateway node reset | Gateways are not reset until all incoming flows have been executed. This means an OR gateway with two incoming flows in a looping flow will not execute again until both incoming flows have arrived. | The gateway is reset immediately anytime an outgoing flow is executed, allowing any incoming flow to trigger the gateway again. |
| Implicit flow completion | If no flows or events are active after a node completes (a gateway ends with a **\-None-** result or the flow reaches a node with no output flow), the process waits for one hour and is then paused by exception. | Flows complete implicitly when a gateway ends with a **\-None-** result or the flow reaches a node with no output flow. This allows all other flows to continue and the process to complete. |
| Node instance limit | A single node can be executed up to 1,000 times per process instance (for example, in a looping flow). | By default, nodes can be executed up to 10,000 times per process instance. Contact Appian Support if your use case requires an increased limit. |
| Process variable size | Process variable size is unlimited. | Process variable size is [restricted to 5 MB](#keep-process-variables-small). |
| `loggedInUser()` | When `loggedInUser()` is called in a node, it is always set to Administrator. |
When `loggedInUser()` is called in a node set to run as initiator, the process initiator is returned (user or service account that kicked off the process).

When a node is set to run as designer, the user that published the model is returned.

At the process level (in expressions like the process name), the initiator is returned.

 |
| Process model creator property (`pm!creator`) | The user that published the most recent version of the process model is returned. | The user who created the process model object is returned. |
| CDT versions in expressions | Expressions defined in the process model object use the latest version of the CDT available when the process starts. If the CDT changes after the process starts but before the expression evaluates, the older version is used. | Expressions defined in the process model object use the latest version of the CDT. If the CDT changes after the process starts but before the expression evaluates, the current version is used. |
| Casting values to a CDT | Values are cast when the process is initiated, and a casting failure will generate an error before the process starts. | Values are cast when the containing expression is evaluated, so a casting failure will generate an error after the process has started. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...