---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/ForumSummary.html
original_path: api/com/appiancorp/suiteapi/forums/ForumSummary.html
version: "25.3"
title: "Class ForumSummary"
page_id: "api/com/appiancorp/suiteapi/forums/ForumSummary"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class ForumSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.ForumSummary

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ForumSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Summarizes a forum and the current activity within it.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.ForumSummary)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MESSAGE_TIME](#SORT_BY_LAST_MESSAGE_TIME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MESSAGE_COUNT](#SORT_BY_MESSAGE_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MESSAGE_COUNT_TODAY](#SORT_BY_MESSAGE_COUNT_TODAY)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_RELATEDS](#SORT_BY_RELATEDS)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_REMOTE_ID](#SORT_BY_REMOTE_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_REPLICATED](#SORT_BY_REPLICATED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_THREAD_COUNT](#SORT_BY_THREAD_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_NO_SORT](#SORT_NO_SORT)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ForumSummary](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAllowedActions](#getAllowedActions\(\))()`

    Deprecated.

    Get the actions that the user can do on this object.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getForumId](#getForumId\(\))()`

    Deprecated.

    Get the `GlobalId` of the forum being summarized.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

     

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")`

    `[getLastMessage](#getLastMessage\(\))()`

    Deprecated.

     

    `int`

    `[getMessageCount](#getMessageCount\(\))()`

    Deprecated.

    Get the count of messages currently in the sumamrized forum.

    `int`

    `[getMessageCountToday](#getMessageCountToday\(\))()`

    Deprecated.

    Get the count of messages posted within the last 24 hours in the summarized forum.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMostRecentThreadSubject](#getMostRecentThreadSubject\(\))()`

    Deprecated.

    Get the subject of the root message of the most recently modified thread in the forum.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Get the name of the summarized forum.

    `int`

    `[getThreadCount](#getThreadCount\(\))()`

    Deprecated.

     

    `void`

    `[setAllowedActions](#setAllowedActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedActions_)`

    Deprecated.

    Set the actions that the user can do on this object.

    `void`

    `[setForumId](#setForumId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") id_)`

    Deprecated.

    Set the `GlobalId` of the forum being summarized.

    `void`

    `[setLastMessage](#setLastMessage\(com.appiancorp.suiteapi.forums.Message\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") lastMessage_)`

    Deprecated.

     

    `void`

    `[setMessageCount](#setMessageCount\(int\))(int messages_)`

    Deprecated.

    Set the count of messages currently in the summarized forum.

    `void`

    `[setMessageCountToday](#setMessageCountToday\(int\))(int messagesToday_)`

    Deprecated.

    Set the count of messages posted within the last 24 hours in the summarized forum.

    `void`

    `[setMostRecentThreadSubject](#setMostRecentThreadSubject\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mostRecentThreadSubject_)`

    Deprecated.

    Set the subject of the root message of the most recently modified thread in the forum.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Set the name of the summarized forum.

    `void`

    `[setThreadCount](#setThreadCount\(int\))(int threadCount_)`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

    -   ### SORT\_BY\_REPLICATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_REPLICATED

        Deprecated.

    -   ### SORT\_BY\_RELATEDS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_RELATEDS

        Deprecated.

    -   ### SORT\_BY\_REMOTE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_REMOTE\_ID

        Deprecated.

    -   ### SORT\_BY\_THREAD\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_THREAD\_COUNT

        Deprecated.

    -   ### SORT\_BY\_MESSAGE\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MESSAGE\_COUNT

        Deprecated.

    -   ### SORT\_BY\_LAST\_MESSAGE\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MESSAGE\_TIME

        Deprecated.

    -   ### SORT\_BY\_MESSAGE\_COUNT\_TODAY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MESSAGE\_COUNT\_TODAY

        Deprecated.

    -   ### SORT\_NO\_SORT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_NO\_SORT

        Deprecated.

-   ## Constructor Details

    -   ### ForumSummary

        public ForumSummary()

        Deprecated.

-   ## Method Details

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Get the name of the summarized forum.

        Returns:

        The name.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Set the name of the summarized forum.

        Parameters:

        `name_` - The name.

    -   ### getMessageCount

        public int getMessageCount()

        Deprecated.

        Get the count of messages currently in the sumamrized forum.

        Returns:

        The count.

    -   ### setMessageCount

        public void setMessageCount(int messages\_)

        Deprecated.

        Set the count of messages currently in the summarized forum.

        Parameters:

        `messages_` - The count.

    -   ### getMessageCountToday

        public int getMessageCountToday()

        Deprecated.

        Get the count of messages posted within the last 24 hours in the summarized forum.

        Returns:

        The count.

    -   ### setMessageCountToday

        public void setMessageCountToday(int messagesToday\_)

        Deprecated.

        Set the count of messages posted within the last 24 hours in the summarized forum.

        Parameters:

        `messagesToday_` - The count.

    -   ### getMostRecentThreadSubject

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMostRecentThreadSubject()

        Deprecated.

        Get the subject of the root message of the most recently modified thread in the forum.

        Returns:

        The subject.

    -   ### setMostRecentThreadSubject

        public void setMostRecentThreadSubject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") mostRecentThreadSubject\_)

        Deprecated.

        Set the subject of the root message of the most recently modified thread in the forum.

        Parameters:

        `mostRecentThreadSubject_` - The subject.

    -   ### getForumId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getForumId()

        Deprecated.

        Get the `GlobalId` of the forum being summarized.

        Returns:

        The `GlobalId`.

    -   ### setForumId

        public void setForumId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") id\_)

        Deprecated.

        Set the `GlobalId` of the forum being summarized.

        Parameters:

        `id_` -

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns:

        Returns the Id of the Forum

    -   ### getAllowedActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedActions()

        Deprecated.

        Get the actions that the user can do on this object.

        Returns:

        An array of the actions.

    -   ### setAllowedActions

        public void setAllowedActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedActions\_)

        Deprecated.

        Set the actions that the user can do on this object. NOTE: This setter exists only to allow for proper bean conversions when a `ForumSummary` object is returned by the API. It CANNOT be used to update the allowed actions for a `ForumSummary`

        Parameters:

        `allowedActions_` - An array of the actions.

    -   ### getThreadCount

        public int getThreadCount()

        Deprecated.

        Returns:

        Returns the threadCount.

    -   ### setThreadCount

        public void setThreadCount(int threadCount\_)

        Deprecated.

        Parameters:

        `threadCount_` - The threadCount to set.

    -   ### getLastMessage

        public [Message](Message.html "class in com.appiancorp.suiteapi.forums") getLastMessage()

        Deprecated.

        Returns:

        Returns the \_lastMessage.

    -   ### setLastMessage

        public void setLastMessage([Message](Message.html "class in com.appiancorp.suiteapi.forums") lastMessage\_)

        Deprecated.

        Parameters:

        `lastMessage_` - The \_lastMessage to set.