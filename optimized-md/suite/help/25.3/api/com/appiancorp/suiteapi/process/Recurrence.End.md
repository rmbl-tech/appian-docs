---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Recurrence.End.html
original_path: api/com/appiancorp/suiteapi/process/Recurrence.End.html
version: "25.3"
title: "Class Recurrence.End"
page_id: "api/com/appiancorp/suiteapi/process/Recurrence.End"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Recurrence.End

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Recurrence.End

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

* * *

public static class Recurrence.End extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class defines condition under which Recurrence stops for a node in process.

The end condition can be one the following :
END\_ON\_OCCURRENCE i.e. end when node recurs 'x' times
END\_ON\_TIME i.e. end recurrence at Jan 1st 2005
END\_ON\_EXRESSION i.e. end when the expression evaluates to true.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Recurrence.End)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[END_ON_EXPRESSION](#END_ON_EXPRESSION)`

    End when expression evaluates to true.

    `static final int`

    `[END_ON_OCCURRENCE](#END_ON_OCCURRENCE)`

    End when node recurs 'x' times

    `static final int`

    `[END_ON_TIME](#END_ON_TIME)`

    End at a specified time

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[End](#%3Cinit%3E\(\))()`

    Creates an End object without setting the End type.

    `[End](#%3Cinit%3E\(int\))(int endType_)`

    Creates an End object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql")`

    `[getEndDate](#getEndDate\(\))()`

    Deprecated.

    use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEndDateExpr](#getEndDateExpr\(\))()`

    Deprecated.

    use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEndDateTimeExpr](#getEndDateTimeExpr\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEndExpression](#getEndExpression\(\))()`

    Gets the expression, which when true, stops the recurrence of the node.

    `[Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql")`

    `[getEndTime](#getEndTime\(\))()`

    Deprecated.

    use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEndTimeExpr](#getEndTimeExpr\(\))()`

    Deprecated.

    use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

    `int`

    `[getEndType](#getEndType\(\))()`

    Returns the type of End condition

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getNumOccurrences](#getNumOccurrences\(\))()`

    Retruns number of recurrence after which the recurrence ends.

    `void`

    `[setEndDate](#setEndDate\(java.sql.Date\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") endDate_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndDate](#setEndDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") endDate_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndDateExpr](#setEndDateExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endDateExpr_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndDateTimeExpr](#setEndDateTimeExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endDateTimeExpr)`

    `void`

    `[setEndExpression](#setEndExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endExpression_)`

    Sets the expression, which when true, stops the recurrence of the node.

    `void`

    `[setEndTime](#setEndTime\(java.sql.Time\))([Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") endTime_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndTime](#setEndTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") endTime_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndTimeExpr](#setEndTimeExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endTimeExpr_)`

    Deprecated.

    use {@link #setEndDateTimeExpr(String))}

    `void`

    `[setEndType](#setEndType\(int\))(int endType_)`

    Sets the type of end condition

    `void`

    `[setNumOccurrences](#setNumOccurrences\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") numOccurrences_)`

    Sets the number of occurrences after which the recurrence ends.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### END\_ON\_OCCURRENCE

        public static final int END\_ON\_OCCURRENCE

        End when node recurs 'x' times

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Recurrence.End.END_ON_OCCURRENCE)

    -   ### END\_ON\_TIME

        public static final int END\_ON\_TIME

        End at a specified time

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Recurrence.End.END_ON_TIME)

    -   ### END\_ON\_EXPRESSION

        public static final int END\_ON\_EXPRESSION

        End when expression evaluates to true.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.Recurrence.End.END_ON_EXPRESSION)

