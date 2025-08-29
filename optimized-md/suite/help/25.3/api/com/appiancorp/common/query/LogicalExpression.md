---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/LogicalExpression.html
original_path: api/com/appiancorp/common/query/LogicalExpression.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class LogicalExpression<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.LogicalExpression<T>

Type Parameters:

`T` - Type of value

All Implemented Interfaces:

`[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

Direct Known Subclasses:

`[GenericLogicalExpression](GenericLogicalExpression.html "class in com.appiancorp.common.query")`, `[TypedValueLogicalExpression](TypedValueLogicalExpression.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public abstract class LogicalExpression<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Criteria](Criteria.html "interface in com.appiancorp.common.query")

This class represents a logical expression combining multiple filters in a query.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[LogicalExpression](#%3Cinit%3E\(\))()`

    Initializes a newly created `LogicalExpression`

    `protected`

    `[LogicalExpression](#%3Cinit%3E\(com.appiancorp.common.query.LogicalOperator,com.appiancorp.common.query.Criteria...\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)`

    Constructs a new `LogicalExpression`

    `protected`

    `[LogicalExpression](#%3Cinit%3E\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Constructs a new `LogicalExpression`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")>`

    `[getConditions](#getConditions\(\))()`

    Returns the list of conditions

    `[LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query")`

    `[getOperator](#getOperator\(\))()`

    Returns the type of logical operation define by the [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

    `int`

    `[hashCode](#hashCode\(\))()`

    `protected abstract void`

    `[setConditions](#setConditions\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Sets the list of conditions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.common.query.[Criteria](Criteria.html "interface in com.appiancorp.common.query")

    `[copy](Criteria.html#copy\(\))`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.LogicalExpression.XML_ROOT_ELEMENT)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.LogicalExpression.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### LogicalExpression

        protected LogicalExpression()

        Initializes a newly created `LogicalExpression`

    -   ### LogicalExpression

        protected LogicalExpression([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [Criteria](Criteria.html "interface in com.appiancorp.common.query")... conditions)

        Constructs a new `LogicalExpression`

        Parameters:

        `operator` - a logical operation type define by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

        `conditions` - an array of conditions

    -   ### LogicalExpression

        protected LogicalExpression([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") operator, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<? extends [Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Constructs a new `LogicalExpression`

        Parameters:

        `operator` - a logical operation type define by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

        `conditions` - a list of conditions

-   ## Method Details

    -   ### getOperator

        public [LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") getOperator()

        Returns the type of logical operation define by the [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query") enum

        Returns:

        the [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query")

    -   ### getConditions

        public abstract [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> getConditions()

        Returns the list of conditions

        Returns:

        the list of conditions

    -   ### setConditions

        protected abstract void setConditions([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Sets the list of conditions

        Parameters:

        `conditions` - a list of conditions

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`