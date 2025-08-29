---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/TotalByHour.html
original_path: api/com/appiancorp/suiteapi/content/TotalByHour.html
version: "25.3"
title: "Class TotalByHour"
page_id: "api/com/appiancorp/suiteapi/content/TotalByHour"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class TotalByHour

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.content.Total](Total.html "class in com.appiancorp.suiteapi.content")

com.appiancorp.suiteapi.content.TotalByHour

* * *

public class TotalByHour extends [Total](Total.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for a an hour of the day.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TotalByHour](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getHourOfDay](#getHourOfDay\(\))()`

    Get the hour of day (0-23).

    `void`

    `[setHourOfDay](#setHourOfDay\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") hour_)`

    Set the hour of day.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.content.[Total](Total.html "class in com.appiancorp.suiteapi.content")

    `[getCount](Total.html#getCount\(\)), [setCount](Total.html#setCount\(java.lang.Integer\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TotalByHour

        public TotalByHour()

-   ## Method Details

    -   ### getHourOfDay

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getHourOfDay()

        Get the hour of day (0-23).

        Returns:

        hour of day

        See Also:

        -   [`setHourOfDay(Integer)`](#setHourOfDay\(java.lang.Integer\))

    -   ### setHourOfDay

        public void setHourOfDay([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") hour\_)

        Set the hour of day.

        Parameters:

        `hour_` - hour of day (0-23)

        See Also:

        -   [`getHourOfDay()`](#getHourOfDay\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`