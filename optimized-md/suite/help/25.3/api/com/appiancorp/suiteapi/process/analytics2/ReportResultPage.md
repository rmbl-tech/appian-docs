---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ReportResultPage.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ReportResultPage.html
version: "25.3"
title: "Class ReportResultPage"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/ReportResultPage"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ReportResultPage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Result](../../common/Result.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.common.ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.analytics2.ReportResultPage

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ReportResultPage extends [ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")

Contains the results of an Analytics query.

See Also:

-   [`ProcessAnalyticsService.getReportPage(com.appiancorp.suiteapi.process.analytics2.ReportData, long)`](ProcessAnalyticsService.html#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData,long\))
-   [`ProcessAnalyticsService.getReportPageWithTypedValues(com.appiancorp.suiteapi.process.analytics2.ReportData)`](ProcessAnalyticsService.html#getReportPageWithTypedValues\(com.appiancorp.suiteapi.process.analytics2.ReportData\))
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.ReportResultPage)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ReportResultPage](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getColumnTypes](#getColumnTypes\(\))()`

    Get the column types for this report.

    `[PerformanceMetrics](PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getPerformanceMetrics](#getPerformanceMetrics\(\))()`

    Returns the performance metrics for the generated report.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getTaskIds](#getTaskIds\(\))()`

    Get the task id for each row of the report.

    `boolean`

    `[isMaximumReportTimeExceeded](#isMaximumReportTimeExceeded\(\))()`

    Returns whether the report generation took more time than the configured maximum time.

    `boolean`

    `[isTaskIdsValid](#isTaskIdsValid\(\))()`

    Is the taskIds field valid?

    `void`

    `[setColumnTypes](#setColumnTypes\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes_)`

    Set the column types for this report.

    `void`

    `[setMaximumReportTimeExceeded](#setMaximumReportTimeExceeded\(boolean\))(boolean maximumReportTimeExceeded_)`

    Sets whether the report generation took more time than the configured maximum time.

    `void`

    `[setPerformanceMetrics](#setPerformanceMetrics\(com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics\))([PerformanceMetrics](PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2") performanceMetrics_)`

    Sets the performance metrics for the generated report

    `void`

    `[setTaskIds](#setTaskIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] taskIds_)`

    Set the task id for each row of the report.

    `void`

    `[setTaskIdsValid](#setTaskIdsValid\(boolean\))(boolean valid)`

    Set whether the taskIds field is valid.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[ResultPage](../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")

    `[addResults](../../common/ResultPage.html#addResults\(java.lang.Object%5B%5D\)), [getAvailableItems](../../common/ResultPage.html#getAvailableItems\(\)), [getCodesForFailedIds](../../common/ResultPage.html#getCodesForFailedIds\(\)), [getFailedIds](../../common/ResultPage.html#getFailedIds\(\)), [getParent](../../common/ResultPage.html#getParent\(\)), [setAvailableItems](../../common/ResultPage.html#setAvailableItems\(long\)), [setCodesForFailedIds](../../common/ResultPage.html#setCodesForFailedIds\(java.lang.Integer%5B%5D\)), [setFailedIds](../../common/ResultPage.html#setFailedIds\(java.lang.Long%5B%5D\)), [setParent](../../common/ResultPage.html#setParent\(java.lang.Object\)), [toString](../../common/ResultPage.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Result](../../common/Result.html "class in com.appiancorp.suiteapi.common")

    `[getNumResults](../../common/Result.html#getNumResults\(\)), [getResults](../../common/Result.html#getResults\(\)), [setResults](../../common/Result.html#setResults\(java.lang.Object%5B%5D\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ReportResultPage

        public ReportResultPage()

-   ## Method Details

    -   ### isMaximumReportTimeExceeded

        public boolean isMaximumReportTimeExceeded()

        Returns whether the report generation took more time than the configured maximum time.

        Returns:

        true if the report took more time to generate than the configured maximum time, else false.

    -   ### setMaximumReportTimeExceeded

        public void setMaximumReportTimeExceeded(boolean maximumReportTimeExceeded\_)

        Sets whether the report generation took more time than the configured maximum time.

        Parameters:

        `flag` - to denote whether the maximum time exceeded.

    -   ### isTaskIdsValid

        public boolean isTaskIdsValid()

        Is the taskIds field valid? This will be true only for task reports. If false, the field should not be used.

        Returns:

        true if the taskIds field is valid, otherwise false

    -   ### setTaskIdsValid

        public void setTaskIdsValid(boolean valid)

        Set whether the taskIds field is valid. This is set by the report generator. Call isTaskIdsValid to determine if the field should be used.

        Parameters:

        `state` - whether or not the taskIds field contains valid data.

    -   ### getPerformanceMetrics

        public [PerformanceMetrics](PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2") getPerformanceMetrics()

        Returns the performance metrics for the generated report.

        Returns:

    -   ### setPerformanceMetrics

        public void setPerformanceMetrics([PerformanceMetrics](PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2") performanceMetrics\_)

        Sets the performance metrics for the generated report

        Parameters:

        `performanceMetrics_` - Performance metrics for the report.

        See Also:

        -   `#PerformanceMetrics`

    -   ### getTaskIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getTaskIds()

        Get the task id for each row of the report. Valid only for task reports.

        Returns:

        the task ids.

        See Also:

        -   [`setTaskIds(java.lang.Long[])`](#setTaskIds\(java.lang.Long%5B%5D\))

    -   ### setTaskIds

        public void setTaskIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] taskIds\_)

        Set the task id for each row of the report. Valid only for task reports.

        Parameters:

        `taskIds_` - the task ids.

        See Also:

        -   [`getTaskIds()`](#getTaskIds\(\))

    -   ### getColumnTypes

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getColumnTypes()

        Get the column types for this report. For keys and values, see [`ProcessAnalyticsService.getReportPage(com.appiancorp.suiteapi.process.analytics2.ReportData, long)`](ProcessAnalyticsService.html#getReportPage\(com.appiancorp.suiteapi.process.analytics2.ReportData,long\)).

        Returns:

        the column types.

        See Also:

        -   [`setColumnTypes(java.util.Map)`](#setColumnTypes\(java.util.Map\))

    -   ### setColumnTypes

        public void setColumnTypes([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes\_)

        Set the column types for this report.

        Parameters:

        `columnTypes_` - the column types.

        See Also:

        -   [`getColumnTypes()`](#getColumnTypes\(\))