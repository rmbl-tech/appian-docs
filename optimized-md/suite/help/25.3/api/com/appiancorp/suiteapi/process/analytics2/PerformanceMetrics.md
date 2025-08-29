---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/PerformanceMetrics.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class PerformanceMetrics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class PerformanceMetrics extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This object represents the metrics for the generated report. It contains an array of PerformanceAttributes that are executed while generating the report. The object contains various timings related to the generation of the report.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.PerformanceMetrics)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PerformanceMetrics](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getExecutionTimestamp](#getExecutionTimestamp\(\))()`

    Gets the timestamp when the performance metrics was generated for the report.

    `double`

    `[getMaximumReportTime](#getMaximumReportTime\(\))()`

    Returns the maximum time allowed for generating the report in the shard.

    `double`

    `[getMaximumReportTimeMain](#getMaximumReportTimeMain\(\))()`

    Returns the maximum time allowed for generating the report.

    `double`

    `[getMaximumReportTimeMaster](#getMaximumReportTimeMaster\(\))()`

    Deprecated.

    use [`getMaximumReportTimeMain()`](#getMaximumReportTimeMain\(\)) instead

    `[PerformanceAttributes](PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getPerformanceAttributes](#getPerformanceAttributes\(\))()`

    Returns an array of performance attributes that were applied during report generation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getReportName](#getReportName\(\))()`

    Returns the name of the report for which the performance metrics belong to.

    `double`

    `[getTotalTime](#getTotalTime\(\))()`

    Returns the total time taken to generate the report.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUsername](#getUsername\(\))()`

    Returns the name of the user that executed the report

    `int`

    `[incrementOrder](#incrementOrder\(\))()`

    Returns the next order integer value to be used.

    `void`

    `[setExecutionTimestamp](#setExecutionTimestamp\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") executionTimestamp_)`

    Sets the timestamp of PerformanceMetrics/report generation in the shard.

    `void`

    `[setMaximumReportTime](#setMaximumReportTime\(double\))(double maximumReportTime_)`

    Sets the maximum time allowed for generating the report.

    `void`

    `[setMaximumReportTimeMain](#setMaximumReportTimeMain\(double\))(double maximumReportTimeMain_)`

    Sets the maximum time allowed for generating the report.

    `void`

    `[setMaximumReportTimeMaster](#setMaximumReportTimeMaster\(double\))(double maximumReportTimeMain_)`

    Deprecated.

    use [`setMaximumReportTimeMain(double)`](#setMaximumReportTimeMain\(double\)) instead

    `void`

    `[setOrder](#setOrder\(java.util.concurrent.atomic.AtomicInteger\))([AtomicInteger](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/atomic/AtomicInteger.html "class or interface in java.util.concurrent.atomic") order)`

    `void`

    `[setPerformanceAttributes](#setPerformanceAttributes\(com.appiancorp.suiteapi.process.analytics2.PerformanceAttributes%5B%5D\))([PerformanceAttributes](PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")[] performanceAttributes_)`

    `void`

    `[setReportName](#setReportName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reportName_)`

    `void`

    `[setTotalTime](#setTotalTime\(double\))(double totalTime_)`

    `void`

    `[setUsername](#setUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PerformanceMetrics

        public PerformanceMetrics()

-   ## Method Details

    -   ### getExecutionTimestamp

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getExecutionTimestamp()

        Gets the timestamp when the performance metrics was generated for the report. This is same as time when report was generated.

    -   ### setExecutionTimestamp

        public void setExecutionTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") executionTimestamp\_)

        Sets the timestamp of PerformanceMetrics/report generation in the shard.

    -   ### getMaximumReportTime

        public double getMaximumReportTime()

        Returns the maximum time allowed for generating the report in the shard.

    -   ### setMaximumReportTime

        public void setMaximumReportTime(double maximumReportTime\_)

        Sets the maximum time allowed for generating the report.

    -   ### getMaximumReportTimeMaster

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public double getMaximumReportTimeMaster()

        Deprecated.

        use [`getMaximumReportTimeMain()`](#getMaximumReportTimeMain\(\)) instead

        Returns the maximum time allowed for generating the report.

    -   ### getMaximumReportTimeMain

        public double getMaximumReportTimeMain()

        Returns the maximum time allowed for generating the report.

    -   ### setMaximumReportTimeMaster

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setMaximumReportTimeMaster(double maximumReportTimeMain\_)

        Deprecated.

        use [`setMaximumReportTimeMain(double)`](#setMaximumReportTimeMain\(double\)) instead

        Sets the maximum time allowed for generating the report.

    -   ### setMaximumReportTimeMain

        public void setMaximumReportTimeMain(double maximumReportTimeMain\_)

        Sets the maximum time allowed for generating the report.

    -   ### getPerformanceAttributes

        public [PerformanceAttributes](PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getPerformanceAttributes()

        Returns an array of performance attributes that were applied during report generation.

    -   ### setPerformanceAttributes

        public void setPerformanceAttributes([PerformanceAttributes](PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] performanceAttributes\_)

        See Also:

        -   [`getPerformanceAttributes()`](#getPerformanceAttributes\(\))

    -   ### getReportName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getReportName()

        Returns the name of the report for which the performance metrics belong to.

    -   ### setReportName

        public void setReportName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reportName\_)

        See Also:

        -   [`getReportName()`](#getReportName\(\))

    -   ### getTotalTime

        public double getTotalTime()

        Returns the total time taken to generate the report.

    -   ### setTotalTime

        public void setTotalTime(double totalTime\_)

        See Also:

        -   [`getTotalTime()`](#getTotalTime\(\))

    -   ### getUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUsername()

        Returns the name of the user that executed the report

    -   ### setUsername

        public void setUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        See Also:

        -   [`getUsername()`](#getUsername\(\))

    -   ### incrementOrder

        public int incrementOrder()

        Returns the next order integer value to be used.

        Returns:

    -   ### setOrder

        public void setOrder([AtomicInteger](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/concurrent/atomic/AtomicInteger.html "class or interface in java.util.concurrent.atomic") order)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`