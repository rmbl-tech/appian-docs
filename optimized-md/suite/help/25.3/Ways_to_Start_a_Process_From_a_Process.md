---
source_url: https://docs.appian.com/suite/help/25.3/Ways_to_Start_a_Process_From_a_Process.html
original_path: Ways_to_Start_a_Process_From_a_Process.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Ways to Start a Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Processes are at the center of Appian applications, letting you automate and orchestrate even the most complex workflows. There are a variety of ways to start these processes, depending on the expected scale of your process and the needs of your app.

[![images/process-modeler/start_a_process.png](images/process-modeler/start_a_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img852)

[![](images/process-modeler/start_a_process.png)](#_)

This page explains all the ways you can initiate processes and details when you should consider using each approach. After reading about the different starting methods, you can find guidance for implementing each one linked at the end of each section.

## Starting a process from a process

Appian offers several ways to start a new process from another process. The best choice will depend on your use case. Here we will detail the differences between these and provide common use cases for when each is appropriate.

The ways to start a new process from within another process are:

-   [Start Process Smart Service](Start_Process_Smart_Service.html): A smart service that allows you to launch another process from your current process. In most cases, this is the best way to start another process.

-   [Subprocess](Sub-Process_Activity.html): An activity that is used to launch asynchronous or synchronous subprocesses from within your current process. It links the two published process models through a parent-child relationship. The parent and child processes can pass data by reference. Autoscaled process models can't use subprocess activities to launch processes.

-   [Process Messaging](Receive_Message_Event.html): The [Send Message Event](Send_Message_Event.html) and [End Event](End_Event.html) activities can trigger the start of a new process if that process model's start node is configured to receive messages. An End Event can also trigger an asynchronous subprocess. Note in the table below that the Start Process smart service is equivalent or better than process messaging in every category, so we recommend using the smart service whenever possible.

### Comparing ways to start an asynchronous process from a process

The following table shows how the ways to start an asynchronous process compare when considering different attributes of the process model's design.

| Attributes | Subprocess | Start Process Smart Service | Process Messaging |
| --- | --- | --- | --- |
| Parent-child relationship | Yes | No | No |
| Process variables | Can be passed by reference | Cannot be passed by reference | Cannot be passed by reference |
| Process outputs | Not available | Not available | Not available |
| Process reports of parent | Can access | Cannot access | Cannot access |
| Execution engine balancing | Same Engine | Balanced | Balanced |
| Model to start | Defined statically | Defined statically or dynamically | Defined statically |
| Activity chaining | Not followed | Not followed\* | Not followed |
| Performance starting one process (without autoscale) | Good | Medium | Poor |
| Performance starting many processes at once (without autoscale) | Medium | Good | Poor |
| Performance starting many autoscaled processes at once | Poor | Good | Poor |
| Quick tasks | Not shared | Not shared | Not shared |
| Autoscale compatible | No | Yes | No |

\*Activity chaining in the parent and child are independent.

### Comparing ways to start a synchronous process from a process

The following table shows how the ways to start a synchronous process compare when considering different attributes of the process model's design.

| Attributes | Subprocess | Start Process Smart Service |
| --- | --- | --- |
| Parent-child relationship | Yes | No |
| Process variables | Can be passed by reference | Cannot be passed by reference |
| Process outputs | Available | Available |
| Process reports of parent | Can access | Cannot access |
| Execution engine balancing | Same Engine | Balanced |
| Model to start | Defined statically | Defined statically or dynamically |
| Activity chaining | Followed | Followed\* |
| Performance starting one process (without autoscale) | Good | Medium |
| Performance starting many processes at once (without autoscale) | Medium | Good |
| Performance starting many autoscaled processes at once | Poor | Good |
| Quick tasks | Shared | Not shared |
| Autoscale compatible | No | Yes |

\*Activity chaining in the parent and child are independent. [When running synchronously](Start_Process_Smart_Service.html#using-activity-chaining), the chain in the parent process will wait until the child is complete.

### Common use cases

For most situations, the Start Process smart service is the best way to start another process in your workflow. You can start a process asynchronously to perform background work, or start one synchronously so you can use the results to finish the original process.

#### Use cases requiring a subprocess

Let's consider a few situations where you'd need to start a subprocess instead.

| Use Case | Recommendation |
| --- | --- |
| Chaining to a user input task | A synchronous subprocess is the only method that can follow activity chaining into the subprocess. Following an activity chain into a subprocess will continue to add to the number of unattended nodes that exists between two (attended) activity-chained tasks. See [Activity-Chaining into a Subprocess Activity](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession) for more information about activity chaining. |
| Reporting on subprocesses | When you want to start subprocesses and have them show up in process reports for the current process, you must use a subprocess. This is because other methods don't guarantee the subprocess will be on the same engine as the current process. |
| Pass variables by reference, pass default task priority, or pass parent security | A subprocess is the only node that maintains a connection to the parent process so the child can inherit any or all of this data. |

## Starting a process from portals

Portals can use `a!startProcess()` in an [interface](#starting-a-process-from-an-interface) to start a process. However, they cannot use any other method to start a process, such as through a start form or record action.

## Starting a process from an interface

There are several different ways to launch a process directly from an interface.

[a!startProcess](Start_Process_Smart_Service.html#astartprocess): A function that starts a process from the _saveInto_ parameter of a button. Use this for unattended activities related to a specific piece of information on the interface.

[a!startProcessLink](Start_Process_Link_Component.html): A link type that starts a process and navigates the user through any initial chained forms. Use this for taking the user to a process related to a specific piece of information on an interface. This cannot be used to start an [autoscaled process](autoscale-processes.html).

[Record Actions](record-actions.html): A configuration on a record type that starts a process within the context of a record view or a record list. The process can also be started on a report or form using a [record action component](Record_Action_Component.html). Use this for updating or adding records to your record type.

| Behavior | a!startProcess | a!startProcessLink | Record Action |
| --- | --- | --- | --- |
| Pass in data to process | Yes | Yes | Yes |
| Show start and chained forms | No | Yes | Yes |
| Configure in any interface | Yes | Yes | Yes |
| Maintain original interface state after process starts | Yes | No | Yes\* |
| Use for file upload cases | No | Yes | Yes |
| Display custom banner on submit | No | Yes | No |
| Save URL as bookmark | No | No | Yes |
| Access process data on completion | Yes | No | No |
| Write custom error handling | Yes | No | No |
| Start autoscaled processes | Yes | No | Yes |

\*This is only true when a record action is opened and submitted in a dialog box. For more information, see [a!refreshVariable](fnc_evaluation_a_refreshvariable.html).

## Starting a process from outside Appian

Appian isn't the only system in your enterprise, and because of this, you might need to initiate Appian processes from one of those other systems.

There are several different ways to initiate Appian processes from other systems:

-   Use a [Web API](Web_APIs.html) to call the [Start Process smart service](Start_Process_Smart_Service.html#a!startProcess\(\)).
-   [Initiate a process from Appian RPA](rpa-9.17/java-module-appian-services.html)
-   [Start a process by sending an email](Sending_an_Email_Message_to_a_Process.html#starting-a-process-using-an-email). Only processes without autoscale enabled can be started with an email.
-   [Expose your process model as a web service](Publishing_Process_Models_as_Web_Services.html). Processes will run without autoscale even if autoscale is enabled for the process model.

When to use each of these methods is outlined in the [Choosing the Right Type of Integration page](Choosing_the_Right_Type_of_Integration.html).

## Automatically starting a process

Processes don't always need a user interaction or another system to initiate them. You can also configure process models without autoscale enabled to automatically start on a particular date and time or a scheduled interval.

Some examples of this include:

-   If you had an Appian application for managing employee timesheets, you might want to run a process every Friday morning that found who hasn't submitted their timesheet yet and send those employees a reminder email.
-   If all of your Appian user accounts are based on your company's company-wide Active Directory or LDAP system, you might need to periodically sync the information between that system and Appian.

Learn more about configuring scheduled processes on the [process Start Event page](Start_Event.html#configuring-a-timer-trigger-on-a-start-event).

## Starting a process from Tempo or sites

To allow users to initiate different business processes, like creating a new service request or updating the status of a service request, a process model should be exposed as a [record action](record-actions.html) or an [application action](application-settings.html#application-actions).

Record actions allow users to take action on a specific record or a list of records. These actions are configured in the record type and can be displayed on record views, the record list, or in your reports and forms using the [record action component](Record_Action_Component.html).

Record actions can allow your users to start processes like:

-   Updating the status of a service request to "Closed" when the ticket's issue is resolved
-   Adding documents related to one of your customers
-   Opening a new service request in your IT support application
-   Adding a new customer to your organization in your Customer Onboarding app

In addition to record actions, you can also leverage application actions. These actions expose process models in end-user interfaces. You can display these actions as a page on your Site or in the **Actions** tab in Tempo.

Because application actions launch processes requiring user interaction, they should only be used with process models that do not have autoscale enabled.

Learn more:

-   [Create Record Actions](record-actions.html)
-   [Application Actions](application-settings.html#application-actions)
-   [Appian Sites](Sites.html)
-   [Embedded Interfaces](Embedded_Interfaces.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...