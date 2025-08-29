---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/Contribution.html
original_path: api/com/appiancorp/suiteapi/portal/Contribution.html
version: "25.3"
title: "Class Contribution"
page_id: "api/com/appiancorp/suiteapi/portal/Contribution"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class Contribution

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.portal.Contribution

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableLocalObject`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[LocalStringId](../common/LocalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")>`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Contribution extends [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common") implements [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

This functionality is no longer supported and will be removed in the next release.

Contains information on a contribution by a user to a part of the application, such as participation in discussion threads, portal page creation, and document uploads.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.Contribution)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[AUTHOR_OFF](#AUTHOR_OFF)`

    Deprecated.

    set if the contribution being reported is not the creation of the thread.

    `static final boolean`

    `[AUTHOR_ON](#AUTHOR_ON)`

    Deprecated.

    set if the contribution being reported is the creation of the thread.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AUTHOR_ON_OFF](#SORT_BY_AUTHOR_ON_OFF)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TIMESTAMP](#SORT_BY_TIMESTAMP)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Deprecated.

     

    ### Fields inherited from class com.appiancorp.suiteapi.common.[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    `[LOG](../common/LocalObject.html#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Contribution](#%3Cinit%3E\(\))()`

    Deprecated.

     

    `[Contribution](#%3Cinit%3E\(java.lang.Integer,java.lang.Long\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

     

    `[Contribution](#%3Cinit%3E\(java.lang.Integer,java.lang.Long,boolean\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, boolean author_)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

    Creates and returns a copy of this object.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimestamp](#getTimestamp\(\))()`

    Deprecated.

     

    `boolean`

    `[isAuthor](#isAuthor\(\))()`

    Deprecated.

    Sets authorship of contribution AUTHOR\_ON if contribution is authoring a new thread AUTHOR\_OFF if contribution is participating in a thread or has nothing to do with threads

    `void`

    `[setAuthor](#setAuthor\(boolean\))(boolean author_)`

    Deprecated.

    Retrieves authorship of Contribution AUTHOR\_ON if contribution is authoring a new thread AUTHOR\_OFF if contribution is participating in a thread or has nothing to do with threads

    `void`

    `[setTimestamp](#setTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp_)`

    Deprecated.

    Sets the time of this contribution

    ### Methods inherited from class com.appiancorp.suiteapi.common.[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    `[buildUserContext](../common/LocalObject.html#buildUserContext\(java.lang.String\)), [compareTo](../common/LocalObject.html#compareTo\(com.appiancorp.suiteapi.common.LocalObject\)), [equals](../common/LocalObject.html#equals\(java.lang.Object\)), [getId](../common/LocalObject.html#getId\(\)), [getObjectTypeMapping](../common/LocalObject.html#getObjectTypeMapping\(\)), [getStringId](../common/LocalObject.html#getStringId\(\)), [getType](../common/LocalObject.html#getType\(\)), [hashCode](../common/LocalObject.html#hashCode\(\)), [isNull](../common/LocalObject.html#isNull\(\)), [setId](../common/LocalObject.html#setId\(java.lang.Long\)), [setObjectTypeMapping](../common/LocalObject.html#setObjectTypeMapping\(com.appiancorp.suiteapi.common.LocalObjectTypeMapping\)), [setStringId](../common/LocalObject.html#setStringId\(java.lang.String\)), [setType](../common/LocalObject.html#setType\(java.lang.Integer\)), [toString](../common/LocalObject.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Deprecated.

    -   ### SORT\_BY\_TIMESTAMP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TIMESTAMP

        Deprecated.

    -   ### SORT\_BY\_AUTHOR\_ON\_OFF

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AUTHOR\_ON\_OFF

        Deprecated.

    -   ### AUTHOR\_ON

        public static final boolean AUTHOR\_ON

        Deprecated.

        set if the contribution being reported is the creation of the thread.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Contribution.AUTHOR_ON)

    -   ### AUTHOR\_OFF

        public static final boolean AUTHOR\_OFF

        Deprecated.

        set if the contribution being reported is not the creation of the thread.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Contribution.AUTHOR_OFF)

-   ## Constructor Details

    -   ### Contribution

        public Contribution()

        Deprecated.

    -   ### Contribution

        public Contribution([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, boolean author\_)

        Deprecated.

    -   ### Contribution

        public Contribution([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Deprecated.

        Creates and returns a copy of this object.

        Specified by:

        `[clone](../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](../common/LocalObject.html#clone\(\))` in class `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

        Returns:

    -   ### getTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimestamp()

        Deprecated.

        Returns:

        The time of this contribution

    -   ### setTimestamp

        public void setTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp\_)

        Deprecated.

        Sets the time of this contribution

        Parameters:

        `timestamp_` - the time of this contribution

    -   ### setAuthor

        public void setAuthor(boolean author\_)

        Deprecated.

        Retrieves authorship of Contribution AUTHOR\_ON if contribution is authoring a new thread AUTHOR\_OFF if contribution is participating in a thread or has nothing to do with threads

        Parameters:

        `author_` - authorship of contribution

    -   ### isAuthor

        public boolean isAuthor()

        Deprecated.

        Sets authorship of contribution AUTHOR\_ON if contribution is authoring a new thread AUTHOR\_OFF if contribution is participating in a thread or has nothing to do with threads

        Returns:

        authorship of contribution