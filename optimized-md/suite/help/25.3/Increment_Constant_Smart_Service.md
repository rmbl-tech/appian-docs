---
source_url: https://docs.appian.com/suite/help/25.3/Increment_Constant_Smart_Service.html
original_path: Increment_Constant_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Increment Constant Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The `Increment Constant Smart Service` allows you to increase or decrease the value of a [constant](Constants.html) by a specified interval of type Number (Integer). The node returns an "Updated Constant Value" of type Number (Integer) on the Output tab. Entering a positive number for the increment value increases the constant value, while a negative number decreases the value.

Use this smart service instead of the [Update Constant Smart Service](Update_Constant_Smart_Service.html) if you want to automatically increase or decrease constants that are used as global counters. Executing this smart service does not create a new version of the constant, and if multiple versions of the constant exists, only the latest version is modified.

**Caution:**  Only users who have permissions to update the constant specified can execute the smart service on that constant. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

You must specify values for the node inputs listed in the table below. You can either manually enter data into the text-field or generate a value using the Expression Editor. When using the Expression Editor, you can reference and modify process variables, rules, constants, and other data. The expressions then populate your node input values.

### Properties

-   **Category**: Business Rules
-   **Icon**: ![](images/Smart_Service_Icons/Increment_Constant.png)
-   **Assignment Options**: Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The [Data Tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays the node inputs and outputs for the activity. You can add additional inputs and custom outputs, if needed.

#### Node inputs

The default inputs include the following:

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Constant | Constant | The constant of type **Number (Integer)** to be incremented/decremented. Typically, you should use the picker or autocomplete to select the constant. You can also use a custom expression function plug-in that returns the desired constant. | Yes | No |
| Increment By | Number (Integer) | The positive or negative value by which to increment the constant. | Yes | No |

**Note:**  Do not select the constant from the **Rules and Constants** tab in the Expression Editor.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...