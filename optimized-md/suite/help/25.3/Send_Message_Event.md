---
source_url: https://docs.appian.com/suite/help/25.3/Send_Message_Event.html
original_path: Send_Message_Event.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Send Message Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Overview

![](images/Smart_Service_Icons/Send_Message_Event.png)

In a process, a **Send Message** event can be used to generate a message that is made available to all **Receive Message** events (which are actively listening for messages). Messages sent to events that are not active (either paused, yet to be activated, passed in the process flow, or in an unpublished process model) are discarded.

**Note:**  System administrators must configure JMS messaging to enable this feature.

Process-to-process messaging is enabled by default for Appian Cloud sites.

## Configuring a Send Message Event

You can configure the Send Message Event to send messages from a process to any of the following:

-   [Specific Process](#sending-a-message-to-a-specific-process)
-   [Receive Message Event within a Process Model](#sending-a-message-to-a-receive-message-event)
-   Specific Process Model \[[Deprecated](Send_Message_to_Process_Model.html)\]

**Tip:**  As a [Messaging Best Practice](Messaging_Best_Practices.html), we recommending sending an event message to a specific process, since sending the message to a process model results in the message being sent to all processes created from that model.

### Sending a message to a specific process

The content within a message is transferred from the **Send Message** event to a **Receive Message** event through mappings. Mappings can be created within a **Send Message** event to store information, while mappings created in a **Receive Message** event may be used to retrieve information from messages.

When you need to send a message to a specific process instance, follow these steps:

1.  Open the properties dialog on any **Send Message** event. This applies to End Events with send message triggers or escalations.
2.  Click the **Data** tab. Ensure that the **Message Destination** on the **Setup** tab is left blank.
3.  On the **Data** tab, enter the process ID that you want to send a message to in the **Value** field for the **DestinationProcessID** mapping. You can select a [process variable](process-model-object.html#variables-tab) or use an expression to specify the values you need to pass.
4.  In the **Optional Text** field, type the information you want to include in the body of the message. This field allows you to specify data values using the Expression Editor, which can be read by expressions in the **Receive Message** event.

    **Note:**  All active Receive Message Events within the process specified by **DestinationProcessID** are triggered by the Send Message Event. Messages sent through the Send Message event are only available to active Receive Message nodes in running processes. If no Receive Message events are active in the destination process model, the message sent is lost.

5.  Click **OK**.
6.  Click **File > Save & Publish**.

To target a specific Receive Message event within the process, complete the following:

1.  On the **Data** tab of the **Edit Send Message Event** dialog, create a new custom property by clicking **New Mapping**.
2.  Enter a name and value for the new mapping that identifies the message to be sent and save the process model.
3.  Open the **Edit Receive Message Event** dialog for the target Receive Message Event.
4.  On the **Setup** tab, click **Import Custom Properties** and import the custom mapping you created for the Send Message node.
5.  Set the value of the condition in the [**Receive Message** event](Receive_Message_Event.html) to match the value in the **Send Message** event custom mapping.

    ![Send_message_data](images/Send_message_data.png)

### Sending a message to a Receive Message Event

To send a message to a Receive Message event, follow these steps:

![Send_message_setup](images/Send_message_setup.png)

1.  Open the properties dialog on any **Send Message** event. This applies to End Events with send message triggers or escalations.
2.  Click the **Setup** tab.
3.  Click **Directory…**.
4.  Navigate to a process model, then click on it. Only process models that have a Receive Message event configured will be available for selection.
5.  Click **Select** next to the destination Receive Message event.
6.  Click **OK**.
7.  Click **File > Save & Publish**.

## Message information

Messages can contain two types of custom information: custom properties and a message body.

### Importing custom properties

All mappings that have been configured using events in process models to which you have at least **Editor** level access can be reused by selecting this option.

To import mappings from a previously configured event:

1.  Click **Import Custom Properties**. The **Message Properties** dialog is displayed from which you can navigate through the Process Models navigation tree.
2.  Select a process model to display the events configured within the process model.
3.  Select an event to import the mappings from that event.
4.  Click **OK**.

### Message body

Apart from mappings, you can also enter additional text as part of the message that is generated. Additional text can be entered directly into the provided text, or it can be entered using the Expression Editor. Like email messages, in the message body you can specify key-value pairs and other text, which can then be extracted using the Expression Editor in a Receive Message event. Also, using the Expression Editor, you can use the [insertquestions](fnc_text_insertquestions.html) function to pose questions. Then the answers to these questions can be retrieved in a Receive Message event using the [extractanswers](fnc_text_extractanswers.html) function.

### Extract function

Text entered within a message body can be extracted using the [extract](fnc_text_extract.html) function in the Expression Editor, which requires you to specify the text that is to be searched and the delimiters within the text. It returns all content enclosed within the delimiters in the text. The message body, can be referenced in the expression editor using the **msg!body** property.

Other Expression Editor functions that facilitate information-transfer between events in a process model include:

-   [insertkey](fnc_text_insertkey.html)
-   [insertkeyval](fnc_text_insertkeyval.html)
-   [insertquestions](fnc_text_insertquestions.html)
-   [keyval](fnc_text_keyval.html)
-   [extractanswers](fnc_text_extractanswers.html).

**Note:**  Since the Send Message event is used to generate a message (and produce an action), it cannot be used to create an exception flow.

## Sending messages from an End Event or Escalation

In addition to sending JMS messages from the Send Message Event node, you can send messages from an End Event or from an escalation.

### Add a Send Message Event to an End Event

1.  Open the Configure End Event dialog using one of two methods.
    -   Right-click an **End Event** node on the canvas and point to **Results**. The Setup option appears. Click **Setup**.— or —

    -   Double-click an **End Event** node on the canvas.
2.  Click the **Results** tab.
3.  Click the **Send Message** link. A Send Message row is added to the events list.
4.  Type a name for the event in the **Name** column.
5.  Click the **Configure** link in the **Setup** column. (This link changes to **Edit**, if the trigger was added previously.)

### Send a message event from an escalation

Learn how to [escalate a task](Process_Node_and_Smart_Service_Properties.html#escalation-tab).

## Usage considerations

### Limitations

You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...