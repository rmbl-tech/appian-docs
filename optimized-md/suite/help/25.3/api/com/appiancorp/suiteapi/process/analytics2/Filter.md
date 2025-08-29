---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/Filter.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/Filter.html
version: "25.3"
title: "Interface Filter"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/Filter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Interface Filter

All Superinterfaces:

`[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

All Known Implementing Classes:

`[AheadOfScheduleFilter](AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[BehindScheduleFilter](BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedAheadOfScheduleFilter](CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedBehindScheduleFilter](CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[CompletedFilter](CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[DueTodayFilter](DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LastNCompletedFilter](LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[LastNDaysFilter](LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[NotYetCompletedFilter](NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[OutsideNStandardDeviationsFilter](OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[RunningFilter](RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`, `[SimpleColumnFilter](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")`

* * *

public interface Filter extends [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

The base interface for all filters in analytics. All filters must implement this interface (by extending `BaseFilter` which implements this interface), and will have the methods contained within. All filters must be referenced from [`ReportData.getBaseFilters()`](ReportData.html#getBaseFilters\(\)) and [`QuickFilterItem.getFilters()`](QuickFilterItem.html#getFilters\(\)).

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[getApply](#getApply\(\))()`

    Gets whether or not the `Filter` should be applied.

    `int`

    `[getFilterType](#getFilterType\(\))()`

    Gets the type of the `Filter` These are constants that tell the backend what kind of filter this is.

    `void`

    `[setApply](#setApply\(boolean\))(boolean apply_)`

    Sets whether or not the `Filter` should be applied.

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[DeepCloneable](../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

    `[clone](../../common/DeepCloneable.html#clone\(\))`

-   ## Method Details

    -   ### getFilterType

        int getFilterType()

        Gets the type of the `Filter` These are constants that tell the backend what kind of filter this is.

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

    -   ### getApply

        boolean getApply()

        Gets whether or not the `Filter` should be applied. If it returns false, the filter will not be applied to the report.

        Returns:

        true if the `Filter` is applied, false if not

        See Also:

        -   [`setApply(boolean)`](#setApply\(boolean\))

    -   ### setApply

        void setApply(boolean apply\_)

        Sets whether or not the `Filter` should be applied.

        Parameters:

        `apply_` - Set to true to apply the `Filter`, false to not apply it

        See Also:

        -   [`getApply()`](#getApply\(\))