---
source_url: https://docs.appian.com/suite/help/25.3/Using_the_Records_Tab.html
original_path: Using_the_Records_Tab.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Where to Use Records

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Record types make it easy to work with data throughout your applications. Once you've configured your record type, you can use it to power [interface components](#interface-components), pass data in a [process model](#process-models), and display record data in [sites](#sites). You can even allow business users to leverage your record data in [Process HQ](processhq.html).

This page explains the different places where developers and business users can reference record data. See [Interface Recipes](SAIL_Recipes.html) to learn how to achieve common user-interface designs using records.

**Tip:**  Review your [record type's security](record-security.html) to ensure the right users can view the right data.

## Interface components

There are numerous interface components that allow you to use a record type as the data source. Components that use a record type as the source are referred to as _records-powered components_.

You can use the following components to easily display record data in your interfaces:

-   [Read-only grid](#read-only-grid)
-   [Event history list](#event-history-list)
-   [Charts](#charts)
-   [Record actions](#record-actions)
-   [Record links](#record-links)
-   [Record picker](#record-picker)
-   [Selection components](#selection-components)

### Read-only grid

You can easily pull record data into a [read-only grid](Paging_Grid_Component.html) by choosing the record type as the grid's data source. Records-powered grids allows you to reuse features configured on your record list such as user filters, search configurations, record actions, and export to Excel.

[![images/records-read-only-grid.gif](images/records-read-only-grid.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img409)

[![](images/records-read-only-grid.gif)](#_)

By default, the grid will apply the record list style and format. You can then customize your grid by creating new grid columns, where you can reference record fields or [related record fields](record-type-relationships.html), and apply different display options to present your data.

In expression mode, you can configure the grid's data source using [a!recordData](fnc_system_recorddata.html) or [a!queryRecordType](fnc_system_queryrecordtype.html), and use [fv!row](reference-records.html) with bracket notation to pass the record field values into the grid.

### Event history list

The [event history list](Event_History_List_Component.html) component allows you to display your [record events](record-events.html) in a list or in a timeline format. This component makes it easy to view your business operations at a glance, especially when you leverage the [generated Event History record type](record-events-configuration.html#generated-event-history-record-type) to configure it.

[![images/eventHistoryListExample.png](images/eventHistoryListExample.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img410)

[![](images/eventHistoryListExample.png)](#_)

### Charts

It's easy to build powerful reports when you use a [record type as the source of your charts](Chart_Configuration_Using_Records.html).

Simply choose your chart, and specify the record type to use as your data source. Appian will then query your data for you and automatically display the results in the chart. You can then modify the chart's grouping and measures to determine what data to query from the record type and how to display the results on the chart.

If your record type leverages [record type relationships](record-type-relationships.html), you can easily reference related data by hovering over the relationship name in the list of available record fields.

[![images/customer-support-ticket.gif](images/customer-support-ticket.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img411)

[![](images/customer-support-ticket.gif)](#_)

**Tip:**  If you start building your chart and find that you need to calculate or summarize your existing data to display the right information, consider creating [custom record fields](custom-record-fields.html) on your record type to calculate these values and store them in a new record field.

### Record actions

Once you add a [related action](record-actions.html#related-actions) or a [record list action](record-actions.html#record-list-actions) to your record type, you can reuse these actions in any report or form using the [record action component](Record_Action_Component.html).

This component gives you the flexibility to display record actions anywhere on the page, and even change the way the button appears on the interface.

[![images/record-action-component-ex.png](images/record-action-component-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img412)

[![](images/record-action-component-ex.png)](#_)

With a record action component, you can easily add a list of record actions, and even reference record actions from different record types.

See [a!recordActionField()](Record_Action_Component.html) and [a!recordActionItem()](Record_Action_Item_Component.html) to learn how to configure a record action component.

### Record links

After you configure your [record views](record-view.html), you can easily link to these views using [record links](Record_Link_Component.html). For example, in your Customer record list, you could add a record link on the `name` field and use `fv!identifier` to pass in each customer's ID. Now, when a user clicks on the customer name, the link will go to the Summary view associated with each customer. Consider using the [_targetLocation_ parameter](Record_Link_Component.html#parameters) to ensure the link opens a site page that is predictable and familiar to your users.

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
a!linkField(
  links: {
    a!recordLink(
      label: fv!row[recordType!Customer.fields.name],
      recordType: recordType!Customer,
      identifier: fv!identifier,
      openLinkIn: "SAME_TAB"
    )
  }
)
```

Record links can be used in tags, charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text. Using record links, you can allow users to easily discover more information with minimal effort.

See the [record link component](Record_Link_Component.html) for more information.

### Record picker

The [record picker](Record_Picker_Component.html) allows users to select one or more records from a record type using an autocompleting picker. This component is particularly useful when building forms to update or add new information to a record.

For example, if you want to create a form to capture new orders, you can add a record picker on your form so users can select their customer name from the Customer record type. This prevents users from manually entering a customer name each time they create a new order, and it provides an alternative to building and maintaining a constant to display a list of all customer names.

[![images/use-record-picker.gif](images/use-record-picker.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img413)

[![](images/use-record-picker.gif)](#_)

See the [record picker component](Record_Picker_Component.html) for more information.

### Selection components

The following [selection components](SAIL_Components.html#selection) can be configured with a record type as their data source—a faster and simpler method than building a query or mapping parameters one by one:

-   [Checkbox](Checkbox_Component.html)
-   [Radio button](Radio_Button_Component.html)
-   [Dropdown](Dropdown_Component.html)
-   [Multiple dropdown](Multiple_Dropdown_Component.html)

These components are perfect for letting users pick a value from a set of record data.

[![images/use-multi-dropdown-records.png](images/use-multi-dropdown-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img414)

[![](images/use-multi-dropdown-records.png)](#_)

## Process models

Record types can be used as variables in a process model. This allows you to use record data in your process model as a [process variable](Process_and_Report_Data.html#process-variables) or an [activity class parameter](Process_and_Report_Data.html#activity-class-parameters).

You can use record types as process variables to manage the full lifecycle of your business data and power a variety of workflows. For example, record data can be used to:

-   Update and sync changes using the [Write Records](Write_Records_Smart_Service.html) and [Delete Records](Delete_Records_Smart_Service.html) smart services.
-   Pass in data from a [start form](process-model-object.html#process-start-form-tab) that uses a record type as a rule input.
-   Sync external data changes using the [Sync Records](Sync_Records_Smart_Service.html) smart service.
-   Examine record data to make decisions in a [gateway node](Gateways.html).
-   Determine who needs to be informed of the process and send them an [email](Send_Email_Smart_Service.html) or [push notification](Send_Push_Notification_Smart_Service.html).

See [Create a new record using a process model](Write_Records_Smart_Service.html#create-a-new-record-using-a-process-model) for an example.

## Sites

In sites, you can associate record types with site pages.

When a site page is associated with a record type, the user sees the [record list](record-list.html) for the associated record type when accessing that page.

[![images/SiteRecordTypePage.png](images/SiteRecordTypePage.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img415)

[![](images/SiteRecordTypePage.png)](#_)

### Display records on a site

To associate a record type with a site page:

1.  [Create a site](sites_object.html) or open an existing site.
2.  Click **Add Page**.
3.  From the **Type** dropdown, select **Record List**.
4.  Use the **Content** dropdown to select a record type from the list of available records.
5.  Click **OK**.

### Show record news

When you associate a record type with a site page, you can choose whether or not to show the News view on the records displayed on the site.

By default, a site is configured to show record news. This means that each record will have a view that displays the 20 most recent news events related to the record. However, the News view will only display on the site if **Show News view** is selected for the record type object.

See [Define Record Views](record-view.html#configure-the-display-of-default-record-views) to learn more about configuring the display of default record views.

![sitesRecordNews](images/sitesRecordNews.png)

## Process HQ

[Process HQ](processhq.html) is a unified, self-service workspace that provides business users with unprecedented visibility into their enterprise so they can make data-driven decisions and improvements.

[![images/processHQLandingPage.png](images/processHQLandingPage.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img416)

[![](images/processHQLandingPage.png)](#_)

In this workspace, business users can explore and analyze data from your synced record types using:

-   [Process insights](process-insights.html). This capability analyzes and aggregates your [event data](record-events.html) so business users can explore how their business processes actually works. They can then take advantage of a guided experience to drill deeper into the details and uncover ways to improve processes, saving their organizations time and money.
-   [Data fabric insights](allow-users-to-build-reports.html). This capability allows business users to explore your synced record types and build custom reports and dashboards from that data. When they partner with Appian AI Copilot, they can gain new insights about their business.

## Tempo

Tempo is an end-user workspace where users can explore the records, reports, tasks, and actions that make up their enterprise. In Tempo, record types are displayed as a list of cards on the **Records** tab. Each record type has an associated icon and color.

By default, Tempo will display a preconfigured record type called **Users**. This record type contains a directory of all Appian users. To make changes to the Users record type, see [Modify the User Record Type](Configure_Tempo_Users.html).

Users can click a record to view the [record list](record-list.html).

![image_0](images/Using_Record_Tab/image_0.png)

### Display a record type in Tempo

By default, new record types do not display on the **Records** tab in Tempo.

To display record types in Tempo:

1.  In your record type, go to **Workspaces**.
2.  Select the **Show this record type on the Records tab in Tempo** checkbox.

    ![/Create Record Type/create a record type tempo configure](images/Create_Record_Type/create_a_record_type_tempo_configure.png)

3.  For **Icon**, select an icon relevant to your record type so that users can find it faster in the list. Review [styling and sizing recommendations](#record-type-icon-recommendations) for these icons.
4.  For **Icon Color**, choose a color to help differentiate your record type from others.
5.  Save your record type.

**Note:**  As a best practice, you should hide a record type that defines reference or supplemental data that is only created and managed in the context of another record type. Hiding a record type does not prevent users from viewing a record's list or views in Tempo.

### Record type icon recommendations

Use an icon that represents a distinguishing attribute of the record type, such as a company logo. This will allow users to quickly identify a record by viewing the associated icon.

Record icons should feature simple shapes that are easily recognized at small display sizes. Use a transparent or white background for empty areas of the icon and avoid adding borders.

Photorealistic or highly-detailed images are not appropriate for icons.

![](images/iconStyling_do.png)

DO

![](images/iconStyling_dont.png)

DON'T

The recommended dimensions for custom record icons are 124px (h) x 124px (w). This size allows for sharp rendering of icons on high-pixel-density screens such as Apple’s Retina displays.

The rendered, visible bounds of the displayed icon are 62(h) x 62(w) device-independent pixels (dip).

![](images/ux_records_icon_size.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...