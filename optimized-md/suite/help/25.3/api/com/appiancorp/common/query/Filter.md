---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Filter.html
original_path: api/com/appiancorp/common/query/Filter.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class Filter<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.Filter<T>

Type Parameters:

`T` - Type of value

All Implemented Interfaces:

`[Criteria](Criteria.html "interface in com.appiancorp.common.query")`, `com.appiancorp.common.query.ReadOnlyFilter`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[GenericFilter](GenericFilter.html "class in com.appiancorp.common.query")`, `[TypedValueFilter](TypedValueFilter.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible @MappedSuperclass public abstract class Filter<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.common.query.ReadOnlyFilter

Bean representing a configured Filter on a column.

The column can be filtered either by a value or an expression, which evaluated value will be use to filter.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.common.query.Filter)

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

    `[TABLE_NAME](#TABLE_NAME)`

    `protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[XML_ROOT_ELEMENT](#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[Filter](#%3Cinit%3E\(\))()`

    Initializes a newly created `Filter`

    `protected`

    `[Filter](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") valueExpression)`

    Constructs a new `Filter` where its constraint is given as an expression.

    `protected`

    `[Filter](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,T\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [T](Filter.html "type parameter in Filter") value)`

    Constructs a new `Filter` where its constraint is given as an object value.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static <T> boolean`

    `[containsFilters](#containsFilters\(com.appiancorp.common.query.Criteria,java.lang.Iterable\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[Filter](Filter.html "class in com.appiancorp.common.query")<T>> filters)`

    Checks if all the `filters` are contained by the given `criteria`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getField](#getField\(\))()`

    Returns the column or alias name

    `[FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")`

    `[getOperator](#getOperator\(\))()`

    Returns the [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

    `abstract [T](Filter.html "type parameter in Filter")`

    `[getValue](#getValue\(\))()`

    Returns the value used as a constraint on the column or alias

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValueExpression](#getValueExpression\(\))()`

    Return the value expression used as a constraint on the column or alias

    `com.appiancorp.core.expr.portable.PortableTypedValue`

    `[getValueReadOnly](#getValueReadOnly\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `static final com.appiancorp.common.query.Filter.IsPartOfCriteriaPredicate`

    `[isPartOfCriteriaPredicate](#isPartOfCriteriaPredicate\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)`

    Returns the predicate function which checks if given [`Filter`](Filter.html "class in com.appiancorp.common.query") is contained in a certain [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    `static com.google.common.base.Function<[Filter](Filter.html "class in com.appiancorp.common.query")<?>,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[selectField](#selectField\(\))()`

    Returns a `Function` which retrieves the column/alias/field name from a given `Filter`

    `protected abstract void`

    `[setValue](#setValue\(T\))([T](Filter.html "type parameter in Filter") value)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.common.query.[Criteria](Criteria.html "interface in com.appiancorp.common.query")

    `[copy](Criteria.html#copy\(\))`

-   ## Field Details

    -   ### XML\_ROOT\_ELEMENT

        protected static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") XML\_ROOT\_ELEMENT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Filter.XML_ROOT_ELEMENT)

    -   ### TABLE\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TABLE\_NAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Filter.TABLE_NAME)

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.Filter.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### Filter

        protected Filter()

        Initializes a newly created `Filter`

    -   ### Filter

        protected Filter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") valueExpression)

        Constructs a new `Filter` where its constraint is given as an expression.

        The constructor that takes `T value` is preferred over this constructor because evaluation of an expression to obtain the value is unnecessary except in cases of deferred evaluation, which are not applicable to cases of constructing a Filter for plug-ins.

        Parameters:

        `field` - column or alias name

        `operator` - filter type define as [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `valueExpression` - expression representing the object use to constraint the column or alias

        See Also:

        -   [`Filter(java.lang.String,com.appiancorp.common.query.FilterOperator,T)`](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,T\))

    -   ### Filter

        protected Filter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [T](Filter.html "type parameter in Filter") value)

        Constructs a new `Filter` where its constraint is given as an object value.

        Parameters:

        `field` - column or alias name

        `operator` - filter type define as [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `value` - object use to constraint the column or alias

-   ## Method Details

    -   ### getValue

        public abstract [T](Filter.html "type parameter in Filter") getValue()

        Returns the value used as a constraint on the column or alias

        Returns:

        the value constraint

    -   ### setValue

        protected abstract void setValue([T](Filter.html "type parameter in Filter") value)

    -   ### getValueReadOnly

        public com.appiancorp.core.expr.portable.PortableTypedValue getValueReadOnly()

        Specified by:

        `getValueReadOnly` in interface `com.appiancorp.common.query.ReadOnlyFilter`

    -   ### getField

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getField()

        Returns the column or alias name

        Specified by:

        `getField` in interface `com.appiancorp.common.query.ReadOnlyFilter`

        Returns:

        the column or alias name

    -   ### getOperator

        public [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") getOperator()

        Returns the [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        Specified by:

        `getOperator` in interface `com.appiancorp.common.query.ReadOnlyFilter`

        Returns:

        the [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

    -   ### getValueExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValueExpression()

        Return the value expression used as a constraint on the column or alias

        Specified by:

        `getValueExpression` in interface `com.appiancorp.common.query.ReadOnlyFilter`

        Returns:

        the object use to constraint the column or alias

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

    -   ### isPartOfCriteriaPredicate

        public static final com.appiancorp.common.query.Filter.IsPartOfCriteriaPredicate isPartOfCriteriaPredicate([Criteria](Criteria.html "interface in com.appiancorp.common.query") c)

        Returns the predicate function which checks if given [`Filter`](Filter.html "class in com.appiancorp.common.query") is contained in a certain [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        Returns:

        a predicate function which checks if given [`Filter`](Filter.html "class in com.appiancorp.common.query") is contained in a certain [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

    -   ### containsFilters

        public static <T> boolean containsFilters([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [Iterable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Iterable.html "class or interface in java.lang")<[Filter](Filter.html "class in com.appiancorp.common.query")<T>> filters)

        Checks if all the `filters` are contained by the given `criteria`

        Parameters:

        `criteria` - a [`Criteria`](Criteria.html "interface in com.appiancorp.common.query")

        `filters` - `iterable` [`Filter`](Filter.html "class in com.appiancorp.common.query")s

        Returns:

        true if all the `filters` are contained by the given `criteria`; false otherwise

    -   ### selectField

        public static com.google.common.base.Function<[Filter](Filter.html "class in com.appiancorp.common.query")<?>,[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> selectField()

        Returns a `Function` which retrieves the column/alias/field name from a given `Filter`

        Returns:

        a `Function` which retrieves the column/alias/field name from a given `Filter`