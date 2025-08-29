---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-appian-services.html
original_path: rpa-9.17/actions-appian-services.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Services Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian Services actions extend robotic task automation capabilities within your Appian applications. Using these actions, your robotic task can automatically send data to or request data from Appian numerous times throughout the robotic task execution. These actions occur without initiating an Appian process model, making communication faster and simpler.

Additionally, these actions are built for ease of use between environments:

-   It automatically references the environment's base URL so there's no need to hard-code it in the robotic task or update it when deploying to Production.
-   Authentication is simpler and more secure by eliminating the need to use environmental variables and credentials. Appian actions are executed in the context of the user who starts the robotic task. In most cases, the robotic task initiator is actually the service account that already authenticates Appian and Appian RPA. The Appian Services actions rely on this authentication mechanism when executing robotic tasks, eliminating the need for additional credentials to be defined in the Appian RPA Console or referenced in the robotic task code.

Appian Services allow you to easily configure actions in a user interface and call robotic task variables to use as values or store returning action results.

This page describes how to use actions. If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

### Using Appian Services actions

Appian Services actions are listed in the **Appian Services** area of the palette.

-   [Download document](#download-document)
-   [Evaluate expression](#evaluate-expression)
-   [Start process](#start-process)
-   [Upload document](#upload-document)

## Download document

The **Download Document** action lets you download a file from Appian to the host machine where the robotic task executes. This action is useful if your robotic task needs to upload files to other destinations or process the information on the desktop.

**Tip:**  Uploading an Appian document to a web form? You can use the [Interact with Element action](actions-browser.html#interact-with-element) to upload documents directly from Appian and skip the download step.

### Configuration

This action contains the following configurations:

-   **Appian Document**: Choose the robotic task variable that maps to the document you want to download. You can also configure the value using the expression editor, using the [todocument()](../fnc_conversion_todocument.html) function or using a constant.
-   **File Name**: Lets you specify the name you want to use for the downloaded file. This field lets you enter a text string, choose a variable, or use the expression editor. If you leave this field empty, the file will use the filename used in Appian.
-   **Folder Path**: Lets you specify the path where to download the file. This field lets you enter a text string, choose a variable, or use the expression editor.

### Output

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

### Usage considerations

-   When downloading documents, ensure their size does not exceed 200 MB.
-   For optimal performance, it's essential to allocate a minimum of 1.75GB memory for the agent. To achieve this, [create a configuration file](agents.html#generate-config-file) that specifies this memory allocation. Please consult your system administrator for guidance on generating the appropriate config file.

## Evaluate expression

The **Evaluate expression** action allows you to write and evaluate regular expressions and [Appian expressions](../Expressions.html) directly in your robotic task. This action provides an expression pane where you can call Appian expression rules (`rule!`) and constants (`cons!`), reference robotic task variables (`pv!`), and use Appian functions to format and aggregate your data.

This action is particularly helpful with conditional actions. With this action, you can create an `if` statement that can determine which output the robotic task should follow. In a generic action, this action allows you to determine a variable's value using logic, allowing your data to be dynamic.

### Configuration

Click **Edit** to enter an expression. Enter a regular expression or Appian expression. As you type, the editor suggests functions and objects to reference in your expression.

### Output

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Start process

The **Start Process** action lets you kick off a process in Appian as part of a robotic task. You can map variables from a process model in Appian to the robotic task variables you've defined in the configuration. The action passes data from Appian RPA variables to Appian using this map and initiates a process using the data as input.

### Configuration

Click **Edit** to choose the process model to start:

-   Search for the process model to reference in the **Process Model** field. As you type, Appian suggests available process models to choose from. If you don't have access to the selected process model, you'll see a message saying it's not visible and you won't be able to load the process parameters.
-   Select a process model and the process parameters appear.

### Output

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Upload document

The **Upload Document** action lets you upload a file to Appian from the host machine where the robotic task executes. If you want to use Appian RPA to extract and reconcile documents from a legacy system, this action helps you do it. You can use this action to save those documents to Appian, where you can use our [document extraction suite](../Appian_Doc_Extraction.html) to digitize and act on that information.

**Tip:**  When the **Enable Real-Time Virus Scanning (Cloud Only)** option is selected in the [Appian Administration Console](../Appian_Administration_Console.html#file-upload), all files under 25MB are scanned immediately upon upload. Nightly scans continue even if real-time scanning is disabled. Files found to contain viruses are logged in the blocked files audit log.

### Configuration

This action contains the following configurations:

-   **Upload Type**: Choose whether you want the robotic task to **Take a screenshot** or **Upload a file**.
-   **File Path**: Lets you specify the full path of the file to upload. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Document Name**: Lets you specify the name of the document object to create in Appian. This field lets you enter a text string, choose a variable, or use the expression editor. If you leave this field blank, the original file name will be used as the document name.
-   **Target Folder**: Lets you specify the location in Appian to save the document. Enter a folder ID or use the expression editor to configure the target folder using a constant. You need to have at least _Viewer_ access on the folder object to configure it as the target folder in this action. During execution, the robotic task will only be able to upload a document to folders where it has _Author_ access.

### Output

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...