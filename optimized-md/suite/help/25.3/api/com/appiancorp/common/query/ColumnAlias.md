---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/ColumnAlias.html
original_path: api/com/appiancorp/common/query/ColumnAlias.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class ColumnAlias

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.ColumnAlias

Direct Known Subclasses:

`[Column](Column.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public class ColumnAlias extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Immutable bean representing the column dot notation and it's alias.

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

    `[ColumnAlias](#%3Cinit%3E\(\))()`

    Initializes a newly created `ColumnAlias` object

    `[ColumnAlias](#%3Cinit%3E\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)`

    Copy constructor

    `protected`

    `[ColumnAlias](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Constructs a new `ColumnAlias` for a field with the given alias name

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected static [StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang")`

    `[appendForToString](#appendForToString\(java.lang.StringBuilder,java.lang.String,java.lang.String\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Helper function which appends the alias info to a given `StringBuilder`

    `protected boolean`

    `[canEquals](#canEquals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Checks if this instance can compare against the given object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAlias](#getAlias\(\))()`

    Returns the column's alias name

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getField](#getField\(\))()`

    Returns the field name

    `int`

    `[hashCode](#hashCode\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.ColumnAlias.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### ColumnAlias

        protected ColumnAlias()

        Initializes a newly created `ColumnAlias` object

    -   ### ColumnAlias

        protected ColumnAlias([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Constructs a new `ColumnAlias` for a field with the given alias name

        Parameters:

        `field` - a field name

        `alias` - an alias name for this column

    -   ### ColumnAlias

        public ColumnAlias([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)

        Copy constructor

        Parameters:

        `ca` - a `ColumnAlias`

-   ## Method Details

    -   ### getField

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getField()

        Returns the field name

        Returns:

        the field name

    -   ### getAlias

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAlias()

        Returns the column's alias name

        Returns:

        the column's alias name

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### canEquals

        protected boolean canEquals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Checks if this instance can compare against the given object.

        Parameters:

        `obj` - an `Object`

        Returns:

        true if the given object is an `instanceof` this class.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### appendForToString

        protected static [StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") appendForToString([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") sb, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Helper function which appends the alias info to a given `StringBuilder`

        Parameters:

        `sb` - a `StringBuilder`

        `field` - a field name

        `alias` - an alias name

        Returns:

        the same `StringBuilder` by appending the alias info