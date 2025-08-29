---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/ObjectTypeMapping.html
original_path: api/com/appiancorp/suiteapi/common/ObjectTypeMapping.html
version: "25.3"
title: "Class ObjectTypeMapping"
page_id: "api/com/appiancorp/suiteapi/common/ObjectTypeMapping"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class ObjectTypeMapping

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.ObjectTypeMapping

* * *

@GwtCompatible public class ObjectTypeMapping extends [LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

Enables mapping between Appian type objects and their corresponding type constants. Appian Type objects (also referred to as "first-class" or "Appian" objects) are defined for all top-level data structures specific in the product, such as Forums, Documents, Process Models, etc.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.common.[LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    `[COLLABORATION_BASE](LocalObjectTypeMapping.html#COLLABORATION_BASE), [DYNAMIC_BASE](LocalObjectTypeMapping.html#DYNAMIC_BASE), [FORUMS_BASE](LocalObjectTypeMapping.html#FORUMS_BASE), [LO_BPM_NODE](LocalObjectTypeMapping.html#LO_BPM_NODE), [LO_BPM_PROCESS](LocalObjectTypeMapping.html#LO_BPM_PROCESS), [LO_BPM_PROCESS_MODEL](LocalObjectTypeMapping.html#LO_BPM_PROCESS_MODEL), [LO_BPM_TASK](LocalObjectTypeMapping.html#LO_BPM_TASK), [LO_COMMUNITY](LocalObjectTypeMapping.html#LO_COMMUNITY), [LO_CONTENT](LocalObjectTypeMapping.html#LO_CONTENT), [LO_DISCUSSION_THREAD](LocalObjectTypeMapping.html#LO_DISCUSSION_THREAD), [LO_DOCUMENT](LocalObjectTypeMapping.html#LO_DOCUMENT), [LO_EMAIL_ADDRESS](LocalObjectTypeMapping.html#LO_EMAIL_ADDRESS), [LO_FOLDER](LocalObjectTypeMapping.html#LO_FOLDER), [LO_FORUM](LocalObjectTypeMapping.html#LO_FORUM), [LO_GROUP](LocalObjectTypeMapping.html#LO_GROUP), [LO_GROUP_TYPE](LocalObjectTypeMapping.html#LO_GROUP_TYPE), [LO_KNOWLEDGE_CENTER](LocalObjectTypeMapping.html#LO_KNOWLEDGE_CENTER), [LO_LINK](LocalObjectTypeMapping.html#LO_LINK), [LO_MESSAGE](LocalObjectTypeMapping.html#LO_MESSAGE), [LO_PAGE](LocalObjectTypeMapping.html#LO_PAGE), [LO_PORTLET](LocalObjectTypeMapping.html#LO_PORTLET), [LO_USER](LocalObjectTypeMapping.html#LO_USER), [PERSONALIZATION_BASE](LocalObjectTypeMapping.html#PERSONALIZATION_BASE), [PORTAL_BASE](LocalObjectTypeMapping.html#PORTAL_BASE), [PROCESS_BASE](LocalObjectTypeMapping.html#PROCESS_BASE), [TYPE_BPM_NODE](LocalObjectTypeMapping.html#TYPE_BPM_NODE), [TYPE_BPM_PROCESS](LocalObjectTypeMapping.html#TYPE_BPM_PROCESS), [TYPE_BPM_PROCESS_MODEL](LocalObjectTypeMapping.html#TYPE_BPM_PROCESS_MODEL), [TYPE_BPM_TASK](LocalObjectTypeMapping.html#TYPE_BPM_TASK), [TYPE_COMMUNITY](LocalObjectTypeMapping.html#TYPE_COMMUNITY), [TYPE_CONTENT](LocalObjectTypeMapping.html#TYPE_CONTENT), [TYPE_DISCUSSION_THREAD](LocalObjectTypeMapping.html#TYPE_DISCUSSION_THREAD), [TYPE_DOCUMENT](LocalObjectTypeMapping.html#TYPE_DOCUMENT), [TYPE_EMAIL_ADDRESS](LocalObjectTypeMapping.html#TYPE_EMAIL_ADDRESS), [TYPE_FOLDER](LocalObjectTypeMapping.html#TYPE_FOLDER), [TYPE_FORUM](LocalObjectTypeMapping.html#TYPE_FORUM), [TYPE_GROUP](LocalObjectTypeMapping.html#TYPE_GROUP), [TYPE_GROUP_TYPE](LocalObjectTypeMapping.html#TYPE_GROUP_TYPE), [TYPE_KNOWLEDGE_CENTER](LocalObjectTypeMapping.html#TYPE_KNOWLEDGE_CENTER), [TYPE_LINK](LocalObjectTypeMapping.html#TYPE_LINK), [TYPE_MESSAGE](LocalObjectTypeMapping.html#TYPE_MESSAGE), [TYPE_PAGE](LocalObjectTypeMapping.html#TYPE_PAGE), [TYPE_PORTLET](LocalObjectTypeMapping.html#TYPE_PORTLET), [TYPE_USER](LocalObjectTypeMapping.html#TYPE_USER)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ObjectTypeMapping](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[map](#map\(java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> c)`

    Returns the type constant for a given Appian object Class.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")

    `[getTypeName](LocalObjectTypeMapping.html#getTypeName\(int\)), [map](LocalObjectTypeMapping.html#map\(java.lang.Object\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ObjectTypeMapping

        public ObjectTypeMapping()

-   ## Method Details

    -   ### map

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") map([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<?> c)

        Returns the type constant for a given Appian object Class.

        Parameters:

        `o_` - An Appian object Class.

        Returns:

        The type constant for the object, which is one of the `TYPE_XXX` constants defined by this class.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If the passed object is not an Appian object.