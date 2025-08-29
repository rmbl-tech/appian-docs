---
source_url: https://docs.appian.com/suite/help/25.3/Tempo_Report_Design.html
original_path: Tempo_Report_Design.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Report Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Report objects allow you to pull in data from tasks, records, relational databases, and other third-party data sources and display it on a single interface for end users to view.

Through the use of rules, interface components, and expressions, reports enable developers to quickly define what data to display and how to display it in a usable and concise way on both web and mobile clients.

The sections below detail design information for report objects, such as what to expect in terms of report security, the options available when configuring a report, and how to manage them after their creation.

By default, reports display on the **Reports** tab of Tempo. If configured as a Tempo task report, they display on the **Tasks** tab.

You can also configure them to display as a site page, as long as the interface doesn't use rule inputs.

## Report object

A report is a [design object](design-objects.html#report) that displays charts and grids based on an expression. It holds the basic properties of the report (such as name and description), the expression that determines what interface components display, and the role map that determines its security.

Reports can display data queried from tasks, records, and relational databases. You can display the data through any of the [interface components](SAIL_Components.html), including chart components and basic field components.

## Tempo task report

Tempo task reports are a subset of report objects. They are accessible from the **Tasks** tab alongside the system's existing task views.

You can configure any report object to be a Tempo task report, but Appian recommends only configuring those reports that display a [read-only grid](Paging_Grid_Component.html) with [process task links](Process_Task_Link_Component.html).

## Security

Security can be configured for the report object, as well as for the various objects and data referenced within a report.

See [Layered Object Security](object-security.html#layered-object-security) to learn more.

### Report security

**Note:**  A user must have at least **Viewer** permissions to a report to access it from Tempo or a [site](Sites.html).

The [security](object-security.html) role map of a report controls which users can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a report.

If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any report you create. System administrators can always access a report, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a report's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a report's security role map:

| Actions | Administrator | Editor | Viewer |
| --- | --- | --- | --- |
| View the report in Tempo or a site | Yes | Yes | Yes |
| View the security | Yes | Yes | Yes |
| View the report definition | Yes | Yes | Yes |
| Update the report definition | Yes | Yes | No |
| Update the security | Yes | No | No |
| Delete the report | Yes | No | No |

### Data security

Security for the data displayed in a report is based on the security of the underlying data source. Users must have at least **Viewer** permissions to the data to view it within a report.

If a user does not have **Viewer** permissions to the data or to part of the data in a report, the report or a subsection of it may fail to load.

**Note:**  Preventing users from being able to view a report does not secure the underlying data. Users may still be able to view the data in other areas of Appian, such as process reports.

For more information on how to configure the security of the underlying data source, see [Process Security](process-model-object.html#process-security) and [Data Store Security](Data_Stores.html#prodlink-security).

## Creating a report object

Report objects can be created by any user in the [Designer role](User_Roles.html#designer-role).

To create a report object:

1.  [Create an interface](interface_object.html) that returns the components to display in the report.
2.  In your application, go to the **Build** view.
3.  Click **New > Report**.
4.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the report. Follow the [recommended naming standard](Standard_Object_Names.html#user-objects) when creating this name.

    Examples: `Yearly Earnings`, `Tickets by Status`, or `Tickets by Priority`. |
    | **Description** | (Optional) The description of the report to be displayed in the Reports list view.

    Examples: `Summary of Yearly Earnings Broken Down by Quarter`, `Number of Tickets Broken Down by Status`, or `Number of Tickets Broken Down by Priority`. |
    | **Interface** | Browse to and select the interface you created. |
    | **Save as Task Report** | Select this checkbox to enable the report as a Tempo task report. |

5.  Click **Create**.
6.  Configure [security](#prodlink-security) for the report.
7.  Click **Save**.

Once the report is created, it is available for all users with at least viewing rights. The URL stub created for the report can be shared between users but will only work for those that can already view the report.

## Editing Tempo reports

To edit report properties:

1.  In your application, go to the **Build** view.
2.  Select the name of the report you want to edit.
3.  Modify any of the properties as needed.

    **Note:**  To change whether or not a report is a Tempo task report, you must create a new report.

    ![img](images/reportsInAppianDesignerEditing.png)

4.  Click **SAVE**.

### Version control

Only the latest version of the report object is saved in the system.

Any changes you make to the rules created as part of the dashboard, however, are saved as a new version just as any other rule.

See also: [Edit an interface](interface_object.html#edit-an-interface)

## Deleting reports

Deleting a report removes the object from the system. It will no longer appear in Tempo or as a site page.

To delete a report:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the report you want to delete.
3.  Click **DELETE**.
4.  Review any object dependents and click **DELETE**.

## Design best practices

### Report definition

#### Save Report Configuration Expressions as Interfaces

Appian recommends saving any expressions created for a report as an interface for version control and testing purposes.

This also allows you to easily copy parts or all of the interface to create similar reports for different data.

#### Keep Report Names Simple and Concise

Each report's name should be easy for users to scan through.

### Report performance

#### Limit the Number of Series Values and Categories

The number of series values for a chart component affects performance. The fewer values that need to be evaluated, the better the performance.

#### Limit the Number of Chart Components on the UI

Each interface component added to a report also impacts the report's performance. This especially applies to chart and grid components. The more complex each component, the higher the strain on performance. Keep this in mind when adding more than one complex component to your report.

#### Limit Queries to External Databases

Store external data or the result of expressions that do heavy data manipulations in local variables defined using `a!localVariables()` to avoid re-executing them upon every reevaluation. Use local variables to avoid redundant queries when configuring one or more components that use the same data.

### Report usability

#### Review and Adjust the Chart

As discussed, many factors affect the size, layout, and performance of a chart. Be sure to review the chart as it displays in to end users and apply the best practices above to tweak the end result. Modifying your rule for the dashboard in one browser while viewing the report in another is a great way to see the impact of your changes easily.

#### Keep Report Names Concise and Descriptive

Users should easily be able to understand the purpose and content of each report from its name. Since reports are sorted alphabetically, related reports should use names that start with the same text (such as the name of the record type being reported on) so they are grouped together on the report list, for example, "Customers by Industry" and "Customers by Region".

#### Use Appropriate Column Layouts for Report Content

Two-column layouts provide greater density for smaller charts and grids, allowing users to see more data without scrolling and facilitating side-by-side comparisons. One-column layouts provide additional space to show charts and grids that contain more data points. A one-column layout is recommended for grids that include more than 5 columns and/or lengthy text content. Charts that show more than 7 data points are generally best-shown in one-column layouts.

To create visually-balanced reports, it is recommended to use the same layout (one-column or two-column) for all report sections. When mixing different layouts within a report, make sure that the height of content in each column of two-column sections is similar in order to minimize white space. For the same reason, it is preferable to place a one-column section above a two-column section; this reduces the likelihood of a shorter column creating empty space above the start of the next section. An example of an effective mixed-layout report is a grid in a one-column section above a two-column section containing a variety of smaller charts.

#### Keep Chart Labels Short

Long label text may reduce the amount of space available for the plot area of charts. When there is limited room to show chart labels, some text may overlap and certain labels may be hidden to preserve space.

#### Minimize the Number of Chart Series and Categories

Design charts with as few dimensions and data points as needed to optimize display. Simpler charts are easier to comprehend and also load more quickly.

Line charts or column charts with a large number of data points will require users to scroll horizontally to view all the data.

Pie charts with a large number of slices, particularly if some of the slices are very thin (values with small magnitude compared to the overall data represented), may display with some data labels not visible. If this cannot be avoided, enable tooltips so users can see data values by hovering over pie slices.

#### Limit the Number of Grid Columns and Keep Text Short

Grids with a large number of columns, long column header labels, and/or long text data values will require users to scroll horizontally to view all columns. Use a one-column layout to allow more grid columns to be seen without scrolling. Consider reformatting or abbreviating label and data values to reduce their character length.

#### Accessible Reports Must Provide a Plain-Text Representation of Data

While charts are an effective medium for visually presenting data, they are primarily intended for consumption by sighted users. To make the same data available to non-sighted users who interact with Appian through a screen reader, provide a grid view of report content. See this [recipe](recipe-configure-a-chart-to-grid-toggle.html) for an example.

## FAQ

### How do report objects differ from process reports?

Report objects can be modified through their expression, viewed on mobile devices and web browsers, and report on data from tasks, records, and relational databases.

Process reports can only be viewed from the legacy Application Portal and can only report on data from process models, processes, and tasks.

### What happens to my process reports?

These continue to work as before in the legacy Application Portal. As you migrate your application to Tempo, you can use report objects for each process report and access these from Tempo.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...