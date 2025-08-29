---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/paging/SortInfo.html
original_path: api/com/appiancorp/suiteapi/common/paging/SortInfo.html
version: "25.3"
title: "Class SortInfo"
page_id: "api/com/appiancorp/suiteapi/common/paging/SortInfo"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.paging](package-summary.html)

# Class SortInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.paging.SortInfo

All Implemented Interfaces:

`[ReadOnlySortInfo](ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

@Entity @GwtCompatible public final class SortInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [ReadOnlySortInfo](ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes. This class is used as an argument for functions that sort a data set.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.paging.SortInfo)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ASCENDING_FIELD_NAME](#ASCENDING_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FIELD_FIELD_NAME](#FIELD_FIELD_NAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TABLE_NAME](#TABLE_NAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SortInfo](#%3Cinit%3E\(\))()`

    Should not be used, only exposed for serializers that require a public parameterless constructor.

    `[SortInfo](#%3Cinit%3E\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean ascending)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[asc](#asc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    Convenience method for returning a SortInfo with ascending sort.

    `static [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[desc](#desc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    Convenience method for returning a SortInfo with descending sort.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Returns a boolean value indicating whether the given object is equal to this object.

    `static com.google.common.base.Predicate<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")>`

    `[fieldEqualsPredicate](#fieldEqualsPredicate\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") targetFieldName)`

    Returns a predicate that will return `true` when the [`field`](#getField\(\)) of a [`SortInfo`](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") object equals the given field name.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getField](#getField\(\))()`

    Returns the field to sort by.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `boolean`

    `[isAscending](#isAscending\(\))()`

    Returns a boolean indicating whether sort on [`getField()`](#getField\(\)) should be in ascending or descending order.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `SortInfo`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### FIELD\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FIELD\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.SortInfo.FIELD_FIELD_NAME)

    -   ### ASCENDING\_FIELD\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ASCENDING\_FIELD\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.SortInfo.ASCENDING_FIELD_NAME)

    -   ### TABLE\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TABLE\_NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.SortInfo.TABLE_NAME)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.SortInfo.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### SortInfo

        public SortInfo()

        Should not be used, only exposed for serializers that require a public parameterless constructor.

    -   ### SortInfo

        public SortInfo([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean ascending)

        Parameters:

        `field` - the field to sort by. May be a simple field name, or dot notation to specify a subfield (e.g., "complexField.subField")

        `ascending` - if true, indicates that the sort on [`getField()`](#getField\(\)) should be in ascending order. If false, indicates that the sort should be in descending order.

-   ## Method Details

    -   ### getField

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getField()

        Returns the field to sort by. May be a simple field name, or dot notation to specify a subfield (e.g., "complexField.subField")

        Specified by:

        `[getField](ReadOnlySortInfo.html#getField\(\))` in interface `[ReadOnlySortInfo](ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")`

    -   ### isAscending

        public boolean isAscending()

        Returns a boolean indicating whether sort on [`getField()`](#getField\(\)) should be in ascending or descending order. If true, indicates that the sort should be in ascending order. If false, indicates that the sort should be in descending order.

        Specified by:

        `[isAscending](ReadOnlySortInfo.html#isAscending\(\))` in interface `[ReadOnlySortInfo](ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")`

    -   ### asc

        public static [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") asc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Convenience method for returning a SortInfo with ascending sort.

    -   ### desc

        public static [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") desc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Convenience method for returning a SortInfo with descending sort.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the `SortInfo`

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Returns a hash code value for the object.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        a hash code value for this object

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Returns a boolean value indicating whether the given object is equal to this object.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `obj` - the reference object with which to compare.

        Returns:

        `true` if both objects are equal, otherwise `false`

    -   ### fieldEqualsPredicate

        public static com.google.common.base.Predicate<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> fieldEqualsPredicate([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") targetFieldName)

        Returns a predicate that will return `true` when the [`field`](#getField\(\)) of a [`SortInfo`](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") object equals the given field name.