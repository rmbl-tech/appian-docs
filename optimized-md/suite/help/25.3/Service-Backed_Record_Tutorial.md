---
source_url: https://docs.appian.com/suite/help/25.3/Service-Backed_Record_Tutorial.html
original_path: Service-Backed_Record_Tutorial.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Type Tutorial (Web Service)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Connect to Web Services with Record Types

Watch this video to learn how to use an integration to connect to an external system and display that data in a record type. To learn more, check out the [Connect to Web Services with Record Types](https://academy.appian.com/#/online-courses/a814a947-8e93-4a85-bd19-5b0e98d1ee70) course at Academy Online.

## Introduction

Your enterprise data may be spread across a number of different systems. If your data sources provide access with a REST API, you can easily bring that data together in Appian by creating a record type that connects to a web service, otherwise known as a [service-backed record type](configure-record-data-source.html#prodlink-web-service).

This tutorial guides you through the steps for creating a record type that uses the [Art Institute of Chicago API](https://api.artic.edu/docs/) as the data source.

[![diagram of how service-backed record types works](images/service-backed-record-type-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img383)

[![](images/service-backed-record-type-diagram.png)](#_)

Most APIs require applications to send authentication credentials with each request. The Art Institute of Chicago's API is a free, public, open-source API that doesn't require authentication. This makes it ideal for this tutorial because we don't need credentials in order to connect to it.

**Note:**  Appian is not a maintainer of this API, and the API is used in this tutorial for example purposes only. In the event the API changes, is deprecated, or is made unavailable, this tutorial will continue to be available as a reference, but there is no guarantee that the tutorial can be used to create working application code.

### Objectives

You'll learn how to create a [record type](Record_Type_Object.html) that connects to an external data source using the following design objects:

-   [Connected system](Connected_System_Object.html): Stores the connection information to the external system.
-   [Integration](Integration_Object.html): Uses the connected system to access and call the external system.
-   [Expression rule](Expression_Rules.html): Calls the integration and formats the returned data so it can be used in the record type. This expression is used as the source of the record type.

You'll enable [data sync](about-data-sync.html) on the record type to leverage powerful data fabric features, and learn how to configure a [record list](record-list.html) and a [Summary view](record-view.html#default-record-views).

After you complete this tutorial, you will understand how to use your own API to create a service-backed record type.

### Requirements

-   To follow along with this tutorial, you'll need an environment. If you don't have one available, you can use an environment from [Appian Community Edition](https://explore.appian.community/suite/webapi/global-redirect).

-   Ensure you are familiar with REST APIs and how to use them.

## Create the Appian Tutorial application

**Tip:**  The Appian Tutorial application is used throughout Appian tutorials. Skip the steps in this section if you've already created this application in another tutorial.

To begin, we need to create an application to contain our design objects.

We will be creating the _Appian Tutorial_ application for this tutorial. All of Appian's tutorials use the Appian Tutorial application as the reference application. After completing this tutorial, you can reuse this application as you work through other Appian tutorials.

To create the Appian Tutorial application:

1.  Log in to [Appian Designer](welcome-app-designer.html).
2.  In the **Applications** view, click **\+ New Application**.
3.  In the **Create New Application** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter `Appian Tutorial`. |
    | **Prefix** | Keep the default prefix, `AT`, which Appian constructs using the initial characters of each word you entered in the **Name** parameter. We'll be following the [recommended naming standard](Standard_Object_Names.html), and using this short, unique prefix whenever we name an object in this application. |
    | **Description** | Leave blank. It's normally a best practice to add descriptions to all design objects. However, to save a little time during this tutorial, we'll skip adding descriptions unless the description displays to the end user. |
    | **Generate groups and folders to secure and organize objects** | Keep this checkbox selected, so that Appian will automatically [generate standard groups and folders](creating-applications.html#generated-groups-and-folders) and [assign default security groups](creating-applications.html#default-security-groups) for this application. |

4.  Click **CREATE**.
5.  In the **Review Application Security** dialog, keep the default security settings. Because we selected the **Generate groups and folders** option in the previous step, Appian automatically uses the **AT Users** and **AT Administrator** groups it generated to set our application security appropriately.

    **Tip:**  The security of the application object is unrelated to the security of each of the objects contained within the application. This means that you will need to set security permissions for every object in an application in addition to the application object itself. For more information about security permissions for the application object, see [Application Security](application-settings.html#prodlink-security).

6.  Click **SAVE**.

    ![screenshot of the Explore view](images/application_tutorial/appian_tutorial_explore_view_23_2.png)

7.  Click **X** to close the **What do you want to build first?** dialog.

Right now, the application contains the folders and groups Appian generated automatically. To see these, click **Build** in the navigation pane.

Each design object that you create during the course of this tutorial will appear in this list in the **Build** view and be associated with the tutorial application.

![screenshot of the build view](images/application_tutorial/appian_tutorial_build_view.png)

Because we selected the **Generate groups and folders to secure and organize objects** option while creating the object, Appian generates standard groups and folders for the application, as well as assigns the generated groups as the default security groups for the application.

In this tutorial, we'll be using the following generated groups and folders:

-   **AT Administrators** group to contain all administrators of the Appian Tutorial application.
-   **AT Users** group to contain all users of the Appian Tutorial application.
-   **AT Rules & Constants** folder to contain all our expression rules, constants, and interfaces in this folder throughout the tutorial.
-   **AT Process Models** folder to contain all our process models throughout the tutorial.

For each object we create in this tutorial, Appian will prepopulate the **AT Administrators** and **AT Users** groups in the object role maps. For this tutorial, we won't need to make changes to those prepopulated values.

Now, let's create and configure our new record type.

## Create the record type

First, we'll create a record type to store and reference the exhibitions from the Art Institute of Chicago.

To create the record type:

1.  In the **Build** view of the Appian Tutorial application, click **NEW > Record type**.
2.  Configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Keep the [application prefix](Standard_Object_Names.html#process-objects) that prepopulates this property, and add `Exhibition`, so that the name is `AT Exhibition`. |
    | **Display Name (Plural)** | Keep the generated value of `Exhibitions`. |
    | **Description** | Enter `Exhibitions at the Art Institute of Chicago`. |

3.  Click **CREATE**.
4.  In the **Review Record Type Security** dialog, keep the default settings. **AT Administrators** group should be assigned **Administrator** permissions for the group.
5.  Click **SAVE**.

## Configure the record data source

Now, we'll configure the record type to connect to a web service. To do this, we must have a _record data source expression_. This is an expression rule that structures and formats data returned from a REST API through an integration object so it can be used in Appian.

Since we don't have an existing record data source expression, we'll create one while we configure the source of the record type.

To configure the record data source:

1.  On the **Data Model** page, click **TELL US ABOUT YOUR DATA**.
2.  For **Choose Source Type**, click **Web Service**.
3.  Click **NEXT**.
4.  For **Choose how to access data**, keep the default selection **Optimized Data Access**. The data will be synced in Appian to automatically optimize performance and enable additional features.
5.  Click **NEXT**.
6.  For **Choose Record Data Source**, click **Create Record Data Source**.

### Set up the connected system

To create our record data source, we'll start by creating a connected system to store the base URL used to connect the Art Institute of Chicago API.

To create the connected system:

1.  Keep the default option, **Create a new integration**, selected.
2.  Next to the **Connected System** field, click **Create Connected System**.
3.  In the **Create Connected System** dialog, select **HTTP**.
4.  For **Name**, enter `AT Art Institute of Chicago`.
5.  For **Description**, enter `API that returns data from the Art Institute of Chicago`.
6.  For **System Logo**, upload a logo image for the Art Institute of Chicago.
7.  For **Base URL**, enter `https://api.artic.edu/api/v1/`.
8.  For **Authentication**, keep the default `None` selected since this is an unauthenticated API.

    ![Tutorial_XBR_RDS_Connected_System_Fields](images/Tutorial_XBR_RDS_Connected_System_Fields.png)

9.  Click **CREATE**.

The new object is created and appears as the **Connected System** in the **Create Record Data Source** dialog.

### Create the integration

Next, we'll create an integration that uses the connected system to call the Art Institute of Chicago API.

To create the integration:

1.  For **Name**, enter `AT_getExhibitions`.
2.  For **Description**, enter `Integration that gets exhibitions for the Exhibitions record type`.
3.  For **Save In**, select the **AT Rules & Constants** folder.

    [![Create integration](images/xbr-tutorial-create-integration.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img384)

    [![](images/xbr-tutorial-create-integration.png)](#_)

4.  Click **NEXT**.

### Create the record data source expression

Next, we'll create the record data source expression. After creating the integration for the record data source, the configuration wizard automatically defines the properties for our expression rule.

Verify that the following information is automatically populated in each property below:

| Property | Value |
| --- | --- |
| **Name** | `AT_getExhibitions_recordDataSource` |
| **Description** | `The Record Data Source for the AT Exhibition Record Type` |
| **Application** | `Appian Tutorial` |
| **Save In** | `AT Rules & Constants` |

Click **NEXT**.

### Configure syncing in batches

In the last step of the Create Record Data Source wizard, you'll specify whether you want to sync your data in batches.

The record data source can return a maximum of 1,000 rows with each integration call, so Appian provides the option to sync larger datasets in batches. We want to sync more than 1,000 rows in the record type, so we'll enable batching.

**Tip:**  To determine how to batch data, review the documentation for your API. In this tutorial, the [documentation](https://api.artic.edu/docs/#pagination) indicates that pagination is controlled by the `page` parameter. Since this is a number-based property, we will batch by sequential values.

To batch by sequential values:

1.  Select **Batch by Sequential Values**. A rule input of type Number (Integer) will be automatically configured on the record data source expression and the integration object.
2.  Click **CREATE**.

Two generated objects are listed on the confirmation page. Before you close the Create Record Data Source wizard, we need to edit the generated objects so they return the right data in the right format.

**Caution:**  If you click **OK** now, you will see an error on the **Choose Record Data Source** dialog.

[![Created record data source objects](images/xbr-tutorial-created-record-data-source-objects.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img385)

[![](images/xbr-tutorial-created-record-data-source-objects.png)](#_)

### Configure the integration path

First, we'll edit the generated integration object `AT_getExibitions`. We need to add two things:

-   A relative path.
-   A query parameter for batching.

The relative path is appended to the base URL of the connected system to form a URL exposed by the API as an endpoint. The data returned by the endpoint will be used to populate the record type. Based on the [API's documentation](https://api.artic.edu/docs/#exhibitions), we'll use `exhibitions` as the relative path.

To ensure the integration returns each page of results from the API, we also need to create a query parameter to pass the batch number to the URL.

To configure the relative path and batching:

1.  On the **Create Record Data Source** dialog, click the **AT\_getExhibitions** integration object to open it.
2.  For **Relative Path**, enter `exhibitions`.

    This will be appended to the **Base URL** of the connected system to form a **URL** of `https://api.artic.edu/api/v1/exhibitions`.

    ![/xbr-tutorial-url-configuration](images/xbr-tutorial-url-configuration.png)

3.  Click **TEST REQUEST**. This should return a success message:

    ![/xbr-tutorial-url-success](images/xbr-tutorial-url-success.png)

4.  Under the success message, click **Convert JSON to Appian value**.
5.  Click **TEST REQUEST**. The results should be converted from JSON to an Appian dictionary.

    For example:

    ![/xbr-tutorial-returned-data](images/xbr-tutorial-returned-data.png)

6.  Expand the **Query Parameters** section of the integration.
7.  Click **Add Query Parameter**.
8.  For **Name**, enter `page`.
9.  For **Value**, hover over the input field and click **Edit as Expression**.
10.  Enter `ri!batchNumber` in the expression box.
11.  Click **OK**.

     ![/xbr-tutorial-returned-data](images/xbr-tutorial-query-parameter.png)

12.  Click **TEST REQUEST**. The `result.body` should contain 12 items since we did not change the default limit on the API.
13.  Click **SAVE**.

### Specify fields returned in the integration

Right now, the integration returns several fields that we won't need to use in our application. While we will map specific fields to the record type in a later step, removing unnecessary fields from the integration response can enable better performance.

According to the [API's documentation](https://api.artic.edu/docs/#exhibitions), we can use a `fields` parameter to specify which fields to return.

To specify the fields to return in the integration:

1.  In the **Query Parameters** section, click **Add Query Parameter**.
2.  For **Name**, enter `fields`.
3.  For **Value**, hover over the input field and click **Edit as Expression**.
4.  Enter the following expression:

    ```
    1
    joinarray({"id", "title", "is_featured", "short_description", "web_url", "status", "gallery_title", "source_updated_at"}, ",")
    ```

5.  Click **OK**.
6.  Click **TEST REQUEST** and verify that only the desired fields are included in the results.

    [![images/xbr-tutorial-fields-parameter.png](images/xbr-tutorial-fields-parameter.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img386)

    [![](images/xbr-tutorial-fields-parameter.png)](#_)

7.  Click **SAVE** and close the integration tab.

### Configure the record data source expression

Next, we'll edit the generated record data source expression. We need to ensure that the expression returns the data we need in the format we need.

By default, the expression returns data in the `pagination`, `data`, `info`, and `config` headings. However, we only need the information nested under the `data` heading, so we'll index into this heading to only return that information.

To configure the record data source expression:

1.  Return to the record type.
2.  In the **Create Record Data Source** dialog, click the **AT\_getExhibitions\_recordDataSource** expression rule.
3.  On line 18, replace the default value of `local!integrationResponse.result.body,` with the following:

    ```
    1
    index(local!integrationResponse.result.body, "data", {}),
    ```

4.  Click **TEST RULE**. The output should return a List of Dictionary with 12 items. For example:

    [![images/xbr-tutorial-rds-expression.png](images/xbr-tutorial-rds-expression.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img387)

    [![](images/xbr-tutorial-rds-expression.png)](#_)

5.  Click **SAVE** and close the expression rule tab.

### Preview the record data source

Now that the integration and expression rule are properly configured, we can return to the record type to see a preview of the record data source.

To preview the record data source:

1.  Return to the record type.
2.  On the **Create Record Data Source** dialog, click **OK**.

    A data preview of the record data source expression appears in the **Configure Data Source** dialog.

    [![images/xbr-tutorial-data-preview.png](images/xbr-tutorial-data-preview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img388)

    [![](images/xbr-tutorial-data-preview.png)](#_)

3.  Click **NEXT**.

### Configure record type fields

Appian automatically maps the source fields to record fields and then lets you pick a primary key field and any unique fields.

We will keep all the fields selected, but we'll clean up some of the record field names to use camel casing instead of underscores. We'll also choose which field will be the primary key field.

To configure the record type fields:

1.  For **Primary Key**, select **id**.
2.  Leave **Unique Fields** blank. We don't have any other fields that require unique values.
3.  Rename the following fields:

    | Original Record Field Name | Updated Record Field Name |
    | --- | --- |
    | `is_featured` | `isFeatured` |
    | `short_description` | `shortDescription` |
    | `web_url` | `webUrl` |
    | `gallery_title` | `galleryTitle` |
    | `source_updated_at` | `sourceUpdatedAt` |

4.  (Optional) Update the [Display Name](prepare-data-for-reports.html#record-type-display-names) for the following fields so they're more descriptive:

    | Original Display Name | Updated Display Name |
    | --- | --- |
    | `Id` | `ID` |
    | `Is Featured` | `Is Featured on Website` |
    | `Web Url` | `Web URL` |

5.  Click **FINISH**.

    [![images/xbr-tutorial-configure-fields.png](images/xbr-tutorial-configure-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img389)

    [![](images/xbr-tutorial-configure-fields.png)](#_)

6.  Click **SAVE**.

Saving the record type starts a [full sync](records-data-sync.html#manual-full-syncs) of your record data. It may take a few minutes to sync all the necessary data. You can track the status of your sync by going to the **Sync History** page in the record type.

## Configure sync options

To ensure the record type continues to get any new or changed data from the API, we'll configure a scheduled full sync to occur once each day.

To configure a scheduled full sync:

1.  In the record type, go to **Sync Options**.
2.  Select the **Schedule full sync** checkbox.
3.  Keep the default configuration of 3:00 AM GMT.

    **Tip:**  As a best practice, scheduled full syncs should take place outside of peak traffic or working hours.

4.  Click **SAVE**.

## Configure the list view

Now that the record data is synced and readily available, let's configure the record list to show meaningful data.

By default, the record list displays all fields configured on the record type. However, we only want to display select fields since this data is meant to be viewed at a glance before users drill into each record.

To configure the record list:

1.  In the record type, go to **List**.
2.  Leave the default **Style** option as **Grid**.
3.  Click **EDIT LIST**.
4.  For **Empty Grid Message**, enter `No exhibitions exist with this criteria`.
5.  For **Rows to Display Per Page**, enter `20`.
6.  For **Initial Sort**, click **ADD SORT** and configure sorting:
    1.  Click **Sort Info**.
    2.  For **Field**, select **title**.
    3.  For **Order**, select **Ascending**.
    4.  Click **Grid** to return to the grid configurations.
7.  In the **Columns** section, delete the following columns by hovering over and clicking :
    -   **Id**
    -   **Short Description**
    -   **Web Url**
    -   **Source Updated At**
8.  In the **Columns** section, click **Title**. The grid configuration pane will show details about that column.
9.  Click **DISPLAY OPTIONS**.
10.  Click **RECORD LINK**.
11.  For **Display Value**, click **Edit as Expression**.
12.  Enter the following expression:

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
      a!linkField(
       links: {
        a!recordLink(
          label: fv!row[recordType!AT Exhibition.fields.title],
          recordType: recordType!AT Exhibition,
          identifier: fv!identifier
         )
       }
      )
     ```

     **Note:**  Record field references are specific to each record type and environment. This means that you need to reference the record fields from the record type in your own environment whenever you copy and paste a record field reference from outside the application.

13.  Click **OK** to close the expression editor.
14.  Click **OK** to close the list editor.
15.  Click **SAVE**.
16.  To test your record list configuration, click the link under **URL**.

You should end up with a list that looks like this:

[![images/xbr-tutorial-final-record-list.png](images/xbr-tutorial-final-record-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img390)

[![](images/xbr-tutorial-final-record-list.png)](#_)

## Create a user filter

To make it easier for users to find information about specific exhibitions, we'll build a [user filter](filter-the-record-list.html#user-filters) so users can filter by exhibition status—Traveling, Confirmed, or Closed.

To create a user filter:

1.  In the record type, go to **Filters**.
2.  Click **New User Filter**.
3.  For **Filter Configurations**, do the following:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `Exhibition Status`. |
    | **Label** | Enter `"Status"`. |
    | **Field** | Select the **status** field. |
    | **Type** | Keep **List** selected. |
    | **Visibility** | Keep **Always** selected. |

4.  For **List Configurations**, keep **Users can select multiple options** selected.
5.  Click **New Option** and enter the following:

    | Property | Value |
    | --- | --- |
    | **Option Label** | `"Traveling"` |
    | **Operator** | `=` |
    | **Value** | `"Traveling"` |

6.  Click **SAVE FILTER OPTION**.
7.  Click **New Option** again and enter the following:

    | Property | Value |
    | --- | --- |
    | **Option Label** | `"Confirmed"` |
    | **Operator** | `=` |
    | **Value** | `"Confirmed"` |

8.  Click **SAVE FILTER OPTION**.
9.  Click **New Option** again and enter the following:

    | Property | Value |
    | --- | --- |
    | **Option Label** | `"Closed"` |
    | **Operator** | `=` |
    | **Value** | `"Closed"` |

10.  Click **SAVE FILTER OPTION**.
11.  For **Default Options**, enter the following expression to default the filter to these two statuses:

     ```
     1
     {"Traveling", "Confirmed"}
     ```

12.  Click **OK**.

     [![images/xbr-tutorial-user-filter.png](images/xbr-tutorial-user-filter.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img391)

     [![](images/xbr-tutorial-user-filter.png)](#_)

## Customize the record list search

We can also narrow the record list search so it only searches by exhibition title, which can make the search overall more performant.

To customize the search to only exhibition titles:

1.  Select the **Limit search to selected fields** checkbox.
2.  Select the **title** field.
3.  Select the **Use custom placeholder checkbox**.
4.  Enter the following expression:

    ```
    1
    "Search exhibition titles"
    ```

5.  Click **SAVE**.
6.  Test the user filter and search configurations:
    1.  In the record type, go to **List**.
    2.  Click the link under **URL**.

The **Status** user filter should have **Traveling** and **Confirmed** selected to filter the list.

[![images/xbr-tutorial-user-filter-preview.png](images/xbr-tutorial-user-filter-preview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img392)

[![](images/xbr-tutorial-user-filter-preview.png)](#_)

## Generate a Summary view

The last step of this tutorial is to create the Summary view. Since the record type has data sync enabled, we can quickly create and configure this view using the record view generator.

To generate a Summary view:

1.  In the record type, go to **Views**.
2.  Click **GENERATE RECORD VIEW**.

    ![/record view empty state](images/record_view_empty_state.png)

3.  For **Selected Record Types**, keep the **Exhibition** record type selected. This will display all fields from the record type in the view.
4.  Click **NEXT**.
5.  For **Edit Settings**, leave the default configurations:

    | Property | Value |
    | --- | --- |
    | **View Name** | `Summary` |
    | **Application** | **Appian Tutorial** |

6.  Click **NEXT**.
7.  Review the objects that Appian will use for your new Summary view.
8.  Click **GENERATE**.
9.  Click **CLOSE**. Your new **Summary** view displays in the **Record Views** table.
10.  Click **SAVE**.
11.  Test the Summary view configuration:
     1.  In the record type, go to **List**.
     2.  Click the link under **URL**.
     3.  Select an exhibition title to view the Summary view.

![/xbr-tutorial-summary-view](images/xbr-tutorial-summary-view.png)

**Congratulations!** You've configured a service-backed record type. Check out the [Database-Backed Record Type Tutorial](Records_Tutorial.html) to learn how to configure a database-backed record type.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...