---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/Column.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/Column.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class Column

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.Column

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class Column extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

The `Column` bean contains information necessary to retrieve a column of data from the backend and display it properly. The main components of a `Column` are the `expression` field which defines the value to be returned for the `Column`, the `formatToken` which defines how the value is displayed, and the `drillPath` field which defines how the data links to more information (if any).

Results in a `Column` can be grouped together using the `group` field. When at least one `Column` is grouped, then the data in any ungrouped `Column` must be aggregated. `Column`s can be aggregated based on several functions, each of which is represented as one of the `COL_AGGREGATION_XXX` constants in this class. If no aggregation function is set, `COL_AGGREGATION_COUNT` will be used. The aggregation functions are only used for ungrouped columns in reports that contain grouping.

See Also:

-   [`DrillPath`](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")
-   [`ReportData`](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.Column)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[COL_AGGREGATION_AVG](#COL_AGGREGATION_AVG)`

    A constant indicating that the column aggregation function is AVG (Average).

    `static final int`

    `[COL_AGGREGATION_AVG_EXCLUDE_NULL](#COL_AGGREGATION_AVG_EXCLUDE_NULL)`

    Deprecated.

    use COL\_AGGREGATION\_AVG

    `static final int`

    `[COL_AGGREGATION_CONCATENATE](#COL_AGGREGATION_CONCATENATE)`

    A constant indicating that the column aggregation function is CONCATENATE.

    `static final int`

    `[COL_AGGREGATION_CONCATENATE_WO_REPEAT](#COL_AGGREGATION_CONCATENATE_WO_REPEAT)`

    A constant indicating that the column aggregation function is CONCATENATE\_WO\_REPEAT.

    `static final int`

    `[COL_AGGREGATION_COUNT](#COL_AGGREGATION_COUNT)`

    A constant indicating that the column aggregation function is COUNT (Count).

    `static final int`

    `[COL_AGGREGATION_GEOMEAN](#COL_AGGREGATION_GEOMEAN)`

    A constant indicating that the column aggregation function is GEOMEAN (Geometric Mean).

    `static final int`

    `[COL_AGGREGATION_MAX](#COL_AGGREGATION_MAX)`

    A constant indicating that the column aggregation function is MAX (Maximum).

    `static final int`

    `[COL_AGGREGATION_MEDIAN](#COL_AGGREGATION_MEDIAN)`

    Deprecated.

    no longer used

    `static final int`

    `[COL_AGGREGATION_MIN](#COL_AGGREGATION_MIN)`

    A constant indicating that the column aggregation function is MIN (Minimum).

    `static final int`

    `[COL_AGGREGATION_MODE](#COL_AGGREGATION_MODE)`

    Deprecated.

    no longer used

    `static final int`

    `[COL_AGGREGATION_PERCENT_FALSE](#COL_AGGREGATION_PERCENT_FALSE)`

    A constant indicating that the column aggregation function is PERCENT\_FALSE (The percent of all values which are false).

    `static final int`

    `[COL_AGGREGATION_PERCENT_TRUE](#COL_AGGREGATION_PERCENT_TRUE)`

    A constant indicating that the column aggregation function is PERCENT\_TRUE (The percent of all values which are true).

    `static final int`

    `[COL_AGGREGATION_STDDEV](#COL_AGGREGATION_STDDEV)`

    A constant indicating that the column aggregation function is STDDEV (Standard Deviation).

    `static final int`

    `[COL_AGGREGATION_SUM](#COL_AGGREGATION_SUM)`

    A constant indicating that the column aggregation function is SUM (Sum).

    `static final int`

    `[COL_AGGREGATION_SUM_EXCLUDE_NULL](#COL_AGGREGATION_SUM_EXCLUDE_NULL)`

    Deprecated.

    use COL\_AGGREGATION\_SUM

    `static final [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")>`

    `[COL_AGGREGATION_TYPES](#COL_AGGREGATION_TYPES)`

    `static final int`

    `[COL_AGGREGATION_VAR](#COL_AGGREGATION_VAR)`

    A constant indicating that the column aggregation function is VAR (Variance).

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Column](#%3Cinit%3E\(\))()`

    `[Column](#%3Cinit%3E\(java.lang.Integer,java.lang.String,java.lang.String,boolean,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") localId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, boolean show, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatToken)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object using deep-copy semantics.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    Is this DrillPath equal to the given object?

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getColumnAggregationFunction](#getColumnAggregationFunction\(\))()`

    Gets the column aggregation function which will be applied to this `Column`.

    `[DrillPath](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getDrillPath](#getDrillPath\(\))()`

    Gets the DrillPath bean which defines how the column data links to further information (if any).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDrillPathExpression](#getDrillPathExpression\(\))()`

    Gets the expression which defines the value that the `DrillPath` uses to navigate to the proper destination.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExpression](#getExpression\(\))()`

    Get the expression which defines the value of this `Column`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFormatToken](#getFormatToken\(\))()`

    Gets the token which determines how the data returned for this `Column` is formatted and displayed in the report results.

    `boolean`

    `[getGroup](#getGroup\(\))()`

    Gets whether or not the report is grouped by this `Column`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIcon](#getIcon\(\))()`

    Returns icon value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastAggregateToken](#getLastAggregateToken\(\))()`

    Gets the previously set Column Aggregation token.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastFormatToken](#getLastFormatToken\(\))()`

    Gets the previously set format token.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getLocalId](#getLocalId\(\))()`

    Gets the `localId` of this `Column`, which uniquely identifies it in this report.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the display name of this `Column`.

    `boolean`

    `[getShow](#getShow\(\))()`

    Gets whether or not this `Column` is displayed in the report results.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringId](#getStringId\(\))()`

    Gets the string ID of this `Column`, which is simply the `String` "c" concatenated with the `localId`.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringId](#getStringId\(int\))(int colId)`

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setColumnAggregationFunction](#setColumnAggregationFunction\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnAggregationFunction_)`

    Applies a column aggregation function to this `Column`.

    `void`

    `[setDrillPath](#setDrillPath\(com.appiancorp.suiteapi.process.analytics2.DrillPath\))([DrillPath](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2") drillPath_)`

    Sets the DrillPath bean which defines how the column data links to further information (if any).

    `void`

    `[setExpression](#setExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression_)`

    Sets the expression which defines the value of this `Column`.

    `void`

    `[setFormatToken](#setFormatToken\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatToken_)`

    Sets the token which determines how the data returned for this `Column` is formatted and displayed in the report results.

    `void`

    `[setGroup](#setGroup\(boolean\))(boolean group_)`

    Sets whether or not the report is grouped by this `Column`.

    `void`

    `[setIcon](#setIcon\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") icon)`

    Specifies the icon value.

    `void`

    `[setLastAggregateToken](#setLastAggregateToken\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastAggregateToken_)`

    Sets the previously set Column Aggregation token.

    `void`

    `[setLastFormatToken](#setLastFormatToken\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastFormatToken_)`

    Sets the previously set format token.

    `void`

    `[setLocalId](#setLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") localId_)`

    Sets the `localId` of this `Column`, which uniquely identifies it in this report.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the display name of this `Column`.

    `void`

    `[setShow](#setShow\(boolean\))(boolean show_)`

    Sets whether or not this `Column` is displayed in the report results.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

    -   ### COL\_AGGREGATION\_SUM

        public static final int COL\_AGGREGATION\_SUM

        A constant indicating that the column aggregation function is SUM (Sum). Nulls are excluded.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_SUM)

    -   ### COL\_AGGREGATION\_AVG

        public static final int COL\_AGGREGATION\_AVG

        A constant indicating that the column aggregation function is AVG (Average). Nulls are excluded.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_AVG)

    -   ### COL\_AGGREGATION\_COUNT

        public static final int COL\_AGGREGATION\_COUNT

        A constant indicating that the column aggregation function is COUNT (Count).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_COUNT)

    -   ### COL\_AGGREGATION\_SUM\_EXCLUDE\_NULL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int COL\_AGGREGATION\_SUM\_EXCLUDE\_NULL

        Deprecated.

        use COL\_AGGREGATION\_SUM

        A constant indicating that the column aggregation function is SUM, excluding any null values encountered.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_SUM_EXCLUDE_NULL)

    -   ### COL\_AGGREGATION\_AVG\_EXCLUDE\_NULL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int COL\_AGGREGATION\_AVG\_EXCLUDE\_NULL

        Deprecated.

        use COL\_AGGREGATION\_AVG

        A constant indicating that the column aggregation function is AVG, excluding any null values encountered.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_AVG_EXCLUDE_NULL)

    -   ### COL\_AGGREGATION\_GEOMEAN

        public static final int COL\_AGGREGATION\_GEOMEAN

        A constant indicating that the column aggregation function is GEOMEAN (Geometric Mean).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_GEOMEAN)

    -   ### COL\_AGGREGATION\_MAX

        public static final int COL\_AGGREGATION\_MAX

        A constant indicating that the column aggregation function is MAX (Maximum).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_MAX)

    -   ### COL\_AGGREGATION\_MIN

        public static final int COL\_AGGREGATION\_MIN

        A constant indicating that the column aggregation function is MIN (Minimum).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_MIN)

    -   ### COL\_AGGREGATION\_MEDIAN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int COL\_AGGREGATION\_MEDIAN

        Deprecated.

        no longer used

        A constant indicating that the column aggregation function is MEDIAN (Median).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_MEDIAN)

    -   ### COL\_AGGREGATION\_MODE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int COL\_AGGREGATION\_MODE

        Deprecated.

        no longer used

        A constant indicating that the column aggregation function is MODE (Mode).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_MODE)

    -   ### COL\_AGGREGATION\_STDDEV

        public static final int COL\_AGGREGATION\_STDDEV

        A constant indicating that the column aggregation function is STDDEV (Standard Deviation).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_STDDEV)

    -   ### COL\_AGGREGATION\_VAR

        public static final int COL\_AGGREGATION\_VAR

        A constant indicating that the column aggregation function is VAR (Variance).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_VAR)

    -   ### COL\_AGGREGATION\_PERCENT\_TRUE

        public static final int COL\_AGGREGATION\_PERCENT\_TRUE

        A constant indicating that the column aggregation function is PERCENT\_TRUE (The percent of all values which are true).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_PERCENT_TRUE)

    -   ### COL\_AGGREGATION\_PERCENT\_FALSE

        public static final int COL\_AGGREGATION\_PERCENT\_FALSE

        A constant indicating that the column aggregation function is PERCENT\_FALSE (The percent of all values which are false).

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_PERCENT_FALSE)

    -   ### COL\_AGGREGATION\_CONCATENATE

        public static final int COL\_AGGREGATION\_CONCATENATE

        A constant indicating that the column aggregation function is CONCATENATE. All column values will be returned as a List unless the values are Strings, in which case one string will be returned.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_CONCATENATE)

    -   ### COL\_AGGREGATION\_CONCATENATE\_WO\_REPEAT

        public static final int COL\_AGGREGATION\_CONCATENATE\_WO\_REPEAT

        A constant indicating that the column aggregation function is CONCATENATE\_WO\_REPEAT. All column values will be returned as a List (or one String if the values are a String), with duplicate values removed.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.Column.COL_AGGREGATION_CONCATENATE_WO_REPEAT)

    -   ### COL\_AGGREGATION\_TYPES

        public static final [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\> COL\_AGGREGATION\_TYPES

-   ## Constructor Details

    -   ### Column

        public Column()

    -   ### Column

        public Column([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") localId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression, boolean show, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatToken)

-   ## Method Details

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Is this DrillPath equal to the given object?

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Description copied from interface: `[DeepCloneable](../../common/DeepCloneable.html#clone\(\))`

        Clone this object using deep-copy semantics.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### getColumnAggregationFunction

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getColumnAggregationFunction()

        Gets the column aggregation function which will be applied to this `Column`.

        Returns:

        An Integer representing the column aggregation function, which will be one of the COL\_AGGREGATION\_XXX constants in this class.

        See Also:

        -   [`setColumnAggregationFunction(java.lang.Integer)`](#setColumnAggregationFunction\(java.lang.Integer\))

    -   ### setColumnAggregationFunction

        public void setColumnAggregationFunction([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") columnAggregationFunction\_)

        Applies a column aggregation function to this `Column`.

        Parameters:

        `columnAggregationFunction_` - An Integer representing the column aggregation function to be applied. This will be one of the COL\_AGGREGATION\_XXX constants in this class.

        See Also:

        -   [`getColumnAggregationFunction()`](#getColumnAggregationFunction\(\))

    -   ### getExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExpression()

        Get the expression which defines the value of this `Column`.

        Returns:

        An expression `String`

        See Also:

        -   [`setExpression(java.lang.String)`](#setExpression\(java.lang.String\))

    -   ### setExpression

        public void setExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expression\_)

        Sets the expression which defines the value of this `Column`.

        Parameters:

        `expression_` - The expressiong `String` to set.

        See Also:

        -   [`getExpression()`](#getExpression\(\))

    -   ### getGroup

        public boolean getGroup()

        Gets whether or not the report is grouped by this `Column`. If any `Column` in the report is set to group by, then all other `Column`s that are not also grouped must have a Column Aggregation set.

        Returns:

        A `boolean` value which is `true` if the report is grouped by this column.

        See Also:

        -   [`setGroup(boolean)`](#setGroup\(boolean\))

    -   ### setGroup

        public void setGroup(boolean group\_)

        Sets whether or not the report is grouped by this `Column`.

        Parameters:

        `group_` - Set to `true` if the report is to be grouped by this column.

        See Also:

        -   [`getGroup()`](#getGroup\(\))
        -   [`getGroup()`](#getGroup\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the display name of this `Column`.

        Returns:

        The name of this `Column`.

        See Also:

        -   [`setName(java.lang.String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the display name of this `Column`.

        Parameters:

        `name_` - The name of this `Column` to set.

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getShow

        public boolean getShow()

        Gets whether or not this `Column` is displayed in the report results.

        Returns:

        A value of `true` indicates that this `Column` is displayed in the report.

        See Also:

        -   [`setShow(boolean)`](#setShow\(boolean\))

    -   ### setShow

        public void setShow(boolean show\_)

        Sets whether or not this `Column` is displayed in the report results.

        Parameters:

        `show_` - A value of `true` indicates that this `Column` should be displayed in the report.

        See Also:

        -   [`getShow()`](#getShow\(\))

    -   ### getStringId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringId()

        Gets the string ID of this `Column`, which is simply the `String` "c" concatenated with the `localId`.

        Returns:

        The string ID of this `Column`.

    -   ### getStringId

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringId(int colId)

    -   ### getLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getLocalId()

        Gets the `localId` of this `Column`, which uniquely identifies it in this report.

        Returns:

        The `localId` of this `Column`.

        See Also:

        -   [`setLocalId(java.lang.Integer)`](#setLocalId\(java.lang.Integer\))

    -   ### setLocalId

        public void setLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") localId\_)

        Sets the `localId` of this `Column`, which uniquely identifies it in this report.

        Parameters:

        `localId_` - The `localId` of this `Column` to set.

        See Also:

        -   [`getLocalId()`](#getLocalId\(\))

    -   ### getFormatToken

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFormatToken()

        Gets the token which determines how the data returned for this `Column` is formatted and displayed in the report results. The value returned is a token name, which corresponds to a Java class. This mapping is handled by the `TokenDisplay` component.

        Returns:

        The format token for this `Column`.

        See Also:

        -   [`setFormatToken(java.lang.String)`](#setFormatToken\(java.lang.String\))

    -   ### setFormatToken

        public void setFormatToken([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatToken\_)

        Sets the token which determines how the data returned for this `Column` is formatted and displayed in the report results.

        Parameters:

        `formatToken_` - The format token to set for this `Column`.

        See Also:

        -   [`getFormatToken()`](#getFormatToken\(\))
        -   [`getFormatToken()`](#getFormatToken\(\))

    -   ### getDrillPath

        public [DrillPath](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2") getDrillPath()

        Gets the DrillPath bean which defines how the column data links to further information (if any).

        Returns:

        The `DrillPath` bean defining the link to further information.

        See Also:

        -   [`DrillPath`](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   [`setDrillPath(com.appiancorp.suiteapi.process.analytics2.DrillPath)`](#setDrillPath\(com.appiancorp.suiteapi.process.analytics2.DrillPath\))

    -   ### setDrillPath

        public void setDrillPath([DrillPath](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2") drillPath\_)

        Sets the DrillPath bean which defines how the column data links to further information (if any).

        Parameters:

        `drillPath_` - The `DrillPath` bean which will define the link to further information.

        See Also:

        -   [`DrillPath`](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")
        -   [`getDrillPath()`](#getDrillPath\(\))

    -   ### getDrillPathExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDrillPathExpression()

        Gets the expression which defines the value that the `DrillPath` uses to navigate to the proper destination. For example, if drilling to Task Details the expression will define the task ID. This value is retrieved from the `DrillPath` object itself.

        Returns:

        The `DrillPath` expression.

    -   ### getLastFormatToken

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastFormatToken()

        Gets the previously set format token. When a `Column` is given a Column Aggregation the format token is automatically changed to support the new return type. If the Column Aggregation is removed, then the previous format token is used. This field is ignored by the back-end and will not affect API calls.

        Returns:

        The previously set format token.

        See Also:

        -   [`setLastFormatToken(java.lang.String)`](#setLastFormatToken\(java.lang.String\))

    -   ### setLastFormatToken

        public void setLastFormatToken([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastFormatToken\_)

        Sets the previously set format token.

        Parameters:

        `lastFormatToken_` - The previous format token to set.

        See Also:

        -   [`getLastFormatToken()`](#getLastFormatToken\(\))
        -   [`getLastFormatToken()`](#getLastFormatToken\(\))

    -   ### getLastAggregateToken

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastAggregateToken()

        Gets the previously set Column Aggregation token. When a `Column` is unaggregated, the format token is automatically changed back to \_lastFormatToken. However, the aggregation is enabled again, then the previous aggregation token will be used. This field is ignored by the back-end and will not affect API calls.

        Returns:

        The last Column Aggregation token.

        See Also:

        -   [`setLastAggregateToken(java.lang.String)`](#setLastAggregateToken\(java.lang.String\))

    -   ### setLastAggregateToken

        public void setLastAggregateToken([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lastAggregateToken\_)

        Sets the previously set Column Aggregation token. This field is ignored by the back-end and will not affect API calls.

        Parameters:

        `lastAggregateToken_` - The last Column Aggregation token to set.

        See Also:

        -   [`getLastAggregateToken()`](#getLastAggregateToken\(\))

    -   ### getIcon

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIcon()

        Returns icon value.

        Returns:

        the icon value

        See Also:

        -   [`setIcon(String)`](#setIcon\(java.lang.String\))

    -   ### setIcon

        public void setIcon([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") icon)

        Specifies the icon value.

        Parameters:

        `icon` - the icon value

        See Also:

        -   [`getIcon()`](#getIcon\(\))