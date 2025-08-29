---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Interval.html
original_path: api/com/appiancorp/suiteapi/process/Interval.html
version: "25.3"
title: "Class Interval"
page_id: "api/com/appiancorp/suiteapi/process/Interval"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Interval

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Interval

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Interval extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Interval define a period of time in terms of Minutes, Hours, Days, Weeks, Months and Years. This class is generally used to define an event relative to some other event. The actual time period will be summation of the intervals of all the properties of the Interval class. For example if Minute interval is 15 mins and Day interval is 10 days and all other properties are set to null, then the actual time interval will be of 10 days and 15 mins.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Interval)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Interval](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDayInterval](#getDayInterval\(\))()`

    Returns the time interval in terms of number of days

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDayIntervalExpr](#getDayIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of days

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getHourInterval](#getHourInterval\(\))()`

    Returns the time interval in terms of number of hours

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getHourIntervalExpr](#getHourIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of hours

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMinInterval](#getMinInterval\(\))()`

    Returns the time interval in terms of number of minutes

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMinIntervalExpr](#getMinIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of minutes

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMonthInterval](#getMonthInterval\(\))()`

    Returns the time interval in terms of number of months

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMonthIntervalExpr](#getMonthIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of months

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getWeekInterval](#getWeekInterval\(\))()`

    Returns the time interval in terms of number of weeks

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getWeekIntervalExpr](#getWeekIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of weeks

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getYearInterval](#getYearInterval\(\))()`

    Returns the time interval in terms of number of years

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getYearIntervalExpr](#getYearIntervalExpr\(\))()`

    Returns an expression that will be used to compute the time interval in terms of years

    `void`

    `[setDayInterval](#setDayInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dayInterval_)`

    Sets the time interval in terms of number of days

    `void`

    `[setDayIntervalExpr](#setDayIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayIntervalExpr_)`

    Sets the time interval in terms of number of days, using an expression

    `void`

    `[setHourInterval](#setHourInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") hourInterval_)`

    Sets the time interval in terms of number of hours

    `void`

    `[setHourIntervalExpr](#setHourIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") hourIntervalExpr_)`

    Sets the time interval in terms of number of hours, using an expression

    `void`

    `[setMinInterval](#setMinInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") minInterval_)`

    Sets the time interval in terms of number of minutes

    `void`

    `[setMinIntervalExpr](#setMinIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") minIntervalExpr_)`

    Sets the time interval in terms of number of minutes, using an expression

    `void`

    `[setMonthInterval](#setMonthInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") monthInterval_)`

    Sets the time interval in terms of number of months

    `void`

    `[setMonthIntervalExpr](#setMonthIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") monthIntervalExpr_)`

    Sets the time interval in terms of number of months, using an expression

    `void`

    `[setWeekInterval](#setWeekInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") weekInterval_)`

    Sets the time interval in terms of number of weeks

    `void`

    `[setWeekIntervalExpr](#setWeekIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") weekIntervalExpr_)`

    Sets the time interval in terms of number of weeks, using an expression

    `void`

    `[setYearInterval](#setYearInterval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") yearInterval_)`

    Sets the time interval in terms of number of years.

    `void`

    `[setYearIntervalExpr](#setYearIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") yearIntervalExpr_)`

    Sets the time interval in terms of number of years, using an expression

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Returns String representation of the `Interval` object.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### Interval

        public Interval()

-   ## Method Details

    -   ### getDayInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDayInterval()

        Returns the time interval in terms of number of days

        Returns:

        numbers of days in terms of a Long object. Null if the number of days is not set.

    -   ### setDayInterval

        public void setDayInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dayInterval\_)

        Sets the time interval in terms of number of days

        Parameters:

        `dayInterval_` - Long value representing the number of days

    -   ### getHourInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getHourInterval()

        Returns the time interval in terms of number of hours

        Returns:

        number of hours as a Long object. Null if the number of hours is not set.

    -   ### setHourInterval

        public void setHourInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") hourInterval\_)

        Sets the time interval in terms of number of hours

        Parameters:

        `hourInterval_` - Long value representing number of hours

    -   ### getMinInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMinInterval()

        Returns the time interval in terms of number of minutes

        Returns:

        number of minutes as a Long object. Null if the number of minutes is not set.

    -   ### setMinInterval

        public void setMinInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") minInterval\_)

        Sets the time interval in terms of number of minutes

        Parameters:

        `minInterval_` - Long value representing the number of minutes

    -   ### getMonthInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMonthInterval()

        Returns the time interval in terms of number of months

        Returns:

        number of months as a Long object. Null if the number of months is not set.

    -   ### setMonthInterval

        public void setMonthInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") monthInterval\_)

        Sets the time interval in terms of number of months

        Parameters:

        `monthInterval_` - Long value representing the number of months

    -   ### getWeekInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getWeekInterval()

        Returns the time interval in terms of number of weeks

        Returns:

        number of weeks as a Long object. Null if the number of weeks is not set.

    -   ### setWeekInterval

        public void setWeekInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") weekInterval\_)

        Sets the time interval in terms of number of weeks

        Parameters:

        `weekInterval_` - Long value representing the number of weeks

    -   ### getYearInterval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getYearInterval()

        Returns the time interval in terms of number of years

        Returns:

        number of years as a Long object. Null if the number of years is not set.

    -   ### setYearInterval

        public void setYearInterval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") yearInterval\_)

        Sets the time interval in terms of number of years.

        Parameters:

        `yearInterval_` - Long value representing the number of years

    -   ### getDayIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDayIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of days

        Returns:

        the expression, which should evaluate to an integer

    -   ### setDayIntervalExpr

        public void setDayIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayIntervalExpr\_)

        Sets the time interval in terms of number of days, using an expression

        Parameters:

        `dayIntervalExpr_` - Expression that should evaluate to an integer

    -   ### getHourIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getHourIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of hours

        Returns:

        the expression, which should evaluate to an integer

    -   ### setHourIntervalExpr

        public void setHourIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") hourIntervalExpr\_)

        Sets the time interval in terms of number of hours, using an expression

        Parameters:

        `hourIntervalExpr_` - Expression that should evaluate to an integer

    -   ### getMinIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMinIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of minutes

        Returns:

        the expression, which should evaluate to an integer

    -   ### setMinIntervalExpr

        public void setMinIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") minIntervalExpr\_)

        Sets the time interval in terms of number of minutes, using an expression

        Parameters:

        `minIntervalExpr_` - Expression that should evaluate to an integer

    -   ### getMonthIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMonthIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of months

        Returns:

        the expression, which should evaluate to an integer

    -   ### setMonthIntervalExpr

        public void setMonthIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") monthIntervalExpr\_)

        Sets the time interval in terms of number of months, using an expression

        Parameters:

        `monthIntervalExpr_` - Expression that should evaluate to an integer

    -   ### getWeekIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getWeekIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of weeks

        Returns:

        the expression, which should evaluate to an integer

    -   ### setWeekIntervalExpr

        public void setWeekIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") weekIntervalExpr\_)

        Sets the time interval in terms of number of weeks, using an expression

        Parameters:

        `weekIntervalExpr_` - Expression that should evaluate to an integer

    -   ### getYearIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getYearIntervalExpr()

        Returns an expression that will be used to compute the time interval in terms of years

        Returns:

        the expression, which should evaluate to an integer

    -   ### setYearIntervalExpr

        public void setYearIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") yearIntervalExpr\_)

        Sets the time interval in terms of number of years, using an expression

        Parameters:

        `yearIntervalExpr_` - Expression that should evaluate to an integer

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Returns String representation of the `Interval` object.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        The XML representation of this object.

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - StringBuffer which is populated with the String representation of the `Interval` object.