---
source_url: https://docs.appian.com/suite/help/25.3/Export_Multiple_DSEs_to_Excel.html
original_path: Export_Multiple_DSEs_to_Excel.html
version: "25.3"
title: "Export Multiple Data Store Entities to Excel or CSV"
page_id: "Export_Multiple_DSEs_to_Excel"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Export Multiple Data Store Entities to Excel or CSV

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page will walk you through how to export one or more data sources to Excel or CSV using the [Export Data Store Entity to Excel smart service](Export_To_Excel_Smart_Service.html) or [Export Data Store Entity to CSV smart service](Export_To_CSV_Smart_Service.html), respectively.

## Using the Export smart services

Both the Export Data Store Entity to Excel ("Export to Excel" for short) and the Export Data Store Entity to CSV ("Export to CSV" for short) smart services can write data to a new document or update an existing document. You can specify the folder in which the document will be created.

In this example, we will export two Data Store Entities (DSEs), one DSE per sheet, in a single Excel file. The steps will be similar when using an Export to CSV Smart Service. The exported Excel file will have two sheets with the queried data (one about customers and another about customer order details) from the DSEs.

## Step 1: Add an Export to Excel smart service

To create the first sheet, we will need to add a smart service to our process model.

### Create a process model and process variable

First, you'll create a new process model. Then, you'll add a process variable, which you'll use later on to filter data.

To create a process model and process variable:

1.  [Create a new process model](process-model-object.html#creating-a-process-model).
2.  From the palette on the left, search for the **Export Data Store Entity to Excel** smart service and drag it to the canvas.
3.  Go to **File** > **Properties**.
4.  Go to the **Variables** tab.
5.  Click **\+ Add Variable** to create a new process variable with the following properties:
    -   **Name**: Enter `customerId`.
    -   **Type**: Select Number (Integer).
    -   **Value**: Enter `1`.
6.  Click **OK** to create the new variable.
7.  Click **OK** to close the **Properties** dialog.

### Configure node inputs

Next, you'll configure the node inputs for the Export Data Store Entity To Excel smart service.

To configure the node inputs:

1.  Double-click on the **Export Data Store Entity to Excel** smart service node.
2.  Go to the **Data** tab.
3.  Select the **Data Store Entity** input.
4.  In the **Field Properties** pane, click **Directory** next to the **Value** field to browse and select a DSE.
5.  Select the **Selection** input.
6.  Click **Expression Editor** next to the **Value** field.
7.  Enter a query selection to select which columns you want to export. For example:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
       a!querySelection(
         columns: {
           a!queryColumn(
             field: "Customer.Name",
             alias: "Customer"
           )
         }
       )
    ```

    **Note:**  Nested CDTs will not be exported unless you specify the field. For example, `employee.department.name` will be exported, but `employee.department` will not.

8.  Select the **Filters** input.
9.  For the **Value** field, enter a query filter for your data. For example:

    `a!queryFilter("Customer.id", "=", pv!customerId)`

10.  Select the **New Document Name** input.
11.  For the **Value** field, enter a name for your document. You can also add the start time of the process, like the example below, to make documents easier to identify.

     `"Orders Excel - " & pp!starttime`

12.  Select the **Save in Folder** input.
13.  For the **Value** field, select the folder you want to save your new document in.

     **Note:**  Anyone with at least **Viewer** permissions to this folder will be able to see this document. Learn more about [configuring folder security](folder-object.html#modifying-folder-security).

14.  Select the **Sheet Name** input.
15.  For the **Value** field, enter `="Orders"`.
16.  Select the **Sheet Number** input.
17.  For the Value field, enter `1`. If you don't enter a sheet name, the default will be set to "Sheet 1." You can leave the sheet number blank if you don't want to specify the number. When creating a document, the default is set to 1.
18.  Select the **Starting Cell** input.
19.  Click **Expression Editor** next to the **Value** field, and enter `="A5"`.
20.  Select the **Custom Cell Positions** input.
21.  Click **Expression Editor** next to the **Value** field, and enter `={"A1", "B1", "A2", "B2"}`.
22.  Select the **Custom Cell Values** input.
23.  Click **Expression Editor** next to the **Value** field, and enter `={"Data Store Entity: ", "Orders", "Exported On: ", tp!starttime}`.

     **Note:**  When using cell position and values, the starting cell has to be below the other cells.

### Configure node outputs

Lastly, you'll configure the node outputs for the Export Data Store Entity To Excel smart service.

To configure the node outputs:

1.  Go to the **Outputs** tab.
2.  Click the **New Document** result and save the activity class as a new process variable. This process variable will be used when setting up our second Export to Excel smart service.
3.  Create a new custom output to get the order ids for a particular customer. In the example below, we created a query and saved it to a process variable named "orderIds."

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
    a!queryEntity(
      entity: cons!CASE_APP_OrderDataStoreEntity,
      query: a!query(
        filter: a!queryFilter(
          "Customer.id",
          "=",
          pv!customerId
        ),
        pagingInfo: a!pagingInfo(
          1,
          - 1
        )
      )
    ).data.id
    ```

4.  Click **OK**.

## Step 2: Add a second Export to Excel smart service

To add a second sheet to our Excel file, we are going to add another Export to Excel smart service to our process.

To add a second smart service node:

1.  Drag a **Export Data Store Entity to Excel** smart service after the first smart service on the canvas.
2.  Double-click the new smart service node.
3.  Go to the **Data** tab.
4.  Select the **Data Store Entity** input.
5.  For the **Value** field, select a Data Store Entity.
6.  Select the **Filters** input.
7.  For the **Value** field, enter a query filter for your data. For example:

    `a!queryFilter("Customer.id", "=", pv!customerId)`

8.  Select the **Document to Update** input.
9.  For the **Value** field, select the process variable you used to store your new document in the first smart service. You don't have to enter values for the **Document Name** and **Save in Folder** inputs if you are updating a document.
10.  Select the **Sheet Name** input.
11.  For the **Value** field, enter `="Orders Details"`.
12.  Select the **Sheet Number** input.
13.  For the **Value** field, enter `2`.

     **Note:**  If you do not enter a sheet number for the second smart service, the exported data will replace the existing data on the existing sheet.

14.  Click **OK**.
15.  Save and publish your process model.

Your process model should look similar to the screenshot below:

![Export to Excel smart service example](images/export_to_excel_ss_example.png)

After you run your process, you will be able to see a new document added to the folder that you saved it in.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...