-   ## Constructor Details

    -   ### End

        public End()

        Creates an End object without setting the End type.

    -   ### End

        public End(int endType\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Creates an End object.

        Parameters:

        `endType_` - Type of the end condition.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`

        See Also:

        -   [`END_ON_OCCURRENCE`](#END_ON_OCCURRENCE)
        -   [`END_ON_TIME`](#END_ON_TIME)
        -   [`END_ON_EXPRESSION`](#END_ON_EXPRESSION)

-   ## Method Details

    -   ### getEndDateTimeExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEndDateTimeExpr()

    -   ### setEndDateTimeExpr

        public void setEndDateTimeExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endDateTimeExpr)

    -   ### getEndTime

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") getEndTime()

        Deprecated.

        use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

        Returns the time at which recurrence end

        Returns:

        the timestamp of the end time, null if the time is not set

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### getNumOccurrences

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getNumOccurrences()

        Retruns number of recurrence after which the recurrence ends.

        See Also:

        -   [`END_ON_OCCURRENCE`](#END_ON_OCCURRENCE)

    -   ### setNumOccurrences

        public void setNumOccurrences([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") numOccurrences\_)

        Sets the number of occurrences after which the recurrence ends.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the number of occurrences in less than 1.

    -   ### setEndTime

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") endTime\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

        Sets the time at which recurrence ends

        Parameters:

        `endTime_` - Timestamp representing the date and time at which recurrence should end.

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### setEndTime

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndTime([Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") endTime\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

    -   ### getEndExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEndExpression()

        Gets the expression, which when true, stops the recurrence of the node.

        Returns:

        String representing the expression

    -   ### setEndExpression

        public void setEndExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endExpression\_)

        Sets the expression, which when true, stops the recurrence of the node.

        Parameters:

        `endExpression_` - String representing the expression

    -   ### getEndType

        public int getEndType()

        Returns the type of End condition

        See Also:

        -   [`END_ON_OCCURRENCE`](#END_ON_OCCURRENCE)
        -   [`END_ON_TIME`](#END_ON_TIME)
        -   [`END_ON_EXPRESSION`](#END_ON_EXPRESSION)

    -   ### setEndType

        public void setEndType(int endType\_)

        Sets the type of end condition

        See Also:

        -   [`END_ON_OCCURRENCE`](#END_ON_OCCURRENCE)
        -   [`END_ON_TIME`](#END_ON_TIME)
        -   [`END_ON_EXPRESSION`](#END_ON_EXPRESSION)

    -   ### getEndDate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") getEndDate()

        Deprecated.

        use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

        Gets the date on which recurrence ends, if such a date has been configured with a TImestamp. Only the date portion of the timestamp is used.

        Returns:

        date at which recurrence should end (combined with endTime or endTimeExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### setEndDate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") endDate\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

        Sets the date on which recurrence ends. Only the date portion of the timestamp is used.

        Parameters:

        `endDate_` - date at which recurrence should end (combined with endTime or endTimeExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### setEndDate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndDate([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") endDate\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

    -   ### getEndDateExpr

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEndDateExpr()

        Deprecated.

        use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

        Gets the date on which recurrence ends, if such a date has been configured with an expression

        Returns:

        String that evaluates to a date at which recurrence should end (combined with endTime or endTimeExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### setEndDateExpr

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndDateExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endDateExpr\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

        Sets the date on which recurrence ends (as an expression)

        Parameters:

        `endDateExpr_` - String that evaluates to a date at which recurrence should end (combined with endTime or endTimeExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### getEndTimeExpr

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEndTimeExpr()

        Deprecated.

        use [`getEndDateTimeExpr()`](#getEndDateTimeExpr\(\))

        Gets the time at which recurrence ends, if such a time has been configured with an expression

        Returns:

        String that evaluates to a time at which recurrence should end (combined with endDate or endDateExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)

    -   ### setEndTimeExpr

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setEndTimeExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endTimeExpr\_)

        Deprecated.

        use {@link #setEndDateTimeExpr(String))}

        Sets the time at which recurrence ends

        Parameters:

        `endTime_` - String that evaluates to a time at which recurrence should end (combined with endDate or endDateExpr).

        See Also:

        -   [`END_ON_TIME`](#END_ON_TIME)