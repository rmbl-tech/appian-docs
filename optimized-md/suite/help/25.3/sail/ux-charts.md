---
source_url: https://docs.appian.com/suite/help/25.3/sail/ux-charts.html
original_path: sail/ux-charts.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Charts \[SAIL Design System: Components\]

-   [Components](/suite/help/25.3/sail/components.html)
-   Top-Level Layouts
    -   [Form Layout](/suite/help/25.3/sail/ux-form-layout.html)
    -   [Wizard Layout](/suite/help/25.3/sail/ux-wizard-layout.html)
    -   [Header Content Layout](/suite/help/25.3/sail/ux-header-content-layout.html)
    -   [Pane Layout](/suite/help/25.3/sail/ux-pane-layout.html)
-   Layouts
    -   [Section Layout](/suite/help/25.3/sail/ux-section-layout.html)
    -   [Columns Layout](/suite/help/25.3/sail/ux-columns-layout.html)
    -   [Side by Side Layout](/suite/help/25.3/sail/ux-side-by-side-layout.html)
    -   [Box Layout](/suite/help/25.3/sail/ux-box-layout.html)
    -   [Card Layout](/suite/help/25.3/sail/ux-card-layout.html)
    -   [Billboard Layout](/suite/help/25.3/sail/ux-billboard-layout.html)
-   Display
    -   [Images](/suite/help/25.3/sail/ux-images.html)
    -   [Rich Text](/suite/help/25.3/sail/ux-rich-text.html)
    -   [KPIs](/suite/help/25.3/sail/ux-kpi.html)
    -   [Tags](/suite/help/25.3/sail/ux-tags.html)
    -   [Gauges](/suite/help/25.3/sail/ux-gauge.html)
    -   [Standard Icons](/suite/help/25.3/sail/ux-styled-icons.html)
-   Action
    -   [Buttons](/suite/help/25.3/sail/ux-buttons.html)
    -   [Record Actions](/suite/help/25.3/sail/ux-record-actions.html)
-   Grids & Lists
    -   [Grids](/suite/help/25.3/sail/ux-grids.html)
    -   [Event History List](/suite/help/25.3/sail/ux-event-history-list.html)
