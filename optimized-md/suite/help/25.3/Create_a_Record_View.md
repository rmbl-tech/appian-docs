---
source_url: https://docs.appian.com/suite/help/25.3/Create_a_Record_View.html
original_path: Create_a_Record_View.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Record View Interface

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

A record view is defined on the [record type object](Create_a_Record_Type.html) and is composed of an [interface](using_interfaces_in_appian.html) that displays information from a single record to end users.

This page describes how to create a read-only interface that you can use in [a record view for a record type](record-view.html).

**Note:**  If your record type has data sync enabled, Appian can [generate a record view](record-view.html#generate-a-record-view) for you.

This read-only interface will display the data in each record. To pass record data into the interface, you'll define a rule input and set the type to a [record data type](Appian_Data_Types.html#record-data-types).

## Create a new interface with a rule input

To create the interface:

1.  In the **Build** view, click **New** > **Interface**.
2.  In the **Create Interface** dialog, configure your interface properties.
3.  Click **CREATE**.
4.  Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
5.  Under **Rule Inputs**, click **New Rule Input** and configure the following fields:

    | Property | Value |
    | --- | --- |
    | **Name** | `employee` |
    | **Description** (Optional) | Enter a short description. |
    | **Type** | The name of your record type. In this example, we used the `Employee` record type. |

6.  Click **CREATE**.

    ![screenshot showing the Edit Rule Input dialog with the Employee rule input](images/Create_a_Record_View_ruleInputScreenshot.png)

## Connect components to the rule input

Now you can add components to your interface and connect those components to the rule input you created.

To connect your components to your record type rule input:

1.  From the **Palette**, drag a component onto the interface.

    **Tip:**  Because you want the interface to display read-only values only, consider using a rich text display component or a text component set to **Read-only**.

2.  In the **Component Configuration**, under **Display Value**, use the dropdown list to select a record field or a related record field from your rule input.
3.  Repeat the above steps for each component in your interface to connect them to the rule input.

## Add test values to the rule input

Now that we have a rule input configured, let's add some test data to the interface. We'll configure a default test value to populate in our rule input. This test will simulate what happens when we connect our interface on our record type.

To add a test value to the interface:

1.  In the header bar, click **TEST**.
2.  For your rule input, enter an expression using [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html). For example, to see the Employee that has an identifier of `1`, we can create an expression like this:

    ```
    1
    2
    3
    4
    5
    a!queryRecordByIdentifier(
      recordType: recordType!Employee,
      fields: recordType!Employee.relationships.person,
      identifier: 1
    )
    ```

    This expression will return a single record from the Employee record type. To also display information from the Person related record type, we reference the relationship to the related record type in the _fields_ parameter to return all related record fields.

3.  Click **SET AS DEFAULTS AND TEST**. You will now see record data populate in the **Rule Inputs** pane.

Here's what our simple interface preview looks like with some test data:

![screenshot of the view interface, showing 5 fields filled with test data](images/Create_a_Record_View_interfaceScreenshot.png)

## What's next

Now that your interface is ready, use it to [define a record view for a record type](record-view.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...