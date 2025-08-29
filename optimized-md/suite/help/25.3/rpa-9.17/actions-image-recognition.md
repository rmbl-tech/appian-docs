---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-image-recognition.html
original_path: rpa-9.17/actions-image-recognition.html
version: "25.3"
title: "Image Recognition Actions"
page_id: "rpa-9.17/actions-image-recognition"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Image Recognition Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Tutorial: Build a Low-Code Bot with Image Recognition](https://academy.appian.com/#/online-courses/20808e4e-8366-4e3a-a1aa-449271c02bdb)

Learn how to use the Image Recognition module in a robotic task

## Overview

Image Recognition actions enable your robotic task to locate images on the screen. With this functionality, a robotic task can extract text from an image, search for elements on the screen, or take full or partial screenshots.

If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

### Using the Image Recognition actions

Image Recognition actions enable the robotic task to locate an image on the screen. After the robotic task has located the image, it can click the image based on your configurations.

Image Recognition actions are listed in the **Image Recognition** area of the palette.

-   [Locate Image](#locate-image)

## Locate Image

This action locates an image on the screen with multiple search options, such as location and match tolerance, and may click it once found.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, you can configure the following parameters:

-   **Image(s) to search**: Browse for the file containing the image you want to locate on the screen. Images need to be `.png` file format. You can add more than one image, if you'd like. If you include more than one image, the robotic task searches for any of them. If one is located, the action is considered successful. You'll need to [add the image as a support file](configure-advanced-configuration-tab.html#support-files) before you can browse for it in this field. You can also use the [Create support image tool](#create-support-image-tool) via the agent on the host machine to send the support file directly to the robotic task.
-   **Search**:
    -   **Full screen**: When selected, the action looks for the image on the entire screen.
    -   **Screen region**: When selected, enter the points on the screen to search. Together, the four points form an area on the screen to look for the image. Enter values for **Top left X position**, **Top left Y position**, **Bottom right X position**, and **Bottom right Y position** to define the search area.
    -   **From Y position**: When selected, enter a Y-coordinate to use as a search reference point. The robotic task looks for the image below that point on the screen. Y-coordinate values start at 0 at the top of the screen and get larger as they move down. For example, set this value to `500` if you want to search for images on the bottom half of the screen.
-   **Wait time**: Select whether you want the robotic task to wait when searching for an image:
    -   **Don't Wait**: If the image isn't found immediately, the action completes without waiting.
    -   **Enter max wait time**: The robotic task repeatedly searches for the image until it is found or the wait time is met. If the wait time is reached while the robotic task is looking for the image, it won't time out until it completes the current search. When you select this option, the **Max wait time(seconds)** option appears. Enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero.
-   **Pixel tolerance**: Choose a value for an acceptable amount of pixelation in the image the robotic task finds vs. the image you are looking for. Pixelation degrades image quality by making an image appear grainy or less clear. Available options include:
    -   `Exact match`
    -   `Very low (1%)`
    -   `Low (2%)`
    -   `Medium (5%)`
    -   `High (10%)`
    -   `Very high (15%)`
    -   `Custom`: If you select `Custom`, specify the tolerance value using an integer between 1 and 100 or by writing an expression. If you are searching for a high quality image, but would allow the robotic task to find a lower quality version of it, enter a lower number. Be aware that higher tolerance values may [impact performance](#improve-performance).
-   **Color tolerance**: Choose a value for an acceptable amount of color change in the image the robotic task finds vs. the image you are looking for. Available options include:
    -   `Exact match`
    -   `Very low (1%)`
    -   `Low (2%)`
    -   `Medium (5%)`
    -   `High (10%)`
    -   `Very high (15%)`
    -   `Custom`: If you select `Custom`, specify the tolerance value using an integer between 1 and 100 or by writing an expression. For example, if you search for a color image but would allow the robotic task to find a black and white version of it, enter `100%` here. Be aware that higher tolerance values may [impact performance](#improve-performance).
-   **Mouse actions**: Select **Enable click actions** to configure how the robotic task should interact with the image once found.
    -   **Button**: Choose whether the mouse should use the **Left** or **Right** button to click.
    -   **Click type**: Choose **Single** or **Double**.
    -   **Click position**: Choose where to click on the image: **Top left**, **Top center**, **Top right**, **Center left**, **Center**, **Center right**, **Bottom left**, **Bottom center**, or **Bottom right**.
    -   **Offset**: Select this checkbox to offset the click from the position selected. Use these configurations to choose the direction and distance:
        -   **Number of pixels**: Choose the distance (in pixels) to offset the click, relative to the selected position.
        -   **Direction**: Choose the direction to offset the click.
-   **While locating image…**: Select **Throw exception if not found** to throw an exception if the robotic task doesn't locate any of the images in the time allowed.

### Output

The **Locate Image** action saves the returned information in a custom data type called `LocateImageResult`. This data type contains the following properties:

| Property | Type | Description |
| --- | --- | --- |
| `imageName` | String | The name of the images the action searched for and found. If no images were found, this property is `null`. |
| `found` | Boolean | Returns `true` if the action located at least one image that was provided in the configuration. |
| `pointsWhereFound` | Point | X and Y coordinates where the images were found on the screen. |
| `colorTolerance` | Decimal | Indicates the tolerated color variation from the original image. |
| `pixelTolerance` | Decimal | Indicates the tolerated pixel variation from the original image. |

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

To access this information at later points in the robotic task, create a robotic task variable that uses `LocateImageResult` as the type. You can then use dot notation with the variable to access the values. For example, if you create a variable called `result` using the `LocateImageResult` type, you can use `pv!result.found` in the expression editor of a subsequent action to return if the image was found or not.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

### Use Locate Image in an action

This section describes the steps to add the **Locate Image** action to your robotic task workflow. When the robotic task reaches this point in the workflow, it searches for the image you specify within the defined area. If it finds the image, the robotic task clicks the image. You can add more than one image for the robotic task to find. If the robotic task can't find the first image, it searches for the second using the same configuration settings.

To use the **Locate Image** action:

1.  In the Appian RPA console, got to the **Robotic Tasks** tab.
2.  Open a robotic task configuration.
3.  Go to the **Advanced Configuration** tab.
4.  Upload support files for the images you want to search for:
    -   Navigate to the [**Support files**](configure-advanced-configuration-tab.html#support-files) section.
    -   Hover over the top-most folder in the structure (usually Root) and click the **Upload** icon ![rpa-upload-icon.png](images/rpa-upload-icon.png). The **Choose file** window displays.
    -   Click **Choose file**.
    -   Browse to and select an image you want the robotic task to search for. Images need to be in `.png` format.
    -   Click **OK**. The selected file appears in the **Support files** tree.
5.  Go to the **Edit** tab.
6.  Click and hold the **LOCATE IMAGE** action in the **Palette**.
7.  Drag and drop it to the section or action group where you want to add the action.
8.  In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:
    -   In the **Image(s) to search** field, browse to and select the images you added as support files.
    -   In the **Search** field, choose to search the **Full screen**, a **Screen region**, or **From Y position**.
    -   In the **Wait time** field, specify whether the robotic task waits when looking for the image and, if so, how long in seconds the robotic task waits.
    -   If searching an area smaller than the full screen, configure additional options so the robotic task knows where to look. These options include **Pixel tolerance** and **Color tolerance**.
    -   Click **Enable click actions** if you want the robotic task to click on the image after it's found. Configure additional parameters as desired.
    -   Click **Throw exception if not found** to configure the robotic task to throw an exception if the image isn't found.
9.  In the **OUTPUTS** area, configure the parameters described in [Output parameters](#output-parameters). This action returns `LocateImageResult` data.
10.  In the **AFTER COMPLETION** area, configure the parameters described in [After completion parameters](#after-completion-parameters).
11.  Click **SAVE CHANGES** in the page toolbar.

### Output parameters

For each Image Recognition action, you can configure the following parameters in the **OUTPUTS** area of the action pane:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion parameters

For each Image Recognition action, you can also configure the following parameters in the **AFTER COMPLETION** area of the action pane:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Improve performance

The **LOCATE IMAGE** action searches for images based on configurations you set. Some of these configurations can impact the robotic task's overall performance and execution time. For example, the larger the search area, the longer it takes for the action to complete because the robotic task has to look for the image in multiple places. If you find that the Locate Image action is taking longer than you expect, consider the following tips:

-   **Search for one image at a time.** By limiting the amount of potential matches, the robotic task can limit the amount of time it spends searching.
-   **Search for the image in a smaller area.** If you're looking for an icon in a toolbar, use the **Screen Region** configuration to specify the exact area where that toolbar appears.
-   If searching the whole screen, **use a low tolerance for an image match**. This will ensure that the robotic task doesn't return too many potential matches.
-   **Test different tolerance values.** The higher the color or pixel tolerance for an image match, the longer the image takes to find, which ultimately means performance will be slower. Higher tolerance values can also lead to false positives, so it's important to test different options to determine the tolerance value you're willing to accept in terms of the impact on matches and execution times.

## Create support image tool

You can use the [Appian RPA agent](agents.html) to capture support images directly on your host machine. Once you take the screenshot, you can send it to a robotic task in the console or to the global support files.

To create a support image on your host machine:

1.  Right-click the agent icon and click **Create support image**.

    ![falcon-1.png](images/falcon-1.png)

2.  Click **Take new screenshot** or click and drag the mouse on an area of the screen to take a partial screenshot.
3.  In the side panel, under **Save image**, select the dropdown and choose to save your image in the global support files or to a robotic task.

    ![Falcon saveImage](images/Falcon_saveImage.png)

4.  Enter a name for the image.
5.  Click **Save image**. The image will be sent to the console and available as a robot support file or as a global support file.

    ![Falcon supportfiles](images/Falcon_supportfiles.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...