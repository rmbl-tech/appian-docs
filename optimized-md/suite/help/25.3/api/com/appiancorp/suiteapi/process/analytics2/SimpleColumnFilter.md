---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class SimpleColumnFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.analytics2.BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class SimpleColumnFilter extends [BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Simple column filter which allows you to filter on any column in the report.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static enum` 

    `[SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[TYPE](#TYPE)`

    This constant tells the backend what kind of filter this is.

    ### Fields inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[LOG](BaseFilter.html#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SimpleColumnFilter](#%3Cinit%3E\(\))()`

    `[SimpleColumnFilter](#%3Cinit%3E\(java.lang.Integer,com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.ComparisonType,com.appiancorp.suiteapi.process.GenericTypedVariable,boolean\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId, [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") comparison, [GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") constant, boolean apply)`

    Deprecated.

    since 6.1

    `[SimpleColumnFilter](#%3Cinit%3E\(java.lang.Integer,com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.ComparisonType,com.appiancorp.suiteapi.type.TypedValue,boolean\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId, [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") comparison, [TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") constant, boolean apply)`

    Constructs a new SimpleColumnFilter.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)`

    Is this Filter equal to another object?

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getColumnLocalId](#getColumnLocalId\(\))()`

    Gets the localId of the column on which to apply this filter.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getComparison](#getComparison\(\))()`

    Gets the comparison used for this filter.

    `[GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[getConstant](#getConstant\(\))()`

    Gets the constant used for this filter.

    `int`

    `[getFilterType](#getFilterType\(\))()`

    Gets the simple column filter type.

    `static com.appian.komodo.api.ShardedProcessObjectType`

    `[getShardedProcessObjectTypeByExpression](#getShardedProcessObjectTypeByExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)`

    Not Comprehensive.

    `int`

    `[hashCode](#hashCode\(\))()`

    Hash code.

    `boolean`

    `[isReportPortletFilter](#isReportPortletFilter\(\))()`

    Tells if this filter was set by the report channel.

    `void`

    `[setColumnLocalId](#setColumnLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId_)`

    Sets the column on which to apply this filter.

    `void`

    `[setComparison](#setComparison\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") comparison_)`

    Sets the comparison for this filter.

    `void`

    `[setConstant](#setConstant\(com.appiancorp.suiteapi.process.GenericTypedVariable\))([GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") constant_)`

    Sets the constant used for this filter.

    `void`

    `[setReportPortletFilter](#setReportPortletFilter\(boolean\))(boolean reportFilter)`

    Set to true if this filter is set by the report channel.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[getApply](BaseFilter.html#getApply\(\)), [setApply](BaseFilter.html#setApply\(boolean\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TYPE

        public static final int TYPE

        This constant tells the backend what kind of filter this is.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.TYPE)

-   ## Constructor Details

    -   ### SimpleColumnFilter

        public SimpleColumnFilter()

    -   ### SimpleColumnFilter

        public SimpleColumnFilter([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId, [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") comparison, [TypedValue](../../type/TypedValue.html "class in com.appiancorp.suiteapi.type") constant, boolean apply)

        Constructs a new SimpleColumnFilter.

        Parameters:

        `columnLocalId` -

        `comparison` -

        `constant` -

        `apply` -

    -   ### SimpleColumnFilter

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public SimpleColumnFilter([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId, [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") comparison, [GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") constant, boolean apply)

        Deprecated.

        since 6.1

        See Also:

        -   [`SimpleColumnFilter(Integer, ComparisonType, TypedValue, boolean)`](#%3Cinit%3E\(java.lang.Integer,com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.ComparisonType,com.appiancorp.suiteapi.type.TypedValue,boolean\))

-   ## Method Details

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)

        Is this Filter equal to another object?

        Overrides:

        `[equals](BaseFilter.html#equals\(java.lang.Object\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

    -   ### hashCode

        public int hashCode()

        Description copied from class: `[BaseFilter](BaseFilter.html#hashCode\(\))`

        Hash code.

        Overrides:

        `[hashCode](BaseFilter.html#hashCode\(\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](BaseFilter.html#clone\(\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

        Returns:

    -   ### getFilterType

        public int getFilterType()

        Gets the simple column filter type. Implements abstract method BaseFilter.getFilterType.

        Specified by:

        `[getFilterType](Filter.html#getFilterType\(\))` in interface `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

        Specified by:

        `[getFilterType](BaseFilter.html#getFilterType\(\))` in class `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

        Returns:

        the type of the `Filter`. This is one of:

        -   0 = [`SimpleColumnFilter`](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   1 = [`LastNDaysFilter`](LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   2 = [`AheadOfScheduleFilter`](AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   3 = [`OutsideNStandardDeviationsFilter`](OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   4 = [`NotYetCompletedFilter`](NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2") (Deprecated)
        -   5 = [`LastNCompletedFilter`](LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   6 = [`CompletedAheadOfScheduleFilter`](CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2") (Deprecated)
        -   7 = [`BehindScheduleFilter`](BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   8 = [`DueTodayFilter`](DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   9 = [`CompletedFilter`](CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   10 = [`RunningFilter`](RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    -   ### getColumnLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getColumnLocalId()

        Gets the localId of the column on which to apply this filter.

        Returns:

        the localId of the column

        See Also:

        -   [`setColumnLocalId(java.lang.Integer)`](#setColumnLocalId\(java.lang.Integer\))

    -   ### setColumnLocalId

        public void setColumnLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnLocalId\_)

        Sets the column on which to apply this filter.

        Parameters:

        `columnLocalId_` - the localId of the column

        See Also:

        -   [`getColumnLocalId()`](#getColumnLocalId\(\))

    -   ### getComparison

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getComparison()

        Gets the comparison used for this filter.

        Returns:

        Returns the comparison used in this filter. Constants for these are in: [`Comparisons`](Comparisons.html "class in com.appiancorp.suiteapi.process.analytics2")

        See Also:

        -   [`setComparison(java.lang.Integer)`](#setComparison\(java.lang.Integer\))

    -   ### setComparison

        public void setComparison([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") comparison\_)

        Sets the comparison for this filter.

        Parameters:

        `comparison_` - The comparison to set.

        See Also:

        -   [`getComparison()`](#getComparison\(\))

    -   ### getConstant

        public [GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") getConstant()

        Gets the constant used for this filter.

        Returns:

        Returns the constant.

        See Also:

        -   [`setConstant(com.appiancorp.suiteapi.process.GenericTypedVariable)`](#setConstant\(com.appiancorp.suiteapi.process.GenericTypedVariable\))

    -   ### setConstant

        public void setConstant([GenericTypedVariable](../GenericTypedVariable.html "class in com.appiancorp.suiteapi.process") constant\_)

        Sets the constant used for this filter.

        Parameters:

        `constant_` - The constant to set.

        See Also:

        -   [`getConstant()`](#getConstant\(\))

    -   ### isReportPortletFilter

        public boolean isReportPortletFilter()

        Tells if this filter was set by the report channel.

    -   ### setReportPortletFilter

        public void setReportPortletFilter(boolean reportFilter)

        Set to true if this filter is set by the report channel.

    -   ### getShardedProcessObjectTypeByExpression

        public static com.appian.komodo.api.ShardedProcessObjectType getShardedProcessObjectTypeByExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)

        Not Comprehensive. Intended as an optimization which, when applicable, can reduce the number of analytics engines fielding report queries.

        Parameters:

        `expr` -

        Returns:

        the object type indicated by the expression