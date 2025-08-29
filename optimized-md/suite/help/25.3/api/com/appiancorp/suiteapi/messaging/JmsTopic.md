---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/JmsTopic.html
original_path: api/com/appiancorp/suiteapi/messaging/JmsTopic.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class JmsTopic

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.messaging.JmsTopic

* * *

public class JmsTopic extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Represents a JMS topic. Also tracks the types of messages that can be sent from Process to that topic.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[JmsTopic](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDisplayName](#getDisplayName\(\))()`

    Gets the display name of the topic (what it is called in the Modeler).

    `[MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")[]`

    `[getMessageTypes](#getMessageTypes\(\))()`

    Gets the message types that can be posted to this topic.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name of the topic (what it is called in JMS).

    `void`

    `[setDisplayName](#setDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName)`

    Sets the display name of the topic (what it is called in the Modeler).

    `void`

    `[setMessageTypes](#setMessageTypes\(com.appiancorp.suiteapi.messaging.MessageType%5B%5D\))([MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")[] messageTypes)`

    Sets the message types that can be posted to this topic.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name of the topic (what it is called in JMS).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### JmsTopic

        public JmsTopic()

-   ## Method Details

    -   ### getDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDisplayName()

        Gets the display name of the topic (what it is called in the Modeler).

        Returns:

        the display name

        See Also:

        -   [`setDisplayName(String)`](#setDisplayName\(java.lang.String\))

    -   ### setDisplayName

        public void setDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") displayName)

        Sets the display name of the topic (what it is called in the Modeler).

        Parameters:

        `displayName` - the display name

        See Also:

        -   [`getDisplayName()`](#getDisplayName\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name of the topic (what it is called in JMS).

        Returns:

        the name

        See Also:

        -   [`setName(String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name of the topic (what it is called in JMS).

        Parameters:

        `name` - the name

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getMessageTypes

        public [MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")\[\] getMessageTypes()

        Gets the message types that can be posted to this topic.

        Returns:

        the message types

        See Also:

        -   [`setMessageTypes(MessageType[])`](#setMessageTypes\(com.appiancorp.suiteapi.messaging.MessageType%5B%5D\))

    -   ### setMessageTypes

        public void setMessageTypes([MessageType](MessageType.html "class in com.appiancorp.suiteapi.messaging")\[\] messageTypes)

        Sets the message types that can be posted to this topic.

        Parameters:

        `messageTypes` - the message types

        See Also:

        -   [`getMessageTypes()`](#getMessageTypes\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`