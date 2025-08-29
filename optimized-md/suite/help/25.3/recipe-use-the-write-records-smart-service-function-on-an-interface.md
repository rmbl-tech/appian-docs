---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-the-write-records-smart-service-function-on-an-interface.html
original_path: recipe-use-the-write-records-smart-service-function-on-an-interface.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use the Write Records Smart Service Function on an Interface

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Allow the user to publish several rows of data to a database table with the a!writeRecords() smart service function.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

Follow this pattern to create example data and supporting objects to use with other interface patterns (including those that use record types) and tutorials like the [Database-Backed Record Type Tutorial](Records_Tutorial.html). After using this pattern, [review other patterns](SAIL_Recipes.html) to learn how to build reports and interfaces using this data in different components.

This page shows you:

-   How to use the [a!writeRecords()](Write_Records_Smart_Service.html#a!writerecords\(\)) smart service function to create record data directly from an interface.
-   How to use the _disabled_ parameter of an interface component based on user interactions.

## Setup

For this pattern, we'll create a record type with [data sync enabled](about-data-sync.html), and then use the [a!writeRecords()](Write_Records_Smart_Service.html#a!writerecords\(\)) smart service function in a basic interface to populate the record type's data source with example data. We'll use the Appian Tutorial application as a starting point.

To set up this pattern:

1.  [Create the Appian Tutorial application](#create-the-appian-tutorial-application).
2.  [Create a record type](#create-a-record-type).
3.  [Create a data model](#create-a-data-model).
4.  [Create an interface](#create-an-interface).
5.  [Load the sample data](#load-the-sample-data).

### Create the Appian Tutorial Application

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

### Create a record type

To create the record type you'll need for this pattern:

1.  In the **Build** view of the Appian Tutorial application, click **NEW > Record type**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Keep the [application prefix](Standard_Object_Names.html#process-objects) that prepopulates this property, and add `Employee`, so that the name is `<prefix> Employee`. |
    | **Display Name (Plural)** | Keep the generated value of `Employees`. |
    | **Description** | (Optional) Enter a brief description of the record type. |

3.  Click **CREATE**.
4.  In the **Review Record Type Security** dialog, keep the default settings. **AT Administrators** group should be assigned **Administrator** permissions for the group.
5.  Click **SAVE**.

### Create a data model

You're ready to create the data model for the Employee record type. Instead of using an existing data source, we'll add a new table to the database to store employee data. This new data model includes six record fields for employee information, as well as some automatically generated metadata fields for tracking data creation and modification.

**Note:**  This step takes advantage of [codeless data modeling](create-record-data-source.html), which requires an environment connected to a supported database. Codeless data modeling supports MariaDB, MySQL, Oracle, SQL Server, PostgreSQL, and Aurora MySQL databases. For example, you can use an Appian Cloud or an Appian Community Edition environment.

If your environment connects to a different database, instead of following the instructions below, you'll need to create a database table that contains the needed fields, then [choose that database table](configure-record-data-source.html#connect-to-a-database) as the source of your record type.

To create the data model:

1.  Click **TELL US ABOUT YOUR DATA**.
2.  Select **New Data Model**.
3.  Click **NEXT**.
4.  For **Data Source**, select a database.
5.  Click **NEXT**.
6.  In the row for the `id` field, click ![Add Multiple Fields](images/Create_Record_Type/add-multiple.png) **Add Multiple Fields**.
7.  For **Enter a number between 1 and 20**, enter `4`.
8.  Click **Add**.
9.  For each field in the following table, enter the field name in one of the empty fields created in the previous step.

    | Name | Type |
    | --- | --- |
    | `firstName` | Text |
    | `lastName` | Text |
    | `title` | Text |
    | `phoneNumber` | Text |

10.  Click **New Choice List**.
11.  Enter the **Record Type Name** as `<prefix> Department`.
12.  In **List Items**, paste the expression below.

     ```
     1
     2
     3
     4
     5
     Engineering
     Finance
     Sales
     HR
     Professional Services
     ```

13.  Click **Create Choice List**. A new `departmentId` field is added to the data model and a new Department record type is created.
14.  In the list of **Commonly Used Fields**, click **startDate**.
15.  Remove the following fields:
     -   **Created By**
     -   **Created On**
     -   **Modified By**
     -   **Modified On**
16.  Click **NEXT**.
17.  On the **Relationships** page, click **NEXT**.
18.  On the **Review** page, click **SAVE CHANGES**.
19.  On the success page, click **CLOSE**. You can discard the database script created for the record type.

**Note:**  It is normally a best practice to include the default **Created By**, **Created On**, **Modified By**, and **Modified On** fields in your record type, but we are removing them for the purposes of this recipe and the tutorials that rely on it.

### Create an interface

Now, let's create an [interface](interface_object.html) to trigger the `a!writeRecords()` smart service function. This function publishes the sample data to your new database table and syncs those changes in Appian so they appear in the record type.

To create this interface:

1.  In the **Build** view of your application, click **NEW > Interface**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter: `<prefix>_employeeData` |
    | **Description** | Enter: `Interface for loading employee data` |
    | **Folder** | Select the appropriate folder in your application or, if it doesn't exist, create it by clicking the **Create New Rule Folder** link. |

3.  Click **CREATE**.
4.  In your new interface, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
5.  In the **INTERFACE DEFINITION** pane, paste the [expression](#expression) below.
6.  Since record type references are specific to each environment, you need to update the expression to work with your application:
    -   **Line 28**: In the `cast()` function, replace `recordType!Employee` with your record type.
    -   **Line 38**: In the `a!queryRecordType()` function, replace the _recordType_ value of `recordType!Employee` with your record type, and replace the _fields_ values with record field references from your record type.
    -   **Line 44**: In the `a!sortInfo()` function, replace the _field_ value of `recordType!Employee.field.id` with a reference to your record type's `id` field.
7.  Click **SAVE**.

### Load the sample data

You are ready to run the expression and populate the record type with data.

-   To load the data, click **PUBLISH DATA**.

After data has been published to your database, the button text changes to **DATA ALREADY PUBLISHED**. The button will stay disabled as long as there is employee data present in the database table.

### View the sample data

The disabled button means that the data was successfully published. If you want to see the new record data, you can do so in the record type.

To view the record data:

1.  Return to the Employee record type.
2.  Refresh your browser to refresh the record type.
3.  Click **DATA PREVIEW**.

![Data preview of Employee record type](images/write-records-data-preview.png)

**Tip:**  Check out the [Record Type Tutorial (Database)](Records_Tutorial.html#configure-record-events) to configure the rest of this record type!

## Expression

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
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
a!localVariables(
  /* The data to load into the record data source. */
  local!dataToLoad: a!forEach(
    {
      a!map( firstName: "John" , lastName: "Smith" , departmentId: 1 , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
      a!map( firstName: "Michael" , lastName: "Johnson" , departmentId: 2 , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
      a!map( firstName: "Mary", lastName: "Reed" , departmentId: 1 , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
      a!map( firstName: "Angela" , lastName: "Cooper" , departmentId: 3 , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
      a!map( firstName: "Elizabeth" , lastName: "Ward" , departmentId: 3 , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
      a!map( firstName: "Daniel", lastName: "Lewis" , departmentId: 4 , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
      a!map( firstName: "Paul" , lastName: "Martin" , departmentId: 2 , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
      a!map( firstName: "Jessica" , lastName: "Peterson" , departmentId: 2 , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
      a!map( firstName: "Mark" , lastName: "Hall" , departmentId: 5 , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
      a!map( firstName: "Rebecca" , lastName: "Wood" , departmentId: 1 , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
      a!map( firstName: "Pamela" , lastName: "Sanders" , departmentId: 1 , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
      a!map( firstName: "Christopher" , lastName: "Morris" , departmentId: 5 , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
      a!map( firstName: "Kevin" , lastName: "Stewart" , departmentId: 5 , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
      a!map( firstName: "Stephen" , lastName: "Edwards" , departmentId: 3 , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
      a!map( firstName: "Janet", lastName:"Coleman" , departmentId: 2 , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
      a!map( firstName: "Scott" , lastName: "Bailey" , departmentId: 1 , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
      a!map( firstName: "Andrew" , lastName: "Nelson" , departmentId: 5 , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
      a!map( firstName: "Michelle" , lastName: "Foster" , departmentId: 4 , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
      a!map( firstName: "Laura" , lastName:"Bryant" , departmentId: 3 , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
      a!map( firstName: "William" , lastName: "Ross" , departmentId: 1 , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
      a!map( firstName: "Arya" , lastName:"Colson" , departmentId: 3 , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )
    },
    cast(
      recordType!Employee,
      fv!item
    )
  ),
  /* This value gets updated when the user clicks on the PUBLISH DATA button in order to disable it
     so the user can't click it multiple times. */
  local!submitted: false,
  /* The refresh variable watches local!submitted and reruns the query when it changes. */
  local!records: a!refreshVariable(
    value: a!queryRecordType(
      recordType: recordType!Employee,
      fields: {
        recordType!Employee.fields.firstName,
        recordType!Employee.fields.lastName,
        recordType!Employee.fields.departmentId,
        recordType!Employee.fields.title,
        recordType!Employee.fields.phoneNumber,
        recordType!Employee.fields.startDate
      },
      pagingInfo:
        a!pagingInfo(
          startIndex: 1,
          batchSize: 1000,
          sort: a!sortInfo(
            field: recordType!Employee.fields.id,
            ascending: true
          )
        ),
        fetchTotalCount: true
    ),
    refreshOnVarChange: local!submitted
  ),
  local!hasData: not(local!records.totalCount=0),
  a!sectionLayout(
    contents: {
      a!buttonLayout(
        secondaryButtons:{
          a!buttonWidget(
            label: if(local!hasData, "Data Already Published", "Publish Data"),
            saveInto: {
              a!writeRecords(
                records: local!dataToLoad,
                onSuccess: a!save(local!submitted, true)
              )
            },
            submit: true,
            style: "SOLID",
            disabled: or(local!hasData, local!submitted)
          )
        }
      )
    }
  )
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...