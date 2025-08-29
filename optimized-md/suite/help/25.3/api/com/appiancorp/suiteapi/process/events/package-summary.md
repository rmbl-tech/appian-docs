---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/events/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.process.events

* * *

package com.appiancorp.suiteapi.process.events

Provides event trigger and producer functionality for Appian, which can be used to alter process flow and send and receive messages (including receiving e-mail messages).

The most important classes are [`Event`](Event.html "class in com.appiancorp.suiteapi.process.events"), [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") and [`EventProducer`](EventProducer.html "class in com.appiancorp.suiteapi.process.events"), which represent events (both triggers and producers).

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

-   Classes

    Class

    Description

    [Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    Base class for all events (both [`EventTrigger`](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") and [`EventProducer`](EventProducer.html "class in com.appiancorp.suiteapi.process.events") extend this class).

    [EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

    Represents an event producer (an event that performs an action immediately when it is reached in flow).

    [EventProducerReturnConverter](EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    Deprecated. 

    [EventReturnConverter](EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    Deprecated. 

    [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    Represents an event trigger (an event that waits for something to occur before continuing flow).

    [EventTriggerReturnConverter](EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events")

    Deprecated. 

    [MessageEventProducer](MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")

    Represents a send message event.

    [MessageEventTrigger](MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    Represents a receive message event.

    [Rule](Rule.html "class in com.appiancorp.suiteapi.process.events")

    Represents a single condition in the set of conditions on an event trigger.

    [RuleEventTrigger](RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    Represents the trigger for a rule event.

    [TerminateEventProducer](TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")

    Represents a terminate event producer.

    [TimerEventTrigger](TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    Represents the trigger for a timer event.