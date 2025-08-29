---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericFilter.html
original_path: api/com/appiancorp/common/query/GenericFilter.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

com.appiancorp.common.query.GenericFilter

All Implemented Interfaces:

`[Criteria](Criteria.html "interface in com.appiancorp.common.query")`, `com.appiancorp.common.query.ReadOnlyFilter`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

@GwtCompatible public final class GenericFilter extends [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

Immutable bean representing a configured [`Filter`](Filter.html "class in com.appiancorp.common.query") on a column.

An instance can only be obtained by using the helper class [`GenericQuery.GenericBuilder.LogicalOp`](GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.common.query.GenericFilter)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.common.query.[Filter](Filter.html "class in com.appiancorp.common.query")

    `[LOCAL_PART](Filter.html#LOCAL_PART), [QNAME](Filter.html#QNAME), [TABLE_NAME](Filter.html#TABLE_NAME), [XML_ROOT_ELEMENT](Filter.html#XML_ROOT_ELEMENT)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[GenericFilter](#%3Cinit%3E\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Constructs a `GenericFilter` against the given column or alias using the given value as a constraint.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[copy](#copy\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Returns the value used as a constraint on the column or alias

    `protected void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    ### Methods inherited from class com.appiancorp.common.query.[Filter](Filter.html "class in com.appiancorp.common.query")

    `[containsFilters](Filter.html#containsFilters\(com.appiancorp.common.query.Criteria,java.lang.Iterable\)), [equals](Filter.html#equals\(java.lang.Object\)), [getField](Filter.html#getField\(\)), [getOperator](Filter.html#getOperator\(\)), [getValueExpression](Filter.html#getValueExpression\(\)), [getValueReadOnly](Filter.html#getValueReadOnly\(\)), [hashCode](Filter.html#hashCode\(\)), [isPartOfCriteriaPredicate](Filter.html#isPartOfCriteriaPredicate\(com.appiancorp.common.query.Criteria\)), [selectField](Filter.html#selectField\(\)), [toString](Filter.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GenericFilter

        protected GenericFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") operator, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Constructs a `GenericFilter` against the given column or alias using the given value as a constraint.

        Parameters:

        `field` - the column or alias name

        `operator` - filter type define as [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `value` - Object use to constraint the column or alias

-   ## Method Details

    -   ### getValue

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Description copied from class: `[Filter](Filter.html#getValue\(\))`

        Returns the value used as a constraint on the column or alias

        Specified by:

        `[getValue](Filter.html#getValue\(\))` in class `[Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Returns:

        the value constraint

    -   ### setValue

        protected void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Specified by:

        `[setValue](Filter.html#setValue\(T\))` in class `[Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    -   ### copy

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") copy()