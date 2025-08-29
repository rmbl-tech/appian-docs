---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html
original_path: api/com/appiancorp/suiteapi/messaging/JmsConnectionFactory.html
version: "25.3"
title: "Interface JmsConnectionFactory"
page_id: "api/com/appiancorp/suiteapi/messaging/JmsConnectionFactory"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Interface JmsConnectionFactory

* * *

public interface JmsConnectionFactory

Factory for obtaining JMS connections from the JMS connection pool. The connection pool can be configured in jms.properties and jndi.properties. This interface supports both old TopicConnection and new Connection based access. The TopicConnection based access has been deprecated in favor of Connection based methods, which are capable of working with both Topics and Queues.

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[closeAllConnections](#closeAllConnections\(\))()`

    Closes all connections in the connection pool.

    `javax.jms.Destination`

    `[createQueue](#createQueue\(int,java.lang.String\))(int acknowledgementMode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queueName)`

    Creates or obtains a JMS `Queue`.

    `javax.jms.Destination`

    `[createQueue](#createQueue\(javax.jms.Session,java.lang.String\))(javax.jms.Session topicSession_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queueName)`

    Creates or obtains a JMS `Queue` on the session provided.

    `javax.jms.Destination`

    `[createTopic](#createTopic\(int,java.lang.String\))(int acknowledgementMode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName_)`

    Creates or obtains a JMS `Topic`.

    `javax.jms.Destination`

    `[createTopic](#createTopic\(javax.jms.Session,java.lang.String\))(javax.jms.Session topicSession_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName_)`

    Creates or obtains a JMS `Topic` on the session provided.

    `javax.jms.Connection`

    `[createUnpooledConnection](#createUnpooledConnection\(\))()`

    Creates a new unpooled `Connection`.

    `javax.jms.Connection`

    `[getConnection](#getConnection\(\))()`

    Gets a `Connection` from the pool.

    `javax.jms.TopicPublisher`

    `[getPublisher](#getPublisher\(javax.jms.TopicSession,javax.jms.Topic\))(javax.jms.TopicSession topicSession_, javax.jms.Topic topic_)`

    Deprecated.

    Use instead session.createProducer(destination);

    `javax.jms.Session`

    `[getSession](#getSession\(int\))(int acknowledgementMode_)`

    Gets a JMS `Session`.

    `javax.jms.Session`

    `[getSession](#getSession\(javax.jms.Connection,int\))(javax.jms.Connection connection_, int acknowledgementMode_)`

    Gets a JMS `TopicSession` from the connection passed in.

    `javax.jms.TopicSubscriber`

    `[getSubscriber](#getSubscriber\(javax.jms.TopicSession,javax.jms.Topic,java.lang.String\))(javax.jms.TopicSession topicSession_, javax.jms.Topic topic_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") durableSubscriberName_)`

    Deprecated.

    Use instead session.createDurableSubscriber(topic,durableSubscriberName)

    `javax.jms.Topic`

    `[getTopic](#getTopic\(int,java.lang.String\))(int acknowledgementMode_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName_)`

    Deprecated.

    use createTopic instead for Connection based rather than TopicConnection based JMS.

    `javax.jms.Topic`

    `[getTopic](#getTopic\(javax.jms.TopicSession,java.lang.String\))(javax.jms.TopicSession topicSession_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName_)`

    Deprecated.

    use createTopic instead for Connection based rather than TopicConnection based JMS.

    `javax.jms.TopicConnection`

    `[getTopicConnection](#getTopicConnection\(\))()`

    Deprecated.

    use getConnection instead.

    `javax.jms.TopicSession`

    `[getTopicSession](#getTopicSession\(int\))(int acknowledgementMode_)`

    Deprecated.

    Use getSession instead.

    `javax.jms.TopicSession`

    `[getTopicSession](#getTopicSession\(javax.jms.TopicConnection,int\))(javax.jms.TopicConnection topicConnection_, int acknowledgementMode_)`

    Deprecated.

    Use getSession instead.

-   ## Method Details

    -   ### getTopicConnection

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.TopicConnection getTopicConnection() throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Deprecated.

        use getConnection instead.

        Gets a JMS `TopicConnection` from the pool.

        Returns:

        the `TopicConnection`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")`

        `javax.jms.JMSException`

    -   ### createUnpooledConnection

        javax.jms.Connection createUnpooledConnection() throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Creates a new unpooled `Connection`.

        Returns:

        the `Connection`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")`

        `javax.jms.JMSException`

    -   ### getConnection

        javax.jms.Connection getConnection() throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Gets a `Connection` from the pool.

        Returns:

        the `Connection`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")`

        `javax.jms.JMSException`

    -   ### getTopicSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.TopicSession getTopicSession(int acknowledgementMode\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Deprecated.

        Use getSession instead.

        Gets a JMS `TopicSession`. Automatically pulls a `TopicConnection` from the pool and creates a session on that connection.

        Parameters:

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        Returns:

        the `TopicSession`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### getSession

        javax.jms.Session getSession(int acknowledgementMode\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Gets a JMS `Session`. Automatically pulls a `Connection` from the pool and creates a session on that connection.

        Parameters:

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        Returns:

        the `TopicSession`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### getTopicSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.TopicSession getTopicSession(javax.jms.TopicConnection topicConnection\_, int acknowledgementMode\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Deprecated.

        Use getSession instead.

        Gets a JMS `TopicSession` from the connection passed in.

        Parameters:

        `topicConnection_` - the connection to get the session on

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        Returns:

        the `TopicSession`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### getSession

        javax.jms.Session getSession(javax.jms.Connection connection\_, int acknowledgementMode\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Gets a JMS `TopicSession` from the connection passed in.

        Parameters:

        `connection_` - the connection to get the session on

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        Returns:

        the `TopicSession`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### getTopic

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.Topic getTopic(int acknowledgementMode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException

        Deprecated.

        use createTopic instead for Connection based rather than TopicConnection based JMS.

        Gets a JMS `Topic`. Automatically obtains a session.

        Parameters:

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        `topicName_` - the name of the topic. When the topic is obtained, the system-wide topic prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Topic`

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### createTopic

        javax.jms.Destination createTopic(int acknowledgementMode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName\_) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Creates or obtains a JMS `Topic`. Automatically obtains a session.

        Parameters:

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        `topicName_` - the name of the topic. When the topic is obtained, the system-wide topic prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Topic` as Destination; if the JNDI name already exists, any type of Destination may be returned

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")` - if the topic cannot be created

    -   ### createQueue

        javax.jms.Destination createQueue(int acknowledgementMode\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queueName) throws [NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming"), javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Creates or obtains a JMS `Queue`. Automatically obtains a session.

        Parameters:

        `acknowledgementMode_` - the JMS acknowledgement mode to use for subscribers. Can be `Session.AUTO_ACKNOWLEDGE`, `Session.CLIENT_ACKNOWLEDGE`, or `Session.DUPS_OK_ACKNOWLEDGE`

        `queueName` - the name of the queue. When the queue is obtained, the system-wide queue prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Queue` as Destination; if the JNDI name already exists, any type of Destination may be returned

        Throws:

        `[NamingException](https://docs.oracle.com/en/java/javase/17/docs/api/java.naming/javax/naming/NamingException.html "class or interface in javax.naming")` - if the JMS `TopicConnectionFactory` cannot be found

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")` - if the queue cannot be created

    -   ### getTopic

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.Topic getTopic(javax.jms.TopicSession topicSession\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName\_) throws javax.jms.JMSException

        Deprecated.

        use createTopic instead for Connection based rather than TopicConnection based JMS.

        Gets a JMS `Topic` on the session provided.

        Parameters:

        `topicSession_` - the session to obtain the topic on

        `topicName_` - the name of the topic. When the topic is obtained, the system-wide topic prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Topic`

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### createTopic

        javax.jms.Destination createTopic(javax.jms.Session topicSession\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topicName\_) throws javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Creates or obtains a JMS `Topic` on the session provided.

        Parameters:

        `topicSession_` - the session to obtain the topic on

        `topicName_` - the name of the topic. When the topic is obtained, the system-wide topic prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Topic` as Destination; if the JNDI name already exists, any type of Destination may be returned

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

    -   ### createQueue

        javax.jms.Destination createQueue(javax.jms.Session topicSession\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queueName) throws javax.jms.JMSException, [InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")

        Creates or obtains a JMS `Queue` on the session provided.

        Parameters:

        `topicSession_` - the session to obtain the topic on

        `queueName` - the name of the queue. When the queue is obtained, the system-wide queue prefix (located in jms.properties) will automatically be appended

        Returns:

        the `Queue` as Destination; if the JNDI name already exists, any type of Destination may be returned

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

        `[InvalidJMSDestinationException](InvalidJMSDestinationException.html "class in com.appiancorp.suiteapi.messaging")`

    -   ### getSubscriber

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.TopicSubscriber getSubscriber(javax.jms.TopicSession topicSession\_, javax.jms.Topic topic\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") durableSubscriberName\_) throws javax.jms.JMSException

        Deprecated.

        Use instead session.createDurableSubscriber(topic,durableSubscriberName)

        Gets a durable JMS `TopicSubscriber` on the session provided to the topic provided. Sets the durable subscriber name to the name provided.

        Parameters:

        `topicSession_` - the session to get the subscriber on

        `topic_` - the topic to get the subscriber to

        `durableSubscriberName_` - the name of the durable subscriber

        Returns:

        the `TopicSubscriber`

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### getPublisher

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") javax.jms.TopicPublisher getPublisher(javax.jms.TopicSession topicSession\_, javax.jms.Topic topic\_) throws javax.jms.JMSException

        Deprecated.

        Use instead session.createProducer(destination);

        Gets a non-durable JMS `TopicSubscriber` on the session provided to the topic provided. Sets the durable subscriber name to the name provided.

        Parameters:

        `topicSession_` - the session to get the subscriber on

        `topic_` - the topic to get the subscriber to

        Returns:

        the `TopicSubscriber`

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider

    -   ### closeAllConnections

        void closeAllConnections() throws javax.jms.JMSException

        Closes all connections in the connection pool. This closes both Connections and TopicConnections.

        Throws:

        `javax.jms.JMSException` - if anything goes wrong with the JMS provider