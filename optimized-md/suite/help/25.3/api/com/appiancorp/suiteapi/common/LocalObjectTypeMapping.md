---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocalObjectTypeMapping.html
original_path: api/com/appiancorp/suiteapi/common/LocalObjectTypeMapping.html
version: "25.3"
title: "Class LocalObjectTypeMapping"
page_id: "api/com/appiancorp/suiteapi/common/LocalObjectTypeMapping"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class LocalObjectTypeMapping

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.LocalObjectTypeMapping

Direct Known Subclasses:

`[ObjectTypeMapping](ObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")`

* * *

public abstract class LocalObjectTypeMapping extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[COLLABORATION_BASE](#COLLABORATION_BASE)`

    `static final int`

    `[DYNAMIC_BASE](#DYNAMIC_BASE)`

    `static final int`

    `[FORUMS_BASE](#FORUMS_BASE)`

    `static final int`

    `[LO_BPM_NODE](#LO_BPM_NODE)`

    Node type.

    `static final int`

    `[LO_BPM_PROCESS](#LO_BPM_PROCESS)`

    Process type.

    `static final int`

    `[LO_BPM_PROCESS_MODEL](#LO_BPM_PROCESS_MODEL)`

    Process model type.

    `static final int`

    `[LO_BPM_TASK](#LO_BPM_TASK)`

    Task type.

    `static final int`

    `[LO_COMMUNITY](#LO_COMMUNITY)`

    Collaboration community type.

    `static final int`

    `[LO_CONTENT](#LO_CONTENT)`

    Content community type.

    `static final int`

    `[LO_DISCUSSION_THREAD](#LO_DISCUSSION_THREAD)`

    Thread type.

    `static final int`

    `[LO_DOCUMENT](#LO_DOCUMENT)`

    Document type.

    `static final int`

    `[LO_EMAIL_ADDRESS](#LO_EMAIL_ADDRESS)`

    Email Address type.

    `static final int`

    `[LO_FOLDER](#LO_FOLDER)`

    Collaboration folder type.

    `static final int`

    `[LO_FORUM](#LO_FORUM)`

    Forum type.

    `static final int`

    `[LO_GROUP](#LO_GROUP)`

    Group type.

    `static final int`

    `[LO_GROUP_TYPE](#LO_GROUP_TYPE)`

    Group Type type.

    `static final int`

    `[LO_KNOWLEDGE_CENTER](#LO_KNOWLEDGE_CENTER)`

    Knowledge center type.

    `static final int`

    `[LO_LINK](#LO_LINK)`

    Link type.

    `static final int`

    `[LO_MESSAGE](#LO_MESSAGE)`

    Message type.

    `static final int`

    `[LO_PAGE](#LO_PAGE)`

    Page type.

    `static final int`

    `[LO_PORTLET](#LO_PORTLET)`

    Portlet type.

    `static final int`

    `[LO_USER](#LO_USER)`

    User type.

    `static final int`

    `[PERSONALIZATION_BASE](#PERSONALIZATION_BASE)`

    `static final int`

    `[PORTAL_BASE](#PORTAL_BASE)`

    `static final int`

    `[PROCESS_BASE](#PROCESS_BASE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_BPM_NODE](#TYPE_BPM_NODE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_BPM_PROCESS](#TYPE_BPM_PROCESS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_BPM_PROCESS_MODEL](#TYPE_BPM_PROCESS_MODEL)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_BPM_TASK](#TYPE_BPM_TASK)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_COMMUNITY](#TYPE_COMMUNITY)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_CONTENT](#TYPE_CONTENT)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_DISCUSSION_THREAD](#TYPE_DISCUSSION_THREAD)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_DOCUMENT](#TYPE_DOCUMENT)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_EMAIL_ADDRESS](#TYPE_EMAIL_ADDRESS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_FOLDER](#TYPE_FOLDER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_FORUM](#TYPE_FORUM)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_GROUP](#TYPE_GROUP)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_GROUP_TYPE](#TYPE_GROUP_TYPE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_KNOWLEDGE_CENTER](#TYPE_KNOWLEDGE_CENTER)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_LINK](#TYPE_LINK)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_MESSAGE](#TYPE_MESSAGE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_PAGE](#TYPE_PAGE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_PORTLET](#TYPE_PORTLET)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[TYPE_USER](#TYPE_USER)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocalObjectTypeMapping](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTypeName](#getTypeName\(int\))(int type)`

    Returns the name of a [`LocalObject`](LocalObject.html "class in com.appiancorp.suiteapi.common") type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[map](#map\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o_)`

    Returns the type constant for a given Appian object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### PORTAL\_BASE

        public static final int PORTAL\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.PORTAL_BASE)

    -   ### PERSONALIZATION\_BASE

        public static final int PERSONALIZATION\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.PERSONALIZATION_BASE)

    -   ### FORUMS\_BASE

        public static final int FORUMS\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.FORUMS_BASE)

    -   ### COLLABORATION\_BASE

        public static final int COLLABORATION\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.COLLABORATION_BASE)

    -   ### DYNAMIC\_BASE

        public static final int DYNAMIC\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.DYNAMIC_BASE)

    -   ### PROCESS\_BASE

        public static final int PROCESS\_BASE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.PROCESS_BASE)

    -   ### LO\_PORTLET

        public static final int LO\_PORTLET

        Portlet type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_PORTLET)

    -   ### TYPE\_PORTLET

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_PORTLET

    -   ### LO\_PAGE

        public static final int LO\_PAGE

        Page type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_PAGE)

    -   ### TYPE\_PAGE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_PAGE

    -   ### LO\_LINK

        public static final int LO\_LINK

        Link type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_LINK)

    -   ### TYPE\_LINK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_LINK

    -   ### LO\_GROUP

        public static final int LO\_GROUP

        Group type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_GROUP)

    -   ### TYPE\_GROUP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_GROUP

    -   ### LO\_USER

        public static final int LO\_USER

        User type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_USER)

    -   ### TYPE\_USER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_USER

    -   ### LO\_GROUP\_TYPE

        public static final int LO\_GROUP\_TYPE

        Group Type type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_GROUP_TYPE)

    -   ### TYPE\_GROUP\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_GROUP\_TYPE

    -   ### LO\_EMAIL\_ADDRESS

        public static final int LO\_EMAIL\_ADDRESS

        Email Address type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_EMAIL_ADDRESS)

    -   ### TYPE\_EMAIL\_ADDRESS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_EMAIL\_ADDRESS

    -   ### LO\_FORUM

        public static final int LO\_FORUM

        Forum type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_FORUM)

    -   ### TYPE\_FORUM

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_FORUM

    -   ### LO\_DISCUSSION\_THREAD

        public static final int LO\_DISCUSSION\_THREAD

        Thread type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_DISCUSSION_THREAD)

    -   ### TYPE\_DISCUSSION\_THREAD

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_DISCUSSION\_THREAD

    -   ### LO\_MESSAGE

        public static final int LO\_MESSAGE

        Message type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_MESSAGE)

    -   ### TYPE\_MESSAGE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_MESSAGE

    -   ### LO\_DOCUMENT

        public static final int LO\_DOCUMENT

        Document type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_DOCUMENT)

    -   ### TYPE\_DOCUMENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_DOCUMENT

    -   ### LO\_FOLDER

        public static final int LO\_FOLDER

        Collaboration folder type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_FOLDER)

    -   ### TYPE\_FOLDER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_FOLDER

    -   ### LO\_KNOWLEDGE\_CENTER

        public static final int LO\_KNOWLEDGE\_CENTER

        Knowledge center type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_KNOWLEDGE_CENTER)

    -   ### TYPE\_KNOWLEDGE\_CENTER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_KNOWLEDGE\_CENTER

    -   ### LO\_COMMUNITY

        public static final int LO\_COMMUNITY

        Collaboration community type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_COMMUNITY)

    -   ### TYPE\_COMMUNITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_COMMUNITY

    -   ### LO\_CONTENT

        public static final int LO\_CONTENT

        Content community type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_CONTENT)

    -   ### TYPE\_CONTENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_CONTENT

    -   ### LO\_BPM\_PROCESS\_MODEL

        public static final int LO\_BPM\_PROCESS\_MODEL

        Process model type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_BPM_PROCESS_MODEL)

    -   ### TYPE\_BPM\_PROCESS\_MODEL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_BPM\_PROCESS\_MODEL

    -   ### LO\_BPM\_PROCESS

        public static final int LO\_BPM\_PROCESS

        Process type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_BPM_PROCESS)

    -   ### TYPE\_BPM\_PROCESS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_BPM\_PROCESS

    -   ### LO\_BPM\_TASK

        public static final int LO\_BPM\_TASK

        Task type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_BPM_TASK)

    -   ### TYPE\_BPM\_TASK

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_BPM\_TASK

    -   ### LO\_BPM\_NODE

        public static final int LO\_BPM\_NODE

        Node type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.LocalObjectTypeMapping.LO_BPM_NODE)

    -   ### TYPE\_BPM\_NODE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") TYPE\_BPM\_NODE

-   ## Constructor Details

    -   ### LocalObjectTypeMapping

        public LocalObjectTypeMapping()

-   ## Method Details

    -   ### map

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") map([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o\_)

        Returns the type constant for a given Appian object.

        Parameters:

        `o_` - An Appian object.

        Returns:

        The type constant for the object, which is one of the `TYPE_XXX` constants defined by this class.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If the passed object is not an Appian object.

    -   ### getTypeName

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTypeName(int type)

        Returns the name of a [`LocalObject`](LocalObject.html "class in com.appiancorp.suiteapi.common") type. The name is just a String (not internationalized) that can be displayed in logs; the name value has no special meaning (it's not a key) and can change in the future.

        Parameters:

        `type` - A [`LocalObject type`](LocalObject.html#getType\(\)) (which can be any one of the LO\_XXX constants on this class).

        Returns:

        The name of the given type.