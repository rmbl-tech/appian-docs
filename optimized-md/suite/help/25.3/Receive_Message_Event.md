---
source_url: https://docs.appian.com/suite/help/25.3/Receive_Message_Event.html
original_path: Receive_Message_Event.html
version: "25.3"
title: "Receive Message Event"
page_id: "Receive_Message_Event"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Receive Message Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

![](images/Smart_Service_Icons/Receive_Message_Event.png)

In a process, a Java message or an email can be used to send information to your process flow. The Receive Message event allows you to receive that message, trigger events based on the message properties, and store the message properties for later retrieval.

The Receive Message event can be configured as:

-   **Stand-alone node**: If the Receive Message Event is configured as an intermediate event in the process model, the event is activated when the process flow reaches the node. The process flow only proceeds once the event has completed execution.

-   **Start Event trigger**: If the Receive Message Event is configured as a trigger in a [Start Event](Start_Event.html), the process starts when the message is received.

    **Note:**  In nearly all cases, it's better to use the [Start Process smart service](Start_Process_Smart_Service.html) to start a process than to use process-to-process messaging. See [Ways to Start a Process From a Process](Ways_to_Start_a_Process_From_a_Process.html) for more information on the advantages of the Start Process smart services over process-to-process messaging.

-   **Exception Flow trigger**: If the Receive Message is configured inside a smart service activity to trigger an [Exception Flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab), the event is only activated when the process flow reaches the node that contains the event. If the exception flow is triggered, Appian skips any logic in the node other than the Receive Message event.

## Configure a Receive Message event

To configure a Receive Message event:

