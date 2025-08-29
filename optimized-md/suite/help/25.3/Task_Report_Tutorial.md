---
source_url: https://docs.appian.com/suite/help/25.3/Task_Report_Tutorial.html
original_path: Task_Report_Tutorial.html
version: "25.3"
title: "Task Report Tutorial"
page_id: "Task_Report_Tutorial"
section: "Create the Appian Tutorial application"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Task Report Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This walk-through will help you create your first [task report](Process_Reports.html#task-report-type) and view it in a site. Task reports display task information with a link for users to open each task and begin working on it.

In this walk-through, we will:

1.  Create a constant to point to our task report.
2.  Create an interface that uses the [Task Report pattern](task-report-pattern.html).
3.  Modify the Task Report pattern to reference your task report.
4.  Modify the Task Report pattern to show multiple task assignees.
5.  Create a site to view our task report.

The content below assumes a basic familiarity with interfaces, grids, and queries. Consider going through the [SAIL](SAIL_Tutorial.html) and [Grid](Grid_Tutorial.html) Tutorials first.

For a task report recipe that works in offline mobile, see [Offline Mobile Task Report](recipe-offline-task-report.html).

## Create the Appian Tutorial application

**Tip:**  The Appian Tutorial application is used throughout Appian tutorials. Skip the steps in this section if you've already created this application in another tutorial.

To begin with, we need to create an application to contain our design objects.

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

## Create a constant for the My Tasks process report

Before we create the task report interface, we need to create a [constant](Constants.html) for the _My Tasks_ [process report](Process_Reports.html). This constant will be used in the interface that we will create in the next step.

1.  In your **Appian Tutorial** application, go to the **Build** view.
2.  From the **NEW** menu, click **Constant**. This opens the **Create Constant** form.
3.  Leave **Create from Scratch** selected.
4.  For **Name**, enter `AT_MY_TASKS_REPORT`.
5.  Under **Type**, select **Document**.
6.  In **Value**, enter `My Tasks` and select the document that is suggested. If no suggestions appear for `My Tasks`, search for and use `active_tasks` instead.
7.  In **Save In**, use the `AT Rules & Constants` folder that is suggested.
8.  Click **Create**.

To learn more about creating process reports, see [Configuring Process Reports](Configuring_Process_Reports.html).

## Create an interface for the task report

Now we will create an interface to be used to display the task report data in a grid. We will use the Task Report drag and drop pattern as the basis for our expression.

The Task Report pattern does the following:

-   Uses the `a!queryProcessAnalytics()` system function to display data from the process report in a grid.
-   Creates [process task links](Process_Task_Link_Component.html) to tasks.
-   Formats the data so it is more user-friendly.
-   Creates a status filter for your report.

For a more detailed breakdown of this pattern, see the [Task Report pattern](task-report-pattern.html) page.

Note that while we are using a built-in report for this example, any process report can potentially be queried.

1.  In the **Build** view, click **NEW**, then **Interface**. This opens the **Create Interface** form.
2.  Leave **Create from Scratch** selected
3.  For **Name**, enter `AT_myTasksReport`.
4.  In **Save In**, use the `AT Rules & Constants` folder that is suggested.
5.  Click **Create**.

The newly created interface will open in a new tab by default. If you don't see a new tab, check your browser to see if you have pop-ups enabled.

To add the Task Report pattern to your interface:

1.  Under **PALLETTE**, click **PATTERNS**.
2.  Drag the **TASK REPORT** pattern onto your blank interface.

Once the pattern is added to your interface, you should see the following:

![screenshot of the task report pattern](images/patterns/task_report_pattern.png)

### Switch out placeholder data for a process analytics query

To adapt the task report pattern to work with your data, you need to update the `local!taskReportData` local variable to use a process analytics query that calls the `My Tasks` constant and document that you created earlier.

1.  Replace lines 32-66 with the following expression:

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
       local!taskReportData: a!queryProcessAnalytics(
       report: cons!AT_MY_TASKS_REPORT,
       query: a!query(
           pagingInfo: a!pagingInfo(
             startIndex: 1,
             batchSize: 10,
             sort: a!sortInfo(
               field: "c2",
               ascending: true
             )
           ),
           filter: a!queryFilter(
              field: "c5",
              operator: "in",
              value: local!statusFilter,
              applyWhen: a!isNotNullOrEmpty(local!statusFilter)
            )
          )
       ),
    ```

2.  For the value of the _report_ parameter on line 33, reference the constant that points to your task report that you created [earlier in the tutorial](#create-a-constant-for-the-my-tasks-process-report). If the constant that you made in constant is named `cons!AT_MY_TASK_REPORT`, you don't have to update it.
3.  To see your changes reflected in the interface preview, click **TEST**. Clicking **TEST** forces the local variables in your interface preview to refresh. Do this any time you update a local variable to see your changes reflected in the interface.

**Tip:**  If you want to see more than 10 reports in the grid, increase the batch size on line 37.

### Reformat the Assigned To column

When you replace the placeholder data in the pattern with your own constant and process analytics query, a new Assigned To column appears. (Don't forget to click **TEST** to see your changes in the preview.) Right now, this column uses the default formatting.

![screenshot of the unformatted Assigned To column](images/task-report-assigned-to-unformatted.png)

Let's update it to look a little cleaner.

To reformat the Assigned To column we need to add _whenTrue_ and _then_ parameters to the `a!match()` function (line 102). This `a!match()` function is used to format the columns.

The new parameters basically say: for the column whose field value equals `c8`, use specific formatting. To learn more about how to determine which column `c8` maps to, see the [Task Report Pattern](task-report-pattern.html#reference-task-report-columns).

To reformat the Assigned To column:

1.  Add a new line between the comma on 131 and the `default: local!fieldValue` on line 132.
2.  Copy and paste the following expression ino the new line.

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
                       /* Format Assigned To field */
                       whenTrue: fv!item.field = "c8",
                       then: a!richTextDisplayField(
                         value: a!forEach(
                           items: fv!row.c8,
                           expression: if(
                             /* Check if User type (4), otherwise it's a Group (5) */
                             runtimetypeof(fv!item) = 4,
                             a!richTextItem(
                               text: user(fv!item, "firstName") & " " & user(fv!item, "lastName") & char(10),
                               link: a!userRecordLink(user: fv!item),
                               linkStyle: "STANDALONE"
                             ),
                             /* Adding char(10) adds line breaks to the list of names */
                             group(fv!item, "groupName") & char(10)
                           )
                         )
                       ),
    ```

3.  Click **TEST** to force your interface preview to update.
4.  Click **SAVE**.

The Assigned To column updates to use the new formatting.

![screenshot of the formatted Assigned To column](images/task-report-assigneed-to-formatted.png)

**Note:**  The **Assigned To** column will look different for every task report. If your tasks only have one assignee, the "Assigned To" column will only show the one assignee. If the report you're using doesn't have an **Assigned To** column, there won't be one shown here. Learn more about [configuring and adding rows to process reports](Configuring_Process_Reports.html).

## View your task report in a site or on Tempo

You can use task reports in both sites or in [Tempo](Tempo_Report_Design.html). For most uses, you'll likely want to show your task report in a site, but we've added an optional step here to show you how to view your site in Tempo.

### Create a site and add the interface as a sites page

To create a site to view your task in:

1.  From the **BUILD** view, open the **NEW** menu and click **Site**.
2.  For **Name**, enter `Tasks`.
3.  For **Display Name**, enter `Tasks Site`.
4.  Keep the automatically populated **Web Address Identifier**. If another site already exists with this same identifier, modify your new site's identifier here to make it unique.
5.  Optionally add a description.
6.  Click **CREATE**.
7.  Keep the existing site security settings and click **SAVE**.

To add your task report interface to your site:

1.  Under **Pages**, click **\+ ADD PAGE**.
2.  For **Title**, enter `My Tasks`.
3.  Keep the default values for the **Web Address Identifier** and **Width** fields.
4.  For **Icon**, enter `tasks` and select one of the returned icons.
5.  For **Type**, select **Interface**.
6.  In **Content**, search for `AT_myTasksReport` or the name of your interface and select it.
7.  Keep the default value for **Visibility**.
8.  Click **OK**.
9.  Click **SAVE** for your site.

Now, let's check out your site and task report! Click the URL under the **Web Address** field to view your site.

### (OPTIONAL) Create and view the task report in Tempo

To use your task report on Tempo:

1.  From the settings menu in your interface, click **Save as…**. This displays the **Save Interface As Report** form.
2.  Keep the **Report** radio button selected.
3.  In the **Report Name** field, enter `My Tasks`.
4.  Select the **Save as Task Report** checkbox.
5.  Confirm that the **Application** field has the value **Application Tutorial** in it.
6.  Click **SAVE**.
7.  Keep the default security settings and click **SAVE**.

Now if you visit the Tasks tab in Tempo, you will see a link for the **My Tasks** report below the default filters.

![task report in Tempo](images/task-report-in-tempo.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...