---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ReportValidator.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ReportValidator.html
version: "25.3"
title: "Class ReportValidator"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/ReportValidator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ReportValidator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.ReportValidator

* * *

public class ReportValidator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Validator for `ProcessReport`s. This is used to validate `ProcessReport`s (as far as is possible) before passing them through from the browser.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ERROR_NO_COLUMN_AGGREGATION](#ERROR_NO_COLUMN_AGGREGATION)`

    Report has column with no aggregation function.

    `static final int`

    `[ERROR_NO_COLUMNS](#ERROR_NO_COLUMNS)`

    Report has no columns.

    `static final int`

    `[ERROR_NO_CUSTOM_TOOLBAR_PATH](#ERROR_NO_CUSTOM_TOOLBAR_PATH)`

    Custom toolbar not specified.

    `static final int`

    `[ERROR_NO_DRILL_PATH_TYPE](#ERROR_NO_DRILL_PATH_TYPE)`

    DrillPath has no type.

    `static final int`

    `[ERROR_NO_FILTER_VALUE](#ERROR_NO_FILTER_VALUE)`

    SimpleColumnFilter has no constant value to compare against.

    `static final int`

    `[ERROR_NO_REPORT_NAME](#ERROR_NO_REPORT_NAME)`

    Report has no name.

    `static final int`

    `[ERROR_NO_VIEWABLE_COLUMNS](#ERROR_NO_VIEWABLE_COLUMNS)`

    Report has no viewable columns.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ReportValidator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[validate](#validate\(com.appiancorp.suiteapi.process.analytics2.ProcessReport,com.appiancorp.services.ServiceContext\))([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") report_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Validates a ProcessReport and returns an array of messages. for any errors found in the report.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### ERROR\_NO\_REPORT\_NAME

        public static final int ERROR\_NO\_REPORT\_NAME

        Report has no name. Used to produce a bundle key of "errors.code.1".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_REPORT_NAME)

    -   ### ERROR\_NO\_COLUMN\_AGGREGATION

        public static final int ERROR\_NO\_COLUMN\_AGGREGATION

        Report has column with no aggregation function. Used to produce a bundle key of "errors.code.2".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_COLUMN_AGGREGATION)

    -   ### ERROR\_NO\_COLUMNS

        public static final int ERROR\_NO\_COLUMNS

        Report has no columns. Used to produce a bundle key of "errors.code.3".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_COLUMNS)

    -   ### ERROR\_NO\_VIEWABLE\_COLUMNS

        public static final int ERROR\_NO\_VIEWABLE\_COLUMNS

        Report has no viewable columns. Used to produce a bundle key of "errors.code.4".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_VIEWABLE_COLUMNS)

    -   ### ERROR\_NO\_FILTER\_VALUE

        public static final int ERROR\_NO\_FILTER\_VALUE

        SimpleColumnFilter has no constant value to compare against. Used to produce a bundle key of "errors.code.5".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_FILTER_VALUE)

    -   ### ERROR\_NO\_DRILL\_PATH\_TYPE

        public static final int ERROR\_NO\_DRILL\_PATH\_TYPE

        DrillPath has no type. Used to produce a bundle key of "errors.code.6".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_DRILL_PATH_TYPE)

    -   ### ERROR\_NO\_CUSTOM\_TOOLBAR\_PATH

        public static final int ERROR\_NO\_CUSTOM\_TOOLBAR\_PATH

        Custom toolbar not specified. Used to produce a bundle key of "errors.code.7".

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportValidator.ERROR_NO_CUSTOM_TOOLBAR_PATH)

-   ## Constructor Details

    -   ### ReportValidator

        public ReportValidator()

-   ## Method Details

    -   ### validate

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] validate([ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") report\_, [ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Validates a ProcessReport and returns an array of messages. for any errors found in the report.

        Parameters:

        `report_` - the ProcessReport

        `sc_` - the ServiceContext

        Returns:

        an array of error messages