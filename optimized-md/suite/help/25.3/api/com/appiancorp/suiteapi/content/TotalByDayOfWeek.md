---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/TotalByDayOfWeek.html
original_path: api/com/appiancorp/suiteapi/content/TotalByDayOfWeek.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class TotalByDayOfWeek

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.content.Total](Total.html "class in com.appiancorp.suiteapi.content")

com.appiancorp.suiteapi.content.TotalByDayOfWeek

* * *

public class TotalByDayOfWeek extends [Total](Total.html "class in com.appiancorp.suiteapi.content")

This bean tracks the count for a day of the week.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TotalByDayOfWeek](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayOfWeek](#getDayOfWeek\(\))()`

    Get the day of the week (0-6, where 0=Monday).

    `void`

    `[setDayOfWeek](#setDayOfWeek\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek_)`

    Set the day of the week (0-6, where 0=Monday).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.content.[Total](Total.html "class in com.appiancorp.suiteapi.content")

    `[getCount](Total.html#getCount\(\)), [setCount](Total.html#setCount\(java.lang.Integer\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TotalByDayOfWeek

        public TotalByDayOfWeek()

-   ## Method Details

    -   ### getDayOfWeek

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayOfWeek()

        Get the day of the week (0-6, where 0=Monday).

        Returns:

        day of the week

        See Also:

        -   [`setDayOfWeek(Integer)`](#setDayOfWeek\(java.lang.Integer\))

    -   ### setDayOfWeek

        public void setDayOfWeek([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek\_)

        Set the day of the week (0-6, where 0=Monday).

        Parameters:

        `dayOfWeek_` - day of the week (0-6)

        See Also:

        -   [`getDayOfWeek()`](#getDayOfWeek\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`