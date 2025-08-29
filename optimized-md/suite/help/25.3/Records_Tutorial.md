---
source_url: https://docs.appian.com/suite/help/25.3/Records_Tutorial.html
original_path: Records_Tutorial.html
version: "25.3"
title: "Record Type Tutorial (Database)"
page_id: "Records_Tutorial"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Type Tutorial (Database)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

If you are new to Appian and unfamiliar with Appian design objects and concepts, check out [Appian Academy Online](https://academy.appian.com/).

## Introduction

Your enterprise data may be spread across a number of different systems. If your data lives in a database, you can easily bring that data together in Appian by creating a record type that connects to a database, otherwise known as a [database-backed record type](configure-record-data-source.html#connect-to-a-database).

This tutorial guides you through the steps to create a record type that connects to employee data stored in a database table. You'll use this record type to build critical aspects of an application, like the record list, views, and actions.

[![images/AT_introRecordWalkThrough.gif](images/AT_introRecordWalkThrough.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img371)

[![](images/AT_introRecordWalkThrough.gif)](#_)

### Objectives

You'll learn how to create a record type that connects to a database, and enable data sync to leverage powerful features. With the data available in the record type, you'll also learn how to configure record lists, views, and actions so users can view and take action on the data.

After you complete this tutorial, you will be ready to create your own record type that connects to your database.

### Requirements

This tutorial takes advantage of codeless data modeling, which requires an environment connected to a supported database. Codeless data modeling supports MariaDB, MySQL, Oracle, SQL Server, PostgreSQL, and Aurora MySQL databases. For example, you can use an Appian Cloud or an [Appian Community Edition](https://explore.appian.community/suite/webapi/global-redirect) environment.

## Setup

Before we can create our record type, we need to create an application.

We'll take advantage of Appian's automatic group and folder generation during application creation, so we'll automatically have our initial application infrastructure. We'll also add a group specific to this tutorial, then add the data for our record type.

### Create the Appian Tutorial application

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

For each object we create in this tutorial, Appian will pre-populate the **AT Administrators** and **AT Users** groups in the object role maps. Most of the time, we'll be able to keep those pre-populated values. The rest of the time, we'll be assigning permissions to an application-specific managers group, which we'll create now.

### Add a managers group

Managers will have a specific part to play in our new application, so let's add a new group for `AT Managers`.

To add a managers group:

1.  In the application, go to the **Build** view.
2.  Click **NEW > Group**.
3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter: `AT Managers` |
    | **Parent Group** | Enter `AT Users`, so that users in this group inherit **Viewer** permissions for the application. |
    | **Group Members** | Enter your user name. |

4.  Click **CREATE**.
5.  In the **Review Group Security** dialog, keep the default settings. **AT Administrators** group should be assigned **Administrator** permissions for the group.
6.  Click **SAVE**.

## Create the employee record type and add data

Now, you'll create the employee record type and add the data that we'll use throughout this tutorial.

Complete the [Use the Write Records Smart Service Function on an Interface](recipe-use-the-write-records-smart-service-function-on-an-interface.html#create-a-record-type) recipe to create the Employee record type, set up your data model, and add your employee data.

## Configure record events

Once we have the data structure set up, we want to easily track any actions that occur on the data.

For example, whenever a new employee is created, we want to create an event that indicates who created the new employee and when. That way, we have a history of adding or updating employee information.

To track these business events, we'll configure [record events](record-events.html). Once we configure record events, we'll capture and display events throughout our application.

To configure record events:

1.  In the record type, go to **Events**.
2.  Click **GENERATE EVENT RECORD TYPES**.
3.  Under **Include Common Event Types**, keep the **Created Employee, Updated Employee, and Commented On Employee** checkbox selected. This will automatically add event types for creating employees, updating employees, and adding top-level comments to the [event history list component](Event_History_List_Component.html).
4.  Keep **Other Event Types** blank. We only want to track when employees are created or updated, so we don't need to any additional event types.
5.  For **Record Type Names**, keep the default values:

    | Property | Value |
    | --- | --- |
    | **Event History** | `AT Employee Event History` |
    | **Event Type Lookup** | `AT Employee Event Type` |
    | **Reply Thread** | `AT Employee Reply Thread` |
    | **Subscriber** | `AT Employee Subscriber` |

6.  Keep the **Download database script** checkbox selected. As a best practice, you should download the script for any database table created from a record type.
7.  Click **GENERATE**.

The following record types are generated and display in the **Event Configuration**:

-   **AT Employee Event History**
-   **AT Employee Event Type**
-   **AT Employee Reply Thread**

We'll be able to capture and display events later in this tutorial once we generate our record views and record actions.

## Configure the record list

Now that we have our data model and record events configured, let's configure the record list so users can see a full list of employees. Then, let's add a user filter so users can filter the list by department to find the right employees.

### Configure record list columns

We'll start by configuring the fields displayed in the record list. We only want to display select fields since this data is meant to be viewed at a glance before users drill into each record.

When looking at a list of employees, we really only want to see their name, title, and department. To configure the record list to show only these columns, we are going to remove the ID, phone number, and start date columns, and combine the first and last name columns into one.

To remove unnecessary fields:

1.  In the record type, go to **List**.
2.  Click **EDIT LIST**.
3.  In the **Columns** section of the **Grid** configuration, delete the **Id** column by hovering over and clicking .

    **Note:**  We don't need to show the **Id** column in the record list, because the record field is primarily used by the database to identify records and not used by users.

4.  Delete the **Phonenumber** and **Startdate** columns in the same way.

Next, we will combine the first and last name columns into one `Name` column. We will also add sorting to allow users to easily sort data in a column, and set the display value to let the column know which record field to show.

To create the `Name` column:

1.  In the **Columns** section, delete the **Lastname** column by hovering over and clicking .
2.  In the **Columns** section, click **Firstname**.
3.  In the **Label** field, change **firstname** to `Name`.
4.  In the **Sort Field** field, remove **firstname** and select **lastname**.
5.  Under **Display Value**, click **Link**.
6.  Under **Links**, click **List of Links**.
7.  Under **Links**, click **Record Link**.
8.  Hover over **Label**, then click **Edit as Expression** .
9.  To concatenate the first and last names to show both values in the same field, copy and paste the following expression:

    `fv!row[recordType!AT Employee.fields.firstName] & " " & fv!row[recordType!AT Employee.fields.lastName]`

10.  In the expression, change the record type references to use the record type reference in your environment:

     -   Remove the existing record field reference.
     -   Enter `recordType!`, then select your **AT Employee** record type from the context menu.
     -   Enter `.` after **recordType!AT Employee**, and select **fields** from the first context menu and **lastname** from the second context menu.

     **Note:**  Record field references are specific to each record type and environment. This means that you need to reference the record fields from your own environment whenever you copy and paste a record type reference from outside the application.

11.  Click **OK** to close the expression editor.
12.  Click **OK** to close the list editor.

     [![images/AT_Record_list_editList.png](images/AT_Record_list_editList.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img372)

     [![](images/AT_Record_list_editList.png)](#_)

13.  Click **SAVE**.

### Test generated user filter

Now that we've configured the record list columns, we can use the [user filter](filter-the-record-list.html) to filter by department. Since department data is stored in a many-to-one related record type, the user filter is already configured for us.

To test the generated user filter:

1.  In the record type, go to **List**.
2.  Click the link under **URL**. The record list will open in Tempo with the column configurations already applied, and it will automatically display the new user filter.
3.  Select a value from the **Department** user filter.

    [![images/AT_recordList_userFilter.gif](images/AT_recordList_userFilter.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img373)

    [![](images/AT_recordList_userFilter.gif)](#_)

## Configure the Summary view

Next, we will configure the records in the record type by generating a Summary view. The Summary view displays information for a single record. Then, we will configure the record header background color and the record title with the employee's name.

### Generate a Summary view

Because the Employee record type has [data sync](about-data-sync.html) enabled, you can quickly generate the Summary view interface, as follows:

1.  Return to the **AT Employee** record type.
2.  In the record type, go to **Views**.
3.  Click **GENERATE RECORD VIEW**.

    ![/record view empty state](images/record_view_empty_state.png)

4.  For **Select Record Types**, keep the **Employee** record type selected. This will display all fields from the Employee record type in the view.
5.  Click **NEXT**.
6.  For **Edit Settings**, leave the default configurations:

    | Property | Value |
    | --- | --- |
    | **View Name** | `Summary` |
    | **Application** | **Appian Tutorial** |

7.  Click **NEXT**.
8.  Review the objects that Appian will use for your new record view:

    [![images/Create_a_Record_View/generate-record-view-object-list.png](images/Create_a_Record_View/generate-record-view-object-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img374)

    [![](images/Create_a_Record_View/generate-record-view-object-list.png)](#_)

    **Note:**  If an existing Rules and Constants folder is being used, Groups will be hidden since they have already been configured for the folder.

9.  Click **GENERATE**. Appian generates the new interface.
10.  Click **CLOSE**. Your new **Summary** view displays in the **Record Views** table.

     [![images/Create_a_Record_View/tutorial-record-views-list.png](images/Create_a_Record_View/tutorial-record-views-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img375)

     [![](images/Create_a_Record_View/tutorial-record-views-list.png)](#_)

     Since we generated the Summary view, Appian automatically added the interface as the Summary view for the record type. All we need to do now is save it.

11.  Click **SAVE**.

### Configure the record header background

Now that our Summary view is configured, let's configure a record header background. The [record header](record-view.html#style-the-record-header) background contains the title, breadcrumbs, and related actions on every record view of your record.

You can opt for no background or you can set an image or color. We are going to configure a light blue background:

1.  In the **Header** section, for **Record Header Background**, select **COLOR**.
2.  For **Color**, keep the default **Static Color**.
3.  In the hex code text editor, enter `#F3F9FF` to select a light blue color.

Notice in the **Preview** that the header now displays with a light blue background.

### Configure the record title

Now, we'll configure the record title so that it will show the employee's first and last name. We are adding the employee's name as a record title so that a user landing on this page will understand what they are looking at without having to navigate to the record list.

Since our record type has data sync enabled, Appian automatically configures the record title to use the first Text field after the primary key field in the record type. In this tutorial, that field is the employee's first name. We want the title to be the employee's first and last name, so we'll configure an expression that concatenates the **firstName** and **lastName** record fields.

1.  For **Record Title**, select **Expression**.
2.  In the expression editor, copy and paste the following expression:

    ```
    1
     rv!record[recordType!AT Employee.fields.firstName] & " " & rv!record[recordType!AT Employee.fields.lastName]
    ```

3.  In the expression, change the record type references to use the record type reference in your environment.

    **Note:**  Record field references are specific to each record type and environment. This means that you need to reference the record fields from your own environment whenever you copy and paste a record type reference from outside the application.

4.  Click **SAVE**.
5.  To preview the Summary view, go to **List** in the record type and open the link under **URL**.
6.  From the record list, select an employee to view their Summary view. Notice that the employee's full name appears in the record title.

    [![images/summary-view-tutorial.png](images/summary-view-tutorial.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img376)

    [![](images/summary-view-tutorial.png)](#_)

## Generate record actions

In this last part of the tutorial, we'll generate some common record actions.

Since the Employee record type has [data sync](about-data-sync.html) enabled, you can generate actions to create, update, and delete records. Since we only want managers to have the ability to update and delete employee information, we'll also add security on those related actions.

### Generate create, update, and delete actions

We need to create three record actions: Create Employee, Update Employee, and Delete Employee. Luckily, we can generate all of our record actions at once.

To generate the create, update, and delete employee actions:

1.  Return to the **AT Employee** record type.
2.  In the record type, go to **Actions**.
3.  Click **GENERATE RECORD ACTIONS**.
4.  Keep the default so all actions are selected.

    [![images/all-actions-selected.png](images/all-actions-selected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img377)

    [![](images/all-actions-selected.png)](#_)

5.  Click **NEXT**.
6.  For **Selected Record Types**, keep the **Employee** record type selected.

    By default, generated record actions will also include data from any many-to-one relationships. Since the **Employee** record type has a many-to-one relationship with the **Department** record type, the create and update actions will included a dropdown component so users can select a department.

    [![images/record-types-actions-selected.png](images/record-types-actions-selected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img378)

    [![](images/record-types-actions-selected.png)](#_)

7.  Click **NEXT**.
8.  For **Select Template**, choose a template from the list. Appian will recommend a template based on the number of record types included in the action.

    [![images/template-actions-selected.png](images/template-actions-selected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img379)

    [![](images/template-actions-selected.png)](#_)

9.  Click **GENERATE**.

Appian generates the actions, creating and configuring the record actions and the objects supporting those actions in your application.

Since we selected the **Include Common Event Types** option when we [generated our event record types](#configure-record-events), the Create and Update record actions are also automatically configured to write records and events.

[![images/configuredActions-recordsTutorial.png](images/configuredActions-recordsTutorial.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img380)

[![](images/configuredActions-recordsTutorial.png)](#_)

### Add the related actions to the Summary view

Now that Appian has done all of the heavy lifting to create our record actions, let's add the Update Employee and Delete Employee actions to the Summary view.

Right now, these related actions will only appear on the [**Related Actions** view](record-view.html#configure-the-display-of-default-record-views) on each record, but we'll add a [related action shortcuts](record-actions.html#display-related-action-on-record-view) so managers can more quickly update or delete employee information while viewing the summary.

To add the related actions to the Summary view:

1.  In the record type, go to **Views**.
2.  Click next to **Summary**.
3.  In the **Edit View** dialog, under **Related Action Shortcuts**, select the checkboxes for **Update Employee** and **Delete Employee**.
4.  Click **OK**.
5.  Click **SAVE**.

**Tip:**  If you generate record actions _before_ you generate a Summary view, Appian will automatically add related action shortcuts to your generated Summary view.

### Set security on the related actions

Since we don't want everyone to be able to update or delete an employee's information, we are going to make sure that only those in the manager group are able to view and use these related actions.

To set security on the related actions:

1.  In the record type, go to **Views and Actions Security**.
2.  Go to the **Actions** tab.
3.  Click next to the **Update Employee** action.
4.  For **Who can see this action**, select **Only users…**
5.  Expand the **Found in groups option** and search for the `AT Managers` group.
6.  Click **OK**.
7.  Click next to the **Update Employee** action.
8.  For **Who can see this action**, select **Only users…**
9.  Expand the **Found in groups option** and search for the `AT Managers` group.
10.  Click **OK**.
11.  Click **SAVE**.

Now, only managers can update or delete employees.

[![images/views-and-action-security-tutorial.png](images/views-and-action-security-tutorial.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img381)

[![](images/views-and-action-security-tutorial.png)](#_)

### Test record actions

In this last step, we'll test out our record actions.

To test the record list action:

1.  In the record type, go to **List**.
2.  Open the link under **URL**.
3.  On the record list, click **\+ NEW EMPLOYEE**.
4.  Enter some information in the form.
5.  Click **CREATE**. The new employee should appear in the record list.

To test a related action:

1.  From the record list, select an employee to view their Summary view.
2.  Click **UPDATE EMPLOYEE**.

    [![images/update-employee-shortcut.png](images/update-employee-shortcut.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img382)

    [![](images/update-employee-shortcut.png)](#_)

3.  Update some information in the **Update Employee** form.
4.  Click **SAVE**. The Summary view should update to reflect your changes.

## Congratulations!

You did it! You made it through all of the parts and steps to successfully create a fully functioning record type with a Summary view, record actions, and a user filter. You are now ready to create record types that enable your own unique business data to do more all on your own!

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...