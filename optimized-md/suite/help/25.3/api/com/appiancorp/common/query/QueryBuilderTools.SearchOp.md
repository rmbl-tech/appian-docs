---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilderTools.SearchOp.html
original_path: api/com/appiancorp/common/query/QueryBuilderTools.SearchOp.html
version: "25.3"
title: "Class QueryBuilderTools.SearchOp"
page_id: "api/com/appiancorp/common/query/QueryBuilderTools.SearchOp"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class QueryBuilderTools.SearchOp

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.QueryBuilderTools.SearchOp

Direct Known Subclasses:

`[GenericQuery.GenericBuilder.SearchOp](GenericQuery.GenericBuilder.SearchOp.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder.SearchOp](TypedValueQuery.TypedValueBuilder.SearchOp.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

* * *

public static class QueryBuilderTools.SearchOp extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes. Allows specifying a search query.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SearchOp](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Search](Search.html "class in com.appiancorp.common.query")`

    `[searchQuery](#searchQuery\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchQuery)`

    Apply a "search" constraint to the `Query`

    `static [Search](Search.html "class in com.appiancorp.common.query")`

    `[searchQuery](#searchQuery\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchQuery, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SearchOp

        public SearchOp()

-   ## Method Details

    -   ### searchQuery

        public static [Search](Search.html "class in com.appiancorp.common.query") searchQuery([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchQuery)

        Apply a "search" constraint to the `Query`

        Parameters:

        `searchQuery` - a search query

        Returns:

        a [`Search`](Search.html "class in com.appiancorp.common.query") constraint

    -   ### searchQuery

        public static [Search](Search.html "class in com.appiancorp.common.query") searchQuery([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchQuery, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)