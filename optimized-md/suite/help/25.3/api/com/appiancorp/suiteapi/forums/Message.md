---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/Message.html
original_path: api/com/appiancorp/suiteapi/forums/Message.html
version: "25.3"
title: "Class Message"
page_id: "api/com/appiancorp/suiteapi/forums/Message"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class Message

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.Message

All Implemented Interfaces:

`[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@DiscussionMessageDataType](DiscussionMessageDataType.html "annotation interface in com.appiancorp.suiteapi.forums") [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Message extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

A single message within a discussion.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.Message)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ANONYMOUS_AUTHOR](#SORT_BY_ANONYMOUS_AUTHOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AUTHOR](#SORT_BY_AUTHOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AVERAGE_RATING](#SORT_BY_AVERAGE_RATING)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_BODY_LOCATION](#SORT_BY_BODY_LOCATION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_POSTED](#SORT_BY_DATE_POSTED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DEPTH](#SORT_BY_DEPTH)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_ID](#SORT_BY_PARENT_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_RATING_COUNT](#SORT_BY_RATING_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SUBJECT](#SORT_BY_SUBJECT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_THREAD_ID](#SORT_BY_THREAD_ID)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Message](#%3Cinit%3E\(\))()`

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

    `[getAuthor](#getAuthor\(\))()`

    Deprecated.

    Get the user name of the author of this message.

    `double`

    `[getAverageRating](#getAverageRating\(\))()`

    Deprecated.

    Get the rating of this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBody](#getBody\(\))()`

    Deprecated.

    Get the body of this message.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBodyLocation](#getBodyLocation\(\))()`

    Deprecated.

    Get the location of the body.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDatePosted](#getDatePosted\(\))()`

    Deprecated.

    Get the date-time this message was posted.

    `int`

    `[getDepth](#getDepth\(\))()`

    Deprecated.

    Get the depth of this message.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(\))()`

    Deprecated.

    Get the local id of the message that is the parent to this message.

    `int`

    `[getRatingCount](#getRatingCount\(\))()`

    Deprecated.

    Get the count of ratings that have been submitted for this messaage.

    `[RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRemoteId](#getRemoteId\(\))()`

    Deprecated.

    Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSubject](#getSubject\(\))()`

    Deprecated.

    Get the subject for this message.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getThreadId](#getThreadId\(\))()`

    Deprecated.

    Get the local id of the thread which contains this message.

    `boolean`

    `[isAnonymousAuthor](#isAnonymousAuthor\(\))()`

    Deprecated.

    Determine if the author of this message is anonymous.

    `void`

    `[setAllowedActions](#setAllowedActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedActions_)`

    Deprecated.

    Set the actions that the user can do on this object.

    `void`

    `[setAnonymousAuthor](#setAnonymousAuthor\(boolean\))(boolean anonymous_)`

    Deprecated.

    Set whether the author of this message is anonymous.

    `void`

    `[setAuthor](#setAuthor\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Set the user name of the author of this message.

    `void`

    `[setAverageRating](#setAverageRating\(double\))(double averageRating_)`

    Deprecated.

    Set the rating of this message.

    `void`

    `[setBody](#setBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body_)`

    Deprecated.

    Set the body of this message.

    `void`

    `[setBodyLocation](#setBodyLocation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename_)`

    Deprecated.

    Set the location of the body.

    `void`

    `[setDatePosted](#setDatePosted\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Deprecated.

    Set the date-time this message was posted.

    `void`

    `[setDepth](#setDepth\(int\))(int depth_)`

    Deprecated.

    Set the depth of this message.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets this object's local identifier.

    `void`

    `[setParentId](#setParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId_)`

    Deprecated.

    Set the local id of the message that is the parent to this message.

    `void`

    `[setRatingCount](#setRatingCount\(int\))(int ratingCount_)`

    Deprecated.

    Set the count of ratings that have been submitted for this messaage.

    `void`

    `[setRemoteId](#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))([RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common") remoteId_)`

    Deprecated.

    Sets this object's remote identifier.

    `void`

    `[setSubject](#setSubject\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") subject_)`

    Deprecated.

    Set the subject for this message.

    `void`

    `[setThreadId](#setThreadId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId_)`

    Deprecated.

    Set the local id of the thread which contains this message.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_PARENT\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_ID

        Deprecated.

    -   ### SORT\_BY\_AUTHOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AUTHOR

        Deprecated.

    -   ### SORT\_BY\_DATE\_POSTED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_POSTED

        Deprecated.

    -   ### SORT\_BY\_THREAD\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_THREAD\_ID

        Deprecated.

    -   ### SORT\_BY\_SUBJECT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SUBJECT

        Deprecated.

    -   ### SORT\_BY\_BODY\_LOCATION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_BODY\_LOCATION

        Deprecated.

    -   ### SORT\_BY\_DEPTH

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DEPTH

        Deprecated.

    -   ### SORT\_BY\_AVERAGE\_RATING

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AVERAGE\_RATING

        Deprecated.

    -   ### SORT\_BY\_RATING\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_RATING\_COUNT

        Deprecated.

    -   ### SORT\_BY\_ANONYMOUS\_AUTHOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ANONYMOUS\_AUTHOR

        Deprecated.

-   ## Constructor Details

    -   ### Message

        public Message()

        Deprecated.

-   ## Method Details

    -   ### isAnonymousAuthor

        public boolean isAnonymousAuthor()

        Deprecated.

        Determine if the author of this message is anonymous.

        Returns:

        `true` if anonymous, `false` if not.

    -   ### setAnonymousAuthor

        public void setAnonymousAuthor(boolean anonymous\_)

        Deprecated.

        Set whether the author of this message is anonymous.

        Parameters:

        `anonymous_` -

    -   ### getAuthor

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAuthor()

        Deprecated.

        Get the user name of the author of this message.

        Returns:

        The user name

    -   ### setAuthor

        public void setAuthor([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_)

        Deprecated.

        Set the user name of the author of this message.

        Parameters:

        `author_` - The user name

    -   ### getAverageRating

        public double getAverageRating()

        Deprecated.

        Get the rating of this message.

        Returns:

        The rating.

    -   ### setAverageRating

        public void setAverageRating(double averageRating\_)

        Deprecated.

        Set the rating of this message.

        Parameters:

        `averageRating_` - The rating.

    -   ### getBody

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBody()

        Deprecated.

        Get the body of this message.

        Returns:

        The body.

    -   ### setBody

        public void setBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body\_)

        Deprecated.

        Set the body of this message.

        Parameters:

        `body_` - The body.

    -   ### getDatePosted

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDatePosted()

        Deprecated.

        Get the date-time this message was posted.

        Returns:

        The timestamp.

    -   ### setDatePosted

        public void setDatePosted([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Deprecated.

        Set the date-time this message was posted.

        Parameters:

        `time_` - The timestamp

    -   ### getDepth

        public int getDepth()

        Deprecated.

        Get the depth of this message. The depth is the number of messages above this message in the reply sequence. The depth of the root message in a thread is zero. The depth of direct replies to the root message is one. The depth of replies to direct replies to the root message is two.

        Returns:

        The depth.

    -   ### setDepth

        public void setDepth(int depth\_)

        Deprecated.

        Set the depth of this message. The depth is the number of messages above this message in the reply sequence. The depth of the root message in a thread is zero. The depth of direct replies to the root message is one. The depth of replies to direct replies to the root message is two.

        Parameters:

        `depth_` - The depth.

    -   ### getBodyLocation

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBodyLocation()

        Deprecated.

        Get the location of the body. The location should not be used by clients and may change without warning.

        Returns:

        The lcoation.

    -   ### setBodyLocation

        public void setBodyLocation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filename\_)

        Deprecated.

        Set the location of the body. The location should not be used by clients and may change without warning.

        Parameters:

        `filename_` - The location.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Description copied from interface: `[LocalId](../common/LocalId.html#getId\(\))`

        Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Object's Id

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Description copied from interface: `[LocalId](../common/LocalId.html#setId\(java.lang.Long\))`

        Sets this object's local identifier.

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### getParentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId()

        Deprecated.

        Get the local id of the message that is the parent to this message. A zero indicates that this is a root message.

        Returns:

        The message local id.

    -   ### setParentId

        public void setParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId\_)

        Deprecated.

        Set the local id of the message that is the parent to this message. A zero indicates that this is a root message.

        Parameters:

        `parentId_` - The message local id.

    -   ### getRatingCount

        public int getRatingCount()

        Deprecated.

        Get the count of ratings that have been submitted for this messaage.

        Returns:

        The count.

    -   ### setRatingCount

        public void setRatingCount(int ratingCount\_)

        Deprecated.

        Set the count of ratings that have been submitted for this messaage.

        Parameters:

        `ratingCount_` - The count.

    -   ### getRemoteId

        public [RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common") getRemoteId()

        Deprecated.

        Description copied from interface: `[GlobalId](../common/GlobalId.html#getRemoteId\(\))`

        Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

        Specified by:

        `[getRemoteId](../common/GlobalId.html#getRemoteId\(\))` in interface `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Object's remote Id.

        See Also:

        -   [`GlobalId.setRemoteId(RemoteId)`](../common/GlobalId.html#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))

    -   ### setRemoteId

        public void setRemoteId([RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common") remoteId\_)

        Deprecated.

        Description copied from interface: `[GlobalId](../common/GlobalId.html#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))`

        Sets this object's remote identifier.

        Specified by:

        `[setRemoteId](../common/GlobalId.html#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))` in interface `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `remoteId_` - remove Id to set

        See Also:

        -   [`GlobalId.getRemoteId()`](../common/GlobalId.html#getRemoteId\(\))

    -   ### getSubject

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSubject()

        Deprecated.

        Get the subject for this message.

        Returns:

        The subject.

    -   ### setSubject

        public void setSubject([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") subject\_)

        Deprecated.

        Set the subject for this message.

        Parameters:

        `subject_` - The subject.

    -   ### getThreadId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getThreadId()

        Deprecated.

        Get the local id of the thread which contains this message.

        Returns:

        The thread local id.

    -   ### setThreadId

        public void setThreadId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") threadId\_)

        Deprecated.

        Set the local id of the thread which contains this message.

        Parameters:

        `threadId_` - The thread local id.

    -   ### getAllowedActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedActions()

        Deprecated.

        Get the actions that the user can do on this object.

        Returns:

        An array of the actions.

    -   ### setAllowedActions

        public void setAllowedActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedActions\_)

        Deprecated.

        Set the actions that the user can do on this object. NOTE: This setter exists only to allow for proper bean conversions when a `Message` object is returned by the API. It CANNOT be used to update the allowed actions for a `Message`

        Parameters:

        `allowedActions_` - An array of the actions.