1.  [Open](#open-the-edit-receive-message-event-dialog) the **Edit Receive Message Event** dialog.
2.  Configure the [General options](Process_Node_and_Smart_Service_Properties.html) for the event.
3.  (Stand-alone nodes only) Configure whether Appian [continues listening](#configure-continued-listening) for messages until the process completes.
4.  [Select](#select-a-message-type) a message type.
5.  Create conditions through either the [guided experience](#guided-experience) or [expression editor](#create-an-expression).
6.  [Map](#create-a-mapping) message data to process variables.
7.  Click **OK** to save your changes.

### Open the Edit Receive Message Event dialog

The **Edit Receive Message Event** dialog allows you to view and edit the configuration options of Receive Message events.

To access this dialog for stand-alone Receive Message events, click the node in the process model workflow.

To access this dialog for Start Event triggers:

1.  Right-click the **Start** node.
2.  Select **Triggers > Setup**.
3.  Click **Receive Message**.
4.  In the new row, click **Configure**.

To access this dialog for Exception Flow triggers:

1.  Right-click the intermediate node.
2.  Select **Properties**.
3.  Go to the [**Exceptions** tab](Process_Node_and_Smart_Service_Properties.html#exceptions-tab).
4.  Click **Receive Message**.
5.  In the new row, click **Configure**.

### Configure continued listening

This option is available in the **Setup** tab for stand-alone Receive Message nodes only.

Receive Message events are activated as soon as a process flow reaches the corresponding event or activity.

If you select the **Activate Message Event** checkbox, Appian continues listening for messages until the process completes.

If you do not select this checkbox, Appian no longer listens for messages that could cause the event to execute again, once a message is received.

**Tip:**  For optimal performance, keep this option unselected.

As an alternative to keeping the event active throughout the life of the process, you can configure Receive Message events in a subprocess. Use this approach when your process needs to receive more than one message, but does not need to remain active at all times when the process is running. An [Exception](Process_Node_and_Smart_Service_Properties.html#exceptions-tab) flow should be used to terminate the subprocess once it no longer needs to listen for message events.

### Select a message type

Under **Receive Messages** in the **Setup** tab, select a message type from the **Listen for messages of type** dropdown list.

Supported message types include:

-   **Process to Process**: Listen for messages sent between processes within Appian.
-   **External to Process**: Listen for messages sent through the Java Messaging Service.
-   **Email**: Listen for messages sent to a process model via email. If you select this message type, review the [usage considerations](#email-message-type-considerations) to determine additional configuration requirements.

**Note:**  Changing a message type removes all existing event conditions and mappings. Appian will display the following warning: **Changing the message type will clear all rules and output expressions. Are you sure you want to do this?**

### Create a condition

A condition specifies a message property that Appian uses to filter received messages. When a message is received, the event only executes when all conditions are met. If any of the conditions evaluate to false, the event does not execute. Messages received when the conditions evaluate to false are not retained.

You can create an event condition using a guided experience or by writing an expression.

#### Guided experience

To create a condition using the guided experience:

1.  Go to the **Setup** tab of the **Edit Receive Message Event** dialog.
2.  Under **Event Conditions**, click **New Condition**.
3.  Select a [message property](#message-properties). The message properties available to use in conditions vary depending on the [message type you selected](#select-a-message-type).
4.  Select one of the following operators to evaluate the condition.

    | Operator | Description |
    | --- | --- |
    | \= | equal to |
    | <> | not equal to |
    | < | less than |
    | \> | greater than |
    | <= | less than or equal to |
    | \>= | greater than or equal to |

5.  Select a [process variable](process-model-object.html#process-variables) to evaluate the condition, or enter a value to use for matching.
6.  Click **OK** to close the **Edit Receive Message Event** dialog.

#### Create an expression

**Tip:**  Creating expressions to specify the conditions under which an event executes can cause a loss in application performance. We recommend using the [guided experience](#guided-experience) instead when configuring conditions.

Condition expressions must evaluate to true or false.

The message properties available to use in expressions vary depending on the [message type you selected](#select-a-message-type).

To use an expression to define a condition:

1.  In the **Edit Receive Message Event** dialog, go to the **Setup** tab.
2.  Under **Event Conditions**, click **New Expression**. A new row appears, containing a box to specify the expression.
3.  Specify an [expression](Expressions.html) for the condition:
    -   Next to the expression box, click to open the [expression editor](expression-editor.html).
    -   For a [standard message property](#message-properties), enter `msg!properties.` (including the period), then select a message property from the dropdown list.
    -   For a custom message property, enter an expression using the following syntax:

        ```
        1
        msg!properties.<PROPERTY_NAME>
        ```

        where `&lt;PROPERTY_NAME&gt;` is the name of the custom message property. For example, if the incoming message contains a custom property called `CaseId`, you can reference it as:

        ```
        1
        msg!properties.CaseId
        ```

    -   Click **SAVE AND CLOSE**.
4.  Click **OK** to close the **Edit Receive Message Event** dialog.

### Delete a condition

To delete an event condition:

1.  Go to the **Setup** tab of the **Edit Receive Message Event** dialog.
2.  Click the **X** button that corresponds to that row in the **Event Conditions** table.
3.  Click **OK** to close the **Edit Receive Message Event** dialog.

### Create a mapping

You can create mappings that capture data from the received message and store the data in process variables. These mappings make the data accessible throughout the process model and in any process reports you create.

The message properties available to use in mappings vary depending on the [message type you selected](#select-a-message-type).

To create a new mapping:

1.  In the **Edit Receive Message Event** dialog, go to the **Data** tab.
2.  Under **Save Message Content**, click **New Mapping**. A new mapping row appears: ![New_mapping](images/New_mapping.gif)
3.  For **Value**, specify the [message property](#message-properties) to save into a process variable:

    -   Next to the expression box, click to open the [expression editor](expression-editor.html).
    -   For a [standard message property](#message-properties), enter `msg!properties.` (including the period), then select a message property from the dropdown list.
    -   For a custom message property, enter an expression using the following syntax:

        ```
        1
        msg!properties.<PROPERTY_NAME>
        ```

        where `&lt;PROPERTY_NAME&gt;` is the name of the custom message property. For example, if the incoming message contains a custom property called `CaseId`, you can reference it as:

        ```
        1
        msg!properties.CaseId
        ```

    -   Click **SAVE AND CLOSE**.

    **Note:**  When capturing the output of a property sent using an HTML email, use the [stripHtml()](fnc_text_striphtml.html) function to parse the HTML. For example, `striphtml(msg!properties.From)` cleans any HTML tags from the specified message property so that its value can then be stored in a text process variable.

4.  For **Operator**, select an operator to specify how Appian writes the data to the process variable you'll select next.

    The supported operators are dependent on the type of the process variable that you're saving the content into.

    For an [integer](Appian_Data_Types.html#number-integer) or a [decimal](Appian_Data_Types.html#number-decimal) type of process variable, the following operators are supported:

    -   is added to
    -   is subtracted from
    -   is multiplied by
    -   is divided into
    -   is the power to exponentiate
    -   is appended to
    -   is stored as

    For any other type of process variable, the following operators are supported:

    -   is appended to
    -   is stored as
5.  For **Process Variable**, select the process variable where you want to store the message property, or select **New…** to [create a new variable](process-model-object.html#variables-tab) to store the message data.

6.  Click **OK** to close the **Edit Receive Message Event** dialog.

#### Map messages to custom data types

You can use process variables with custom data types to store received message properties. Learn more about [configuring a process variable](process-model-object.html#variables-tab) and [custom data type](Custom_Data_Types.html).

To build an expression that combines each desired message property into the format of the custom data type, you can save message properties from an email message into a process variable with the Email data type by using the following expression in the **Value** field.

`{From:msg!properties.From,Subject:msg!properties.Subject,Body:msg!body}`

If you need to use an expression function on your message properties (such as using the [stripHtml](fnc_text_striphtml.html) function to remove tags from fields in an HTML email) map each property to its own variable and use a [Script Task](Configuring_the_Script_Task.html) to combine the separate properties into a single CDT variable.

#### Map default message properties

Optionally, you can provide a default value for all custom properties that you expect from incoming messages using the [property() function](fnc_scripting_property.html). This function allows you to provide a default value for a property, which is used if the property is missing from the incoming message.

For example, adding the following definition for a mapping:

`property(msg!properties,"Name", "No Name was sent")`

ensures that if the custom property called `Name` does not arrive in the incoming message, it is assigned **No Name was sent** as its value.

#### Map email custom properties

With **Email** message types, key-value pairs are treated as custom properties.

To obtain the value of a key specified in a message, the name of the key should be included in the definition of a mapping. For example, if the key-value pair `[CaseId=222100]` is sent in an email message, you can capture **CaseId** in a receive message event by creating a mapping with the following definition:

`msg!properties.Key`

### Import custom properties

If you have **Editor** or **Administrator** rights for a process model, you can import data mappings that have been configured for other events. Among other uses, this feature allows you to easily connect a Receive Message event with a Send Message event that you have configured in another process model. Alternatively, it allows you to quickly build conditions for executing an event.

To import mappings from a previously configured event:

1.  Open the **Edit Receive Message Event** dialog and right-click the event (which has already been configured to listen for emails using a Receive Message Event). Point to **Triggers** > **Event Name**.
    -   Click the name of the **Receive Message Event** listed. The **Edit Receive Message Event** dialog displays. — or —
    -   Double-click a Receive Message event.
2.  Decide whether to import existing event mappings to build a condition (which restricts the event from acting on every message) or to map data from a received message into process variables.
    -   Click the Setup tab to import an event to be used in building a Receive Message condition — or —
    -   Click the Data tab to import an event to be reused when mapping message data to process variables.
3.  Click the Import Custom Properties button. The Message Properties dialog is displayed.
4.  Browse to the process model that contains the event data you wish to import, and select it. The events configured within that process model appear in the browse window.
5.  Select an event from the list provided. The data mappings from the event are added as conditions on the Setup tab, or as new data mappings on the Data tab.
6.  In each new row, configure the process variables by clicking the variable list and selecting a process variable.

### Store email attachments

Attachments sent within an email message are stored within a [document folder](folder-object.html#document-folders).

To specify the folder used to store email attachments:

1.  In the Process Modeler, click **File** > **Properties**. The **Process Model Properties** dialog displays. By default, the [**General** tab](Process_Node_and_Smart_Service_Properties.html#general-tab) is active.
2.  Click the **Directory** link next to the **Email Attachments Folder** field and browse to the folder you want to designate for any emailed attachments.

## Usage considerations

### General considerations

-   If you add multiple active Receive Message events, it is possible for one message to launch multiple instances of a process. Avoid this problem by creating a Receive Message condition.

-   Receive Message events listen for messages only when they are activated. Moreover, when messages are targeted at an active Receive Message event, the event only executes if all conditions configured for the event are met. Otherwise, the event does not execute and the message is lost.

-   Messages sent to a process that is paused are lost and are not available when the process resumes.

-   In process-to-process messaging, we recommended configuring Receive Message events before Send Message events. Send Message events require a message destination that may not exist until the process model with a Receive Message event is saved and published.

-   If you need to use a message property in a report, you must map it to a [process variable](process-model-object.html#variables-tab).

-   You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

### Email message type considerations

If you're using the **Email** message type, review the following additional considerations.

#### Environment considerations

-   A system administrator must [configure your environment to support email](Mail_Server_Setup.html) and take special care to configure [inbound message routing properly](Sending_an_Email_Message_to_a_Process.html#receiving-an-email-message)

-   Appian Cloud users should review [cloud considerations](Email_on_Appian_Cloud.html#sending-an-email-message-to-a-process-in-appian-cloud) to properly setup incoming message routing.

-   Email messages require that [anonymous user access](Anonymous_User.html) be enabled. Whenever a process is started using an email, the process initiator property (**pp!initiator**) is listed as the Guest user account.

-   The [**Public Events** option](process-model-object.html#general-tab) must be enabed for the process model to allow processes to be started using email.

#### Formatting considerations

-   If you configure a Receive Message event (or a Start Event with a Receive Message trigger) to read values (key-value pairs) from incoming email and map them to new or existing process variables, only those emails that include value pairs in the specified format are processed by the system. All other emails are read from the inbox on the mail server, but processes do not store the information from the email message. Instead, a message states that cancellation of the message will be logged in the appropriate db\_\*.log file.

-   HTML messages sent to Appian in an email should be converted to plain text before saving the message into a process variable. To facilitate this conversion the expression editor includes a function called [stripHtml()](fnc_text_striphtml.html). This function can be used to convert all email messages to plain text before they are captured in process variables. The function is not required, but is recommended in case you need to display the text.

-   When an HTML email is sent with Unicode characters, each character is replaced in the HTML with `&#xxxx;` where `xxxx` is the Unicode value (in decimal) for that character. These characters cannot be handled by the stripHtml() function. In this case, process designers should use the [replace() function](fnc_text_replace.html) in the Expression Editor to replace the Unicode with appropriate characters.

## Message properties

The message type determines which message properties you can use to create event conditions and process variable mappings.

### Process to process

| Property | Expression | Description |
| --- | --- | --- |
|
Body

 |

`msg!body`

 |

Message entered in the text area within the [Configure Send Message Event](Send_Message_Event.html) dialog.

 |
|

OriginProcessID

 |

`msg!properties.OriginProcessID`

 |

The system-assigned process ID for the process from which the message was received.

 |
|

OriginProcessModelID

 |

`msg!properties.OriginProcessModelID`

 |

The system-assigned process model ID for the process model that generated the process from which the received message was sent.

 |
|

UserName

 |

`msg!properties.UserName`

 |

Initiator of the process from which the message was sent.

 |

### External to process

| Property | Expression | Description |
| --- | --- | --- |
|
Body

 |

`msg!body`

 |

The body of the JMS message.

 |
|

OriginIP

 |

`msg!properties.OriginIP`

 |

The IP address of the machine from which the message was received.

 |
|

UserName

 |

`msg!properties.UserName`

 |

The username of the user who sent the JMS message.

 |
|

_Custom property_

 |

`msg!properties.<PROPERTY_NAME>`

 |

The value of the JMS property with the name given as `PROPERTY_NAME`. Only properties that start with numbers or letters are considered valid. Invalid properties are not available.

 |

### Email

**Tip:**  For a number of email message properties, it can be helpful to use the [striphtml()](fnc_text_striphtml.html) function to parse the HTML before writing the property data to a process variable. For example, `striphtml(msg!properties.Bcc)` parses the HTML. This value can then be stored in a Text-type process variable.

| Property | Expression | Description |
| --- | --- | --- |
|
Body

 |

`msg!body`

 |

The body of the email message.

 |
|

AttachmentErrors

 |

`msg!properties.AttachmentErrors`

 |

Any errors that may occur when saving the attachment from an email. The following errors may be recorded.

-   `Message Attachment Not Saved Due To Message Part Of 0 Size: <filename>` - when the attachment cannot be saved because it is empty
-   `Message Attachment Not Saved Due To Exception: <exceptionMessage>` - when the attachment cannot be saved because an error occurred

 |
|

Attachments

 |

`msg!properties.Attachments`

 |

The attachments sent with the email. All attachments, by default, are uploaded to a user-specified folder within [Document Management](folder-and-document-management.html). Selecting this property returns a list of document IDs for all attachments sent with the email.

 |
|

Bcc

 |

`msg!properties.Bcc`

 |

The name and email address of all users who were sent a blind copy (Bcc) of the message.

 |
|

BccEmails

 |

`msg!properties.BccEmails`

 |

The email addresses of all users who were sent a blind copy (Bcc) of the message.

 |
|

BccNames

 |

`msg!properties.BccNames`

 |

The names of all users who were sent a blind copy (cc) of the message.

 |
|

Body

 |

`msg!body`

 |

The body of the email message. If available, the message body with the content type `"text/plain"` will be stored in this property.

 |
|

Bodies

 |

`msg!properties.Bodies`

 |

When a single email message includes additional bodies, these are appended to the `Bodies` property.

-   This property stores this data within a multiple [Text](Appian_Data_Types.html#text) data type.
-   The message type of each additional body is stored in the `BodyTypes` property.
-   Any attachments included in the attached message are saved in the `Attachments` property.
-   When Microsoft Outlook embeds a (.msg file) message within a message, this file is appended to the `Bodies` property and is not treated as an attachment.
    -   The BodyTypes property stored for an embedded message (.msg) is typically `"text/plain"`.

 |
|

BodyContentType

 |

`msg!properties.BodyContentType`

 |

The content type of the message body available in `msg!body`.

 |
|

BodyTypes

 |

`msg!properties.BodyTypes`

 |

This type stores the content types of each message body stored in the `msg!properties.Bodies` property.

-   The index of each content type matches the index of an associated message in the `Bodies` property.

 |
|

Cc

 |

`msg!properties.Cc`

 |

The name and email address of all users who were sent a copy (Cc) of the message.

 |
|

CcEmails

 |

`msg!properties.CcEmails`

 |

The email addresses of all users who were sent a copy (Cc) of the message.

 |
|

CcNames

 |

`msg!properties.CcNames`

 | The names of all users who were sent a copy (Cc) of the message. |
|

From

 |

`msg!properties.From`

 |

The name of the email account and email address from which the message was received.

 |
|

FromEmail

 |

`msg!properties.FromEmail`

 |

The email address from which the message was received.

 |
|

FromName

 |

`msg!properties.FromName`

 |

The name of the sender.

 |
|

Importance

 |

`msg!properties.Importance`

 |

The priority level configured for the email.

 |
|

Key

 |

`msg!properties.Key`

 |

The entire text between the first set of brackets `[]` in the mail subject only (not body), including any equals sign.

 |
|

Recipients

 |

`msg!properties.Recipients`

 |

The name and email addresses of all users to whom the message was sent.

 |
|

RecipientsEmails

 |

`msg!properties.RecipientsEmails`

 |

The email addresses of all users to whom the message was sent.

 |
|

RecipientsNames

 |

`msg!properties.RecipientsNames`

 |

The names of all users to whom the message was sent.

 |
|

Subject

 |

`msg!properties.Subject`

 |

The subject of the email.

 |
|

To

 |

`msg!properties.To`

 |

The name and the email address to which the message was sent.

 |
|

ToEmails

 |

`msg!properties.ToEmails`

 |

All of the email addresses to which the message was sent.

 |
|

ToNames

 |

`msg!properties.ToNames`

 |

The names of the email accounts to which the message was sent.

 |

In addition to these pre-defined properties, you can also enter any property defined in an incoming message directly into an expression. For example, if the incoming message contains a property called `CaseId` you can reference it as:

`msg!properties.CaseId`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...