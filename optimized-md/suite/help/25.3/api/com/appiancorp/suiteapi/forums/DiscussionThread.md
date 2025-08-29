---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/DiscussionThread.html
original_path: api/com/appiancorp/suiteapi/forums/DiscussionThread.html
version: "25.3"
title: "Class DiscussionThread"
page_id: "api/com/appiancorp/suiteapi/forums/DiscussionThread"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class DiscussionThread

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.DiscussionThread

All Implemented Interfaces:

`[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@DiscussionThreadDataType](DiscussionThreadDataType.html "annotation interface in com.appiancorp.suiteapi.forums") [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class DiscussionThread extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Abstraction of a set of messages where one message is the root and all other messages are replies. Replies are descendants of the root. This class manages the properties related to the entire set of messages. It does not directly contain the actual messages.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.DiscussionThread)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_MODIFIED](#SORT_BY_DATE_MODIFIED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MESSAGE_COUNT](#SORT_BY_MESSAGE_COUNT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ROOT_MESSAGE_ID](#SORT_BY_ROOT_MESSAGE_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SPONSORED](#SORT_BY_SPONSORED)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DiscussionThread](#%3Cinit%3E\(\))()`

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

    Get the user name of the user who created this thread by posting the first message.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Get the date-time when this thread was created.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateModified](#getDateModified\(\))()`

    Deprecated.

    Get this date-time when this thread was last modified.

    `[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`

    `[getForumId](#getForumId\(\))()`

    Deprecated.

    Get the `GlobalId` of the forum to which this thread belongs.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `[RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRemoteId](#getRemoteId\(\))()`

    Deprecated.

    Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

    `[Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[]`

    `[getResources](#getResources\(\))()`

    Deprecated.

    Get the resources attached to a thread.

    `boolean`

    `[isSponsored](#isSponsored\(\))()`

    Deprecated.

    Determine whether this thread is sponsored.

    `void`

    `[setAllowedActions](#setAllowedActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedActions_)`

    Deprecated.

    Set the actions that the user can do on this object.

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Deprecated.

    Set the user name of the user who created this thread by posting the first message.

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Deprecated.

    Set the date-time when this thread was created.

    `void`

    `[setDateModified](#setDateModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time_)`

    Deprecated.

    Set this date-time when this thread was last modified.

    `void`

    `[setForumId](#setForumId\(com.appiancorp.suiteapi.common.GlobalId\))([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId_)`

    Deprecated.

    Set the `GlobalId` of the forum to which this thread belongs.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets this object's local identifier.

    `void`

    `[setRemoteId](#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))([RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common") remoteId_)`

    Deprecated.

    Sets this object's remote identifier.

    `void`

    `[setResources](#setResources\(com.appiancorp.suiteapi.forums.Attachment%5B%5D\))([Attachment](Attachment.html "class in com.appiancorp.suiteapi.forums")[] attachments_)`

    Deprecated.

    Set the resources attached to a thread.

    `void`

    `[setSponsored](#setSponsored\(boolean\))(boolean sponsored_)`

    Deprecated.

    Set whether this thread is sponsored.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_ROOT\_MESSAGE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ROOT\_MESSAGE\_ID

        Deprecated.

    -   ### SORT\_BY\_MESSAGE\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MESSAGE\_COUNT

        Deprecated.

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

    -   ### SORT\_BY\_SPONSORED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SPONSORED

        Deprecated.

    -   ### SORT\_BY\_DATE\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_MODIFIED

        Deprecated.

-   ## Constructor Details

    -   ### DiscussionThread

        public DiscussionThread()

        Deprecated.

-   ## Method Details

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        Get the user name of the user who created this thread by posting the first message.

        Returns:

        The user name.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Deprecated.

        Set the user name of the user who created this thread by posting the first message.

        Parameters:

        `creator_` - The user name.

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Get the date-time when this thread was created.

        Returns:

        The timestamp.

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Deprecated.

        Set the date-time when this thread was created.

        Parameters:

        `time_` - The timestamp

    -   ### getDateModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateModified()

        Deprecated.

        Get this date-time when this thread was last modified.

        Returns:

        The timestamp.

    -   ### setDateModified

        public void setDateModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") time\_)

        Deprecated.

        Set this date-time when this thread was last modified.

        Parameters:

        `time_` - The timestamp.

    -   ### getForumId

        public [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") getForumId()

        Deprecated.

        Get the `GlobalId` of the forum to which this thread belongs.

        Returns:

        The `GlobalId`.

    -   ### setForumId

        public void setForumId([GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common") forumId\_)

        Deprecated.

        Set the `GlobalId` of the forum to which this thread belongs.

        Parameters:

        `forumId_` -

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

    -   ### isSponsored

        public boolean isSponsored()

        Deprecated.

        Determine whether this thread is sponsored.

        Returns:

        `true` if the thread is sponsored, `false` if not.

    -   ### setSponsored

        public void setSponsored(boolean sponsored\_)

        Deprecated.

        Set whether this thread is sponsored.

        Parameters:

        `sponsored_` - `true` if the thread should be sponsored, `false` if not.

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

    -   ### getAllowedActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedActions()

        Deprecated.

        Get the actions that the user can do on this object.

        Returns:

        An array of the actions.

    -   ### setAllowedActions

        public void setAllowedActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedActions\_)

        Deprecated.

        Set the actions that the user can do on this object. NOTE: This setter exists only to allow for proper bean conversions when a `DiscussionThread` object is returned by the API. It CANNOT be used to update the allowed actions for a `DiscussionThread`

        Parameters:

        `allowedActions_` - An array of the actions.