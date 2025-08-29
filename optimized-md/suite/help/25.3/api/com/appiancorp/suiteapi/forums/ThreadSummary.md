---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/ThreadSummary.html
original_path: api/com/appiancorp/suiteapi/forums/ThreadSummary.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class ThreadSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.ThreadSummary

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ThreadSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Summarizes a thread and the current activity within it.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.ThreadSummary)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ANONYMOUS_CREATOR](#SORT_BY_ANONYMOUS_CREATOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FORUM_NAME](#SORT_BY_FORUM_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MESSAGE_TIME](#SORT_BY_LAST_MESSAGE_TIME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MODIFIED](#SORT_BY_LAST_MODIFIED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MESSAGE_COUNT](#SORT_BY_MESSAGE_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ROOT_SUBJECT](#SORT_BY_ROOT_SUBJECT)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ThreadSummary](#%3Cinit%3E\(\))()`

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

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Deprecated.

    Get the user name of the creator of the thread.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getForumId](#getForumId\(\))()`

    Deprecated.

    Get the `GlobalId` of the forum which contains this thread.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getForumName](#getForumName\(\))()`

    Deprecated.

    Get the name of the forum which contains this thread.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

     

    `[Message](Message.html "class in com.appiancorp.suiteapi.forums")`

    `[getLastMessage](#getLastMessage\(\))()`

    Deprecated.

     

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLastModified](#getLastModified\(\))()`

    Deprecated.

    Get the date-time this thread was last modified.

    `int`

    `[getMessageCount](#getMessageCount\(\))()`

    Deprecated.

    Get the count of messages in this thread.

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getResources](#getResources\(\))()`

    Deprecated.

    Get the resources attached to a thread.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRootMessageId](#getRootMessageId\(\))()`

    Deprecated.

    Get the `GlobalId` of the root message in this thread.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRootSubject](#getRootSubject\(\))()`

    Deprecated.

    Get the subject of the root message in this thread.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getThreadId](#getThreadId\(\))()`

    Deprecated.

    Get the `GlobalId` of the thread being summarized.

    `boolean`

    `[isAnonymousCreator](#isAnonymousCreator\(\))()`

    Deprecated.

    Get whether the creator of the thread is anonymous.

    `boolean`

    `[isSponsored](#isSponsored\(\))()`

    Deprecated.

    Checks if the Thread has been sponsored

    `boolean`

    `[isUserSubscribed](#isUserSubscribed\(\))()`

    Deprecated.

     

    `void`

    `[setAllowedActions](#setAllowedActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedActions_)`

    Deprecated.

    Set the actions that the user can do on this object.

    `void`

    `[setAnonymousCreator](#setAnonymousCreator\(boolean\))(boolean anonymous_)`

    Deprecated.

    Set whether the creator of the thread is anonymous.

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Deprecated.

    Set the user name of the creator of the thread.

    `void`

    `[setForumId](#setForumId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId_)`

    Deprecated.

    Set the `GlobalId` of the forum which contains this thread.

    `void`

    `[setForumName](#setForumName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") forumName_)`

    Deprecated.

    Set the name of the forum which contains this thread.

    `void`

    `[setLastMessage](#setLastMessage\(com.appiancorp.suiteapi.forums.Message\))([Message](Message.html "class in com.appiancorp.suiteapi.forums") lastMessage_)`

    Deprecated.

     

    `void`

    `[setLastModified](#setLastModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Deprecated.

    Set the date-time this thread was last modified.

    `void`

    `[setMessageCount](#setMessageCount\(int\))(int messageCount_)`

    Deprecated.

    Set the count of messages in this thread.

    `void`

    `[setResources](#setResources\(com.appiancorp.suiteapi.forums.Attachment%5B%5D\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[] attachments_)`

    Deprecated.

    Set the resources attached to a thread.

    `void`

    `[setRootMessageId](#setRootMessageId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") rootMessageId_)`

    Deprecated.

    Set the `GlobalId` of the root message in this thread.

    `void`

    `[setRootSubject](#setRootSubject\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rootSubject_)`

    Deprecated.

    Set the subject of the root message in this thread.

    `void`

    `[setSponsored](#setSponsored\(boolean\))(boolean sponsored_)`

    Deprecated.

    Sets thread to be sponsored with true or unsponsored with false.

    `void`

    `[setThreadId](#setThreadId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") id_)`

    Deprecated.

    Set the `GlobalId` of the thread being summarized.

    `void`

    `[setUserSubscribed](#setUserSubscribed\(boolean\))(boolean userSubscribed_)`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ANONYMOUS\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ANONYMOUS\_CREATOR

        Deprecated.

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

    -   ### SORT\_BY\_ROOT\_SUBJECT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ROOT\_SUBJECT

        Deprecated.

    -   ### SORT\_BY\_LAST\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MODIFIED

        Deprecated.

    -   ### SORT\_BY\_MESSAGE\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MESSAGE\_COUNT

        Deprecated.

    -   ### SORT\_BY\_FORUM\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FORUM\_NAME

        Deprecated.

    -   ### SORT\_BY\_LAST\_MESSAGE\_TIME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MESSAGE\_TIME

        Deprecated.

-   ## Constructor Details

    -   ### ThreadSummary

        public ThreadSummary()

        Deprecated.

-   ## Method Details

    -   ### getThreadId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getThreadId()

        Deprecated.

        Get the `GlobalId` of the thread being summarized.

        Returns:

        The `GlobalId`.

    -   ### setThreadId

        public void setThreadId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") id\_)

        Deprecated.

        Set the `GlobalId` of the thread being summarized.

        Parameters:

        `id_` -

    -   ### isAnonymousCreator

        public boolean isAnonymousCreator()

        Deprecated.

        Get whether the creator of the thread is anonymous.

        Returns:

        `true` if the creator is anonymous; `false` otherwise.

    -   ### setAnonymousCreator

        public void setAnonymousCreator(boolean anonymous\_)

        Deprecated.

        Set whether the creator of the thread is anonymous.

        Parameters:

        `anonymous_` -

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        Get the user name of the creator of the thread.

        Returns:

        The creator's user name.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Deprecated.

        Set the user name of the creator of the thread.

        Parameters:

        `creator_` -

    -   ### getRootMessageId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getRootMessageId()

        Deprecated.

        Get the `GlobalId` of the root message in this thread.

        Returns:

        The `GlobalId`.

    -   ### setRootMessageId

        public void setRootMessageId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") rootMessageId\_)

        Deprecated.

        Set the `GlobalId` of the root message in this thread.

        Parameters:

        `rootMessageId_` -

    -   ### getRootSubject

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRootSubject()

        Deprecated.

        Get the subject of the root message in this thread.

        Returns:

        The root message's subject.

    -   ### setRootSubject

        public void setRootSubject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rootSubject\_)

        Deprecated.

        Set the subject of the root message in this thread.

        Parameters:

        `rootSubject_` -

    -   ### getLastModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLastModified()

        Deprecated.

        Get the date-time this thread was last modified.

        Returns:

        The date-time.

    -   ### setLastModified

        public void setLastModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Deprecated.

        Set the date-time this thread was last modified.

        Parameters:

        `time_` -

    -   ### getMessageCount

        public int getMessageCount()

        Deprecated.

        Get the count of messages in this thread.

        Returns:

        The number of messages.

    -   ### setMessageCount

        public void setMessageCount(int messageCount\_)

        Deprecated.

        Set the count of messages in this thread.

        Parameters:

        `messageCount_` -

    -   ### getForumId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getForumId()

        Deprecated.

        Get the `GlobalId` of the forum which contains this thread.

        Returns:

        The containing forum's `GlobalId`.

    -   ### setForumId

        public void setForumId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId\_)

        Deprecated.

        Set the `GlobalId` of the forum which contains this thread.

        Parameters:

        `forumId_` -

    -   ### getForumName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getForumName()

        Deprecated.

        Get the name of the forum which contains this thread.

        Returns:

        The forum name.

    -   ### setForumName

        public void setForumName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") forumName\_)

        Deprecated.

        Set the name of the forum which contains this thread.

        Parameters:

        `forumName_` -

    -   ### getAllowedActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedActions()

        Deprecated.

        Get the actions that the user can do on this object.

        Returns:

        An array of the actions.

    -   ### setAllowedActions

        public void setAllowedActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedActions\_)

        Deprecated.

        Set the actions that the user can do on this object. NOTE: This setter exists only to allow for proper bean conversions when a `ThreadSummary` object is returned by the API. It CANNOT be used to update the allowed actions for a `ThreadSummary`

        Parameters:

        `allowedActions_` - An array of the actions.

    -   ### getLastMessage

        public [Message](Message.html "class in com.appiancorp.suiteapi.forums") getLastMessage()

        Deprecated.

        Returns:

        Returns the \_lastMessage in the Thread.

    -   ### setLastMessage

        public void setLastMessage([Message](Message.html "class in com.appiancorp.suiteapi.forums") lastMessage\_)

        Deprecated.

        Parameters:

        `lastMessage_` - The \_lastMessage to set.

    -   ### isSponsored

        public boolean isSponsored()

        Deprecated.

        Checks if the Thread has been sponsored

        Returns:

        Returns the \_sponsored status of the Thread.

    -   ### setSponsored

        public void setSponsored(boolean sponsored\_)

        Deprecated.

        Sets thread to be sponsored with true or unsponsored with false.

        Parameters:

        `sponsored_` - The \_sponsored to set.

    -   ### getResources

        public [Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] getResources()

        Deprecated.

        Get the resources attached to a thread.

        Returns:

        Objects identifying the resources.

    -   ### setResources

        public void setResources([Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")\[\] attachments\_)

        Deprecated.

        Set the resources attached to a thread.

        Parameters:

        `attachments_` - Objects identifying the resources.

    -   ### isUserSubscribed

        public boolean isUserSubscribed()

        Deprecated.

        Returns:

        Returns the userSubscribed.

    -   ### setUserSubscribed

        public void setUserSubscribed(boolean userSubscribed\_)

        Deprecated.

        Parameters:

        `userSubscribed_` - The userSubscribed to set.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns:

        Returns the Id of the Thread