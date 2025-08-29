---
source_url: https://docs.appian.com/suite/help/25.3/Messaging_Best_Practices.html
original_path: Messaging_Best_Practices.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Messaging Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Use the following recommendations as a guide when designing process models that use [Receive Message](Receive_Message_Event.html) and/or [Send Message](Send_Message_Event.html) events.

## Improving messaging efficiency

### Use conditional filters

There are two simple ways to program whether a given Receive Message event should process a message: by condition or by expression. Conditions are always the most efficient way to process messages. Appian recommends using conditions over expressions in all process designs.

Conditions are combined and evaluated all at once.

-   For example, if two Receive Message events are both changed to use three filters each (from a single filter), the following results are expected:
    -   When the filters use expressions, the evaluation time approximately triples.
    -   When the filters use conditions, the evaluation time remains approximately the same as with a single condition.

Expressions for message filtering are evaluated one-by-one. The use of expression filtering leads to a linear increase in processing time as the number of messages increase.

### Target processes by ID

Targeting specific process instances for messages by their process IDs is much more efficient than sending messages to multiple processes or a process model because only the Receive Message Events for the process ID are scanned, rather than all events in the other processes.

-   As of Appian 6.7, you can configure this through the Send Message Event properties.
-   Prior to this version, this functionality must be configured within Appian as a customization.

### Allow public events

Rights-management for events may not be required if your organization has other safeguards in place to prevent unauthorized JMS messages from being sent to or retrieved from Appian.

If additional security is not required, select the **Public Events** checkbox in the Process Model Properties to make the event public.

-   The Public Events option disables security checking of events sent from outside the process model.

### Avoid cascading messages

Synchronization issues can arise if design assumptions are made regarding the order in which messages are received, as messages at a lower tier of the cascade may, on occasion, be sent and delivered earlier than those in an assumed-to-be higher tier.

Where possible, avoid architectures where messages cascade, such as when the sending and subsequent receipt of a message causes multiple other messages to be sent that may trigger other message events.

These process designs create risks which, unless carefully controlled, can cause an exponential growth in the number of messages in the queue and slow the delivery of messages.

### Avoid message loops

Appian does not recommend passing messages between different processes to send data back and forth in a way that mimics a synchronous protocol.

Messaging is not designed as a synchronous transport component, and there are many race conditions as well as performance implications to using messages in this way.

Best practice dictates that when designing a process, messaging loops should be studiously avoided. In some cases, such designs may be practical only when implemented by an expert in this area, as even extensive testing is unlikely to uncover all possible race conditions and performance issues.

### Minimize the number of listeners

Once a flow reaches a Receive Message Event, the event is activated. Any time an untargeted message is sent, all active Receive Message Events are scanned. Generally, the more Receive Message Events there are listening for messages, the higher the performance penalty.

If your architecture presents more and more listeners as subprocesses are created, consider passing information to subprocesses by reference.

-   This is done by selecting the **Pass as Reference** checkbox for the Input Variable configurations in the Subprocess Activity of the parent process.

See also: [Subprocess Activity](Sub-Process_Activity.html)

Where high numbers of message listeners are unavoidable, ensure that you apply as many of the other best practices listed in this document as possible.

### Pass minimal amounts of data

The amount of data passed within a message can have significant impact on the amount of time taken to process it. This effect becomes more noticeable, as the number of messages increases.

-   Large text strings in particular should be avoided. Keeping messages as small as possible is the best practice.
-   It is difficult to provide adequate controls to ensure that future messages remain small, especially when some of the data is input by users.
-   As a rule of thumb, messages over 100KB are likely to cause significant performance issues.

### Avoid enabling the Activate Message event

The **Activate Message Event** checkbox in the **Receive Message Event Setup** tab allows your process to listen for events for the life of a process. This can negatively impact messaging performance.

If a Receive Message event needs to listen for more than one message, but doesn't need to listen for the entire life of the process, place the Receive Message Event inside a subprocess.

-   Use an exception flow to terminate the subprocess activity when the parent process no longer needs to listen for messages.

## Starting processes with messages

It is possible to configure a Receive Message Event on a Start Event to automatically start a process. However, this technique can produce very high load on the messaging architecture. Instead, it is better to use the [Start Process smart service](Start_Process_Smart_Service.html), which does not produce high load on the messaging architecture.

See [Ways to Start a Process From a Process](Ways_to_Start_a_Process_From_a_Process.html) for a comparison between the Start Process smart service and process messaging.

## Monitoring messaging performance

Review the Process Execution performance log files to monitor messaging performance.

See also: [Monitoring Performance and Usage](Logging.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...