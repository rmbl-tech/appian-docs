---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/ReportDisplay.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/ReportDisplay.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Class ReportDisplay

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.analytics2.ReportDisplay

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ReportDisplay extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Bean detailing how an analytics report is to be displayed.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[DISPLAY_BAR_CHART](#DISPLAY_BAR_CHART)`

    Display the report as a bar chart.

    `static final int`

    `[DISPLAY_GANTT_CHART](#DISPLAY_GANTT_CHART)`

    Display the report as a Gantt chart.

    `static final int`

    `[DISPLAY_GRID_TABLE](#DISPLAY_GRID_TABLE)`

    Display the report at a table.

    `static final int`

    `[DISPLAY_HORIZONTAL_BAR_CHART](#DISPLAY_HORIZONTAL_BAR_CHART)`

    Display the report as a horizontal bar chart.

    `static final int`

    `[DISPLAY_HORIZONTAL_STACKED_CHART](#DISPLAY_HORIZONTAL_STACKED_CHART)`

    Display the report as a horizontal stacked chart.

    `static final int`

    `[DISPLAY_LINE_CHART](#DISPLAY_LINE_CHART)`

    Display the report as a line chart.

    `static final int`

    `[DISPLAY_PIE_CHART](#DISPLAY_PIE_CHART)`

    Display the report as a pie chart.

    `static final int`

    `[DISPLAY_STACKED_CHART](#DISPLAY_STACKED_CHART)`

    Display the report as a stacked bar chart.

    `static final int`

    `[QUICK_FILTER_DROPDOWN](#QUICK_FILTER_DROPDOWN)`

    Display quick filters as dropdowns.

    `static final int`

    `[QUICK_FILTER_LINK](#QUICK_FILTER_LINK)`

    Display quick filters as links.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ReportDisplay](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCustomBarGraphXMLId](#getCustomBarGraphXMLId\(\))()`

    Get the id that specifes a custom xml file for the bar graph.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getCustomChartHeight](#getCustomChartHeight\(\))()`

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getCustomChartWidth](#getCustomChartWidth\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCustomLineGraphXMLId](#getCustomLineGraphXMLId\(\))()`

    Get the id that specifes a custom xml file for the line graph.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCustomPieGraphXMLId](#getCustomPieGraphXMLId\(\))()`

    Get the id that specifes a custom xml file for the pie graph.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCustomToolbar](#getCustomToolbar\(\))()`

    Get the path to the custom toolbar.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Get the description of this report.

    `boolean`

    `[getDisplayThresholds](#getDisplayThresholds\(\))()`

    Determine whether to show thresholds for this report.

    `int`

    `[getDisplayType](#getDisplayType\(\))()`

    Determine the display type for this report.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Get the name of this report.

    `int`

    `[getQuickFilterDisplay](#getQuickFilterDisplay\(\))()`

    Determine how quick filters are displayed.

    `boolean`

    `[getShowLegend](#getShowLegend\(\))()`

    `boolean`

    `[getShowQuickFiltersInToolbar](#getShowQuickFiltersInToolbar\(\))()`

    Determine whether to show quick filters in the toolbar.

    `int[]`

    `[getSupportedTypes](#getSupportedTypes\(\))()`

    Get the display types that are supported for this report.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getThresholdColumnLocalId](#getThresholdColumnLocalId\(\))()`

    Get the local id of the column to which thresholds are being applied.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getThresholdColumnName](#getThresholdColumnName\(\))()`

    Get the name to be displayed for the column containing the actual thresholds.

    `[Threshold](Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getThresholds](#getThresholds\(\))()`

    Get the thresholds for this report.

    `boolean`

    `[getUseDefaultBarGraphXML](#getUseDefaultBarGraphXML\(\))()`

    Determine whether to use default bar graph xml.

    `boolean`

    `[getUseDefaultLineGraphXML](#getUseDefaultLineGraphXML\(\))()`

    Determine whether to use default line graph xml.

    `boolean`

    `[getUseDefaultPieGraphXML](#getUseDefaultPieGraphXML\(\))()`

    Determine whether to use default pie graph xml.

    `boolean`

    `[isUseCustomToolbar](#isUseCustomToolbar\(\))()`

    Determine whether to display a custom toolbar for this report.

    `void`

    `[setCustomBarGraphXMLId](#setCustomBarGraphXMLId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customBarGraphXMLId_)`

    Set the id that specifes a custom xml file for the bar graph.

    `void`

    `[setCustomChartHeight](#setCustomChartHeight\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartHeight)`

    `void`

    `[setCustomChartWidth](#setCustomChartWidth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartWidth)`

    `void`

    `[setCustomLineGraphXMLId](#setCustomLineGraphXMLId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customLineGraphXMLId)`

    Set the id that specifes a custom xml file for the line graph.

    `void`

    `[setCustomPieGraphXMLId](#setCustomPieGraphXMLId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customPieGraphXMLId_)`

    Set the id that specifes a custom xml file for the pie graph.

    `void`

    `[setCustomToolbar](#setCustomToolbar\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customToolbar_)`

    Set the path to the custom toolbar.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Set the description of this report.

    `void`

    `[setDisplayThresholds](#setDisplayThresholds\(boolean\))(boolean displayThresholds_)`

    Set whether to show thresholds for this report.

    `void`

    `[setDisplayType](#setDisplayType\(int\))(int displayType_)`

    Set the display type for this report.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Set the name of this report.

    `void`

    `[setQuickFilterDisplay](#setQuickFilterDisplay\(int\))(int quickFilterDisplay_)`

    Specify how quick filters should be displayed.

    `void`

    `[setShowLegend](#setShowLegend\(boolean\))(boolean showLegend)`

    `void`

    `[setShowQuickFiltersInToolbar](#setShowQuickFiltersInToolbar\(boolean\))(boolean showQuickFiltersInToolbar_)`

    Set whether to show quick filters in the toolbar.

    `void`

    `[setSupportedTypes](#setSupportedTypes\(int%5B%5D\))(int[] supportedTypes_)`

    Set the display types that are supported for this report.

    `void`

    `[setThresholdColumnLocalId](#setThresholdColumnLocalId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") thresholdColumnLocalId_)`

    Set the local id of the column to which thresholds should be being applied.

    `void`

    `[setThresholdColumnName](#setThresholdColumnName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") thresholdColumnName_)`

    Set the name to be displayed for the column containing the actual thresholds.

    `void`

    `[setThresholds](#setThresholds\(com.appiancorp.suiteapi.process.analytics2.Threshold%5B%5D\))([Threshold](Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")[] thresholds_)`

    Set the thresholds for this report.

    `void`

    `[setUseCustomToolbar](#setUseCustomToolbar\(boolean\))(boolean useCustomToolbar_)`

    Set whether to display a custom toolbar for this report.

    `void`

    `[setUseDefaultBarGraphXML](#setUseDefaultBarGraphXML\(boolean\))(boolean useDefaultBarGraphXML_)`

    Specify whether to use default bar graph xml.

    `void`

    `[setUseDefaultLineGraphXML](#setUseDefaultLineGraphXML\(boolean\))(boolean useDefaultLineGraphXML)`

    Set whether to use default line graph xml.

    `void`

    `[setUseDefaultPieGraphXML](#setUseDefaultPieGraphXML\(boolean\))(boolean useDefaultPieGraphXML_)`

    Set whether to use default pie graph xml.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### QUICK\_FILTER\_LINK

        public static final int QUICK\_FILTER\_LINK

        Display quick filters as links.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.QUICK_FILTER_LINK)

    -   ### QUICK\_FILTER\_DROPDOWN

        public static final int QUICK\_FILTER\_DROPDOWN

        Display quick filters as dropdowns.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.QUICK_FILTER_DROPDOWN)

    -   ### DISPLAY\_GRID\_TABLE

        public static final int DISPLAY\_GRID\_TABLE

        Display the report at a table.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_GRID_TABLE)

    -   ### DISPLAY\_BAR\_CHART

        public static final int DISPLAY\_BAR\_CHART

        Display the report as a bar chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_BAR_CHART)

    -   ### DISPLAY\_PIE\_CHART

        public static final int DISPLAY\_PIE\_CHART

        Display the report as a pie chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_PIE_CHART)

    -   ### DISPLAY\_STACKED\_CHART

        public static final int DISPLAY\_STACKED\_CHART

        Display the report as a stacked bar chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_STACKED_CHART)

    -   ### DISPLAY\_LINE\_CHART

        public static final int DISPLAY\_LINE\_CHART

        Display the report as a line chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_LINE_CHART)

    -   ### DISPLAY\_HORIZONTAL\_BAR\_CHART

        public static final int DISPLAY\_HORIZONTAL\_BAR\_CHART

        Display the report as a horizontal bar chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_HORIZONTAL_BAR_CHART)

    -   ### DISPLAY\_HORIZONTAL\_STACKED\_CHART

        public static final int DISPLAY\_HORIZONTAL\_STACKED\_CHART

        Display the report as a horizontal stacked chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_HORIZONTAL_STACKED_CHART)

    -   ### DISPLAY\_GANTT\_CHART

        public static final int DISPLAY\_GANTT\_CHART

        Display the report as a Gantt chart.

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.analytics2.ReportDisplay.DISPLAY_GANTT_CHART)

