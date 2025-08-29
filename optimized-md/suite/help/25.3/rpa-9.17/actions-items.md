---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-items.html
original_path: rpa-9.17/actions-items.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Items Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The **Items** actions allow you to easily handle items in your robotic task. An item is a unit of data to be processed. Depending on the nature of your robotic task, an item could be a person, an ID, a bank account, an invoice, etc. The type of processing varies as well, but is consistently applied to each item. For example, an item may be an invoice which is processed by extracting the total amount, performing a calculation, and sending the resulting value to Appian.

It's common for a robotic task to iterate over many items; so, the robotic task must know how many items need to be processed, and which item is currently being processed from that list. Once the robotic task finishes processing an item, it will indicate whether the item was successfully processed or if it encountered errors or exceptions. This information is communicated through the server to the **Results** tab of the [**Execution details**](troubleshoot.html#execution-details) page in the Appian RPA console.

The robotic task communicates this information using **Items** actions. This page describes **Items** actions, which provides an easier and more robust development experience.

If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

To use the **Items** actions, open the **Robotic Tasks** tab of the Appian RPA Console. Create a new robotic task or open the configuration of an existing robotic task and navigate to the **Edit** tab.

### Using the Items actions

Items actions are listed in the **Items** area of the palette.

-   [Set item result](#set-item-result)
-   [Set next item](#set-next-item)
-   [Set number of items](#set-number-of-items)

## Set item result

The **Set item result** action tells the server the resulting status of the current item. At the end of the robotic task, each item will have a result status that can be found on the **Results** tab of the **Execution details** page.

The **Set item result** action also allows you to extract properties about the item, such as item's description or identifier. Item properties provide more context about the item and allow you to filter item results by sub-types. Item properties are represented by key/value pairs, which can be defined using an expression in the action. For example, your robotic task is processing multiple invoices and one of your invoices is entered incorrectly. The result status could be set to **WARN** and the item's identifier could be captured as an item property so you know exactly which invoice encountered the error.

### Configuration

This action contains the following configurations:

-   **Item Result**: Items can have one of two resulting statuses:
    -   **OK**: The robotic task successfully processed the item without any errors.
    -   **WARN**: An exception or error occurred while processing the item. Each resulting status can be accompanied by a message that describes the result.
-   **Result Detail**: Enter a message you want to add to the item result.
-   **Subresult**: Choose the color you want to use to [categorize the item results](configure-advanced-configuration-tab.html#sub-results-description).

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Set next item

The **Set next item** action tells the server which item is being processed. Each item requires an item key, which is a unique value representing the item. For example, if you are processing an invoice, the item key would be the invoice number.

When setting this value in the Java code, you need to identify the item key and the item index; however, one of the benefits of this action is that the platform will calculate the item index automatically, so you only need to provide the item key.

### Configuration

This action contains the following configurations:

-   **Item Key**: Enter the item key, select a robotic task variable from a picker, or write an expression to obtain the item key.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Set number of items

The **Set number of items** action tells the server the total number of items that need to be processed. This value must be set in the beginning of your workflow so the robotic task knows exactly when it should stop iterating over the items and move to the next part of the workflow.

### Configuration

This action contains the following configurations:

-   **Number of Items**: Enter a number, select a robotic task variable from a picker, or write an expression to determine the total number of items.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Example workflow

The methods in this module work together to communicate processing status to the Appian RPA server. To help show how they work together, consider this example workflow.

**Note:**  We've made it even easier to loop through actions. See [Loops](robotic-task-definition.html#loops) for more information.

![rpa-items-workflow.png](images/rpa-items-workflow.png)

In this example, the robotic task opens a browser and navigates to a website where a list of articles appear. The robotic task gets the title of each article and appends it to a variable. These steps repeat until the chosen number of article titles are captured.

To begin, the number of total items to process is set in the **Set Number of Items** action. It uses the action of the same name. Rather than typing a number in the **Number of Items** field, it uses an expression to use the robotic task variable (`numberOfArticles`). You may find it easier to maintain the robotic task by using a variable to set the number of items.

Next, in the **Set Item** action, the **Set next item** method uses an expression to set the item key. As each item is processed, this number will iterate until it reaches the total number of items to process.

The **Get Title** action uses the [**Get attribute** action](actions-browser.html#get-attribute) to capture the title on the webpage and add it to the `titles` variable. The **Set Result** action uses the **Set item result** action to register the item's processing result, either as **"OK"** or **"WARN"**.

Finally, the **More articles?** action is a For each loop that evaluates if `fv!index` is greater than `numberOfArticles`. If not, the robotic task loops back over the earlier actions to process the remaining items. Once `fv!index` is greater than `numberOfArticles`, the robotic task ends.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...