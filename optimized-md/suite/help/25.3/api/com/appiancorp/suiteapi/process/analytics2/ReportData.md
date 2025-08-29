---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ReportData.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ReportData.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ReportData

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.ReportData

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ReportData extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean defining the type of data contained in an analytics report. Does not contain the actual data. By default, sortOrder is set to [`Constants.SORT_ORDER_ASCENDING`](../../common/Constants.html#SORT_ORDER_ASCENDING), batchSize is set to DEFAULT\_BATCH\_SIZE, sortColumnLocalId and startIndex are set to 0, and the report is not recursive.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.ReportData)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[CONTEXT_TYPE_ASSIGNED_GROUP](#CONTEXT_TYPE_ASSIGNED_GROUP)`

    Report only contains data for tasks assigned to the groups specified in the context.

    `static final int`

    `[CONTEXT_TYPE_ATTRIBUTED_TO_USER](#CONTEXT_TYPE_ATTRIBUTED_TO_USER)`

    Report only contains data for tasks attributed to the users specified in the context.

    `static final int`

    `[CONTEXT_TYPE_CREATED_BY](#CONTEXT_TYPE_CREATED_BY)`

    Report only contains data for process models created by the users specified in the context.

    `static final int`

    `[CONTEXT_TYPE_GROUP_MEMBERS](#CONTEXT_TYPE_GROUP_MEMBERS)`

    Report only contains data for tasks attributed to the groups specified in the context.

    `static final int`

    `[CONTEXT_TYPE_INITIATED_BY](#CONTEXT_TYPE_INITIATED_BY)`

    Report only contains data for processes initiated by the users specified in the context.

    `static final int`

    `[CONTEXT_TYPE_LAST_MOD_BY](#CONTEXT_TYPE_LAST_MOD_BY)`

    Report only contains data for process models last modified by the users specified in the context.

    `static final int`

    `[CONTEXT_TYPE_NODE](#CONTEXT_TYPE_NODE)`

    Report only contains data for nodes specified in the context.

    `static final int`

    `[CONTEXT_TYPE_PROCESS](#CONTEXT_TYPE_PROCESS)`

    Report only contains data for processes specified in the context.

    `static final int`

    `[CONTEXT_TYPE_PROCESS_MODEL](#CONTEXT_TYPE_PROCESS_MODEL)`

    Report only contains data for process models specified in the context.

    `static final int`

    `[CONTEXT_TYPE_PROCESS_MODEL_VERSION](#CONTEXT_TYPE_PROCESS_MODEL_VERSION)`

    Report only contains data for process model versions specified in the context.

    `static final int`

    `[CONTEXT_TYPE_SYSTEM](#CONTEXT_TYPE_SYSTEM)`

    Report has no context.

    `static final int`

    `[CONTEXT_TYPE_TASK_OWNER](#CONTEXT_TYPE_TASK_OWNER)`

    Report only contains data for tasks owned by the users specified in the context.

    `static final int`

    `[DEFAULT_BATCH_SIZE](#DEFAULT_BATCH_SIZE)`

    Default number of results to return per page in the report.

    `static final int`

    `[REPORT_TYPE_ARCHIVED_PROCESS](#REPORT_TYPE_ARCHIVED_PROCESS)`

    Deprecated.

    this has not been considered a valid report type and will be removed

    `static final int`

    `[REPORT_TYPE_EVENTS](#REPORT_TYPE_EVENTS)`

    Deprecated.

    this has not been considered a valid report type and will be removed

    `static final int`

    `[REPORT_TYPE_PM](#REPORT_TYPE_PM)`

    Report on Process Models.

    `static final int`

    `[REPORT_TYPE_PMVERSION](#REPORT_TYPE_PMVERSION)`

    Report on Process Model Versions.

    `static final int`

    `[REPORT_TYPE_PROCESS](#REPORT_TYPE_PROCESS)`

    Report on Processes.

    `static final int`

    `[REPORT_TYPE_TASK](#REPORT_TYPE_TASK)`

    Report on Tasks.

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ReportData](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[filter](#filter\(com.appiancorp.suiteapi.process.analytics2.Filter\))([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2") filter)`

    Add a filter to the list of base filters for this report.

    `int`

    `[filter](#filter\(com.appiancorp.suiteapi.process.analytics2.QuickFilter\))([QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2") filter)`

    Add a filter to the list of quick filters for this report.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getArfDocumentId](#getArfDocumentId\(\))()`

    `[Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getBaseFilters](#getBaseFilters\(\))()`

    Get the list of base filters for this report.

    `int`

    `[getBatchSize](#getBatchSize\(\))()`

    Get the batch size.

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getColumnByLocalId](#getColumnByLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") id)`

    Get a column in this report by id.

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getColumnByStringId](#getColumnByStringId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id)`

    Get a column in this report by stringId.

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getColumns](#getColumns\(\))()`

    Get the columns for this report.

    `[LocalObject](../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getContext](#getContext\(\))()`

    Get the context for this report.

    `int`

    `[getContextType](#getContextType\(\))()`

    Get the context type, defined by CONTEXT\_TYPE\_XXX.

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getDateTimeColumns](#getDateTimeColumns\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes_)`

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Unused but reserved.

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getMetricColumns](#getMetricColumns\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes_)`

    Gets the columns which can be used as metrics.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getNextAvailableColumnLocalId](#getNextAvailableColumnLocalId\(\))()`

    Returns the next available column id.

    `[QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getQuickFilters](#getQuickFilters\(\))()`

    Get the list of quick filters for this report.

    `boolean`

    `[getRecursive](#getRecursive\(\))()`

    Get whether or not to return data from recursive processes.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getReportName](#getReportName\(\))()`

    `[Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getShownColumns](#getShownColumns\(\))()`

    Gets the columns that would be shown in a report (ie. those for which getShow() returns true).

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSortColumnLocalId](#getSortColumnLocalId\(\))()`

    Get the localId of the column to sort by for this report.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSortOrder](#getSortOrder\(\))()`

    Get whether to sort in ascending or descending order, defined by com.appiancorp.suiteapi.common.Constants.SORT\_ORDER\_XXX.

    `int`

    `[getStartIndex](#getStartIndex\(\))()`

    Get the start index.

    `int`

    `[getType](#getType\(\))()`

    Get the report type, defined by REPORT\_TYPE\_XXX.

    `boolean`

    `[hasGrouping](#hasGrouping\(\))()`

    Indicates whether or not this ReportData contains any column marked as group by

    `static boolean`

    `[isValidContext](#isValidContext\(int,int\))(int reportType_, int contextType_)`

    Verifies whether a context type is valid for the report type.

    `void`

    `[setArfDocumentId](#setArfDocumentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") arfDocumentId_)`

    `void`

    `[setBaseFilters](#setBaseFilters\(com.appiancorp.suiteapi.process.analytics2.Filter%5B%5D\))([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")[] baseFilters_)`

    Set the list of base filters for this report.

    `void`

    `[setBatchSize](#setBatchSize\(int\))(int batchSize_)`

    Set the batch size.

    `void`

    `[setColumns](#setColumns\(com.appiancorp.suiteapi.process.analytics2.Column%5B%5D\))([Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")[] columns_)`

    Set the columns for this report.

    `void`

    `[setContext](#setContext\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] context_)`

    Set the context for this report.

    `void`

    `[setContextType](#setContextType\(int\))(int contextType_)`

    Set the context type, defined by CONTEXT\_TYPE\_XXX.

    `void`

    `[setQuickFilters](#setQuickFilters\(com.appiancorp.suiteapi.process.analytics2.QuickFilter%5B%5D\))([QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")[] quickFilters_)`

    Set the list of quick filters for this report.

    `void`

    `[setRecursive](#setRecursive\(boolean\))(boolean recursive_)`

    Set whether or not to return data from recursive processes.

    `void`

    `[setReportName](#setReportName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reportName_)`

    `void`

    `[setSortColumnLocalId](#setSortColumnLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortColumnLocalId_)`

    Set the localId of the column to sort by for this report.

    `void`

    `[setSortOrder](#setSortOrder\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Set whether to sort in ascending or descending order, defined by com.appiancorp.suiteapi.common.Constants.SORT\_ORDER\_XXX.

    `void`

    `[setStartIndex](#setStartIndex\(int\))(int startIndex_)`

    Set the start index.

    `void`

    `[setType](#setType\(int\))(int type_)`

    Set the report type, defined by REPORT\_TYPE\_XXX.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### REPORT\_TYPE\_PM

        public static final int REPORT\_TYPE\_PM

        Report on Process Models.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_PM)

    -   ### REPORT\_TYPE\_PROCESS

        public static final int REPORT\_TYPE\_PROCESS

        Report on Processes.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_PROCESS)

    -   ### REPORT\_TYPE\_TASK

        public static final int REPORT\_TYPE\_TASK

        Report on Tasks.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_TASK)

    -   ### REPORT\_TYPE\_PMVERSION

        public static final int REPORT\_TYPE\_PMVERSION

        Report on Process Model Versions.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_PMVERSION)

    -   ### REPORT\_TYPE\_EVENTS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int REPORT\_TYPE\_EVENTS

        Deprecated.

        this has not been considered a valid report type and will be removed

        Report on Events.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_EVENTS)

    -   ### REPORT\_TYPE\_ARCHIVED\_PROCESS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final int REPORT\_TYPE\_ARCHIVED\_PROCESS

        Deprecated.

        this has not been considered a valid report type and will be removed

        Report on Archived Processes.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.REPORT_TYPE_ARCHIVED_PROCESS)

    -   ### CONTEXT\_TYPE\_SYSTEM

        public static final int CONTEXT\_TYPE\_SYSTEM

        Report has no context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_SYSTEM)

    -   ### CONTEXT\_TYPE\_PROCESS\_MODEL

        public static final int CONTEXT\_TYPE\_PROCESS\_MODEL

        Report only contains data for process models specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_PROCESS_MODEL)

    -   ### CONTEXT\_TYPE\_PROCESS\_MODEL\_VERSION

        public static final int CONTEXT\_TYPE\_PROCESS\_MODEL\_VERSION

        Report only contains data for process model versions specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_PROCESS_MODEL_VERSION)

    -   ### CONTEXT\_TYPE\_NODE

        public static final int CONTEXT\_TYPE\_NODE

        Report only contains data for nodes specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_NODE)

    -   ### CONTEXT\_TYPE\_PROCESS

        public static final int CONTEXT\_TYPE\_PROCESS

        Report only contains data for processes specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_PROCESS)

    -   ### CONTEXT\_TYPE\_CREATED\_BY

        public static final int CONTEXT\_TYPE\_CREATED\_BY

        Report only contains data for process models created by the users specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_CREATED_BY)

    -   ### CONTEXT\_TYPE\_LAST\_MOD\_BY

        public static final int CONTEXT\_TYPE\_LAST\_MOD\_BY

        Report only contains data for process models last modified by the users specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_LAST_MOD_BY)

    -   ### CONTEXT\_TYPE\_INITIATED\_BY

        public static final int CONTEXT\_TYPE\_INITIATED\_BY

        Report only contains data for processes initiated by the users specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_INITIATED_BY)

    -   ### CONTEXT\_TYPE\_ATTRIBUTED\_TO\_USER

        public static final int CONTEXT\_TYPE\_ATTRIBUTED\_TO\_USER

        Report only contains data for tasks attributed to the users specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_ATTRIBUTED_TO_USER)

    -   ### CONTEXT\_TYPE\_ASSIGNED\_GROUP

        public static final int CONTEXT\_TYPE\_ASSIGNED\_GROUP

        Report only contains data for tasks assigned to the groups specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_ASSIGNED_GROUP)

    -   ### CONTEXT\_TYPE\_TASK\_OWNER

        public static final int CONTEXT\_TYPE\_TASK\_OWNER

        Report only contains data for tasks owned by the users specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_TASK_OWNER)

    -   ### CONTEXT\_TYPE\_GROUP\_MEMBERS

        public static final int CONTEXT\_TYPE\_GROUP\_MEMBERS

        Report only contains data for tasks attributed to the groups specified in the context.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.CONTEXT_TYPE_GROUP_MEMBERS)

    -   ### DEFAULT\_BATCH\_SIZE

        public static final int DEFAULT\_BATCH\_SIZE

        Default number of results to return per page in the report.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportData.DEFAULT_BATCH_SIZE)