-   ## Constructor Details

    -   ### ReportDisplay

        public ReportDisplay()

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Get the description of this report.

        Returns:

        the description.

        See Also:

        -   [`setDescription(java.lang.String)`](#setDescription\(java.lang.String\))

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Set the description of this report.

        Parameters:

        `description_` - the description.

        See Also:

        -   [`getDescription()`](#getDescription\(\))

    -   ### getDisplayThresholds

        public boolean getDisplayThresholds()

        Determine whether to show thresholds for this report.

        Returns:

        `true` to display thresholds; `false` otherwise.

        See Also:

        -   [`setDisplayThresholds(boolean)`](#setDisplayThresholds\(boolean\))

    -   ### setDisplayThresholds

        public void setDisplayThresholds(boolean displayThresholds\_)

        Set whether to show thresholds for this report.

        Parameters:

        `displayThresholds_` - `true` to display thresholds; `false` otherwise.

        See Also:

        -   [`getDisplayThresholds()`](#getDisplayThresholds\(\))

    -   ### getDisplayType

        public int getDisplayType()

        Determine the display type for this report. See the DISPLAY\_XXX constants on this class.

        Returns:

        the display type.

        See Also:

        -   [`setDisplayType(int)`](#setDisplayType\(int\))

    -   ### setDisplayType

        public void setDisplayType(int displayType\_)

        Set the display type for this report. See the DISPLAY\_XXX constants on this class.

        Parameters:

        `displayType_` - the display type.

        See Also:

        -   [`getDisplayType()`](#getDisplayType\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Get the name of this report.

        Returns:

        the name.

        See Also:

        -   [`setName(java.lang.String)`](#setName\(java.lang.String\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Set the name of this report.

        Parameters:

        `name_` - the name.

        See Also:

        -   [`getName()`](#getName\(\))

    -   ### getQuickFilterDisplay

        public int getQuickFilterDisplay()

        Determine how quick filters are displayed. See QUICK\_FILTER\_XXX constants on this class.

        Returns:

        an int specifying how the quick filters should be displayed.

        See Also:

        -   [`setQuickFilterDisplay(int)`](#setQuickFilterDisplay\(int\))

    -   ### setQuickFilterDisplay

        public void setQuickFilterDisplay(int quickFilterDisplay\_)

        Specify how quick filters should be displayed. See QUICK\_FILTER\_XXX constants on this class.

        Parameters:

        `quickFilterDisplay_` - an int specifying how the quick filters should be displayed

        See Also:

        -   [`getQuickFilterDisplay()`](#getQuickFilterDisplay\(\))

    -   ### getSupportedTypes

        public int\[\] getSupportedTypes()

        Get the display types that are supported for this report. See the DISPLAY\_XXX constants on this class.

        Returns:

        the display types.

        See Also:

        -   [`setSupportedTypes(int[])`](#setSupportedTypes\(int%5B%5D\))

    -   ### setSupportedTypes

        public void setSupportedTypes(int\[\] supportedTypes\_)

        Set the display types that are supported for this report. See the DISPLAY\_XXX constants on this class.

        Parameters:

        `supportedTypes_` - the display types.

        See Also:

        -   [`getSupportedTypes()`](#getSupportedTypes\(\))

    -   ### getThresholds

        public [Threshold](Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] getThresholds()

        Get the thresholds for this report.

        Returns:

        the thresholds.

        See Also:

        -   [`setThresholds(com.appiancorp.suiteapi.process.analytics2.Threshold[])`](#setThresholds\(com.appiancorp.suiteapi.process.analytics2.Threshold%5B%5D\))

    -   ### setThresholds

        public void setThresholds([Threshold](Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")\[\] thresholds\_)

        Set the thresholds for this report.

        Parameters:

        `thresholds_` - the thresholds.

        See Also:

        -   [`getThresholds()`](#getThresholds\(\))

    -   ### getThresholdColumnLocalId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getThresholdColumnLocalId()

        Get the local id of the column to which thresholds are being applied.

        Returns:

        the column's local id.

        See Also:

        -   [`setThresholdColumnLocalId(java.lang.Integer)`](#setThresholdColumnLocalId\(java.lang.Integer\))

    -   ### setThresholdColumnLocalId

        public void setThresholdColumnLocalId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") thresholdColumnLocalId\_)

        Set the local id of the column to which thresholds should be being applied.

        Parameters:

        `thresholdColumnLocalId_` - the column's local id.

        See Also:

        -   [`getThresholdColumnLocalId()`](#getThresholdColumnLocalId\(\))

    -   ### getThresholdColumnName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getThresholdColumnName()

        Get the name to be displayed for the column containing the actual thresholds.

        Returns:

        the name.

        See Also:

        -   [`setThresholdColumnName(java.lang.String)`](#setThresholdColumnName\(java.lang.String\))

    -   ### setThresholdColumnName

        public void setThresholdColumnName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") thresholdColumnName\_)

        Set the name to be displayed for the column containing the actual thresholds.

        Parameters:

        `thresholdColumnName_` - the name.

        See Also:

        -   [`getThresholdColumnName()`](#getThresholdColumnName\(\))

    -   ### getCustomBarGraphXMLId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCustomBarGraphXMLId()

        Get the id that specifes a custom xml file for the bar graph.

        Returns:

        the id.

        See Also:

        -   [`setCustomBarGraphXMLId(java.lang.Long)`](#setCustomBarGraphXMLId\(java.lang.Long\))

    -   ### setCustomBarGraphXMLId

        public void setCustomBarGraphXMLId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customBarGraphXMLId\_)

        Set the id that specifes a custom xml file for the bar graph.

        Parameters:

        `customBarGraphXMLId_` - the id.

        See Also:

        -   [`getCustomBarGraphXMLId()`](#getCustomBarGraphXMLId\(\))

    -   ### getCustomPieGraphXMLId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCustomPieGraphXMLId()

        Get the id that specifes a custom xml file for the pie graph.

        Returns:

        the id.

        See Also:

        -   [`setCustomPieGraphXMLId(java.lang.Long)`](#setCustomPieGraphXMLId\(java.lang.Long\))

    -   ### setCustomPieGraphXMLId

        public void setCustomPieGraphXMLId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customPieGraphXMLId\_)

        Set the id that specifes a custom xml file for the pie graph.

        Parameters:

        `customPieGraphXMLId_` - the id.

        See Also:

        -   [`getCustomPieGraphXMLId()`](#getCustomPieGraphXMLId\(\))

    -   ### getCustomLineGraphXMLId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCustomLineGraphXMLId()

        Get the id that specifes a custom xml file for the line graph.

        See Also:

        -   [`setCustomLineGraphXMLId(java.lang.Long)`](#setCustomLineGraphXMLId\(java.lang.Long\))

    -   ### setCustomLineGraphXMLId

        public void setCustomLineGraphXMLId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") customLineGraphXMLId)

        Set the id that specifes a custom xml file for the line graph.

        Parameters:

        `customLineGraphXMLId_` - the id.

        See Also:

        -   [`getCustomLineGraphXMLId()`](#getCustomLineGraphXMLId\(\))

    -   ### getUseDefaultBarGraphXML

        public boolean getUseDefaultBarGraphXML()

        Determine whether to use default bar graph xml. Alternative is to use a custom bar graph xml.

        Returns:

        `true` for default bar graph xml; `false` otherwise.

        See Also:

        -   [`setUseDefaultBarGraphXML(boolean)`](#setUseDefaultBarGraphXML\(boolean\))

    -   ### setUseDefaultBarGraphXML

        public void setUseDefaultBarGraphXML(boolean useDefaultBarGraphXML\_)

        Specify whether to use default bar graph xml. Alternative is to use a custom bar graph xml.

        Parameters:

        `useDefaultBarGraphXML_` - `true` for default bar graph xml; `false` otherwise.

        See Also:

        -   [`getUseDefaultBarGraphXML()`](#getUseDefaultBarGraphXML\(\))

    -   ### getUseDefaultPieGraphXML

        public boolean getUseDefaultPieGraphXML()

        Determine whether to use default pie graph xml. Alternative is to use a custom pie graph xml.

        Returns:

        `true` for default pie graph xml; `false` otherwise.

        See Also:

        -   [`setUseDefaultPieGraphXML(boolean)`](#setUseDefaultPieGraphXML\(boolean\))

    -   ### setUseDefaultPieGraphXML

        public void setUseDefaultPieGraphXML(boolean useDefaultPieGraphXML\_)

        Set whether to use default pie graph xml. Alternative is to use a custom pie graph xml.

        Parameters:

        `useDefaultPieGraphXML_` - `true` for default pie graph xml; `false` otherwise.

        See Also:

        -   [`getUseDefaultPieGraphXML()`](#getUseDefaultPieGraphXML\(\))

    -   ### getUseDefaultLineGraphXML

        public boolean getUseDefaultLineGraphXML()

        Determine whether to use default line graph xml. Alternative is to use a custom line graph xml.

        Returns:

        `true` for default line graph xml; `false` otherwise.

        See Also:

        -   [`setUseDefaultLineGraphXML(boolean)`](#setUseDefaultLineGraphXML\(boolean\))

    -   ### setUseDefaultLineGraphXML

        public void setUseDefaultLineGraphXML(boolean useDefaultLineGraphXML)

        Set whether to use default line graph xml. Alternative is to use a custom line graph xml.

        Parameters:

        `useDefaultLineGraphXML_` - `true` for default line graph xml; `false` otherwise.

        See Also:

        -   [`getUseDefaultLineGraphXML()`](#getUseDefaultLineGraphXML\(\))

    -   ### getShowQuickFiltersInToolbar

        public boolean getShowQuickFiltersInToolbar()

        Determine whether to show quick filters in the toolbar.

        Returns:

        `true` to show quick filters in the toolbar; `false` otherwise.

        See Also:

        -   [`setShowQuickFiltersInToolbar(boolean)`](#setShowQuickFiltersInToolbar\(boolean\))

    -   ### setShowQuickFiltersInToolbar

        public void setShowQuickFiltersInToolbar(boolean showQuickFiltersInToolbar\_)

        Set whether to show quick filters in the toolbar.

        Parameters:

        `showQuickFiltersInToolbar_` - `true` to show quick filters in the toolbar; `false` otherwise.

        See Also:

        -   [`getShowQuickFiltersInToolbar()`](#getShowQuickFiltersInToolbar\(\))

    -   ### getCustomToolbar

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCustomToolbar()

        Get the path to the custom toolbar. This path should be to a JSP and should be relative to the application's document root folder.

        Returns:

        the path to the custom toolbar.

        See Also:

        -   [`setCustomToolbar(java.lang.String)`](#setCustomToolbar\(java.lang.String\))

    -   ### setCustomToolbar

        public void setCustomToolbar([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") customToolbar\_)

        Set the path to the custom toolbar.

        Parameters:

        `customToolbar_` - the path to the custom toolbar.

        See Also:

        -   [`getCustomToolbar()`](#getCustomToolbar\(\))

    -   ### isUseCustomToolbar

        public boolean isUseCustomToolbar()

        Determine whether to display a custom toolbar for this report.

        Returns:

        `true` to use a custom toolbar; `false` otherwise.

    -   ### setUseCustomToolbar

        public void setUseCustomToolbar(boolean useCustomToolbar\_)

        Set whether to display a custom toolbar for this report.

        Parameters:

        `useCustomToolbar_` - `true` to use a custom toolbar; `false` otherwise.

    -   ### getCustomChartHeight

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getCustomChartHeight()

    -   ### setCustomChartHeight

        public void setCustomChartHeight([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartHeight)

    -   ### getCustomChartWidth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getCustomChartWidth()

    -   ### setCustomChartWidth

        public void setCustomChartWidth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") customChartWidth)

    -   ### getShowLegend

        public boolean getShowLegend()

    -   ### setShowLegend

        public void setShowLegend(boolean showLegend)