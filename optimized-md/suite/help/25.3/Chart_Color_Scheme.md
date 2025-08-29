---
source_url: https://docs.appian.com/suite/help/25.3/Chart_Color_Scheme.html
original_path: Chart_Color_Scheme.html
version: "25.3"
title: "Chart Color Schemes"
page_id: "Chart_Color_Scheme"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Chart Color Schemes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Chart color schemes allow you to select colors from a set of modern and unified color schemes. These color schemes are defined through the _colorScheme_ parameter within each chart.

There are eight color schemes to choose from. You can also create your own custom color scheme using [a!colorSchemeCustom](Chart_Custom_Color_Scheme_Component.html) within the _colorScheme_ parameter. To configure a custom color scheme, enter valid hex codes or select colors from the color picker. Use a consistent color scheme for all charts in an interface.

To learn more about best practices for using colors in charts, see [UX Charts Best Practices](sail/ux-charts.html).

## Chart series color

Aside from Classic, each color scheme has five colors. If there are more [chart series](Chart_Series_Component.html) than colors provided, the colors enumerate through the list again from the beginning.

You can still configure the colors of individual [chart series](Chart_Series_Component.html) when a color scheme is applied. Any series configurations will take precedence over the assigned color scheme colors.

**See Also:**

-   [Line Chart](Line_Chart_Component.html)
-   [Column Chart](Column_Chart_Component.html)
-   [Pie Chart](Pie_Chart_Component.html)
-   [Bar Chart](Bar_Chart_Component.html)
-   [Chart Series Component](Chart_Series_Component.html)
-   [Chart Custom Color Scheme Component](Chart_Custom_Color_Scheme_Component.html)

## Examples

### Bar chart using the parachute color scheme

```
1
2
3
4
5
6
7
8
9
10
11
a!barChartField(
  categories: {"Americas", "EMEA", "APAC"},
  series: {
    a!chartSeries(label: "Referrals", data: {19, 8, null}),
    a!chartSeries(label: "Existing Clients", data: {11, 16, 10}),
    a!chartSeries(label: "Tradeshow Attendees", data: {14, 12, 7})
  },
  colorScheme: "PARACHUTE",
  yAxisTitle: "Active Opportunities",
  showLegend: true
)
```

Displays the following: ![screenshot bar chart](images/barChartParachute.png)

### Line chart using a custom color scheme

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
a!lineChartField(
  label: "Tempo Usage Trends",
  categories: {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"},
  series: {
    a!chartSeries(label: "IT", data: {92, 94, 93, 95, 96, 99, 98, 100, 99, 91, 98, 99}),
    a!chartSeries(label: "Human Services", data: {84, 83, 85, 86, 87, 89, 91, 90, 89, 83, 93, 95}),
    a!chartSeries(label: "Sales", data: {70, 63, 90, 72, 74, 74, 76, 89, 72, 65, 100, 85}),
    a!chartSeries(label: "Marketing", data: {80, 80, 80, 90, 90, 90, 90, 90, 90, 70, 90, 90})
  },
  colorScheme: a!colorSchemeCustom(
    colors: {
      "#c27ba0",
      "#93c47d",
      "#8e7cc3",
      "#ffd966",
    }
  ),
  xAxisTitle: "Month",
  yAxisTitle: "% Active",
  yAxisMax: 100,
  showLegend: true
)
```

Displays the following: ![screenshot of line chart](images/lineChartCustom2.png)

## Chart color schemes

### MIDNIGHT

![Midnight pallete: pie chart, column chart, stacked column chart](images/chartPaletteMidnight.png)

![a five color guide to the colors in the Midnight color scheme, with accompanying hex codes](images/MIDNIGHT_guide.png)

{`"#97A1D9"`, `"#6978C9"`, `"#4A5596"`, `"#2C3365"`, `"#111539"`}

### OCEAN

![Ocean pallete: pie chart, column chart, stacked column chart](images/chartPaletteOcean.png)

![a five color guide to the colors in the Ocean color scheme, with accompanying hex codes](images/OCEAN_guide.png)

{`"#77C2FE"`, `"#249CFF"`, `"#1578CF"`, `"#0A579E"`, `"#003870"`}

### MOSS

![Moss pallete: pie chart, column chart, stacked column chart](images/chartPaletteMoss.png)

![a five color guide to the colors in the Moss color scheme, with accompanying hex codes](images/MOSS_guide.png)

{`"#62BEB6"`, `"#0B9A8D"`, `"#077368"`, `"#034D44"`, `"#002B24"`}

### BERRY

![Berry pallete: pie chart, column chart, stacked column chart](images/chartPaletteBerry.png)

![a five color guide to the colors in the Berry color scheme, with accompanying hex codes](images/BERRY_guide.png)

{`"#F88FB2"`, `"#ED5C8B"`, `"#D5255E"`, `"#A31246"`, `"#740030"`}

### PARACHUTE

![Parachute pallete: pie chart, column chart, stacked column chart](images/chartPaletteParachute.png)

![a five color guide to the colors in the Parachute color scheme, with accompanying hex codes](images/PARACHUTE_guide.png)

{`"#E65F8E"`, `"#A86BD1"`, `"#3AA5D1"`, `"#3BB58F"`, `"#3A63AD"`}

### RAINFOREST

![Rainforest pallete: pie chart, column chart, stacked column chart](images/chartPaletteRainforest.png)

![a five color guide to the colors in the Rainforest color scheme, with accompanying hex codes](images/RAINFOREST_guide.png)

{`"#82C272"`, `"#00A88F"`, `"#0087AC"`, `"#005FAA"`, `"#323B81"`}

### SUNSET

![Sunset pallete: pie chart, column chart, stacked column chart](images/chartPaletteSunset.png)

![a five color guide to the colors in the Sunset color scheme, with accompanying hex codes](images/SUNSET_guide.png)

{`"#FFCA3E"`, `"#FF6F50"`, `"#D03454"`, `"#9C2162"`, `"#772F67"`}

### CLASSIC (default)

![Classic pallete: pie chart, column chart, stacked column chart](images/chartPaletteClassic.png)

![a five color guide to the colors in the Classic color scheme, with accompanying hex codes](images/CLASSIC_guide.png)

{`"#619ED6"`, `"#6BA547"`, `"#F7D027"`, `"#E48F1B"`, `"#B77EA3"`, `"#E64345"`, `"#60CEED"`, `"#9CF168"`, `"#F7EA4A"`, `"#FBC543"`, `"#FFC9ED"`, `"#E6696E"`}

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...