---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-file-management.html
original_path: rpa-9.17/actions-file-management.html
version: "25.3"
title: "File System Actions"
page_id: "rpa-9.17/actions-file-management"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# File System Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

File system management is an ideal task for robotic tasks, and often necessary to help organize the content they produce. If you use robotic tasks to collect, extract, organize, or distribute files, you can use low-code actions to make these tasks more efficient.

This page describes the File System actions.

### Using the File System actions

File System actions allow you to manage files and folders. Use these actions to tell your robotic task to copy, move, delete, rename, or get information about files and folders.

To help ensure files and folders aren't unintentionally changed, many of the actions are designed to check information before proceeding. When errors do occur, the details are sent to the execution log to help you troubleshoot.

File System actions are listed in the **File System** area of the palette.

-   [Copy a file or folder](#copy-a-file-or-folder)
-   [Create a folder](#create-a-folder)
-   [Delete a file or folder](#delete-a-file-or-folder)
-   [Get properties of file or foler](#get-properties-of-a-file-or-folder)
-   [List the contents of a folder](#list-the-contents-of-a-folder)
-   [Move a file or folder](#move-a-file-or-folder)
-   [Rename a file or folder](#rename-a-file-or-folder)

## FileOrFolderProperties

Most File System actions return a custom data type called `FileOrFolderProperties`. It contains the following information:

| Property | Type | Description |
| --- | --- | --- |
| `name` | text | Name of the file or folder |
| `path` | text | Path of the file or folder |
| `size` | integer | Size (in KB) of the file or folder |
| `creationDate` | date | Date the file or folder was created |
| `lastUpdatedDate` | date | Date the file or folder was last updated |
| `extension` | text | File type |
| `type` | text | File or folder |

## Copy a file or folder

This action duplicates the source file or folder you specify, and places the copy in the destination.

This action is designed to ensure existing files or folders aren't changed unintentionally. For example, it won't overwrite existing folders or the files within them by copying a folder to a destination with the same name. You may also see exceptions or messages in the execution log if the specified source file or folder doesn't exist or the destination directory path isn't a directory.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Source**: Specify the path of the file or folder you want to copy. You can enter a text string, choose a variable, or use the expression editor.
-   **Destination directory**: Specify the path of the destination for the duplicate file or folder. If the directory doesn't exist, it will be created as part of this action. You can enter a text string, choose a variable, or use the expression editor.
-   **Overwrite in case the file exists**: Choose this option if you want the robotic task to overwrite any files that match the one you're copying. If a file with the same file name exists in the destination folder, it will be replaced with the one being copied when this option is enabled. This option is not available for folders.

### Output

This action returns the `FileorFolderProperties` custom data type containing the new file or folder details.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Create a folder

This action creates a folder based on the path you specify. If the path contains multiple folders that don't yet exist, this action creates those folders as well.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameter:

-   **Path to create**: Enter the path for the folder to create. If the folder already exists or this path refers to a file, the action will fail and send an error message to the execution log.

### Output

This action returns the `FileorFolderProperties` custom data type containing the new folder details.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Delete a file or folder

This action deletes a file or folder you specify.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Path to delete**: Enter the path for the file or folder to delete. If you choose a folder, its contents are deleted as well.
-   **Throw an exception if the file or folder doesn't exist**: Choose this option if you want the robotic task to throw an exception if it can't locate the file or folder you wish to delete.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Get properties of a file or folder

This action retrieves data about the file or folder you specify.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameter:

-   **Path**: Lets you specify the path of the folder whose information you want to get. This field lets you enter a text string, choose a variable, or use the expression editor. This action returns details about the file or folder in the form of a custom data type called `FileOrFolderProperties`. If the folder path doesn't exist, this action will throw an exception and send a message to the execution log.

### Output

This action returns the `FileorFolderProperties` custom data type containing details about the specified file or folder.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## List the contents of a folder

This action returns a list of files and folders within a directory you specify. Use the filters to improve performance and return data you're interested in.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Path to folder**: Lets you specify the path of the folder whose information you want to get. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Type**: Filter the list of results to **Only files**, **Only folders**, or **Both**.
-   **Name Filter**: Filter the list of results based on matching file names. You can use wildcards such as `*` and `?` to search for the query at the end of the file name (such as file extensions). For example, to search for files ending with `.pdf` extensions, enter `*.pdf` in this field.
-   **Min Size** and **Max Size**: Filter the list of results by specifying a range for file size (in KB). The values in the **Size from** field must be smaller than the value in **Size to**. These fields let you enter a text string, choose a variable, or use the expression editor.
-   **Created from** and **Created to**: Filter the list of results by specifying a range for when the file or folder was created. You can enter dates in these fields using date pickers. The date in the **Creation date from** field must be earlier than the date in the **Creation date to** field. These fields let you enter a text string, choose a variable, or use the expression editor.
-   **Last updated from** and **Last updated to**: Filter the list of results by specifying a range for when the file or folder was last updated. The date in the **Last update date from** field must be earlier than the date in the **Last update date to** field. These fields let you enter a text string, choose a variable, or use the expression editor.

**Note:**  If the folder path doesn't exist, the filter ranges aren't configured properly, or the results are more than 1,000 entries, this action will throw an exception and send a message to the execution log.

### Output

This action returns a list of `FileOrFolderProperties` details for the specified directory.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Move a file or folder

This action moves a file or folder to a new destination.

This action is designed to ensure existing files or folders aren't changed unintentionally. For example, it won't overwrite existing folders or the files within them by moving a folder to a destination with the same name. You may also see exceptions or messages in the execution log if the specified source file or folder doesn't exist or the destination directory path isn't a directory.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Source**: Lets you specify the path of the file or folder you want to move. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Destination folder**: Lets you specify the path of the destination to move the file or folder. If the directory doesn't exist, it will be created as part of this action. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Overwrite in case the file exists**: Choose this option if you want the robotic task to overwrite any files that match the one you're copying. If a file with the same file name exists in the destination folder, it will be replaced with the one being copied. This option is not available for folders.

### Output

This action returns the `FileorFolderProperties` custom data type containing details about the moved file or folder.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Rename a file or folder

This action changes the name of a file or folder.

Before renaming the chosen file or folder, Appian RPA will check to make sure that no file or folder exists in that directory with the same name. This check prevents accidental overwrites.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Path to file or folder**: Lets you specify the path of the file or folder you want to rename. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **New filename**: Lets you specify the new name for the file or folder. This field lets you enter a text string, choose a variable, or use the expression editor.

### Output

This action returns the `FileorFolderProperties` custom data type containing the renamed folder details.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...