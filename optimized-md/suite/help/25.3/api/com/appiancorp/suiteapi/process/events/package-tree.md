---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/package-tree.html
original_path: api/com/appiancorp/suiteapi/process/events/package-tree.html
version: "25.3"
title: "Hierarchy For Package com.appiancorp.suiteapi.process.events"
page_id: "api/com/appiancorp/suiteapi/process/events/package-tree"
section: "Class Hierarchy"
tags: ["appian","docs","v25.3"]
---


# Hierarchy For Package com.appiancorp.suiteapi.process.events

Package Hierarchies:

-   [All Packages](../../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.kougar.mapper.returns.AbstractReturnConverter (implements com.appiancorp.kougar.mapper.returns.ReturnConverter)
        -   com.appiancorp.suiteapi.process.events.[EventProducerReturnConverter](EventProducerReturnConverter.html "class in com.appiancorp.suiteapi.process.events") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
        -   com.appiancorp.suiteapi.process.events.[EventReturnConverter](EventReturnConverter.html "class in com.appiancorp.suiteapi.process.events") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
        -   com.appiancorp.suiteapi.process.events.[EventTriggerReturnConverter](EventTriggerReturnConverter.html "class in com.appiancorp.suiteapi.process.events") (implements com.appiancorp.kougar.mapper.returns.FromDictionary, com.appiancorp.kougar.mapper.returns.FromNull)
    -   com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events") (implements com.appiancorp.suiteapi.common.[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.suiteapi.process.events.[EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")
            -   com.appiancorp.suiteapi.process.events.[MessageEventProducer](MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")
            -   com.appiancorp.suiteapi.process.events.[TerminateEventProducer](TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")
        -   com.appiancorp.suiteapi.process.events.[EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")
            -   com.appiancorp.suiteapi.process.events.[MessageEventTrigger](MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")
            -   com.appiancorp.suiteapi.process.events.[RuleEventTrigger](RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")
            -   com.appiancorp.suiteapi.process.events.[TimerEventTrigger](TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")
    -   com.appiancorp.suiteapi.process.events.[Rule](Rule.html "class in com.appiancorp.suiteapi.process.events") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))