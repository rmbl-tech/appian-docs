---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Column.html
original_path: api/com/appiancorp/common/query/Column.html
version: "25.3"
title: "Class Column"
page_id: "api/com/appiancorp/common/query/Column"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class Column

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

com.appiancorp.common.query.Column

Direct Known Subclasses:

`[AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public class Column extends [ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

Immutable bean representing the column dot notation, its alias and its visibility (if it should be shown to the client or not).

An instance can only be obtain by using the helper class `QueryBuilder.Selector`

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

    `protected`

    `[Column](#%3Cinit%3E\(\))()`

    Initializes a newly created `Column` object

    `[Column](#%3Cinit%3E\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") column)`

    Copy constructor

    `protected`

    `[Column](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)`

    Constructs a new `Column` for a field with the given field name

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected static [StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang")`

    `[appendForToString](#appendForToString\(java.lang.StringBuilder,boolean\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb, boolean isVisible)`

    Helper function which appends the visibility string translation to a given `StringBuilder`

    `protected boolean`

    `[canEquals](#canEquals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Checks if this instance can compare against the given object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getAliasToFieldPathMap](#getAliasToFieldPathMap\(com.appiancorp.common.query.Projection\))([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")> proj)`

    Gets a [`Map`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") from alias to field path for the `Column` instances of the given [`Projection`](Projection.html "interface in com.appiancorp.common.query").

    `int`

    `[hashCode](#hashCode\(\))()`

    `boolean`

    `[isVisible](#isVisible\(\))()`

    Returns `true` if this column is visible.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.common.query.[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

    `[appendForToString](ColumnAlias.html#appendForToString\(java.lang.StringBuilder,java.lang.String,java.lang.String\)), [getAlias](ColumnAlias.html#getAlias\(\)), [getField](ColumnAlias.html#getField\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Column.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### Column

        protected Column()

        Initializes a newly created `Column` object

    -   ### Column

        protected Column([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)

        Constructs a new `Column` for a field with the given field name

        Parameters:

        `field` - a field name

        `alias` - an alias name for this column

        `visible` - determines if this column will be visible or not.

    -   ### Column

        public Column([Column](Column.html "class in com.appiancorp.common.query") column)

        Copy constructor

        Parameters:

        `column` - a `Column`

-   ## Method Details

    -   ### isVisible

        public boolean isVisible()

        Returns `true` if this column is visible.

        Returns:

        `true` if this column is visible; otherwise `false`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](ColumnAlias.html#hashCode\(\))` in class `[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](ColumnAlias.html#equals\(java.lang.Object\))` in class `[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")`

    -   ### canEquals

        protected boolean canEquals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Description copied from class: `[ColumnAlias](ColumnAlias.html#canEquals\(java.lang.Object\))`

        Checks if this instance can compare against the given object.

        Overrides:

        `[canEquals](ColumnAlias.html#canEquals\(java.lang.Object\))` in class `[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")`

        Parameters:

        `obj` - an `Object`

        Returns:

        true if the given object is an `instanceof` this class.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](ColumnAlias.html#toString\(\))` in class `[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")`

    -   ### appendForToString

        protected static [StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") appendForToString([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb, boolean isVisible)

        Helper function which appends the visibility string translation to a given `StringBuilder`

        Parameters:

        `sb` - a `StringBuilder`

        `isVisible` - boolean value indicating the visibility of the columns

        Returns:

        the same `StringBuilder` by appending the visibility

    -   ### getAliasToFieldPathMap

        public static [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getAliasToFieldPathMap([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")\> proj)

        Gets a [`Map`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") from alias to field path for the `Column` instances of the given [`Projection`](Projection.html "interface in com.appiancorp.common.query").

        Parameters:

        `proj` - a `Projection`

        Returns:

        alias to field path `Map`