-   Charts
    -   [Charts](#)

Components Overview Form Layout Wizard Layout Header Content Layout Pane Layout Section Layout Columns Layout Side by Side Layout Box Layout Card Layout Billboard Layout Images Rich Text KPIs Tags Gauges Standard Icons Buttons Record Actions Grids Event History List Charts

# Charts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

* * *

## Introduction

There are a variety of chart types and configurations that can be used to build rich reporting dashboards that provide users with visualizations of their data.

![ds-images/charts_dashboard.png](ds-images/charts_dashboard.png)

## Chart types

### Choosing a chart type

Every chart should tell a story. A common mistake in data visualization is to force a dataset into a specific chart type. To avoid this mistake, start by identifying values of interest and understanding what the user intends to do with the data. Then, decide what story the data should tell, and what information is important for the user to learn.

Finally, determine which chart type will be most effective for telling the story. Ask These questions to help determine the purpose of the chart:

Should the chart depict…

-   Individual parts that make up a whole? (e.g. number of customers per region)
    -   With one category:
        -   [Pie Chart](ux-charts.html#pie-charts)
    -   With multiple categories:
        -   Stacked [Bar Chart](ux-charts.html#bar-charts) or [Column Chart](ux-charts.html#column-charts)
    -   Over time:
        -   Stacked [Area Chart](ux-charts.html#area-charts)
-   Distribution of data? (e.g. average customer rating of products)
    -   With positive and/or negative values:
        -   [Column Chart](ux-charts.html#column-charts)
    -   With a relatively large number of categories:
        -   [Bar Chart](ux-charts.html#bar-charts)
    -   To compare two measures at once:
        -   [Scatter Chart](ux-charts.html#scatter-charts)
-   Trends over time? (e.g. monthly revenue over the last year)
    -   Over a relatively small number of intervals:
        -   [Column Chart](ux-charts.html#column-charts) or [Line Chart](ux-charts.html#line-charts)
    -   Over a relatively large number of intervals:
        -   [Line Chart](ux-charts.html#line-charts) or [Area Chart](ux-charts.html#area-charts)
-   Compare values across categories? (e.g. number of customers in each region yearly)
    -   With a relatively small set of values:
        -   [Column Chart](ux-charts.html#column-charts), [Line Chart](ux-charts.html#line-charts), or [Area Chart](ux-charts.html#area-charts)
    -   With a relatively large set of values:
        -   [Line Chart](ux-charts.html#line-charts)

### Pie charts

See the developer documentation for technical details about the [pie chart component](/suite/help/25.3/Pie_Chart_Component.html).

Pie charts are generally used to show proportional data and can help a user understand the contribution of parts to a whole. Pie charts should only be used to represent data that can be placed into distinct categories and should not consist of more than 5 slices. Always include data and category labels for the slices.

[![alttext](ds-images/pie_DO_proportional.png)](ds-images/pie_DO_proportional.png)

Use pie charts to show proportional data.

[![alttext](ds-images/pie_DONT_multiple.png)](ds-images/pie_DONT_multiple.png)

Don’t use multiple pie charts when comparing multiple sets of data. Instead of the above example, use a line chart with categories for each year so users can easily compare values.

[![alttext](ds-images/text_DONT_slices.png)](ds-images/text_DONT_slices.png)

Don’t use too many slices in a pie chart, as this will cause some labels to become hidden (like the red and light blue slices above). Try using broader categories or grouping those which have relatively small values into a single “Other” category.

### Column charts

See the developer documentation for technical details about the [column chart component](/suite/help/25.3/Column_Chart_Component.html).

Use column charts for direct comparison of data or to show data over time only when the number of time intervals is small. In addition, column charts are useful for displaying data with both positive and negative values.

[![alttext](ds-images/col_DO_time.png)](ds-images/col_DO_time.png)

Use column charts to compare values across time-based categories with a relatively small number of intervals.

[![alttext](ds-images/col_DO_negValues.png)](ds-images/col_DO_negValues.png)

A column chart is useful for displaying negative and positive values because the y-axis can display numbers below zero.

### Bar charts

See the developer documentation for technical details about the [bar chart component](/suite/help/25.3/Bar_Chart_Component.html).

Use bar charts to compare values across categories that are not sequential or time-based. If labels are long or if there are many categories, a bar chart is more effective than a column chart because each label will have sufficient space regardless of the number of categories.

[![alttext](ds-images/bar_DO_longLabels.png)](ds-images/bar_DO_longLabels.png)

Use bar charts for categories with especially long labels.

### Line charts

See the developer documentation for technical details about the [line chart component](/suite/help/25.3/Line_Chart_Component.html).

Line charts are best used for comparing data over time and are effective at presenting many data points. They are also effective for displaying data in scenarios where the differences between data points are small because the y-axis automatically adjusts to fit the data.

Conventionally, the x-axis contains the categories of time, and y-axis contains the frequency of the measured data.

[![alttext](ds-images/line_DO_time.png)](ds-images/line_DO_time.png)

Line charts are useful for depicting time-based categories.

[![alttext](ds-images/line_DONT_fiveLines.png)](ds-images/line_DONT_fiveLines.png)

Charts with more than 5 lines are difficult to decipher. We recommend using a column chart for this scenario.

[![alttext](ds-images/line_do_scale_new.png)](ds-images/line_do_scale_new.png)

A line chart’s y-axis values are automatically scaled to fit the line chart, which increases the visibility of relatively small differences in data values.

[![alttext](ds-images/line_DO_gaps.png)](ds-images/line_DO_gaps.png)

Leave gaps in line charts to represent missing data.

### Area charts

See the developer documentation for technical details about the [area chart component](/suite/help/25.3/Area_Chart_Component.html).

Area and line charts are both used for comparing data over time, but call attention to different aspects of the data. Area charts emphasize volume or cumulative data progression while line charts focus on precise data points.

[![alttext](ds-images/area_DO_none.png)](ds-images/area_DO_none.png)

Use area charts without stacking to compare cumulative data over time.

[![alttext](ds-images/area_DO_stacking.png)](ds-images/area_DO_stacking.png)

Use “Normal” stacking (left) on area charts to compare how each category’s total value and trends compare to the others. Alternatively, if information about the trend is not necessary, use “Percent to total” stacking (right) to show the relative contribution of each category to the total.

[![alttext](ds-images/area_DONT_none.png)](ds-images/area_DONT_none.png)

Don't use area charts without stacking if one series of data is always greater than the other. In this example, it is not immediately obvious whether the series are stacked or overlapping. Instead, consider using a line chart, or applying “Normal” or “Percent to total” stacking behavior with added context.

[![alttext](ds-images/area_DONT_stacking.png)](ds-images/area_DONT_stacking.png)

Don’t use area charts if you have more than three series because overlapping areas make it difficult to associate each color with a specific category.

### Scatter charts

See the developer documentation for technical details about the [scatter chart component](/suite/help/25.3/Scatter_Chart_Component.html).

Use scatter charts to represent the relationship between two fields by plotting the fields' values on a two-dimensional plane.

Scatter charts depict large sets of data concisely and allow readers to find correlations and outliers.

[![alttext](ds-images/scatter_DO_compare.png)](ds-images/scatter_DO_compare.png)

Use a scatter chart when you want to compare two related variables. Add a secondary grouping to show grouped variables in the legend.

[![alttext](ds-images/scatter_DONT_compare.png)](ds-images/scatter_DONT_compare.png)

Include outliers. They are an important part of your dataset, even if they don't look like they belong. Only use data filters when narrowing the dataset as a whole, rather than removing individual data points.

[![alttext](ds-images/scatter_DONT_qualitative.png)](ds-images/scatter_DONT_qualitative.png)

Don't use scatter plots if you need to evaluate qualitative data (such as gender or pass/fail). For qualitative data, consider using another chart type such as a bar or pie chart. Scatter plots should be used with quantitative data (like age, income, or temperature).

## Sort order

As with all displays of aggregate data, the sort order should be meaningful and obvious to the user. Always sort chart data by magnitude or by sequential categories, such as time.

### Sorting by magnitude

#### Pie chart and bar chart

In most scenarios, it is best to sort pie and bar chart data values in descending order to emphasize the largest value in a data set and make it easier for users to compare the relative sizes of slices and bars.

[![alttext](ds-images/sort_DO_pie_descend.png)](ds-images/sort_DO_pie_descend.png)

Pie charts sorted in descending order make it easier to quickly compare and identify the relative size of slices.

[![alttext](ds-images/sort_DO_bar_descend.png)](ds-images/sort_DO_bar_descend.png)

A bar chart sorted in descending order will draw attention to the largest category.

#### Column chart

Sort column chart data in ascending order to emphasize the largest value in a data set.

[![alttext](ds-images/sort_DO_col_ascend.png)](ds-images/sort_DO_col_ascend.png)

A column chart sorted in ascending order will draw attention to the largest column.

### Sorting by category

#### Column chart and line chart

Use a sequential sort order if categories are related to time (e.g. sorting by year).

[![alttext](ds-images/sort_DO_col_time.png)](ds-images/sort_DO_col_time.png)

A column chart sorted by time is appropriate for displaying time-based categories.

## Height

Choose chart heights based on the amount of data displayed and the chart’s relationship to other page content. For example, tall charts can be used to visualize complex datasets, whereas short charts may be more appropriate for displaying simpler datasets. See the Chart Height reference page for more information on how to implement chart heights.

### Visual balance

[![alttext](ds-images/height_DO_balance.png)](ds-images/height_DO_balance.png)

Use chart heights that are proportional to surrounding content.

[![alttext](ds-images/height_DO_dashboard_short.png)](ds-images/height_DO_dashboard_short.png)

Use an appropriate height to maintain visual balance and restrict the overall column from being too tall in comparison to the rest of the interface. In this example, a “Short” height is used to restrict the column from being significantly taller than the rest of the content on the page.

[![alttext](ds-images/height_DONT_container.png)](ds-images/height_DONT_container.png)

Don’t place a chart in a card layout that is too short for the chart to fit in.

[![alttext](ds-images/height_DONT_mismatched.png)](ds-images/height_DONT_mismatched.png)

Don’t use mismatched heights for charts placed side-by-side if it results in large areas of unused whitespace.

### Height proportional to size of data

[![alttext](ds-images/height_DONT_short.png)](ds-images/height_DONT_short.png)

Don’t use a short height for charts with data that users are intended to interact with. Instead, use a taller height to provide ample screen space for the visualization and larger click targets for users to drill down into specific data points.

[![alttext](ds-images/height_DONT_fixedBar.png)](ds-images/height_DONT_fixedBar.png)

When there are too many categories to display within a fixed height, the chart will automatically hide some of categories. Instead, use “Auto” so the chart height can grow and shrink according to the number of categories in the dataset.

### Adapting charts to shorter heights

[![alttext](ds-images/height_DO_microHideAxes.png)](ds-images/height_DO_microHideAxes.png)

When using a micro height, the axes can be hidden to reserve more space for the data and legend.

[![alttext](ds-images/height_DONT_data.png)](ds-images/height_DONT_data.png)

Don’t use a micro height to display extensive data or labels.

## Colors

Colors can be used to enhance chart readability or reflect an organization's branding. Color schemes can be applied to charts to show meaningful associations between the colors and the data they represent. A full list of out of the box color scheme options can be found in the [Chart Color Scheme](../Chart_Color_Scheme.html) reference page.

[![alttext](ds-images/color_DONT_fivePlus.png)](ds-images/color_DONT_fivePlus.png)

Don’t use more than 5 colors in a single chart. The more colors there are, the more difficult it is to differentiate between colors. Instead, consider combining multiple small categories into a single “Other” category.

### Consistent colors

[![alttext](ds-images/color_DONT_multipleSchemes.png)](ds-images/color_DONT_multipleSchemes.png)

Don’t use multiple color schemes in a single interface because it can be distracting.

### Colors to represent data values

[![alttext](ds-images/color_DO_pie_gradient.png)](ds-images/color_DO_pie_gradient.png)

Use gradient color schemes on sorted pie charts to reflect the relative size of the slices, where darker colors represent larger slices and lighter colors represent smaller slices.

[![alttext](ds-images/color_DO_col_gradient.png)](ds-images/color_DO_col_gradient.png)

A column chart sorted by category with a gradient color scheme shows a clear association between the colors and the values they represent.

### Colors for distinct categories

[![alttext](ds-images/color_DO_contrast.png)](ds-images/color_DO_contrast.png)

Use contrasting colors to depict contrasting categories.

[![alttext](ds-images/color_DO_bright.png)](ds-images/color_DO_bright.png)

Use a bright, primary color to direct the user’s eye to the most important value or value set in a chart, and a muted color to deemphasize other, less important values.

[![alttext](ds-images/color_DO_highlight.png)](ds-images/color_DO_highlight.png)

Colors can be applied to individual series of data to highlight key elements in the chart. Consider the connotation of the color you choose (e.g Red implies a negative status, like “Critical”).

[![alttext](ds-images/color_DONT_similar.png)](ds-images/color_DONT_similar.png)

Gradient color schemes should not be used for line charts with multiple lines, as the similar colors are difficult for users to map to each category. Instead, try using a color scheme that has distinct variations in color.

### Background colors

As of Appian 20.4, charts no longer have a white background color. Keep this in mind as you decide where to place your charts.

[![alttext](ds-images/color_DO_transparentBackground.png)](ds-images/color_DO_transparentBackground.png)

When using a transparent background color with header-content layout, place charts within card layouts.

[![alttext](ds-images/color_DONT_transparentBackground.png)](ds-images/color_DONT_transparentBackground.png)

Don’t show charts on different colored backgrounds.

[![alttext](ds-images/color_DONT_coloredCard.png)](ds-images/color_DONT_coloredCard.png)

Brightly colored backgrounds tend to look unprofessional and distract from the chart contents.

## Text

### Labels, legends, and tooltips

Axis labels and legends are used to provide context and help users interpret chart data more accurately. However, they can be removed depending on the purpose of the chart and how much space is available. Keep in mind that additional contextual information might need to be provided if certain elements of the chart are hidden.

[![alttext](ds-images/text_DONT_longLabels.png)](ds-images/text_DONT_longLabels.png)

Don’t use column charts when x-axis labels are long, especially if label text is truncated or rotated. Use a bar chart instead to allow more space for labels.

[![alttext](ds-images/text_DONT_tooltip.png)](ds-images/text_DONT_tooltip.png)

When hiding the axes, do not leave the series and category labels undefined, because they provide contextual information in the tooltip.

[![alttext](ds-images/text_DO_dashboards_axes.png)](ds-images/text_DO_dashboards_axes.png)

Hiding axes can enhance a visualization by reducing the amount of clutter. However, when doing so it is important to provide additional context to ensure readability like the products list does in this example.

[![alttext](ds-images/text_DONT_hideLabels.png)](ds-images/text_DONT_hideLabels.png)

Although tooltips are enabled, don’t hide the axes and labels if there is enough space to display them. The labels enable users to easily understand the information on the chart.

[![alttext](ds-images/text_DO_other.png)](ds-images/text_DO_other.png)

When there are too many categories, use broader category labels or group those which have relatively small values into a single “Other” category.

[![alttext](ds-images/text_DONT_legend.png)](ds-images/text_DONT_legend.png)

Don’t include a legend when there is only one data series. Instead, try using a descriptive title to indicate the data that is plotted.

[![alttext](ds-images/text_DONT_seriesLabel.png)](ds-images/text_DONT_seriesLabel.png)

Don’t show the series label on the chart when multiple pie charts are displayed in a row or column, as it can result in inconsistent sizing across charts. Instead, use a legend to display the labels.

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.