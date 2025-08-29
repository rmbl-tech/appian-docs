---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericLogicalExpression.html
original_path: api/com/appiancorp/common/query/GenericLogicalExpression.html
version: "25.3"
title: "Class GenericLogicalExpression"
page_id: "api/com/appiancorp/common/query/GenericLogicalExpression"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class GenericLogicalExpression

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

com.appiancorp.common.query.GenericLogicalExpression

All Implemented Interfaces:

`[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

* * *

@GwtCompatible public final class GenericLogicalExpression extends [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

This class represents a logical expression combining multiple filters in a query.

An instance can only be obtained by using the helper class [`GenericQuery.GenericBuilder.LogicalOp`](GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")

    `[LOCAL_PART](LogicalExpression.html#LOCAL_PART), [QNAME](LogicalExpression.html#QNAME), [XML_ROOT_ELEMENT](LogicalExpression.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[GenericLogicalExpression](#%3Cinit%3E\(com.appiancorp.common.query.LogicalOperator,com.appiancorp.common.query.Criteria...\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)`

    Constructs a new `GenericLogicalExpression`

    `protected`

    `[GenericLogicalExpression](#%3Cinit%3E\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Constructs a new `GenericLogicalExpression`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[copy](#copy\(\))()`

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")>`

    `[getConditions](#getConditions\(\))()`

    Returns the list of conditions

    `protected void`

    `[setConditions](#setConditions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Sets the list of conditions

    ### Methods inherited from class com.appiancorp.common.query.[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")

    `[equals](LogicalExpression.html#equals\(java.lang.Object\)), [getOperator](LogicalExpression.html#getOperator\(\)), [hashCode](LogicalExpression.html#hashCode\(\)), [toString](LogicalExpression.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GenericLogicalExpression

        protected GenericLogicalExpression([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)

        Constructs a new `GenericLogicalExpression`

        Parameters:

        `operator` - a logical operation type define by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

        `conditions` - an array of conditions

    -   ### GenericLogicalExpression

        protected GenericLogicalExpression([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Constructs a new `GenericLogicalExpression`

        Parameters:

        `operator` - a logical operation type define by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

        `conditions` - a list of conditions

-   ## Method Details

    -   ### getConditions

        public [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> getConditions()

        Description copied from class: `[LogicalExpression](LogicalExpression.html#getConditions\(\))`

        Returns the list of conditions

        Specified by:

        `[getConditions](LogicalExpression.html#getConditions\(\))` in class `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Returns:

        the list of conditions

    -   ### setConditions

        protected void setConditions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Description copied from class: `[LogicalExpression](LogicalExpression.html#setConditions\(java.util.List\))`

        Sets the list of conditions

        Specified by:

        `[setConditions](LogicalExpression.html#setConditions\(java.util.List\))` in class `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Parameters:

        `conditions` - a list of conditions

    -   ### copy

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") copy()