-   ## Constructor Details

    -   ### ReportData

        public ReportData()

-   ## Method Details

    -   ### getArfDocumentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getArfDocumentId()

    -   ### setArfDocumentId

        public void setArfDocumentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") arfDocumentId\_)

    -   ### getReportName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getReportName()

    -   ### setReportName

        public void setReportName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") reportName\_)

    -   ### isValidContext

        public static boolean isValidContext(int reportType\_, int contextType\_)

        Verifies whether a context type is valid for the report type.

        Parameters:

        `reportType_` - one of the constants REPORT\_TYPE\_XXX

        `contextType_` - one of the constants CONTEXT\_TYPE\_XXX

        Returns:

        `true` if the context type is valid for the report type;

    -   ### getBaseFilters

        public [Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] getBaseFilters()

        Get the list of base filters for this report. Base filters are the default filters for the report.

        Returns:

        the array of base filters

        See Also:

        -   [`setBaseFilters(com.appiancorp.suiteapi.process.analytics2.Filter[])`](#setBaseFilters\(com.appiancorp.suiteapi.process.analytics2.Filter%5B%5D\))

    -   ### setBaseFilters

        public void setBaseFilters([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")\[\] baseFilters\_)

        Set the list of base filters for this report. Base filters are the default filters for the report.

        Parameters:

        `baseFilters_` - an array of base filters

        See Also:

        -   [`getBaseFilters()`](#getBaseFilters\(\))

    -   ### filter

        public int filter([Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2") filter)

        Add a filter to the list of base filters for this report.

        Parameters:

        `filter` -

        Returns:

        filter count before adding filter

    -   ### filter

        public int filter([QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2") filter)

        Add a filter to the list of quick filters for this report.

        Parameters:

        `filter` -

        Returns:

        filter count before adding filter

    -   ### getColumns

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getColumns()

        Get the columns for this report.

        Returns:

        the columns

        See Also:

        -   [`setColumns(com.appiancorp.suiteapi.process.analytics2.Column[])`](#setColumns\(com.appiancorp.suiteapi.process.analytics2.Column%5B%5D\))

    -   ### setColumns

        public void setColumns([Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] columns\_)

        Set the columns for this report. Note: The provided array reference is not preserved.

        Parameters:

        `columns_` - the columns

        See Also:

        -   [`getColumns()`](#getColumns\(\))

    -   ### getContext

        public [LocalObject](../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getContext()

        Get the context for this report.

        Returns:

        the context

        See Also:

        -   [`setContext(com.appiancorp.suiteapi.common.LocalObject[])`](#setContext\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))

    -   ### setContext

        public void setContext([LocalObject](../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] context\_)

        Set the context for this report.

        Parameters:

        `context_` - the context

        See Also:

        -   [`getContext()`](#getContext\(\))

    -   ### getQuickFilters

        public [QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getQuickFilters()

        Get the list of quick filters for this report.

        Returns:

        the array or quick filters

        See Also:

        -   [`setQuickFilters(com.appiancorp.suiteapi.process.analytics2.QuickFilter[])`](#setQuickFilters\(com.appiancorp.suiteapi.process.analytics2.QuickFilter%5B%5D\))

    -   ### setQuickFilters

        public void setQuickFilters([QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] quickFilters\_)

        Set the list of quick filters for this report.

        Parameters:

        `quickFilters_` - the array of quick filters

        See Also:

        -   [`getQuickFilters()`](#getQuickFilters\(\))

    -   ### getSortColumnLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSortColumnLocalId()

        Get the localId of the column to sort by for this report.

        Returns:

        the localId of the column to sort by

        See Also:

        -   [`setSortColumnLocalId(java.lang.Integer)`](#setSortColumnLocalId\(java.lang.Integer\))

    -   ### setSortColumnLocalId

        public void setSortColumnLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortColumnLocalId\_)

        Set the localId of the column to sort by for this report.

        Parameters:

        `sortColumnLocalId_` - the localId of the column to sort by

        See Also:

        -   [`getSortColumnLocalId()`](#getSortColumnLocalId\(\))

    -   ### getSortOrder

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSortOrder()

        Get whether to sort in ascending or descending order, defined by com.appiancorp.suiteapi.common.Constants.SORT\_ORDER\_XXX.

        Returns:

        the sort order

        See Also:

        -   [`setSortOrder(java.lang.Integer)`](#setSortOrder\(java.lang.Integer\))

    -   ### setSortOrder

        public void setSortOrder([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Set whether to sort in ascending or descending order, defined by com.appiancorp.suiteapi.common.Constants.SORT\_ORDER\_XXX.

        Parameters:

        `sortOrder_` - the sort order

        See Also:

        -   [`getSortOrder()`](#getSortOrder\(\))

    -   ### getType

        public int getType()

        Get the report type, defined by REPORT\_TYPE\_XXX.

        Returns:

        the report type

        See Also:

        -   [`setType(int)`](#setType\(int\))

    -   ### setType

        public void setType(int type\_)

        Set the report type, defined by REPORT\_TYPE\_XXX.

        Parameters:

        `type_` - the report type

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### getContextType

        public int getContextType()

        Get the context type, defined by CONTEXT\_TYPE\_XXX.

        Returns:

        the context type

        See Also:

        -   [`setContextType(int)`](#setContextType\(int\))

    -   ### setContextType

        public void setContextType(int contextType\_)

        Set the context type, defined by CONTEXT\_TYPE\_XXX.

        Parameters:

        `contextType_` - the context type

        See Also:

        -   [`getContextType()`](#getContextType\(\))

    -   ### getColumnByLocalId

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2") getColumnByLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") id)

        Get a column in this report by id.

        Parameters:

        `id` - the localId of the column

        Returns:

        the column

    -   ### getColumnByStringId

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2") getColumnByStringId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id)

        Get a column in this report by stringId.

        Parameters:

        `id` - the localId of the column

        Returns:

        the column

    -   ### getBatchSize

        public int getBatchSize()

        Get the batch size.

        Returns:

        the batch size

        See Also:

        -   [`setBatchSize(int)`](#setBatchSize\(int\))

    -   ### setBatchSize

        public void setBatchSize(int batchSize\_)

        Set the batch size.

        Parameters:

        `batchSize_` - the batch size

        See Also:

        -   [`getBatchSize()`](#getBatchSize\(\))

    -   ### getStartIndex

        public int getStartIndex()

        Get the start index.

        Returns:

        the start index

        See Also:

        -   [`setStartIndex(int)`](#setStartIndex\(int\))

    -   ### setStartIndex

        public void setStartIndex(int startIndex\_)

        Set the start index.

        Parameters:

        `startIndex_` - the start index

        See Also:

        -   [`getStartIndex()`](#getStartIndex\(\))

    -   ### getMetricColumns

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getMetricColumns([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes\_)

        Gets the columns which can be used as metrics. This is any displayed column with type TypedVariable.LONG, TypedVariable.DOUBLE, or TypedVariable.DURATION

        Parameters:

        `columnTypes_` - a map of column ids to column types

        Returns:

        an array of columns

    -   ### getDateTimeColumns

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getDateTimeColumns([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") columnTypes\_)

    -   ### getShownColumns

        public [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getShownColumns()

        Gets the columns that would be shown in a report (ie. those for which getShow() returns true).

        Returns:

        the columns that would be shown in a report

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Unused but reserved.

        Specified by:

        `[getHiddenAttributes](../../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getRecursive

        public boolean getRecursive()

        Get whether or not to return data from recursive processes. Only relevant when the context is a process.

        Returns:

        `true` if recursive data is returned

        See Also:

        -   [`setRecursive(boolean)`](#setRecursive\(boolean\))

    -   ### setRecursive

        public void setRecursive(boolean recursive\_)

        Set whether or not to return data from recursive processes. Only relevant when the context is a process.

        Parameters:

        `recursive_` - set to `true` to return recursive data

        See Also:

        -   [`getRecursive()`](#getRecursive\(\))

    -   ### getNextAvailableColumnLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getNextAvailableColumnLocalId()

        Returns the next available column id.

        Returns:

        the next column id

    -   ### hasGrouping

        public boolean hasGrouping()

        Indicates whether or not this ReportData contains any column marked as group by

        Returns:

        `true` if any column is marked as group by.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`