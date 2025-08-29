---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/BaseFilter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/BaseFilter.html
version: "25.3"
title: "Class BaseFilter"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/BaseFilter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class BaseFilter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.BaseFilter

All Implemented Interfaces:

`[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[AheadOfScheduleFilter](AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[BehindScheduleFilter](BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedAheadOfScheduleFilter](CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedBehindScheduleFilter](CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedFilter](CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[DueTodayFilter](DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LastNCompletedFilter](LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LastNDaysFilter](LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[NotYetCompletedFilter](NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[OutsideNStandardDeviationsFilter](OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[RunningFilter](RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[SimpleColumnFilter](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

* * *

public abstract class BaseFilter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Base class for all analytics filters. All filters should extend this class and implement the `getFilterType()` method. All filters must have a corresponding implementation on the back end. All filters must be referenced from [`ReportData.getBaseFilters()`](ReportData.html#getBaseFilters\(\)) and [`QuickFilterItem.getFilters()`](QuickFilterItem.html#getFilters\(\)).

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.BaseFilter)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[BaseFilter](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)`

    Is this Filter equal to another object?

    `boolean`

    `[getApply](#getApply\(\))()`

    Returns `true` if the filter should be applied and `false` otherwise.

    `abstract int`

    `[getFilterType](#getFilterType\(\))()`

    Gets the type of the `Filter` These are constants that tell the backend what kind of filter this is.

    `int`

    `[hashCode](#hashCode\(\))()`

    Hash code.

    `void`

    `[setApply](#setApply\(boolean\))(boolean apply_)`

    Sets whether or not the `Filter` should be applied.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### BaseFilter

        public BaseFilter()

-   ## Method Details

    -   ### getFilterType

        public abstract int getFilterType()

        Description copied from interface: `[Filter](Filter.html#getFilterType\(\))`

        Gets the type of the `Filter` These are constants that tell the backend what kind of filter this is.

        Specified by:

        `[getFilterType](Filter.html#getFilterType\(\))` in interface `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

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

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") object)

        Is this Filter equal to another object?

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Hash code.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### getApply

        public boolean getApply()

        Returns `true` if the filter should be applied and `false` otherwise.

        Specified by:

        `[getApply](Filter.html#getApply\(\))` in interface `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

        Returns:

        true if the `Filter` is applied, false if not

        See Also:

        -   [`setApply(boolean)`](#setApply\(boolean\))

    -   ### setApply

        public void setApply(boolean apply\_)

        Description copied from interface: `[Filter](Filter.html#setApply\(boolean\))`

        Sets whether or not the `Filter` should be applied.

        Specified by:

        `[setApply](Filter.html#setApply\(boolean\))` in interface `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")`

        Parameters:

        `apply_` - Set to true to apply the `Filter`, false to not apply it

        See Also:

        -   [`getApply()`](#getApply\(\))