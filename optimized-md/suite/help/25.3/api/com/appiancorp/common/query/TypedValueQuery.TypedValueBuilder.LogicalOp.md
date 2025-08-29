---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.LogicalOp.html
original_path: api/com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.LogicalOp.html
version: "25.3"
title: "Class TypedValueQuery.TypedValueBuilder.LogicalOp"
page_id: "api/com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.LogicalOp"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueQuery.TypedValueBuilder.LogicalOp

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.TypedValueQuery.TypedValueBuilder.LogicalOp

Enclosing class:

[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

* * *

public static final class TypedValueQuery.TypedValueBuilder.LogicalOp extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This class encapsulates the available logical operators which allows to build more complex filters.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LogicalOp](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[and](#and\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[and](#and\(com.appiancorp.common.query.Criteria%5B%5D\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")[] c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[and](#and\(com.appiancorp.common.query.Criteria,com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[and](#and\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[not](#not\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[operation](#operation\(com.appiancorp.common.query.LogicalOperator,com.appiancorp.common.query.Criteria...\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[operation](#operation\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[or](#or\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[or](#or\(com.appiancorp.common.query.Criteria%5B%5D\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")[] c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[or](#or\(com.appiancorp.common.query.Criteria,com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)`

    `static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[or](#or\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> c)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LogicalOp

        public LogicalOp()

-   ## Method Details

    -   ### operation

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> operation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)

    -   ### operation

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> operation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query")\[\] c)

    -   ### and

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> and([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> c)

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1)

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query") c1, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... c)

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query")\[\] c)

    -   ### or

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> or([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> c)

    -   ### not

        public static [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> not([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)