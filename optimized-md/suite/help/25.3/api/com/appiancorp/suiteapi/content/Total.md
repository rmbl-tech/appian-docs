---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/Total.html
original_path: api/com/appiancorp/suiteapi/content/Total.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class Total

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.content.Total

Direct Known Subclasses:

`[TotalByDayOfWeek](TotalByDayOfWeek.html "class in com.appiancorp.suiteapi.content")`, `[TotalByExtension](TotalByExtension.html "class in com.appiancorp.suiteapi.content")`, `[TotalByHour](TotalByHour.html "class in com.appiancorp.suiteapi.content")`, `[TotalByType](TotalByType.html "class in com.appiancorp.suiteapi.content")`

* * *

public class Total extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class stores a count and is extended by classes used in the ContentStatisticsService.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Total](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getCount](#getCount\(\))()`

    Returns the count.

    `void`

    `[setCount](#setCount\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") count_)`

    Set the count.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Total

        public Total()

-   ## Method Details

    -   ### getCount

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getCount()

        Returns the count.

        Returns:

        the count

        See Also:

        -   [`setCount(Integer)`](#setCount\(java.lang.Integer\))

    -   ### setCount

        public void setCount([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") count\_)

        Set the count.

        Parameters:

        `count_` - the count

        See Also:

        -   [`getCount()`](#getCount\(\))