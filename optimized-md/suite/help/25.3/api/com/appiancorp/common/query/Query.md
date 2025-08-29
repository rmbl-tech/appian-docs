---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Query.html
original_path: api/com/appiancorp/common/query/Query.html
version: "25.3"
title: "Class Query<T>"
page_id: "api/com/appiancorp/common/query/Query"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class Query<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.Query<T>

Type Parameters:

`T` - Type of value

Direct Known Subclasses:

`[GenericQuery](GenericQuery.html "class in com.appiancorp.common.query")`, `[TypedValueQuery](TypedValueQuery.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public abstract class Query<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

An object-oriented representation of a query. This supports operations for projection, grouping, aggregation and filtering/searching prior to aggregating data.

If no selection is specified, all columns will be returned.

A Query instance is obtained by using [`QueryBuilder`](QueryBuilder.html "interface in com.appiancorp.common.query"). Query instances are immutable.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    A class for incrementally build a Query.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[Query](#%3Cinit%3E\(\))()`

    `protected`

    `[Query](#%3Cinit%3E\(com.appiancorp.common.query.Projection,com.appiancorp.common.query.Criteria,com.appiancorp.suiteapi.common.paging.PagingInfo\))([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")> projection, [Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `final boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[Column](Column.html "class in com.appiancorp.common.query")`

    `[getColumnIgnoreCase](#getColumnIgnoreCase\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Returns the [`Column`](Column.html "class in com.appiancorp.common.query") associated with the given alias ignoring case sensitivity.

    `abstract [Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[getCriteria](#getCriteria\(\))()`

    Gets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    `[PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[getPagingInfo](#getPagingInfo\(\))()`

    Gets the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

    `[Projection](Projection.html "interface in com.appiancorp.common.query")`

    `[getProjection](#getProjection\(\))()`

    Gets the [`Projection`](Projection.html "interface in com.appiancorp.common.query")

    `final int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[hasSearch](#hasSearch\(\))()`

    Checks if the search criteria is being used

    `boolean`

    `[hasSort](#hasSort\(\))()`

    Checks if sorting information has been provided

    `boolean`

    `[isGrouping](#isGrouping\(\))()`

    Checks if at least once column is being grouped by

    `boolean`

    `[isProjection](#isProjection\(\))()`

    `static com.appian.core.base.ToStringFunction<[Query](Query.html "class in com.appiancorp.common.query")<?>>`

    `[multilineToString](#multilineToString\(int\))(int indent)`

    Returns a multiline string representation of the `Query` by indenting each element with given number of characters.

    `protected abstract void`

    `[setCriteria](#setCriteria\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)`

    Sets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toStringMultiline](#toStringMultiline\(\))()`

    Returns a multiline string representation of the `Query`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Query.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Query.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### Query

        protected Query()

    -   ### Query

        protected Query([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")\> projection, [Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)

-   ## Method Details

    -   ### getProjection

        public [Projection](Projection.html "interface in com.appiancorp.common.query") getProjection()

        Gets the [`Projection`](Projection.html "interface in com.appiancorp.common.query")

        Returns:

        the [`Projection`](Projection.html "interface in com.appiancorp.common.query")

    -   ### getPagingInfo

        public [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") getPagingInfo()

        Gets the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

        Returns:

        the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

    -   ### getCriteria

        public abstract [Criteria](Criteria.html "interface in com.appiancorp.common.query") getCriteria()

        Gets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    -   ### setCriteria

        protected abstract void setCriteria([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)

        Sets the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Parameters:

        `criteria` - the [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    -   ### hasSort

        public boolean hasSort()

        Checks if sorting information has been provided

        Returns:

        true if the Query has sorting information; false otherwise

    -   ### isGrouping

        public boolean isGrouping()

        Checks if at least once column is being grouped by

        Returns:

        true if there is at least one column which is grouped by; false otherwise

    -   ### hasSearch

        public boolean hasSearch()

        Checks if the search criteria is being used

        Returns:

        true if the search criteria is being used; false otherwise

    -   ### getColumnIgnoreCase

        public [Column](Column.html "class in com.appiancorp.common.query") getColumnIgnoreCase([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Returns the [`Column`](Column.html "class in com.appiancorp.common.query") associated with the given alias ignoring case sensitivity.

        Parameters:

        `alias` -

        Returns:

        the [`Column`](Column.html "class in com.appiancorp.common.query") associated with the given alias

    -   ### isProjection

        public boolean isProjection()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toStringMultiline

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toStringMultiline()

        Returns a multiline string representation of the `Query`

        Returns:

        a multiline string representation of the `Query`

    -   ### multilineToString

        public static com.appian.core.base.ToStringFunction<[Query](Query.html "class in com.appiancorp.common.query")<?>> multilineToString(int indent)

        Returns a multiline string representation of the `Query` by indenting each element with given number of characters.

        Parameters:

        `indent` - number of characters to indent

        Returns:

        a `ToStringFunction` for `Query`

    -   ### hashCode

        public final int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public final boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`