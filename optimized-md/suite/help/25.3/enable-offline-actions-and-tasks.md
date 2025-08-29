---
source_url: https://docs.appian.com/suite/help/25.3/enable-offline-actions-and-tasks.html
original_path: enable-offline-actions-and-tasks.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Enabling Offline Forms

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

[Offline forms](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) are offline-enabled interfaces set up as site actions or tasks. Before you can use offline forms, you first need to set them up.

Offline site actions display as a site page. Offline tasks can either display in the mobile site task list for a site, or in a custom task report on a site page.

There are four main steps to enabling offline forms:

1.  [Enable offline mobile in the Admin Console.](#step-1-enable-offline-mobile-in-the-admin-console)
2.  [Enable offline mobile in the interface object.](#step-2-enable-the-interface-object-for-offline-use)
3.  [Configure the process model.](#step-3-configure-the-process-model)
4.  [Configure the site object.](#step-4-configure-the-site-object)

This document provides instructions for how to enable offline forms.

## Step 1: Enable offline mobile in the Admin Console

Before you can configure offline forms, you first need to enable offline mobile for the environment. This is a setting in the Admin Console.

To enable offline mobile in the Admin Console:

1.  In the Admin Console, under **SYSTEM** properties, go to **Mobile**.
2.  Select **Enable Offline Mobile** and click **SAVE CHANGES**.

[![screenshot of the mobile tab in the Admin Console](images/admin_console_offline_mobile.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img324)

[![](images/admin_console_offline_mobile.png)](#_)

## Step 2: Enable the interface object for offline use

In order for an interface to work offline, you need to enable the interface object for offline use.

To enable an interface object for offline use:

1.  Open the interface.
2.  Click the settings icon \> **Properties**.
3.  Select **Make Available Offline** and click **OK**.

![screenshot of the interface properties dialog with the "Make Available Offline" checkbox selected](images/offline_mobile_interface_properties.png)

An offline icon displays in the header for offline-enabled interface objects.

![screenshot of interface designer showing the offline enabled icon](images/offline_interface_icon.png)

## Step 3: Configure the process model

For offline [site actions](how-offline-mobile-works.html#site-actions), you will need to use the offline-enabled interface as a start form in a process model.

To create an offline site action:

1.  Create a process model with a start form.
2.  Use an offline-enabled interface for the start form.
3.  Save and publish the process model.

[![screenshot showing selecting an offline form as a start form in a process model](images/offline_mobile_process_model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img325)

[![](images/offline_mobile_process_model.png)](#_)

For offline [tasks](how-offline-mobile-works.html#tasks) you just need to make sure the **User Input Task** node uses an offline-enabled interface.

To create an offline task:

1.  Create a process model with a **User Input Task**.
2.  Use an offline-enabled interface for the form.
3.  Save and publish the process model.

For more information about configuring process models, see the [Process Modeling Tutorial](Process_Modeling_Tutorial.html).

## Step 4: Configure the site object

The final step to enabling offline forms is to configure the [site object](sites_object.html) to display the offline forms. This is different depending on if you are working with site actions or tasks.

-   **Site actions**: Add the [process model](#step-3-configure-the-process-model) you created as an **Action** type page in your site.
-   **Tasks**: There are two options for displaying tasks:
    -   Display a [custom task report](how-offline-mobile-works.html#custom-task-report) by adding an offline-enabled interface with a task list as an **Interface** type page.
    -   Enable the [mobile site task list](how-offline-mobile-works.html#mobile-site-task-list) so that users can access the offline tasks from their site in the Appian Mobile app.

To configure the site object:

1.  Open the site object.
2.  To add a site action, [add an **Action** type page](sites_object.html#add-a-page):
    1.  For **Type**, select **Action**.
    2.  For **Content**, select the [process model](#step-3-configure-the-process-model) that uses the offline-enabled interface as a start form.
3.  To add a read-only page, like a custom task report, [add an **Interface** type page](sites_object.html#add-a-page):

    1.  For **Type**, select **Interface**.
    2.  For **Content**, select the offline-enabled interface.

    **Note:**  Do not put the offline-enabled interface into a page group, or it will be treated like a regular interface and it will not work offline.

4.  To enable the mobile site task list, under **Show Task List on Mobile**, select **Always** or **Only for selected groups**.
5.  [Test the offline form in Appian Mobile](testing-offline-actions-and-tasks.html).

    [![screenshot showing selecting an offline form as a site page](images/offline_mobile_site_object.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img326)

    [![](images/offline_mobile_site_object.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...