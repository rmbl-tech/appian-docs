---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/Forum.html
original_path: api/com/appiancorp/suiteapi/forums/Forum.html
version: "25.3"
title: "Class Forum"
page_id: "api/com/appiancorp/suiteapi/forums/Forum"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class Forum

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.forums.Forum

All Implemented Interfaces:

`[GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@ForumDataType](ForumDataType.html "annotation interface in com.appiancorp.suiteapi.forums") [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Forum extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [GlobalId](../common/GlobalId.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Abstraction of a set of threads. Any given thread belongs to one and only one forum. Multiple forums may exist. Traditionally, each forum contains threads related to a single topic. This class manages the properties related to the entire set of threads. It does not directly contain the actual threads.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.Forum)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MESSAGE](#SORT_BY_LAST_MESSAGE)`

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

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Forum](#%3Cinit%3E\(\))()`

    Deprecated.

    Constructs a forum object with all scalar fields set to null and all array fields set to zero-length arrays.

    `[Forum](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Constructs a forum object with a particular name.

    `[Forum](#%3Cinit%3E\(java.lang.String,com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] relateds_)`

    Deprecated.

    Constructs a forum object with a particular name and a set of related objects.

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

    Returns the creator of the forum

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Gets the date the forum was created

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Get the name of this forum.

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRelateds](#getRelateds\(\))()`

    Deprecated.

    Get the array of other first-class objects related to this forum.

    `[RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common")`

    `[getRemoteId](#getRemoteId\(\))()`

    Deprecated.

    Returns the `RemoteId` of this object's instance identifier, `null` if the object is only locally identified.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Deprecated.

    Get the uuid of this forum.

    `boolean`

    `[isAllowAnonymousPosting](#isAllowAnonymousPosting\(\))()`

    Deprecated.

     

    `boolean`

    `[isPublicForum](#isPublicForum\(\))()`

    Deprecated.

     

    `boolean`

    `[isUserSubscribed](#isUserSubscribed\(\))()`

    Deprecated.

     

    `void`

    `[setAllowAnonymousPosting](#setAllowAnonymousPosting\(boolean\))(boolean allowAnonymousPosting_)`

    Deprecated.

     

    `void`

    `[setAllowedActions](#setAllowedActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] allowedActions_)`

    Deprecated.

    Set the actions that the user can do on this object.

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Deprecated.

     

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateCreated_)`

    Deprecated.

     

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets this object's local identifier.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Set the name of this forum.

    `void`

    `[setPublicForum](#setPublicForum\(boolean\))(boolean publicForum_)`

    Deprecated.

     

    `void`

    `[setRelateds](#setRelateds\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] relateds_)`

    Deprecated.

    Set the array of other first-class objects related to this forum.

    `void`

    `[setRemoteId](#setRemoteId\(com.appiancorp.suiteapi.common.RemoteId\))([RemoteId](../common/RemoteId.html "interface in com.appiancorp.suiteapi.common") remoteId_)`

    Deprecated.

    Sets this object's remote identifier.

    `void`

    `[setUserSubscribed](#setUserSubscribed\(boolean\))(boolean subscribed_)`

    Deprecated.

     

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid_)`

    Deprecated.

    Set the uuid of this forum.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

    String useful for debugging purposes.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

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

    -   ### SORT\_BY\_LAST\_MESSAGE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MESSAGE

        Deprecated.

    -   ### SORT\_BY\_MESSAGE\_COUNT\_TODAY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MESSAGE\_COUNT\_TODAY

        Deprecated.

-   ## Constructor Details

    -   ### Forum

        public Forum()

        Deprecated.

        Constructs a forum object with all scalar fields set to null and all array fields set to zero-length arrays.

    -   ### Forum

        public Forum([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Constructs a forum object with a particular name.

        Parameters:

        `name_` - The name.

    -   ### Forum

        public Forum([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] relateds\_)

        Deprecated.

        Constructs a forum object with a particular name and a set of related objects.

        Parameters:

        `name_` - The name.

        `relateds_` - The related objects.

-   ## Method Details

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

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Get the name of this forum.

        Returns:

        The name.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Set the name of this forum.

        Parameters:

        `name_` - The name.

    -   ### getRelateds

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getRelateds()

        Deprecated.

        Get the array of other first-class objects related to this forum.

        Returns:

        Objects identifying the relateds.

    -   ### setRelateds

        public void setRelateds([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] relateds\_)

        Deprecated.

        Set the array of other first-class objects related to this forum.

        Parameters:

        `relateds_` - Objects identifying the relateds.

    -   ### getAllowedActions

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAllowedActions()

        Deprecated.

        Get the actions that the user can do on this object.

        Returns:

        An array of the actions.

    -   ### setAllowedActions

        public void setAllowedActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] allowedActions\_)

        Deprecated.

        Set the actions that the user can do on this object. NOTE: This setter exists only to allow for proper bean conversions when a `Forum` object is returned by the API. It CANNOT be used to update the allowed actions for a `Forum`

        Parameters:

        `allowedActions_` - An array of the actions.

    -   ### isAllowAnonymousPosting

        public boolean isAllowAnonymousPosting()

        Deprecated.

        Returns:

        Returns the boolean allowAnonymousPosting.

    -   ### setAllowAnonymousPosting

        public void setAllowAnonymousPosting(boolean allowAnonymousPosting\_)

        Deprecated.

        Parameters:

        `allowAnonymousPosting_` - The allowAnonymousPosting to set.

    -   ### isPublicForum

        public boolean isPublicForum()

        Deprecated.

        Returns:

        Returns the publicForum.

    -   ### setPublicForum

        public void setPublicForum(boolean publicForum\_)

        Deprecated.

        Parameters:

        `publicForum_` - The publicForum to set.

    -   ### isUserSubscribed

        public boolean isUserSubscribed()

        Deprecated.

        Returns:

        Returns the \_userSubscribed.

    -   ### setUserSubscribed

        public void setUserSubscribed(boolean subscribed\_)

        Deprecated.

        Parameters:

        `subscribed_` - The \_userSubscribed to set.

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        Returns the creator of the forum

        Returns:

        Returns the creator.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Deprecated.

        Parameters:

        `creator_` - The creator to set.

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Gets the date the forum was created

        Returns:

        Returns the date created.

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateCreated\_)

        Deprecated.

        Parameters:

        `dateCreated_` - The date created to set.

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Deprecated.

        Get the uuid of this forum.

        Returns:

        The uuid.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid\_)

        Deprecated.

        Set the uuid of this forum.

        Parameters:

        `uuid_` - The uuid.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        String useful for debugging purposes.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`