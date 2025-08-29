---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/CompletedAheadOfScheduleFilter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class CompletedAheadOfScheduleFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.analytics2.BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

com.appiancorp.suiteapi.process.analytics2.CompletedAheadOfScheduleFilter

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class CompletedAheadOfScheduleFilter extends [BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2") implements [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

this unused filter will be removed in a future release

Filter for tasks/processes that were completed ahead of schedule: when this filter is added, only completed tasks/processes that were completed ahead of schedule will be returned in the report. Whether a task/process was completed ahead of schedule or not is determined from the target completion time specified in the process model.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.CompletedAheadOfScheduleFilter)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[TYPE](#TYPE)`

    Deprecated.

    This constant tells the backend what kind of filter this is.

    ### Fields inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[LOG](BaseFilter.html#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CompletedAheadOfScheduleFilter](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getFilterType](#getFilterType\(\))()`

    Deprecated.

    Returns the type of this filter.

    ### Methods inherited from class com.appiancorp.suiteapi.process.analytics2.[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    `[clone](BaseFilter.html#clone\(\)), [equals](BaseFilter.html#equals\(java.lang.Object\)), [getApply](BaseFilter.html#getApply\(\)), [hashCode](BaseFilter.html#hashCode\(\)), [setApply](BaseFilter.html#setApply\(boolean\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    `[clone](../../common/DeepCloneable.html#clone\(\))`

-   ## Field Details

    -   ### TYPE

        public static final int TYPE

        Deprecated.

        This constant tells the backend what kind of filter this is.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.CompletedAheadOfScheduleFilter.TYPE)

-   ## Constructor Details

    -   ### CompletedAheadOfScheduleFilter

        public CompletedAheadOfScheduleFilter()

        Deprecated.

-   ## Method Details

    -   ### getFilterType

        public int getFilterType()

        Deprecated.

        Returns the type of this filter.

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