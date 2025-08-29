---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/UserMessageCount.html
original_path: api/com/appiancorp/suiteapi/forums/UserMessageCount.html
version: "25.3"
title: "Class UserMessageCount"
page_id: "api/com/appiancorp/suiteapi/forums/UserMessageCount"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class UserMessageCount

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.UserMessageCount

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class UserMessageCount extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

This bean encapsulates the necessary information for the Discussion Analytics API. It contains a username and a number that represents the number of messages that this user has posted in forums.

See Also:

-   [`DiscussionMetadataCoreService`](DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UserMessageCount](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getMessageCount](#getMessageCount\(\))()`

    Deprecated.

    Returns the number of messages posted by the user retrieved with the `getUsername` method.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    Deprecated.

    Returns the username of the user whose messaged are counted.

    `void`

    `[setMessageCount](#setMessageCount\(int\))(int messageCount)`

    Deprecated.

    Sets the number of messages posted by the user.

    `void`

    `[setUsername](#setUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Deprecated.

    Sets the user.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UserMessageCount

        public UserMessageCount()

        Deprecated.

-   ## Method Details

    -   ### setUsername

        public void setUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Deprecated.

        Sets the user. This method is called by the `DiscussionMetadatCoreService` components when returning the bean and need not be set by the consumer of the bean.

        Parameters:

        `username` - the user whose messaged are counted

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Deprecated.

        Returns the username of the user whose messaged are counted.

        Returns:

        the user's username

    -   ### setMessageCount

        public void setMessageCount(int messageCount)

        Deprecated.

        Sets the number of messages posted by the user. This method is called by the `DiscussionMetadatCoreService` components when returning the bean and need not be set by the consumer of the bean.

        Parameters:

        `messageCount` - number of messages that a user has posted in forums

    -   ### getMessageCount

        public int getMessageCount()

        Deprecated.

        Returns the number of messages posted by the user retrieved with the `getUsername` method. Starting a topic or replying to a topic are considered posts.

        Returns:

        the number of messages that a user has posted in forums