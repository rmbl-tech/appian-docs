---
source_url: https://docs.appian.com/suite/help/25.3/End_Event.html
original_path: End_Event.html
version: "25.3"
title: "End Event"
page_id: "End_Event"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# End Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

![](images/Smart_Service_Icons/End_Event.png)

An End Event (without a trigger) is used to denote the end of a process flow within a process model. The process remains active until all active paths in the process arrive at an end event.

Each new Process Modeler canvas includes a Start Event and an End Event.

Right-click an End Event on the designer canvas and select **Results**. You can also double-click an End Event on the designer canvas. The Edit End Event dialog is displayed, which provides the following tabbed property sheets.

## Configuring an End Event

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

![](images/End-event-to-sub-process.png )

After your process flow reaches the End Event node, you can launch a subprocess that runs after the parent process (Asynchronously). Only an Asynchronous Subprocess can be launched from an End Event.

See the [Configuring a Subprocess Activity](Sub-Process_Activity.html) help topic for more information.

#### Launching a subprocess from an end event

1.  Open the **Configure End Event** window using one of two methods:
    -   Right-click an **End Event** node on Canvas. Click Properties. — or —

    -   Double-click an **End Event** node on the Canvas.
2.  Click the **Setup** tab.
3.  Click the **Directory** button next to the **Run this process model** field. Locate and select the process model you want to run as a Subprocess. The Process Variables used by the parent process appear in the **Node Variable** list.

    ![](images/Sub-process-input-variables.gif )

    If none are listed, click ![](images/Refresh.gif ) on the toolbar. A Node Input (also called an Activity Class Parameter) functions as a connection to a process variable, allowing you to read it or change it.

4.  (Optional) Clear the **Reporting** checkbox to exclude Subprocess data from reports.
5.  (Optional) Select the **Security** checkbox to apply the security settings of the parent process to the Subprocess.
6.  On the **Input Variables** list, map parent process variables to subprocess variables. When the node is executed, data held by the parent process is passed to your Subprocess.
7.  Click the **Choose a process** list. ![](images/Choose_a_process_variable.gif ) The Process Variables for the Subprocess are displayed.
8.  Select a process variable from the list.

### Results tab

By default, end events do not have any triggers. However, you can add the following triggers to an end event as needed:

-   **Send Message Trigger**: Used to pass information from one process to another. It is not used to notify users.
-   **Terminate Process Trigger**: A process can have multiple end events. If so, the different branches of a process remain active until each active path reaches one of the multiple **End Event** nodes. In such cases, a Terminate Process even can be used to stop all branches of a process, even if one or more branches have not yet reached an **End Event** node.

#### Adding a Send Message trigger

1.  Open the **Configure End Event** window using one of two methods:
    -   Right-click an **End Event** node on Canvas and point to **Results**. The Setup option appears. Click **Setup**.— or —

    -   Double-click an **End Event** node on the Canvas.
2.  Click the **Results** tab.
3.  Click the **Send Message** link. A **Send Message** row is added to the **End Events** list, as shown below.

    ![Add End Event](images/Add_end_event.png)

4.  Type a name for the event in the **Name** column.
5.  Click the **Configure** link in the **Setup** column. (This link changes to **Edit**, if the trigger was added previously.)

See the [Send Message Event](Send_Message_Event.html) help topic for more information on configuring this trigger.

End events that are configured to send a message display the following markπer:

![Send Message End Event marker](images/Send_message_end_event.png)

#### Adding a Terminate Process trigger

1.  Open the **Configure End Event** window:
    -   Right-click an **End Event** on the Canvas and point to **Results**. The Setup option appears. Click **Setup**. — or —

    -   Double-click an **End Event** on the Canvas.
2.  Click the **Results** tab.
3.  Click the **Terminate Process** link. A Terminate Process row is added to the End Events list.
4.  (Optional) Type a name for the event in the **Name** column.
5.  (Optional) Click the **Configure** link in the **Setup** column. (This link changes to **Edit**, if the trigger was added previously.)

Type the purpose of the `Terminate Process` trigger in the **Description** field.

End events that are configured with a `Terminate Process` event, display the following marker:

![Terminate Process End Event marker](images/Terminate_process_end_event.png)

#### Adding multiple triggers

When more than one trigger is added to an end event, the following marker is displayed on the event:

![End Event with Multiple Triggers](images/end_multiple.png)

Adding multiple triggers to an end event is especially useful when multiple messages need to be generated at the end of a process, or process flow.

All triggers configured within an end event are activated and executed before the event completes. Therefore, adding a Send Message trigger and a Terminate trigger to an end event results in a message being sent before the process is terminated.

## Usage considerations

### Limitations

You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...