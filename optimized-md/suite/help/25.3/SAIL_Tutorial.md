---
source_url: https://docs.appian.com/suite/help/25.3/SAIL_Tutorial.html
original_path: SAIL_Tutorial.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Interface Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This tutorial will teach you how to build an [interface](design-objects.html#interface) in Appian, working in both design mode and expression mode. Completing this tutorial will enable you to move on to the [Process Model Tutorial](Process_Modeling_Tutorial.html).

The interface we're creating in this tutorial will be a form that lets users add new employee information to the system. We'll create this form in the [Appian Tutorial application](#create-the-appian-tutorial-application) and use the Employee record type from the [Database-Backed Record Type Tutorial](Records_Tutorial.html) to build out the form.

**Tip:**  If your record type has data sync enabled, you can [generate record views](record-view.html#generate-a-record-view) and [process forms](record-actions.html#generate-record-actions) so your interfaces are configured for you.

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

## Create the Employee record type

To build the interface, you need to create an Employee record type as described in the [Use the Write Records Smart Service Function on an Interface](recipe-use-the-write-records-smart-service-function-on-an-interface.html#create-a-record-type) pattern. Complete this pattern before continuing.

## Create an interface

Now that we've created your application and record type, let's get started on the interface.

We're going to create an interface named **AT\_employeeForm**. This interface will show a form for users to input values about new employees.

### Create an interface object

To create an interface object:

1.  In the **Build** view, click **NEW > Interface**.
2.  In the **Create Interface** dialog, configure the following properties:
    -   Leave **Create from Scratch** selected.
    -   For **Name**, enter `AT_employeeForm`.
    -   For **Save In**, select the **AT Rules & Constants** folder that Appian generated.
    -   Leave **Include in the design library** unselected.
3.  Click **CREATE**.

The newly created interface will open in a new tab by default. If you don't see a new tab, make sure you have pop-ups enabled for your browser.

By default, the new interface is in design mode. That's where we want to be for now.

### Select a template

Next, let's select an interface template, so we can take advantage of functionality already configured in the template.

In the **Select a Template** panel, under **FORMS**, click **Form with Full header**.

[![images/sail_tutorial/SAIL_Tutorial_From_Template.png](images/sail_tutorial/SAIL_Tutorial_From_Template.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img803)

[![](images/sail_tutorial/SAIL_Tutorial_From_Template.png)](#_)

The template you selected opens in the live view.

### Change the form title

Now, let's change the form title, so that users viewing the published interface know they're in the right place to create new employees in the system.

To change the form title:

1.  Click on the title **Form** to select the **Form Layout** component. This action opens the component properties for editing in the **COMPONENT CONFIGURATION** pane on the right.

2.  In the **COMPONENT CONFIGURATION** pane, configure the following:

    | Property | Value |
    | --- | --- |
    | **Title** | `Create New Employee` |
    | **Secondary Text** | `Enter employee details` |

    [![images/sail_tutorial/SAIL_Tutorial_1.png](images/sail_tutorial/SAIL_Tutorial_1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img804)

    [![](images/sail_tutorial/SAIL_Tutorial_1.png)](#_)

### Rearrange the sections

The template we selected contains two sections, but we only need the section with two columns. We'll also add some more columns to lay out the other components of the form.

To reorder the section components:

1.  Click the first **Section Layout** to select it.
2.  From the context menu next to **Section Layout**, click **Delete**.

    ![Delete section component](images/sail_tutorial/SAIL_Tutorial_Delete_Section.png)

3.  Click the remaining **Section Layout** to select it.
4.  In the **COMPONENT CONFIGURATION** pane, delete the default value, `Section`, from the **Label** property.

You should be left with nothing but the form layout and the cancel and submit buttons.

![Empty form layout](images/sail_tutorial/SAIL_Tutorial_Cleared_Form.png)

## Create the record rule input

Before we add new interface components, let's add the rule input needed to store user-entered data for those components. A rule input is a variable that stores inputs from the interface, so those inputs can be successfully passed to a process model.

1.  In the **RULE INPUTS** pane on the right, click **New Rule Input**.
2.  For **Name**, enter `record`.
3.  For **Description**, keep the blank default.

    Adding supplemental information in this field can be useful to guide future development, but for the purposes of this tutorial, we'll keep it blank.

4.  For **Type**, select the **AT Employee** record type.
5.  Leave the **Array** checkbox unselected. The form only allows users to submit a single employee, so there is no need for the rule input to accept multiple records.
6.  Click **CREATE**.

Your finished rule inputs should look like this:

![Rule inputs](images/sail_tutorial/SAIL_Tutorial_Add_New_Input.png)

## Add components

Now, we'll add components to the interface that let users add employee data. These components are available in the **PALETTE** panel.

To add components to the interface:

1.  Drag the following components into the left column, in the following order:
    -   **TEXT** component
    -   **DROPDOWN** component
    -   **TEXT** component
2.  Drag the following components into the right column, in the following order:
    -   **TEXT** component
    -   **TEXT** component
    -   **DATE** component

Your interface should look like this:

![Form with components added](images/sail_tutorial/SAIL_Tutorial_2.png)

## Configure the new components

Next, we'll configure the components so that the form inputs connect to the rule inputs. We'll also specify whether a specific form input is required to submit the form.

For each component:

1.  Click the component to select it.
2.  In the **COMPONENT CONFIGURATION** pane, configure the specified properties:
    -   [Text (top left)](#text-top-left)
    -   [Dropdown (middle left)](#dropdown-middle-left)
    -   [Text (bottom left)](#text-bottom-left)
    -   [Text (top right)](#text-top-right)
    -   [Text (middle right)](#text-middle-right)
    -   [Date (bottom right)](#date-bottom-right)
3.  Click **SAVE**.

Once you've configured these properties, your interface should look like this:

![Form with renamed fields](images/sail_tutorial/SAIL_Tutorial_4.png)

### Text (top left)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Label** | Enter `First Name`. |
| **Display Value** | Select `ri!record[AT Employee.fields.firstName]`. |
| **Save Input To** | Select `ri!record[AT Employee.fields.firstName]`. |
| **Required** | Select this checkbox. |

For example:

![Component Configuration pane for text component with Label, Display Value, Save Input To, and Required properties configured](images/sail_tutorial/SAIL_Tutorial_Save_Input_To_Picker.png)

### Dropdown (middle left)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Data Source** | Select **Record Type**, then search for and select the `AT Employee` record type. |
| **Choice Labels** | Remove the default selection, then select `recordType!AT Employee.relationships.department.fields.value`.

An error appears, but this is expected because there are currently different **Choice Labels** than there are **Choice Values**. We'll correct this by configuring the next property. |
| **Choice Values** | Remove the default selection, then select `recordType!AT Employee.fields.departmentId`.

The error message will disappear, because the **Choice Labels** and **Choice Values** configurations now match. |
| **Label** | Enter `Department`. |
| **Selected Value** | Select `ri!record[AT Employee.relationships.department.fields.value]`. |
| **Save Selection To** | Select `ri!record[AT Employee.fields.departmentId]`. |
| **Required** | Leave this checkbox unselected. |

Now, the department names from the **AT Department** record type will display as the selectable values in the dropdown list.

Because of the relationship between **AT Employee** and **AT Department**, the user selects the department name (for example, "Engineering"), but the app saves the selected value as the ID to which the selected value maps. This follows data modeling best practices.

You can test the configuration of this component by clicking the dropdown. If the component is configured correctly, you should see the following list of department names:

![Department dropdown list showing department names](images/sail_tutorial/dropdown-department-values.png)

### Text (bottom left)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Label** | Enter `Phone Number`. |
| **Display Value** | Select `ri!record[AT Employee.fields.phoneNumber]`. |
| **Save Input To** | Select `ri!record[AT Employee.fields.phoneNumber]` |
| **Required** | Leave this checkbox unselected. |

### Text (top right)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Label** | Enter `Last Name`. |
| **Display Value** | Select `ri!record[AT Employee.fields.lastName]`. |
| **Save Input To** | Select `ri!record[AT Employee.fields.lastName]`. |
| **Required** | Select this checkbox. |

### Text (middle right)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Label** | Enter `Title`. |
| **Display Value** | Select `ri!record[AT Employee.fields.title]`. |
| **Save Input To** | Select `ri!record[AT Employee.fields.title]`. |
| **Required** | Leave this checkbox unselected. |

### Date (bottom right)

Configure the following properties:

| Property | Action |
| --- | --- |
| **Label** | Enter `Start Date`. |
| **Display Value** | Select `ri!record[AT Employee.fields.startDate]`. |
| **Save Input To** | Select `ri!record[AT Employee.fields.startDate]`. |
| **Required** | Select this checkbox. |

## Add a validation

You can configure validations on the form's components to ensure the data users enter doesn't contain preventable mistakes. For example, let's add a custom validation to our form so users are limited to a maximum of 15 characters in the **Phone Number** field.

To add a custom validation:

1.  Select the **Phone Number** text component.
2.  In the **COMPONENT CONFIGURATION** pane, hover over the **Validations** property, then click **Edit as Expression**.
3.  Enter the following expression in the **Validations (List of Text String)** expression box:

    ```
    1
    2
    3
    4
    5
    if(
     len(tostring(ri!record[recordType!AT Employee.phoneNumber]))<=15,
     null,
     "The phone number cannot exceed 15 digits"
     )
    ```

4.  In the expression, change the record type reference to use the record type reference in your environment.
5.  Click **OK** to close the expression box.
6.  To test the validation:

    -   For **Phone Number**, enter `1234567890123456`.
    -   Click outside the text field. You should see the validation message.
    -   For **Phone Number**, delete the `6` at the end of the string. The validation message should no longer appear.

    ![SAIL_Tutorial_Comment_Validation_Message](images/sail_tutorial/SAIL_Tutorial_Phone_Validation_Message.gif)

7.  Click **SAVE**.

## Congratulations!

You did it! You created a records-powered interface to meet a business use case. You're ready to move on to [other tutorials](Tutorials.html).

-   To connect your interface to a process model that saves new employee data, check out the [Process Modeling Tutorial](Process_Modeling_Tutorial.html).

**See Also:** [Interface Recipes](SAIL_Recipes.html) to create different interfaces with specific layouts and dynamic behavior.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...