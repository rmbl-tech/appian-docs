---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueFilter.html
original_path: api/com/appiancorp/common/query/TypedValueFilter.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

com.appiancorp.common.query.TypedValueFilter

All Implemented Interfaces:

`[Criteria](Criteria.html "interface in com.appiancorp.common.query")`, `com.appiancorp.common.query.ReadOnlyFilter`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

@Entity @GwtCompatible public final class TypedValueFilter extends [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\>

Immutable bean representing a configured [`Filter`](Filter.html "class in com.appiancorp.common.query") on a column.

An instance can only be obtain by using the helper classes at [`TypedValueQuery.TypedValueBuilder`](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

-   For value expressions use - [`TypedValueQuery.TypedValueBuilder.FilterOpExpr`](TypedValueQuery.TypedValueBuilder.FilterOpExpr.html "class in com.appiancorp.common.query")
-   For literal values use - [`TypedValueQuery.TypedValueBuilder.FilterOpLiteral`](TypedValueQuery.TypedValueBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.common.query.TypedValueFilter)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[Filter](Filter.html "class in com.appiancorp.common.query")

    `[LOCAL_PART](Filter.html#LOCAL_PART), [QNAME](Filter.html#QNAME), [TABLE_NAME](Filter.html#TABLE_NAME), [XML_ROOT_ELEMENT](Filter.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[TypedValueFilter](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,com.appiancorp.suiteapi.type.TypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)`

    Constructs a new `TypedValueFilter` using the given [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") as a constraint

    `protected`

    `[TypedValueFilter](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") valueExpression)`

    Constructs a new `TypedValueFilter` using the given expression as a constraint.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[copy](#copy\(\))()`

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getValidated](#getValidated\(\))()`

    `[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getValue](#getValue\(\))()`

    Returns the value used as a constraint on the column or alias

    `com.appiancorp.core.expr.portable.PortableTypedValue`

    `[getValueReadOnly](#getValueReadOnly\(\))()`

    `protected void`

    `[setValidated](#setValidated\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") validated)`

    `protected void`

    `[setValue](#setValue\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)`

    ### Methods inherited from class com.appiancorp.common.query.[Filter](Filter.html "class in com.appiancorp.common.query")

    `[containsFilters](Filter.html#containsFilters\(com.appiancorp.common.query.Criteria,java.lang.Iterable\)), [equals](Filter.html#equals\(java.lang.Object\)), [getField](Filter.html#getField\(\)), [getOperator](Filter.html#getOperator\(\)), [getValueExpression](Filter.html#getValueExpression\(\)), [hashCode](Filter.html#hashCode\(\)), [isPartOfCriteriaPredicate](Filter.html#isPartOfCriteriaPredicate\(com.appiancorp.common.query.Criteria\)), [selectField](Filter.html#selectField\(\)), [toString](Filter.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueFilter

        public TypedValueFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)

        Constructs a new `TypedValueFilter` using the given [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") as a constraint

        Parameters:

        `field` - the field or alias name

        `operator` - the filter type define by [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `value` - [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") use to constraint the column or alias

    -   ### TypedValueFilter

        protected TypedValueFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") valueExpression)

        Constructs a new `TypedValueFilter` using the given expression as a constraint. This expression is expected to evaluate to a [`TypedValue`](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type").

        The constructor that takes `TypedValue value` is preferred over this constructor because evaluation of an expression to obtain the value is unnecessary except in cases of deferred evaluation, which are not applicable to cases of constructing a Filter for plug-ins.

        Parameters:

        `field` - the field or alias name

        `operator` - the filter type define by [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `valueExpression` -

-   ## Method Details

    -   ### getValidated

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getValidated()

        Returns:

        whether the filter has been validated within SAIL.

    -   ### setValidated

        protected void setValidated([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") validated)

    -   ### getValue

        public [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") getValue()

        Description copied from class: `[Filter](Filter.html#getValue\(\))`

        Returns the value used as a constraint on the column or alias

        Specified by:

        `[getValue](Filter.html#getValue\(\))` in class `[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

        Returns:

        the value constraint

    -   ### setValue

        protected void setValue([TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)

        Specified by:

        `[setValue](Filter.html#setValue\(T\))` in class `[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    -   ### copy

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") copy()

    -   ### getValueReadOnly

        public com.appiancorp.core.expr.portable.PortableTypedValue getValueReadOnly()

        Specified by:

        `getValueReadOnly` in interface `com.appiancorp.common.query.ReadOnlyFilter`

        Overrides:

        `[getValueReadOnly](Filter.html#getValueReadOnly\(\))` in class `[Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`