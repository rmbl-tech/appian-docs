---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/package-summary.html
original_path: api/com/appiancorp/suiteapi/messaging/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.messaging"
page_id: "api/com/appiancorp/suiteapi/messaging/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.messaging

* * *

package com.appiancorp.suiteapi.messaging

Provides functionality for sending and receiving messages inside the Appian messaging framework.

The most important classes are [`InternalMessage`](InternalMessage.html "class in com.appiancorp.suiteapi.messaging") and [`InternalJmsMessage`](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging"), which represent messages that have been sent and received, and [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging"), which allows you to easily publish messages to JMS and Appian Process.

-   All Classes and InterfacesInterfacesClassesExceptions

    Class

    Description

    [InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")

    Represents a JMS message to be posted to JMS.

    [InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

    Represents a message in the Appian Messaging framework.

    [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

    [JmsConfiguration](JmsConfiguration.html "class in com.appiancorp.suiteapi.messaging")

    Contains the values pulled out of jms.properties.

    [JmsConnectionFactory](JmsConnectionFactory.html "interface in com.appiancorp.suiteapi.messaging")

    Factory for obtaining JMS connections from the JMS connection pool.

    [JmsTopic](JmsTopic.html "class in com.appiancorp.suiteapi.messaging")

    Represents a JMS topic.

    [Mapping](Mapping.html "class in com.appiancorp.suiteapi.messaging")

    Represents a name-value mapping.

    [MappingReturnConverter](MappingReturnConverter.html "class in com.appiancorp.suiteapi.messaging")

    Deprecated. 

    [MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")

    Represents a schema for a header property of a JMS message.

    [MessagePublisherService](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging")

    Service to publish messages to Appian Process and JMS.

    [MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")

    Represents a schema (standard set of properties used for a particular purpose) for a JMS message.

    [MessagingProperties](MessagingProperties.html "class in com.appiancorp.suiteapi.messaging")

    Contains the values pulled out of messaging.properties.