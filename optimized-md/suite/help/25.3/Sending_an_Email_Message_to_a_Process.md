---
source_url: https://docs.appian.com/suite/help/25.3/Sending_an_Email_Message_to_a_Process.html
original_path: Sending_an_Email_Message_to_a_Process.html
version: "25.3"
title: "Sending an Email Message to a Process"
page_id: "Sending_an_Email_Message_to_a_Process"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Sending an Email Message to a Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The application server that is installed with the system handles incoming email messages.

-   In order for the messages to be received by a process or process model, a [mail server connection](Mail_Server_Setup.html) must be configured by your administrator.

-   Your Appian administrator must enable the [Anonymous system user](Anonymous_User.html) to allow the sending of an email to a process or process model.

-   Email messages can be received by processes, process models, and events within a process model. Email messages can also be sent by your processes.

-   Data transferred using email to an Appian process is not encrypted. Exchanging unencrypted sensitive or confidential data is not recommended. Application-level security is the responsibility of each customer.

## Starting a process using an email

Perform the following steps to allow a [start event](Start_Event.html) to be triggered using an email.

-   In the Process Modeler, click **File** > **Properties**. The **Process Model Properties** dialog is displayed.
-   Select the **Public Events** checkbox to allow anyone to fire triggers.

To further restrict when the event is triggered (and when a process is started from the email) you can add conditions so that the event only executes once all conditions evaluate to true.

**Caution:**  If an email is sent to a process model, but a process instance is not started, it's possible the email was not received by the process model. This can occur if Canonical Name (CNAME) expansion is enabled on your email server. To address this behavior, work with your IT team to disable CNAME expansion on your email server.

## Receiving an email message

If your Appian administrator has [configured your server](Mail_Server_Setup.html) to accept incoming email, it is possible to receive email messages in a specific running process, or in a process model's [Start Event](Start_Event.html).

-   A running process must already be listening for the email message; a message received by the process engine before it is listening is ignored.
    -   If the intended email recipient (catch event) is a [Receive Message event](Receive_Message_Event.html); a flow must have activated that event, _and_ the event must still be active.
-   If the intended recipient is the [Start Event](Start_Event.html) of a process model, then the process model must be saved and published.

All processes, process models, and events have an identification number (process ID, process model ID, process model UUID, and Event Persistent ID). The process model ID and UUID can be viewed from the process model properties dialog. (The process model UUID is only available once the process model is saved.) Email messages sent to a process must target a process, process model, or event.

In order to avoid triggering the process start event or receive message event multiple times, the system checks the `Message-ID` field in the received email as well as the target IDs/UUIDs to determine if it is a duplicate. The system will ignore any duplicate messages that are received within a rolling 24 hour window and will log a message with the text "Ignored duplicate message".

## Routing email messages

Email messages can be routed to the desired process, process model, or persistent event ID using the following destination keys:

| Destination Key | Description |
| --- | --- |
| `DestinationPMID` | The ID of the process model. |
| `DestinationPMUUID` | The UUID of the process model. |
| `DestinationProcessID` | The ID of the process instance. |
| `DestinationEventPersistentID` | The event persistent ID of the receive message node. |

If your Appian administrator creates a custom alias configuration to support email address routing, do not also use key/value pairs for routing. Any routing key/value pairs found in the subject or body of an email take precedence over a custom email alias.

## Finding an ID to use for message routing

The email sent to a process model, an active process, or an event no longer requires that you include a process model, process, or event identifier in the email address. Rather the identifier must be listed in a key/value pair that appears in the message subject or body. It is possible to continue using IDs in email addresses only with custom configuration.

### Find the ID for a process model

In the Process Modeler, click **File** > **Properties**. The ID is displayed in the process model ID field of the **General** tab of the process model properties dialog.

### Find the UUID for a process model

In the Process Modeler, click **File** > **Properties**. The UUID is displayed in the process model UUID field of the general tab of the process model properties dialog, only when the process model has been saved. We recommend using the UUID of a process model, which does not change when moving from development to production environments.

### Include the process ID property for an active process

Include a Script Task in your process model that populates a process variable using the ID property (found on the data tab of the Expression Editor, under **Process Properties**. The process variable can then be viewed from the process details.

### Find the event ID for a Receive Message or Start Event node

Double-click the event on the Process Modeler canvas.

— or —

Right-click the [start event node](Start_Event.html) and point to **Triggers** > **Setup**. Click **Setup**. The ID is displayed in the **Persistent ID** field on the **General** tab of the dialog.

## Retrieving data from email messages

Apart from including text in an email, you can also include key-value pairs for data, and attachments. To include a key-value pair, both the key and value should be enclosed within brackets (\[\]). For example, to send an email that assigns the CaseId key a value of 222100, the following syntax would be used.

 \[CaseId=222100\]

Including such key/value pairs within an email message allows you to capture each of these values within a receive message event, and store them in process variables.

Similarly, attachments to a received email message are stored in a folder within the Documents view. This folder can be specified through the **Process Model Properties** dialog for the underlying process model. (Open the process model and select **File** > **Properties**.)

HTML messages emailed to a process generally need to be converted to plain text before they can be stored within process variables. To facilitate this conversion, the expression editor provides the [stripHtml()](fnc_text_striphtml.html) function. This function can be used to convert email messages to plain-text before storing the contents in process variables.

## Legacy configurations

(For migrating systems) any processes that are configured to send an email and expect a reply to their `process<id>@domain.topdomain` address or embed an email address of the form `process<id>@domain.topdomain` must be updated with the new reply-to address be the single account for Appian email and embed the routing key/value pairing in the body so it can be routed to the correct process.

## See also

-   [Start Event: Receive Message](Receive_Message_Event.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...