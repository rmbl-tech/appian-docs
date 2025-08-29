---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilderTools.Order.html
original_path: api/com/appiancorp/common/query/QueryBuilderTools.Order.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class QueryBuilderTools.Order

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.QueryBuilderTools.Order

Direct Known Subclasses:

`[GenericQuery.GenericBuilder.Order](GenericQuery.GenericBuilder.Order.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder.Order](TypedValueQuery.TypedValueBuilder.Order.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

* * *

public static class QueryBuilderTools.Order extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes. This class helps to construct a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") according to the desired order.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Order](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[asc](#asc\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") a)`

    Apply an ascending order to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[asc](#asc\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") a)`

    Apply an ascending order to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[asc](#asc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    Apply an ascending order to the given field name or column alias name

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[desc](#desc\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") a)`

    Apply a descending order to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[desc](#desc\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") a)`

    Apply a descending order to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")`

    `[desc](#desc\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    Apply a descending order to the given field name or column alias name

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Order

        public Order()

-   ## Method Details

    -   ### asc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") asc([Column](Column.html "class in com.appiancorp.common.query") a)

        Apply an ascending order to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `a` - [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing ascending order

    -   ### desc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") desc([Column](Column.html "class in com.appiancorp.common.query") a)

        Apply a descending order to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `a` - [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing descending order

    -   ### asc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") asc([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") a)

        Apply an ascending order to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `a` - [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing ascending order

    -   ### desc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") desc([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") a)

        Apply a descending order to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `a` - [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing descending order

    -   ### asc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") asc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

        Apply an ascending order to the given field name or column alias name

        Parameters:

        `c` - [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing ascending order

    -   ### desc

        public static [SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") desc([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

        Apply a descending order to the given field name or column alias name

        Parameters:

        `c` - [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Returns:

        a [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") representing descending order