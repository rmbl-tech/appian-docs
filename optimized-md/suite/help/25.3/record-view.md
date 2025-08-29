---
source_url: https://docs.appian.com/suite/help/25.3/record-view.html
original_path: record-view.html
version: "25.3"
title: "Configure Record Views"
page_id: "record-view"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Record Views

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Build Modern Appian Interfaces Fast - Record Views

Appian can generate modern and user-friendly interfaces, like record lists, actions, and views, directly from your data model. In this video, you'll follow an auto insurance use case to learn how to build a polished record views in just a few clicks.

This page describes how to configure a record view and style your record header.

## Overview

In a record type, each row of your source data is displayed as a _record_. But a record is more than just a row of data—it's a combination of [record views](#about-record-views) and [related actions](record-actions.html#related-actions).

Record views allow you tailor information to a user's interests and needs. You can have multiple record views to create a more comprehensive view of your data that benefits many users.

For example, in a Support Case record type, you may have support engineers and case managers who need to monitor submitted cases. Support engineers need to know detailed information about the case, while case managers need to know about the customer who submitted each case. To support both types of users, you can create two different record views.

[![images/customer-support-views.png](images/customer-support-views.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img550)

[![](images/customer-support-views.png)](#_)

## About record views

A record view is defined in the record type object and is composed of an [interface](interface_object.html) that displays information from a single record to end users. You can have multiple record views to surface different insights about each record depending on a user's interests and needs. Learn more about [creating an interface for a record view](Create_a_Record_View.html) and passing the record data.

Although each record in the record type will contain the same record views, the layout and data that display for each record is determined by the [expressions](Expressions.html) used to define the views.

## Default record views

By default, each record type will have at least three views:

-   **Summary view**
-   **News view**
-   **Related Actions view**

By default, each record has a Summary view. This view is displayed as the first view on the record and is always visible to users who can see the record. In addition to the Summary view, you can configure up to 20 additional record views on your record type.

**Tip:**  If only one view is configured to display, the record view tab will not appear.

The News and Related Actions views are configured out-of-the-box in the record type to display any news related to a record and any related actions associated with the record type. These two views are pre-configured to save development time, so they cannot be modified. However, you can choose to [hide the default views](#configure-the-display-of-default-record-views) if you wish.

## Generate a record view

If your record type has [data sync](about-data-sync.html) enabled, Appian can generate your interface and configure the record view for you.

To generate a record view:

1.  In your record type, go to **Views**.
2.  Click **GENERATE RECORD VIEW**.
3.  Select the record types for the records you want to include.

    By default, your base record type is selected. You can select any one-to-one and one-to-many relationships to include that related records in your view.

    [![images/Create_a_Record_View/record_view_select_record_types.png](images/Create_a_Record_View/record_view_select_record_types.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img551)

    [![](images/Create_a_Record_View/record_view_select_record_types.png)](#_)

4.  Click **NEXT**.
5.  Review the suggested values for the following properties, and change as needed:

    | Property | Description |
    | --- | --- |
    | **View Name** | A name for the view. This name is displayed as the name of a view on the record. For the Summary view, this defaults to `Summary`, but can be edited. |
    | **Application** | The application where you want Appian to search for existing objects or create new objects to support this action. If the record type is associated with a single application, this property is read-only. If the record type is associated with more than one application in your Appian environment, the value defaults to the current application, but you can select a different application from the dropdown list. If the record type isn't associated with any application, select an application from the dropdown list. |

6.  Click **NEXT**.
7.  Review the objects that Appian will use for your new view, and make any necessary changes:

    **Note:**  Existing objects are marked with the ![info circle](images/icon/info-circle.png) icon.

    If you use a new folder to store the new interface, groups will also be present in the list of objects. These groups will be used to configure security for the generated folder.

    [![images/Create_a_Record_View/record_view_objects_existing_folder.png](images/Create_a_Record_View/record_view_objects_existing_folder.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img552)

    [![](images/Create_a_Record_View/record_view_objects_existing_folder.png)](#_)

    To change an object:

    -   Click ![pencil-icon](images/pencil-icon.png) next to the object.
    -   Continue as appropriate:

        | Change | Action |
        | --- | --- |
        |
        Rename a generated object.

         |

        -   Click **Rename** from the dropdown menu. The object name becomes an editable text box.
        -   Enter a new name in the text box.

         |
        |

        Replace a generated object with an existing object.

         |

        -   Click **Replace with existing object**. The object name becomes a dropdown list.
        -   In the object dropdown list, select an existing object.

        **Note:** You cannot replace the generated interface.

         |
        |

        Replace an existing object with a generated object.

         |

        -   Click **Replace with generated object**. The object name becomes an editable text box.
        -   Enter a name for the generated object.

         |

8.  Click **GENERATE**. Appian generates the view, creating and configuring the objects you reviewed.

    For details about the generated interface, see [Generated interfaces](#generated-interfaces).

9.  Click **CLOSE**. Your new Summary view displays in the **Record Views** table.

The generated interface object will populate the **Interface** property of the view, and will pass in the `rv!record` variable to display your record data. For more information on `rv!`, see [Reference record values in the record type](reference-records.html#reference-record-values-in-the-record-type).

[![images/Create_a_Record_View/record-views-list.png](images/Create_a_Record_View/record-views-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img553)

[![](images/Create_a_Record_View/record-views-list.png)](#_)

You may open the interface object to reorganize or edit it.

### Generated interfaces

The generated interface includes the following components:

-   A [header content layout](Header_Layout.html) to organize the contents of the interface.

-   A [section layout](Section_Layout.html) for each record type you selected.

    The content of each section will depend on the type of relationship between the base record type and the related record type:

    | Relationship with the base record type | Display format |
    | --- | --- |
    | Self | All record fields and related record fields from any many-to-one relationship organized in [columns](Columns_Layout.html).

    If you configured [record events](record-events.html), the record's events are displayed in an [event history list component](Event_History_List_Component.html) |
    | One-to-many relationship | All related record fields displayed in a [read-only grid](Paging_Grid_Component.html). |
    | Many-to-one relationship | All related record fields organized in columns. |
    | One-to-one relationship | All related record fields organized in columns. |

-   A section layout for each text field that stores more than 255 characters.

-   A section layout containing all [related actions](record-actions.html#related-actions) configured on the record type.

-   A [milestone component](Milestone_Component.html) representing the status field generated from the [**Choice List Fields** pane](create-record-data-source.html#add-a-choice-list-field) in codeless data modeling.

The generated interface inherits security from the folder where it's stored. If your interface is stored in a folder Appian generated for you, the inherited security is as follows:

| Group | Permission Level |
| --- | --- |
| Application administrators group you selected | **Administrator** |
| Application users group you selected | **Viewer** |

## Manually add a record view

If you’ve already [configured the interface](Create_a_Record_View.html) for your record view, or your record type does not have data sync enabled, you can manually add a record view.

**Note:**  For [unsynced service-backed record types](configure-record-data-source.html#unsynced-web-service), you must [configure a single record data source](#configure-a-single-record-source) expression to display data in a record view.

To manually add a record view:

1.  In your record type, go to **Views**.
2.  In the **Views** section:
    -   If there are no existing record views, click **CONFIGURE VIEW MANUALLY**.
    -   If there are record views already configured, click **ADD VIEW MANUALLY**.
3.  For **View Name**, enter the name you want the user to see. This is an expression field, so encase text values in quotes. If this is your first record view, a **Default (“Summary”)** option is selected, but can be edited by clicking **Expression**.
4.  For **Interface**, enter your interface expression or an expression rule that calls your interface. For example: `rule!AT_customerView(record: rv!record[recordType!AT Support Case.relationships.customers])` is used to call the interface and pass in the customer information related to the support case.
5.  (Optional) Configure related action shortcuts for the view:

    1.  Under **Related Action Shortcuts**, select the [related actions](record-actions.html#related-actions) you want to display as buttons for this view. This section is blank if you haven't added any to the record type yet.
    2.  Under **Open Actions In**, select whether the related actions for this view open in a dialog, a new tab, or the same tab.

    **Tip:**  You can [bulk update this setting](#bulk-update-launch-styles-for-related-actions) for all views.

6.  By default, the **Security** is set so that all users who can see the record can see the view. To modify the security, go to [**Views and Actions Security**](record-view-security.html).
7.  Click **OK**.
8.  Click **SAVE**.

### Configure a single record source

To display data in a record view in an unsynced service-backed record type, you must configure a _single record source_.

A single record source is an expression rule that calls an integration that pulls in data for a single record. You'll use this expression to define the data to return in a record view on your record type.

To create a single record source, [create a new expression rule](Expression_Rules.html#create) that meets the following requirements:

-   **Integration response requirements:**
    -   The expression calls an integration that returns a single object that maps to the data types in the record type. The integration can be called using a local variable, like `local!integrationResponse: rule!AR_getSingleRecord`.

-   **Function requirements:**
    -   The expression does not use plug-ins or any of the following functions: `a!query`, `a!queryEntity`, `a!queryProcessAnalytics`, `a!queryRecordType`.

-   **Rule input requirements**:
    -   The expression contains a rule input of type Number (Integer) that identifies the record identifier to return from the integration.

To configure a single record source in the record type:

1.  In the record type, go to **Data Model**.
2.  Under **Single Record Source**, for **Data**:
    -   If you have an existing expression rule for your single record source, select it from the list.
    -   If you do not have an existing expression rule, click **Create Single Record Source** to create one. You can create a new integration object during this workflow.
3.  For **Record Identifier**, select the rule input used in the expression.
4.  Click **SAVE**.

## Bulk update launch styles for related actions

The **Open Actions In** property for each view controls whether the related action shortcuts for that view open in a dialog, a new tab, or the same tab.

You can configure this property one view at a time. You can also bulk update this property for all actions in all views at the same time.

To bulk update the **Open Actions In** property for all your views:

1.  In your record type, go to **Views**.
2.  In the **Views** section, click **UPDATE LAUNCH STYLES**.
3.  Under **Open All Actions In**, select whether the related actions opens in a dialog, a new tab, or the same tab.

    ![Record Views Related Action Launch Style](images/record-views-related-action-launch-style.png)

4.  Click **APPLY**. Appian sets the **Open Actions In** value for all related action shortcuts in all views to the option you selected.
5.  Click **SAVE**.

    **Tip:**  After bulk updating, you can change the **Open Actions In** property in individual views or again in bulk as needed.

## Configure the display of default record views

A record type has two record views that are configured out-of-the-box and displayed by default on each record:

-   **News view**: This view shows the 20 most recent news events related to that record. Users can view and add comments to these news entries.
-   **Related Actions view**: This view displays all [related actions](record-actions.html#related-actions) configured in the record type. Users can initiate related actions from this view.

Since these record views are auto-populated with related news events and related actions, they cannot be modified.

There may be cases when you don't want to display the News view or the Related Actions view on your records. For example, you may want to hide these views if your application doesn't utilize the [News feed](News.html), or you've used the [record action component](Record_Action_Component.html) to display related actions on your interfaces.

When you don't want to display the News or Related Actions views, you can hide them to prevent users from navigating or seeing these views on the records.

To control whether or not Appian displays the News or Related Actions view for the record type:

1.  In your record type, go to **Views**.
2.  Under **Default Views**, select or clear the **Show News view** and **Show Related Actions view** checkboxes.

When you choose to hide either of these views, users will not be able to see or interact with the view anywhere in the application.

For example, if you configure a site to display the News view, but you've hidden the view in the record type, the News view will not display on the site.

Hiding the Related Actions view does not determine the security of the related actions. Users can still perform related actions from [related action shortcuts](record-actions.html#display-related-action-on-record-view), the [record action component](Record_Action_Component.html), or by navigating to the URL for that related action if they have the proper security permissions to do so.

To restrict permissions on related actions, configure a [security expression on the record action](record-actions.html#prodlink-record-action-security) or modify the security on the underlying [process model](process-model-object.html#prodlink-security).

## Style the record header

Once you've created your record views, the last step is to configure the record header.

The record header appears at the top of each record view and contains the record's title, breadcrumbs, and [related actions](record-actions.html). You can also style your record header by configuring a header background.

### Record title

The record title appears at the top of each record view, in record tags, and in the hover card for that record.

The way you define the record title will vary depending on whether you plan to display your [list of records](record-list.html) as a grid-style or feed-style list.

To define the record title for a grid-style record list:

1.  In your record type, go to **Views**.
2.  In the **Header** section, select one of the following options:
    -   **Guided Configuration**: Select a field from your record to use as the title. By default, the selected field is the first non-primary Text field from your record type.

        **Note:**  This option is only available for record types with [data sync](about-data-sync.html) enabled.

    -   **Expression**: In the **Record Title** field, use the [Expression Editor](expression-editor.html) to define an expression for the title. For example, the expression `rv!record[recordType!CSA Customer.fields.firstName] & " " & rv!record[recordType!CSA Customer.fields.lastName]` will display the first name and last name of the customer record.
3.  Click **SAVE**.

For feed-style record lists, the record title comes from the `title` parameter in the [a!listViewItem()](fnc_system_a_listviewitem.html) function when you define the record list.

### Record header position

By default, the record header will move with the rest of the page contents when a user scrolls up and down the page.

![gif of record summary without any fixed headers](images/hcl_not_fixed_record_or_hcl.gif)

You can choose to fix the header to the top of the page to allow users to easily see the record title, views, and actions, no matter where they are on the page.

To fix the record header to the top of the page:

1.  In your record type, go to **Views**.
2.  Under **Record Header Position**, select **Fix the record header to the top of the page when scrolling**.

    ![record header position selection](images/record_view_record_header_position.png)

3.  Click **SAVE**.

#### Using fixed record header with header content layout

If you want to use a fixed header in a record type, there are two options:

-   Fix the record header only.

    ![gif of record summary view with fixed record header](images/hcl_fixed_record_no_hcl.gif)

-   Fix the record header and the [header content layout](Header_Layout.html) header.

    ![gif of record summary view with fixed record header and fixed header content layout header](images/hcl_fixed_record_and_hcl.gif)

If you fix the header content layout header, but don't fix the record header, neither header will be fixed.

#### Fixed record header in mobile

In the mobile application, record views are already fixed to the top of the page. Fixing the record header will also fix the record title to the top of screen.

| Fixed Record Header | Unfixed Record Header |
| --- | --- |
| ![](images/fixed_header_record_mobile_true.gif) | ![](images/fixed_header_record_mobile_false.gif) |

### Record header background

The record header background isn't styled by default, but you can choose to apply a [background color](#color-backgrounds) or [image](#image-backgrounds).

If you change the name of the **Summary** view or [hide the **News** and **Related Actions** tabs](#configure-the-display-of-default-record-views), these changes won't appear in the header preview.

#### Color backgrounds

Headers can display one background color for all records in a record type, or different colors based on an expression or variables within the record.

The record header will display the selected color style with the record title, breadcrumbs, and related action buttons in the card. For more information about selection colors, see the [SAIL Design System](sail/ux-color-overview.html).

[![images/create_record_type_color_header.png](images/create_record_type_color_header.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img554)

[![](images/create_record_type_color_header.png)](#_)

To apply a color background to your record view header:

1.  In your record type, go to **Views**.
2.  In the **Header** section, under **Record Header Background**, click **COLOR**.
3.  Select one of the following options to set the background color:

    | Option | Action |
    | --- | --- |
    | **Static** | Use the color picker to select the appropriate color or enter a hex code. |
    | **Variable** | Use the dropdown to select the record variable of your color. This picker returns record fields of type Text. |
    | **Expression** | Enter an expression that evaluates to a valid hex color code. |

#### Image backgrounds

You can configure headers to display one image or multiple images. You can select one image from a document or a URL for all records in a record type. Or, you can display different images based on variables within the record or using an expression.

You can customize the image overlay, height, and background color. The image overlay will contain the record title, breadcrumbs, and related action buttons.

To apply an image background to your record view header:

1.  In your record type, go to **Views**.
2.  In the **Header** section, under **Record Header Background**, click **IMAGE**.
3.  Select one of the following sources for the image:

    | Image Source | Description |
    | --- | --- |
    | **Document** | Select an image using the document picker. |
    | **URL** | Enter a secure URL of a static image you want as your billboard image. |
    | **Variable** | From the dropdown, select the record field where you've stored a color value. This picker returns record fields of type `TEXT`, `INTEGER`, and `DOCUMENT`. |
    | **Expression** | In the Expression Editor, input an expression that evaluates to a valid document or image URL. |

    **Note:**  If you use **Variable** or **Expression** to configure the image background, the live preview will not display the selected image.

4.  Configure the following additional properties:

    | Property | Description |
    | --- | --- |
    | **Image Height** | Select **Short**, **Medium**, **Tall**, or **Auto**. |
    | **Overlay Type** | Select **Bar** or **Full**. |
    | **Overlay Position** | Select **Top**, **Middle**, or **Bottom**. |
    | **Overlay Style** | Select **Dark**, **Semi-Dark**, **None**, **Semi-Light**, or **Light**. |
    | **Background Color** | Specify any valid hex code. This color appears if your image is null, is an invalid value, or the user does not have permission to see the image. |

5.  Click **SAVE**.

### Header divider

If you don't apply a color or image background to your record view header, you can choose to display a divider line below the header to separate the header content from the rest of the page.

To show a divider line below your record header:

1.  In your record type, go to **Views**.
2.  In the **Header** section, under **Record Header Background**, click **NONE**.
3.  Under Header Divider, select **Show Record Divider**.
4.  Click **SAVE**.

## Record view security

Whether or not a user can see a record view is dependent on the [record type security](record-security.html), [record-level security](record-level-security.html), and the [security rule](record-view-security.html#security-rules) or [security expression](record-view-security.html#security-expression) configured on the view itself.

To view a record view, users must have at least **Viewer** permissions for the record type and, if you've applied record-level security, users must also be included in a [security rule](record-level-security.html#add-security-rules) or a [security expression](record-level-security.html#add-a-security-expression). If a user does not have access to a record because of any of these configurations, the user cannot access the record views, even if given a direct URL.

Anyone with access to the record can see the Summary view by default. For each additional record view, you can configure [record view security](record-view-security.html) to show or hide the view from certain users based on the conditions you specify. Users may access additional record views by navigating in Tempo or by using a [record link](Record_Link_Component.html) that is configured to go to a certain view. Record links respect record view security.

Learn how to configure [record view security](record-view-security.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...