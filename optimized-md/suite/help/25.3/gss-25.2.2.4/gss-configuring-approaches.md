---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-configuring-approaches.html
original_path: gss-25.2.2.4/gss-configuring-approaches.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Approaches

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Managing evaluations for IT services that exceed a specific monetary threshold would require a different set of tasks than evaluations that fall below a specific monetary threshold or evaluations for services. This is where approaches come into play. An approach refers to the method or strategy the government uses to evaluate vendor proposals against the criteria or factors outlined in the solicitation document. It guides the evaluation team in assessing proposals to ensure a fair, consistent, and transparent selection process that complies with the Federal Acquisition Regulation (FAR).

Access the [Source Selection Settings](gss-accessing-settings-site.html) site to view, add, and edit the approaches that assign default tasks for a type of evaluation.

This page describes how to use the [Source Selection Settings](gss-accessing-settings-site.html) site to configure approaches.

## View approaches

After you [access the Source Selection Settings site](gss-accessing-settings-site.html), you can view the Approach page in one of two ways:

-   From the **Welcome to Source Selection Settings** page, click **APPROACHES**.
-   From the left navigation menu, click **Approaches**.
    1.  Enter approach keywords in the search bar and click **SEARCH** to filter the approaches list per the entered keywords.
    2.  Click corresponding to an approach to navigate and view its modification history.

![Navigate the settings page and view approaches.](images/view_approaches_1.png)

## Add approaches

To add approaches:

1.  Make sure any tasks you want to add to an approach are on the [Tasks](gss-configuring-tasks.html) page.
2.  Click **Approaches** on the side navigation bar to navigate to the **Approaches** page.
3.  Click **+ADD APPROACH** to navigate to the **Add Approach** page.

    ![Navigate to the Add Approach page.](images/add_approaches.png)

4.  Enter an **Approach Name**.
5.  Enter an approach **Description**.
6.  Click **+ADD TASK** within a phase to navigate to the **Select Setup Tasks** page.

    ![Navigate to the Select Setup Tasks page.](images/add_approaches_2.png)

7.  Select the task(s) using the checkbox(es) to add them to the approach.
8.  Click **ADD TASKS** to navigate and configure the selected tasks.

    ![Select tasks and navigate to configure them.](images/add_approaches_3.png)

9.  Update the added tasks’ **Description**, **Precedents**, **Assigned Group**, **Days from Start**, **Duration**, and **Duration Unit**.

    -   A precedent is a task that must be completed before another task is assigned.
    -   Modify the default **Assigned Group** for the task.
    -   For **Days from Start**, enter the number of days from the start of the approach that a task is expected to start. This field specifies the number of days after the approach is selected when the task must start. It is used along with the duration to calculate the task's due date.
    -   For **Duration**, enter a number to indicate how long the task takes to complete once it is started.
    -   For **Duration Unit**, select whether the duration is for hours, days, or weeks.
    -   Click to remove tasks.

    ![Configure tasks.](images/add_approaches_4.png)

10.  Click **ADD APPROACH** to add the approach.

     ![Add approach.](images/add_approaches_5.png)

## Edit approaches

To update an approach:

1.  Make sure any tasks you want to add to an approach are on the [Tasks](gss-configuring-tasks.html) page.
2.  Click **Approaches** on the side navigation bar to navigate to the **Approaches** page.
3.  Select an approach to navigate to the **Edit Approach** page.

    ![Navigate to edit an approach.](images/edit_approaches.png)

4.  Update the [approach and task fields](#add-approaches).
5.  Click **SAVE CHANGES** to update the approach.

All future evaluations will use the modified approach. Evaluations that are already in approach or completed will not be affected.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...