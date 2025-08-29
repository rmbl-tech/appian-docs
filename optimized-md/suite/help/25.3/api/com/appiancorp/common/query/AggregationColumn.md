---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/AggregationColumn.html
original_path: api/com/appiancorp/common/query/AggregationColumn.html
version: "25.3"
title: "Class AggregationColumn"
page_id: "api/com/appiancorp/common/query/AggregationColumn"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class AggregationColumn

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

[com.appiancorp.common.query.Column](Column.html "class in com.appiancorp.common.query")

com.appiancorp.common.query.AggregationColumn

* * *

@GwtCompatible public class AggregationColumn extends [Column](Column.html "class in com.appiancorp.common.query")

Immutable bean representing the column dot notation, alias, visibility (if it's should be shown to the client or not). Along with this it indicates if this function should be grouped by or which aggregation function is applied to this column instead.

This column can either be grouped or aggregated but not both, since they are mutually exclusive.

An instance can only be obtain by using the helper class [`QueryBuilder.Selecting`](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query") or in a more object oriented way by using the helper class [`QueryBuilder.Aggregating`](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[AggregationColumn](#%3Cinit%3E\(com.appiancorp.common.query.AggregationColumn\))([AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") ac)`

    Copy constructor

    `protected`

    `[AggregationColumn](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)`

    Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

    `protected`

    `[AggregationColumn](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean,boolean,com.appiancorp.common.query.AggregationFunction,com.appiancorp.common.query.GroupingFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, boolean isGrouping, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)`

    `protected`

    `[AggregationColumn](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean,com.appiancorp.common.query.AggregationFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)`

    Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

    `protected`

    `[AggregationColumn](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean,com.appiancorp.common.query.AggregationFunction,com.appiancorp.common.query.GroupingFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)`

    Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected boolean`

    `[canEquals](#canEquals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Checks if this instance can compare against the given object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query")`

    `[getFunction](#getFunction\(\))()`

    `com.appiancorp.common.query.GroupingFunction`

    `[getGroupingFunction](#getGroupingFunction\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isGrouping](#isGrouping\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.common.query.[Column](Column.html "class in com.appiancorp.common.query")

    `[appendForToString](Column.html#appendForToString\(java.lang.StringBuilder,boolean\)), [getAliasToFieldPathMap](Column.html#getAliasToFieldPathMap\(com.appiancorp.common.query.Projection\)), [isVisible](Column.html#isVisible\(\))`

    ### Methods inherited from class com.appiancorp.common.query.[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

    `[appendForToString](ColumnAlias.html#appendForToString\(java.lang.StringBuilder,java.lang.String,java.lang.String\)), [getAlias](ColumnAlias.html#getAlias\(\)), [getField](ColumnAlias.html#getField\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.AggregationColumn.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### AggregationColumn

        protected AggregationColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)

        Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

        Parameters:

        `field` - a field name

        `alias` - an alias name

        `visible` - determines if this column will be visible or not.

    -   ### AggregationColumn

        protected AggregationColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)

        Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

        Parameters:

        `field` - a field name

        `alias` - an alias name

        `visible` - determines if this column will be visible or not.

        `function` - the [`AggregationFunction`](AggregationFunction.html "enum class in com.appiancorp.common.query") which will be apply for this column

    -   ### AggregationColumn

        protected AggregationColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)

        Constructs a new `AggregationColumn` which groups by the given field name with the given alias name.

        Parameters:

        `field` - a field name

        `alias` - an alias name

        `visible` - determines if this column will be visible or not.

        `aggregationFunction` - the [`AggregationFunction`](AggregationFunction.html "enum class in com.appiancorp.common.query") which will be applied for this column

        `groupingFunction` - the `GroupingFunction` which will be applied for this column

    -   ### AggregationColumn

        protected AggregationColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, boolean isGrouping, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)

    -   ### AggregationColumn

        public AggregationColumn([AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") ac)

        Copy constructor

        Parameters:

        `ac` - an `AggregationColumn`

-   ## Method Details

    -   ### isGrouping

        public boolean isGrouping()

    -   ### getFunction

        public [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") getFunction()

    -   ### getGroupingFunction

        public com.appiancorp.common.query.GroupingFunction getGroupingFunction()

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](Column.html#hashCode\(\))` in class `[Column](Column.html "class in com.appiancorp.common.query")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](Column.html#equals\(java.lang.Object\))` in class `[Column](Column.html "class in com.appiancorp.common.query")`

    -   ### canEquals

        protected boolean canEquals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Description copied from class: `[ColumnAlias](ColumnAlias.html#canEquals\(java.lang.Object\))`

        Checks if this instance can compare against the given object.

        Overrides:

        `[canEquals](Column.html#canEquals\(java.lang.Object\))` in class `[Column](Column.html "class in com.appiancorp.common.query")`

        Parameters:

        `obj` - an `Object`

        Returns:

        true if the given object is an `instanceof` this class.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](Column.html#toString\(\))` in class `[Column](Column.html "class in com.appiancorp.common.query")`