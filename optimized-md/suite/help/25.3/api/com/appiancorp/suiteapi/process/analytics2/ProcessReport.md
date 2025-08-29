---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ProcessReport.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ProcessReport.html
version: "25.3"
title: "Class ProcessReport"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/ProcessReport"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ProcessReport

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.ProcessReport

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class ProcessReport extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean detailing an analytics report specification. ProcessReports are serialized and saved to the file system as .arf files. Look in the Reports section of the documentation to see a template of an .arf file.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[VIEW_DEFAULT](#VIEW_DEFAULT)`

    Used to specify a default view type.

    `static final int`

    `[VIEW_GROUP](#VIEW_GROUP)`

    Used to specify a group view type.

    `static final int`

    `[VIEW_PRINT](#VIEW_PRINT)`

    Used to specify a print view type.

    `static final int`

    `[VIEW_PROCESS](#VIEW_PROCESS)`

    Used to specify a process view type.

    `static final int`

    `[VIEW_PROCESS_INSTANCES](#VIEW_PROCESS_INSTANCES)`

    Used to specify a running process view In Process Modeler.

    `static final int`

    `[VIEW_TASK](#VIEW_TASK)`

    Used to specify a task view type.

    `static final int`

    `[VIEW_USER](#VIEW_USER)`

    Used to specify a user view type.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessReport](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[clone](#clone\(\))()`

    Cloneable implementation - creates a deep copy the [`ProcessReport`](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2").

    `[ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[copy](#copy\(\))()`

    Deprecated.

    use [`clone()`](#clone\(\)) instead

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getCache](#getCache\(\))()`

    Get the type cache used for rendering this report.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getChartHeight](#getChartHeight\(\))()`

    Get the height of the chart associated with this report.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getChartWidth](#getChartWidth\(\))()`

    Get the width of the chart associated with this report.

    `[ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getData](#getData\(\))()`

    Get the data for this report.

    `[ReportDisplay](ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2")`

    `[getDisplay](#getDisplay\(\))()`

    Get the display format of this report.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getGraphSize](#getGraphSize\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Get the id of this report.

    `boolean`

    `[getModified](#getModified\(\))()`

    Determine if this report has been modified.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPortletId](#getPortletId\(\))()`

    Get the Id of the portlet that contains the report.

    `boolean`

    `[getShowDisplayOptions](#getShowDisplayOptions\(\))()`

    Determine whether to show the show/hide columns link on the report.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getShowEditControls](#getShowEditControls\(\))()`

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getShowFilters](#getShowFilters\(\))()`

    `boolean`

    `[getShowTitle](#getShowTitle\(\))()`

    Determine whether a name of the report should be displayed at the top.

    `boolean`

    `[getShowToolbar](#getShowToolbar\(\))()`

    Determine whether a toolbar should be displayed for this report.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getShowUserControls](#getShowUserControls\(\))()`

    `int`

    `[getView](#getView\(\))()`

    Get the view type for this report.

    `boolean`

    `[getWriteAccess](#getWriteAccess\(\))()`

    Get whether this report can be edited and saved by the current user.

    `void`

    `[populateAppianTypeCache](#populateAppianTypeCache\(com.appiancorp.services.ServiceContext\))([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Populate the Appian type cache on this report.

    `void`

    `[setChartHeight](#setChartHeight\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") chartHeight_)`

    Set the height of the chart associated with this report.

    `void`

    `[setChartWidth](#setChartWidth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") chartWidth_)`

    Set the width of the chart associated with this report.

    `void`

    `[setData](#setData\(com.appiancorp.suiteapi.process.analytics2.ReportData\))([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") data_)`

    Set the data for this report.

    `void`

    `[setDisplay](#setDisplay\(com.appiancorp.suiteapi.process.analytics2.ReportDisplay\))([ReportDisplay](ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2") display_)`

    Set the display format of this report.

    `void`

    `[setGraphSize](#setGraphSize\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") graphSize_)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Set the id of this report.

    `void`

    `[setModified](#setModified\(boolean\))(boolean modified_)`

    Set whether this report has been modified.

    `void`

    `[setPortletId](#setPortletId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Sets the Id of the portlet that will contain the report.

    `void`

    `[setShowDisplayOptions](#setShowDisplayOptions\(boolean\))(boolean showDisplayOptions_)`

    Set whether the show/hide columns link will be shown on the report.

    `void`

    `[setShowEditControls](#setShowEditControls\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showEditControls)`

    `void`

    `[setShowFilters](#setShowFilters\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showFilters)`

    `void`

    `[setShowTitle](#setShowTitle\(boolean\))(boolean showTitle_)`

    Set whether the name of the report should be displayed at the top.

    `void`

    `[setShowToolbar](#setShowToolbar\(boolean\))(boolean showToolbar_)`

    Set whether a toolbar will be shown for this report.

    `void`

    `[setShowUserControls](#setShowUserControls\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showUserControls)`

    `void`

    `[setView](#setView\(int\))(int view_)`

    Set the view type for this report.

    `void`

    `[setWriteAccess](#setWriteAccess\(boolean\))(boolean writeAccess_)`

    Set whether this report can be edited and saved by the current user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### VIEW\_DEFAULT

        public static final int VIEW\_DEFAULT

        Used to specify a default view type. The default view is the normal view in reporting. It is the view that isn't one of the other specific views.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_DEFAULT)

    -   ### VIEW\_PROCESS

        public static final int VIEW\_PROCESS

        Used to specify a process view type. The process view is when a report is being seen in the process area of the user interface.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_PROCESS)

    -   ### VIEW\_TASK

        public static final int VIEW\_TASK

        Used to specify a task view type. The task view is when a report is being seen in the task area of the user interface.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_TASK)

    -   ### VIEW\_PRINT

        public static final int VIEW\_PRINT

        Used to specify a print view type. The print view is when a report is being printed.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_PRINT)

    -   ### VIEW\_USER

        public static final int VIEW\_USER

        Used to specify a user view type. The user view is when a report is being seen in the user's section of the people area of the user interface.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_USER)

    -   ### VIEW\_GROUP

        public static final int VIEW\_GROUP

        Used to specify a group view type. The user view is when a report is being seen in the group's section of the people area of the user interface.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_GROUP)

    -   ### VIEW\_PROCESS\_INSTANCES

        public static final int VIEW\_PROCESS\_INSTANCES

        Used to specify a running process view In Process Modeler. The running process view is when a report is being seen in the process modeler design area of the user interface.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ProcessReport.VIEW_PROCESS_INSTANCES)

-   ## Constructor Details

    -   ### ProcessReport

        public ProcessReport()

-   ## Method Details

    -   ### clone

        public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") clone()

        Cloneable implementation - creates a deep copy the [`ProcessReport`](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2"). It does not make a deep or shallow copy of the type cache, rather it creates a new empty cache which could be re-populated using [`populateAppianTypeCache(ServiceContext)`](#populateAppianTypeCache\(com.appiancorp.services.ServiceContext\)).

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        a copy of the process report

    -   ### copy

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2") copy()

        Deprecated.

        use [`clone()`](#clone\(\)) instead

    -   ### getData

        public [ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") getData()

        Get the data for this report.

        Returns:

        the data.

        See Also:

        -   [`setData(com.appiancorp.suiteapi.process.analytics2.ReportData)`](#setData\(com.appiancorp.suiteapi.process.analytics2.ReportData\))

    -   ### getCache

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getCache()

        Get the type cache used for rendering this report. The cache stores Appian objects (e.g. report context, users used in filters, etc.) so that they do not need to be reloaded each time Report Options is opened.

        Returns:

        the type cache.

    -   ### setData

        public void setData([ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2") data\_)

        Set the data for this report.

        Parameters:

        `data_` - the data.

        See Also:

        -   [`getData()`](#getData\(\))

    -   ### getDisplay

        public [ReportDisplay](ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2") getDisplay()

        Get the display format of this report.

        Returns:

        the display format.

        See Also:

        -   [`setDisplay(com.appiancorp.suiteapi.process.analytics2.ReportDisplay)`](#setDisplay\(com.appiancorp.suiteapi.process.analytics2.ReportDisplay\))

    -   ### setDisplay

        public void setDisplay([ReportDisplay](ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2") display\_)

        Set the display format of this report.

        Parameters:

        `display_` - the display format.

        See Also:

        -   [`getDisplay()`](#getDisplay\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Get the id of this report.

        Returns:

        the id.

        See Also:

        -   [`setId(java.lang.Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Set the id of this report.

        Parameters:

        `id_` - the id.

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### populateAppianTypeCache

        public void populateAppianTypeCache([ServiceContext](../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_)

        Populate the Appian type cache on this report.

        Parameters:

        `sc_` - the service context used to query for type information.

    -   ### getView

        public int getView()

        Get the view type for this report. This information is used by the middle tier to determine how to display the report. It is not persisted in the engine. See the VIEW\_XXX constants on this class. For example, for VIEW\_DEFAULT, the report options dialogue is titled "Report Options", but for VIEW\_TASK the dialogue is titled "Task View Options"

        Returns:

        the view type.

        See Also:

        -   [`setView(int)`](#setView\(int\))

    -   ### setView

        public void setView(int view\_)

        Set the view type for this report.

        Parameters:

        `view_` - the view type.

        See Also:

        -   [`getView()`](#getView\(\))

    -   ### getWriteAccess

        public boolean getWriteAccess()

        Get whether this report can be edited and saved by the current user. This is set in AnalyticsServiceJavaImpl whenever the report is loaded and is based on the folder permissions.

        Returns:

        `true` if the current user can save the report; `false` otherwise.

        See Also:

        -   [`setWriteAccess(boolean)`](#setWriteAccess\(boolean\))

    -   ### setWriteAccess

        public void setWriteAccess(boolean writeAccess\_)

        Set whether this report can be edited and saved by the current user.

        Parameters:

        `writeAccess_` - `true` if the current user can save the report; `false` otherwise.

        See Also:

        -   [`getWriteAccess()`](#getWriteAccess\(\))

    -   ### getShowToolbar

        public boolean getShowToolbar()

        Determine whether a toolbar should be displayed for this report. This is specified as a boolean attribute in the <apr:report> tag.

        Returns:

        `true` if a toolbar should be visible; `false` if not.

        See Also:

        -   [`setShowToolbar(boolean)`](#setShowToolbar\(boolean\))
        -   `ProcessReportTag`

    -   ### setShowToolbar

        public void setShowToolbar(boolean showToolbar\_)

        Set whether a toolbar will be shown for this report.

        Parameters:

        `showToolbar_` - `true` if a toolbar should be visible; `false` if not.

        See Also:

        -   [`getShowToolbar()`](#getShowToolbar\(\))

    -   ### getShowDisplayOptions

        public boolean getShowDisplayOptions()

        Determine whether to show the show/hide columns link on the report. This is specified as a boolean attribute in the <apr:report&gt tag.

        Returns:

        `true` if the link should be shown; `false` otherwise.

        See Also:

        -   [`setShowDisplayOptions(boolean)`](#setShowDisplayOptions\(boolean\))
        -   `ProcessReportTag`

    -   ### setShowDisplayOptions

        public void setShowDisplayOptions(boolean showDisplayOptions\_)

        Set whether the show/hide columns link will be shown on the report.

        Parameters:

        `showDisplayOptions_` - `true` if the link should be shown; `false` otherwise.

        See Also:

        -   [`getShowDisplayOptions()`](#getShowDisplayOptions\(\))

    -   ### getModified

        public boolean getModified()

        Determine if this report has been modified. This gets set to true every time you update and close the report options. It is reset to false when the report is saved.

        Returns:

        `true` if the report has been modified; `false` otherwise.

        See Also:

        -   [`setModified(boolean)`](#setModified\(boolean\))

    -   ### setModified

        public void setModified(boolean modified\_)

        Set whether this report has been modified.

        Parameters:

        `modified_` - `true` if the report has been modified; `false` otherwise.

        See Also:

        -   [`getModified()`](#getModified\(\))

    -   ### getChartHeight

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getChartHeight()

        Get the height of the chart associated with this report. When this is null, a default height is loaded by ChartDataUtil

        Returns:

        the height in pixels.

        See Also:

        -   [`setChartHeight(java.lang.Integer)`](#setChartHeight\(java.lang.Integer\))

    -   ### setChartHeight

        public void setChartHeight([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") chartHeight\_)

        Set the height of the chart associated with this report.

        Parameters:

        `chartHeight_` - the height in pixels.

        See Also:

        -   [`getChartHeight()`](#getChartHeight\(\))

    -   ### getChartWidth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getChartWidth()

        Get the width of the chart associated with this report. When this is null, a default width is loaded by ChartDataUtil

        Returns:

        the width in pixels.

        See Also:

        -   [`setChartWidth(java.lang.Integer)`](#setChartWidth\(java.lang.Integer\))

    -   ### setChartWidth

        public void setChartWidth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") chartWidth\_)

        Set the width of the chart associated with this report.

        Parameters:

        `chartWidth_` - the width in pixels.

        See Also:

        -   [`getChartWidth()`](#getChartWidth\(\))

    -   ### getGraphSize

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getGraphSize()

    -   ### setGraphSize

        public void setGraphSize([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") graphSize\_)

    -   ### getPortletId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPortletId()

        Get the Id of the portlet that contains the report.

        Returns:

        Id of the portlet

        See Also:

        -   [`setPortletId(java.lang.Long)`](#setPortletId\(java.lang.Long\))

    -   ### setPortletId

        public void setPortletId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_)

        Sets the Id of the portlet that will contain the report.

        Parameters:

        `portletId_` - Id of the portlet

        See Also:

        -   [`getPortletId()`](#getPortletId\(\))

    -   ### getShowTitle

        public boolean getShowTitle()

        Determine whether a name of the report should be displayed at the top. This is specified as a boolean attribute in the <apr:report> tag.

        Returns:

        `true` if the name of the report should be visible; `false` if not.

        See Also:

        -   [`setShowTitle(boolean)`](#setShowTitle\(boolean\))
        -   `ProcessReportTag`

    -   ### setShowTitle

        public void setShowTitle(boolean showTitle\_)

        Set whether the name of the report should be displayed at the top.

        Parameters:

        `showTitle_` - `true` if the name of the report should be visible; `false` if not.

        See Also:

        -   [`getShowTitle()`](#getShowTitle\(\))

    -   ### getShowFilters

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getShowFilters()

    -   ### setShowFilters

        public void setShowFilters([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showFilters)

    -   ### getShowUserControls

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getShowUserControls()

    -   ### setShowUserControls

        public void setShowUserControls([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showUserControls)

    -   ### getShowEditControls

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getShowEditControls()

    -   ### setShowEditControls

        public void setShowEditControls([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") showEditControls)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`