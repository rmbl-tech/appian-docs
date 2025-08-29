---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/JmsConfiguration.html
original_path: api/com/appiancorp/suiteapi/messaging/JmsConfiguration.html
version: "25.3"
title: "Class JmsConfiguration"
page_id: "api/com/appiancorp/suiteapi/messaging/JmsConfiguration"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class JmsConfiguration

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.config.AbstractConfiguration

com.appiancorp.suiteapi.messaging.JmsConfiguration

* * *

public class JmsConfiguration extends com.appiancorp.common.config.AbstractConfiguration

Contains the values pulled out of jms.properties. Also contains the keys that should be used in jms.properties.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EMBEDDED_BROKER_ENABLED_KEY](#EMBEDDED_BROKER_ENABLED_KEY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[JMS_CONNECTION_FACTORY_RESOURCE](#JMS_CONNECTION_FACTORY_RESOURCE)`

    ### Fields inherited from class com.appiancorp.common.config.AbstractConfiguration

    `CUSTOM_PROPERTIES_NAME, DELIMITER, SYS_PROPS_PREFIX`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[JmsConfiguration](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getClientIdPrefix](#getClientIdPrefix\(\))()`

    The prefix to use for auto-generated client IDs.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getClientIds](#getClientIds\(\))()`

    The client IDs to use for connecting to JMS.

    `int`

    `[getClientIdsSize](#getClientIdsSize\(\))()`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getConnectionFactoryNames](#getConnectionFactoryNames\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreateConnectionPassword](#getCreateConnectionPassword\(\))()`

    The password used for the JMS createConnection method.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreateConnectionUsername](#getCreateConnectionUsername\(\))()`

    The username used for the JMS createConnection method.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEmbeddedBrokerUrl](#getEmbeddedBrokerUrl\(\))()`

    The broker URL to use when running an embedded JMS broker

    `int`

    `[getMaxTopicConnections](#getMaxTopicConnections\(\))()`

    The maximum number of topic connections.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getProcessTopic](#getProcessTopic\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getQueuePrefix](#getQueuePrefix\(\))()`

    The queue prefix.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTopicPrefix](#getTopicPrefix\(\))()`

    The topic prefix.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getURL](#getURL\(\))()`

    The java.naming.provider.url to use.

    `boolean`

    `[isEmbeddedBrokerEnabled](#isEmbeddedBrokerEnabled\(\))()`

    Should a local embedded broker be started, if a jms/AppianProcessIntegrationConnectionFactory is also defined default true

    ### Methods inherited from class com.appiancorp.common.config.AbstractConfiguration

    `cacheConfigurationValues, clearCache, getAeHome, getBoolean, getClass, getConfiguration, getDefaultFileRefreshMs, getDouble, getDuration, getFallbackPropertiesConfigurations, getHostAndPort, getHostAndPortSet, getInt, getInteger, getIntegerSet, getKeys, getList, getList, getLong, getNonZeroPositiveInt, getPositiveInt, getPositiveIntIncludingZero, getPositiveLong, getResourceBundleName, getResourceKey, getSet, getSet, getString, getString, getStringIgnoringCache, getVersion, getVersion, init, init, loadCustomProperties, loadCustomPropertiesFile, onReload, setBooleanKeyListener, subset`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### JMS\_CONNECTION\_FACTORY\_RESOURCE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") JMS\_CONNECTION\_FACTORY\_RESOURCE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.JmsConfiguration.JMS_CONNECTION_FACTORY_RESOURCE)

    -   ### EMBEDDED\_BROKER\_ENABLED\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EMBEDDED\_BROKER\_ENABLED\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.JmsConfiguration.EMBEDDED_BROKER_ENABLED_KEY)

-   ## Constructor Details

    -   ### JmsConfiguration

        public JmsConfiguration()

-   ## Method Details

    -   ### getClientIds

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getClientIds()

        The client IDs to use for connecting to JMS. These IDs are represented in a comma-delimited string in the file, and this string is split up into an array of client IDs. Either `CLIENT_IDS_KEY` or both `CLIENT_ID_PREFIX_KEY` and `MAX_CONNECTIONS_KEY` must be populated.

    -   ### getClientIdPrefix

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getClientIdPrefix()

        The prefix to use for auto-generated client IDs. Either `CLIENT_IDS_KEY` or both `CLIENT_ID_PREFIX_KEY` and `MAX_CONNECTIONS_KEY` must be populated.

    -   ### getMaxTopicConnections

        public int getMaxTopicConnections()

        The maximum number of topic connections. Either `CLIENT_IDS_KEY` or both `CLIENT_ID_PREFIX_KEY` and `MAX_CONNECTIONS_KEY` must be populated.

    -   ### getConnectionFactoryNames

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getConnectionFactoryNames()

    -   ### getProcessTopic

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getProcessTopic()

    -   ### getTopicPrefix

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTopicPrefix()

        The topic prefix. This will be prepended to all topic names before sending an [`InternalJmsMessage`](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") to JMS. The topic prefix is often defined by the JMS provider.

    -   ### getQueuePrefix

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getQueuePrefix()

        The queue prefix. This will be prepended to all queue names before sending an [`InternalJmsMessage`](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging") to JMS. The topic prefix is often defined by the JMS provider.

    -   ### getCreateConnectionUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreateConnectionUsername()

        The username used for the JMS createConnection method.

    -   ### getCreateConnectionPassword

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreateConnectionPassword()

        The password used for the JMS createConnection method.

    -   ### getURL

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getURL()

        The java.naming.provider.url to use.

    -   ### getClientIdsSize

        public int getClientIdsSize()

    -   ### getEmbeddedBrokerUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEmbeddedBrokerUrl()

        The broker URL to use when running an embedded JMS broker

    -   ### isEmbeddedBrokerEnabled

        public boolean isEmbeddedBrokerEnabled()

        Should a local embedded broker be started, if a jms/AppianProcessIntegrationConnectionFactory is also defined default true