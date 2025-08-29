---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/MessagePublisherService.html
original_path: api/com/appiancorp/suiteapi/messaging/MessagePublisherService.html
version: "25.3"
title: "Interface MessagePublisherService"
page_id: "api/com/appiancorp/suiteapi/messaging/MessagePublisherService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Interface MessagePublisherService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface MessagePublisherService extends com.appiancorp.services.ContextSensitiveService

Service to publish messages to Appian Process and JMS. To get a new instance of this service, call [`ServiceLocator.getMessagePublisherService(ServiceContext)`](../common/ServiceLocator.html#getMessagePublisherService\(com.appiancorp.services.ServiceContext\))

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `void`

    `[publishMessage](#publishMessage\(com.appiancorp.suiteapi.messaging.InternalJmsMessage\))([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") message_)`

    Publishes a message to the appropriate location.

    `void`

    `[publishMessages](#publishMessages\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")[] messages_)`

    Publishes the provided messages to the appropriate locations.

    `void`

    `[publishMessagesToJms](#publishMessagesToJms\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")[] messages_)`

    Publish the provided messages to JMS.

    `void`

    `[publishMessagesToProcess](#publishMessagesToProcess\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\))([InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")[] messages_)`

    Publishes the provided internal messages to Process.

    `void`

    `[publishMessageToJms](#publishMessageToJms\(com.appiancorp.suiteapi.messaging.InternalJmsMessage\))([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") message_)`

    Publishes the message to JMS.

    `void`

    `[publishMessageToProcess](#publishMessageToProcess\(com.appiancorp.suiteapi.messaging.InternalMessage\))([InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging") message_)`

    Publishes an internal message to Process (ignores the JMS topic) on the message.

    `void`

    `[publishMessageToProcess](#publishMessageToProcess\(jakarta.mail.Message\))(jakarta.mail.Message message_)`

    Publishes a mail message to Process (ignores the JMS topic) on the message.

    `void`

    `[publishMessageToProcess](#publishMessageToProcess\(javax.jms.Message\))(javax.jms.Message message_)`

    Publishes a JMS message to Process (ignores the JMS topic) on the message.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Method Details

    -   ### publishMessage

        void publishMessage([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") message\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes a message to the appropriate location.

        Parameters:

        `message_` - the message to publish

        Throws:

        `javax.jms.JMSException` - if there is a problem involving the JMS provider

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if there is a JNDI problem

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

        See Also:

        -   [`publishMessages(InternalJmsMessage[])`](#publishMessages\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))

    -   ### publishMessages

        void publishMessages([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")\[\] messages\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes the provided messages to the appropriate locations. If the topic for a message is the configured Process topic (in jms.properties), that message is sent to [`publishMessagesToProcess(com.appiancorp.suiteapi.messaging.InternalMessage[])`](#publishMessagesToProcess\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)), otherwise it is sent to [`publishMessagesToJms(com.appiancorp.suiteapi.messaging.InternalJmsMessage[])`](#publishMessagesToJms\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))

        Parameters:

        `messages_` - the messages to publish

        Throws:

        `javax.jms.JMSException` - if there is a problem involving the JMS provider

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if there is a JNDI problem

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

    -   ### publishMessageToProcess

        void publishMessageToProcess([InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging") message\_) throws [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes an internal message to Process (ignores the JMS topic) on the message.

        Parameters:

        `message_` - the message to publish to process

        Throws:

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

        See Also:

        -   [`publishMessages(InternalJmsMessage[])`](#publishMessages\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))

    -   ### publishMessageToProcess

        void publishMessageToProcess(javax.jms.Message message\_) throws javax.jms.JMSException, com.appiancorp.messaging.ProcessRouteMissingException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes a JMS message to Process (ignores the JMS topic) on the message.

        Parameters:

        `message_` - the message to publish to process

        Throws:

        `javax.jms.JMSException`

        `com.appiancorp.messaging.ProcessRouteMissingException`

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

        See Also:

        -   `#publishMessages(Message[])`

    -   ### publishMessageToProcess

        void publishMessageToProcess(jakarta.mail.Message message\_) throws jakarta.mail.MessagingException, com.appiancorp.messaging.ProcessRouteMissingException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes a mail message to Process (ignores the JMS topic) on the message.

        Parameters:

        `message_` - the message to publish to process

        Throws:

        `jakarta.mail.MessagingException`

        `com.appiancorp.messaging.ProcessRouteMissingException`

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

        See Also:

        -   [`publishMessages(Mail[])`](#publishMessages\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))

    -   ### publishMessagesToProcess

        void publishMessagesToProcess([InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")\[\] messages\_) throws [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes the provided internal messages to Process. Currently, this sends the messages directly to the appropriate Process servers. For each message, if the message has any process model or event destinations, it is sent to all of the process destination servers (Process Design and all Process Execution servers). If the message only has process destinations, it is only sent to that process.

        Parameters:

        `messages_` - the messages to publish

        Throws:

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

    -   ### publishMessageToJms

        void publishMessageToJms([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") message\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publishes the message to JMS.

        Parameters:

        `message_` - the message to publish

        Throws:

        `javax.jms.JMSException` - if there is a problem involving the JMS provider

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if there is a JNDI problem

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

        See Also:

        -   [`publishMessagesToJms(InternalJmsMessage[])`](#publishMessagesToJms\(com.appiancorp.suiteapi.messaging.InternalJmsMessage%5B%5D\))

    -   ### publishMessagesToJms

        void publishMessagesToJms([InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")\[\] messages\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Publish the provided messages to JMS. The topic that it publishes to is the topic specified by [`InternalJmsMessage.getTopic()`](InternalJmsMessage.html#getTopic\(\)).

        Parameters:

        `messages_` - the messages to publish

        Throws:

        `javax.jms.JMSException` - if there is a problem involving the JMS provider

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if there is a JNDI problem

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`