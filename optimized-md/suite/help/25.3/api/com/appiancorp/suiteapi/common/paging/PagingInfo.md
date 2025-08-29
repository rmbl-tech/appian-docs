---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/paging/PagingInfo.html
original_path: api/com/appiancorp/suiteapi/common/paging/PagingInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.paging](package-summary.html)

# Class PagingInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.paging.PagingInfo

* * *

@GwtCompatible public class PagingInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes. This class is used as an argument for functions that allow pagination of a data set, and contains parameters for paging and sorting. Validated in `CanonicalGridFieldValidator.java`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `static final int`

    `[UNLIMITED_BATCH_SIZE](#UNLIMITED_BATCH_SIZE)`

    Use as the value for the `batchSize` parameter when the full result set should be returned.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PagingInfo](#%3Cinit%3E\(\))()`

    Should not be used, only exposed for serializers that require a public parameterless constructor.

    `[PagingInfo](#%3Cinit%3E\(int,int\))(int startIndex, int batchSize)`

    `[PagingInfo](#%3Cinit%3E\(int,int,com.appiancorp.suiteapi.common.paging.SortInfo\))(int startIndex, int batchSize, [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") sort)`

    `[PagingInfo](#%3Cinit%3E\(int,int,com.appiancorp.suiteapi.common.paging.SortInfo...\))(int startIndex, int batchSize, [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sort)`

    `[PagingInfo](#%3Cinit%3E\(int,int,java.lang.String,boolean\))(int startIndex, int batchSize, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortField, boolean ascending)`

    `[PagingInfo](#%3Cinit%3E\(int,int,java.util.List\))(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sort)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Returns a boolean value indicating whether the given object is equal to this object.

    `int`

    `[getBatchSize](#getBatchSize\(\))()`

    Returns the number of results to return in one page.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")>`

    `[getSort](#getSort\(\))()`

    Returns the sort expressions that are applied before paging.

    `int`

    `[getStartIndex](#getStartIndex\(\))()`

    Returns the index from which to start paging.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `boolean`

    `[hasSort](#hasSort\(\))()`

    Returns `true` if a sort is configured (ie, [`getSort()`](#getSort\(\)) is non-empty).

    `[PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[toOneBased](#toOneBased\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `PagingInfo`

    `[PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[toZeroBased](#toZeroBased\(\))()`

    The caller assumes that this `pagingInfo` has a 1-based start index.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.PagingInfo.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

    -   ### UNLIMITED\_BATCH\_SIZE

        public static final int UNLIMITED\_BATCH\_SIZE

        Use as the value for the `batchSize` parameter when the full result set should be returned. Use sparingly, as it may have a performance impact on large data sets.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.paging.PagingInfo.UNLIMITED_BATCH_SIZE)

-   ## Constructor Details

    -   ### PagingInfo

        public PagingInfo()

        Should not be used, only exposed for serializers that require a public parameterless constructor.

    -   ### PagingInfo

        public PagingInfo(int startIndex, int batchSize)

        Parameters:

        `startIndex` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

    -   ### PagingInfo

        public PagingInfo(int startIndex, int batchSize, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sort)

        Parameters:

        `startIndex` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        `sort` - the sort expressions to apply before paging.

    -   ### PagingInfo

        public PagingInfo(int startIndex, int batchSize, [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sort)

        Parameters:

        `startIndex` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        `sort` - the sort expressions to apply before paging.

    -   ### PagingInfo

        public PagingInfo(int startIndex, int batchSize, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortField, boolean ascending)

        Parameters:

        `startIndex` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        `sort` - the sort expressions to apply before paging.

        `sortField` - the field to sort by. May be a simple field name, or dot notation to specify a subfield (e.g., "complexField.subField")

        `ascending` - if true, indicates that the sort on `sortField` should be in ascending order. If false, indicates that the sort should be in descending order.

    -   ### PagingInfo

        public PagingInfo(int startIndex, int batchSize, [SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging") sort)

        Parameters:

        `startIndex` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        `sort` - the sort expression to apply before paging.

-   ## Method Details

    -   ### getStartIndex

        public int getStartIndex()

        Returns the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

    -   ### getBatchSize

        public int getBatchSize()

        Returns the number of results to return in one page. If negative, the full result set should be returned.

    -   ### getSort

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> getSort()

        Returns the sort expressions that are applied before paging.

    -   ### hasSort

        public boolean hasSort()

        Returns `true` if a sort is configured (ie, [`getSort()`](#getSort\(\)) is non-empty).

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the `PagingInfo`

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toZeroBased

        public [PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") toZeroBased()

        The caller assumes that this `pagingInfo` has a 1-based start index. This returns a new PagingInfo with the startIndex decremented by 1 to be zero-based. No validation is performed to ensure that this `pagingInfo` was actually one- based.

    -   ### toOneBased

        public [PagingInfo](PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") toOneBased()

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

        `o_` - the reference object with which to compare.

        Returns:

        `true` if both objects are equal, otherwise `false`