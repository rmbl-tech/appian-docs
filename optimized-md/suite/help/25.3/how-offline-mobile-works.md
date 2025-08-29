---
source_url: https://docs.appian.com/suite/help/25.3/how-offline-mobile-works.html
original_path: how-offline-mobile-works.html
version: "25.3"
title: "How Offline Mobile Works"
page_id: "how-offline-mobile-works"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How Offline Mobile Works

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

How Does Offline Mobile Work?

Learn when to design an Appian interface for offline use and what business users can do in offline mobile.

## Introduction

Offline mobile empowers users to collect and submit data using offline forms, even when they don't have an internet connection. These forms offer robust functionality such as cascading dropdowns, wizards, validations, and conditional content.

To make this capability possible, Appian uses an offline evaluator, which processes and reevaluates interfaces locally on the device, eliminating the need for a server connection.

This page covers:

-   [The building blocks of offline forms](#the-building-blocks-of-offline-forms).
-   [How offline mobile works with data](#how-offline-mobile-works-with-data).
-   [How users work with offline-enabled interfaces](#how-users-work-with-offline-forms).
-   [Diagram of the offline mobile process](#diagram-of-the-offline-mobile-process).

## The building blocks of offline forms

Users get their work done offline using **offline forms**, which are [offline-enabled interfaces](#offline-enabled-interfaces) set up as [site actions](#site-actions) or [tasks](#tasks). Tasks can be displayed offline using a [custom task report](#custom-task-report) or [mobile site task list](#mobile-site-task-list).

These are the only interfaces that the offline evaluator can evaluate.

### Offline-enabled interfaces

All offline functionality starts with an **offline-enabled interface**, which is an interface object that is [enabled](enable-offline-actions-and-tasks.html#step-2-enable-the-interface-object-for-offline-use) for offline use. When you design offline-enabled interfaces, you must follow the [Offline Mobile Design Best Practices](offline-mobile-design-best-practices.html) to make sure your interfaces can be evaluated by the offline evaluator.

You will use these interfaces in site actions, tasks, and custom task reports. You can also display them as read-only interfaces on a site by adding them as an **Interface** type site page.

### Site actions

An offline **site action** is an offline-enabled interface configured as an **Action**\-type page in a [site](sites_object.html#pages). Action pages display a [start form](process-model-object.html#process-start-form-tab) for a process model that allows users to initiate a process after filling out a form.

In Appian Mobile, users can navigate to the site page and fill out the form whether they are offline or not.

After they complete the form and go online, the form is submitted and starts the associated process.

### Tasks

An offline **task** is an offline-enabled interface configured as a [user input task](Configuring_the_User_Input_Task.html) in a process model.

In Appian Mobile, users can open and fill out tasks that are assigned to them whether they are offline or not. If the task is assigned to a group, they must accept the task before going offline.

After they complete the task and go online, the task is submitted and the associated process continues.

### Task lists

Users can access tasks from task lists. There are two types of task lists: [custom task reports](#custom-task-report) and [mobile site task lists](#mobile-site-task-list).

**Tip:**  These are both different from a [Tempo task report](Tempo_Report_Design.html#tempo-task-report), which is a report object that only displays in the Tasks tab of Tempo.

#### Custom task report

An offline **custom task report** is an offline-enabled interface that uses [process task links](Process_Task_Link_Component.html) to display task information on a [site page](sites_object.html#pages). Many times these interfaces use [a!queryProcessAnalytics()](fnc_system_a_queryprocessanalytics.html) to query a [process report object](Process_Reports.html) of type **Task**.

In Appian Mobile, users can access offline tasks in the custom task report whether they are offline or not.

For help creating a custom task report that follows the offline mobile best practices, see the [Offline Mobile Task Report](recipe-offline-task-report.html) recipe.

**Tip:**  Social tasks are not supported in offline custom task reports.

![offline_mobile_task_report](images/offline_mobile_task_report.png)

#### Mobile site task list

The **mobile site task list** is a configuration in a [site object](sites_object.html#configurations) that allows you to enable a task list for the site in Appian Mobile.

When enabled, after a user selects the site, the Appian Mobile menu displays the **Tasks** list. This list displays all tasks assigned to the user.

In Appian Mobile, users can access offline tasks from this list whether they are offline or not.

![task list](images/offline_mobile_task_list.png)

## How offline mobile works with data

Generally, when the user accesses an interface, it just pulls the data needed from the server in order to display. However, when a user is offline, interfaces can't communicate with the server to get this information.

In order to create a consistent user experience, offline-enabled interfaces work the same on Appian Mobile whether the user is offline or online. When you enable an interface for offline use, you are changing the way that the interface communicates with the server. Instead of being able to talk to the server whenever it wants, it only talks to the server when an interface is first loaded and caches the data on the device. After that, it assumes the server isn't there, even if the user is online.

**Tip:**  Offline forms safeguard user-entered data and minimize risk of data loss by automatically recovering data. If an offline form closes unexpectedly, any data the user entered will auto-populate when the user reopens the form.

When an offline form is submitted, it always goes to the Pending Forms list in the Appian Mobile menu . If the device is online when the form is submitted, it is sent from Pending Forms to the server right away. If the device is offline, it remains in Pending Forms until the device goes back online. Once online, the form submits automatically.

## Syncing data for offline use

While online, users can sync their offline forms to make sure they are using the most up-to-date interfaces, processes, and data. Users will need to remain online long enough for the data to sync successfully. The amount of time required will depend on the strength of the device connectivity and the amount of data being synced.

### Triggering an offline data sync

The best way to sync data is by triggering an offline data sync from the mobile menu. This will sync all offline interfaces, processes, and data.

To trigger an offline data sync:

1.  In Appian Mobile, open the mobile menu.
2.  Tap **Data Sync**.
3.  Tap **START SYNC**.
4.  Remain online until the sync completes.

**Tip:**  You can continue using the Appian Mobile app while the sync is in progress. After the sync completes, the **Last Sync** field will update with the date and time of the last successful sync.

![screenshots that show the data sync flow](images/data-sync.png)

### Other methods to sync data

Before going offline, we recommend that users [trigger an offline data sync](#triggering-an-offline-data-sync) to ensure everything syncs successfully and they can work disconnected with confidence.

However, data is also synced in the following ways:

-   **Receiving a push notification for a new task**. Receiving a push for a new task while online triggers a sync for all offline tasks.
-   **Syncing automatically in the background**. Every 2 hours, a background fetch will attempt to sync the data for all offline forms. This fetch is dependent on the operating system's prioritization of background processes and is not guaranteed. Additionally, to be successful, when the fetch occurs:
    -   The user must be online.
    -   Appian Mobile must be running in the background, not force closed.
-   **Signing in to Appian Mobile**. Any time a user signs in to their account, the data for all offline forms will sync.
-   **Loading the mobile site task list or the Tasks or Actions Tempo pages**. When the user navigates to one of the following locations in Appian Mobile while they are online, the data for offline tasks or actions will sync.
    -   Opening the [mobile site task list](#mobile-site-task-list) will sync all offline tasks.
    -   Opening the **Tasks** page in Tempo will sync all offline tasks.
    -   Opening the **Actions** page in Tempo will sync all offline actions.
-   **Pulling to refresh**. Offline data on an action or mobile site task list will sync any time the user is online and pulls to refresh the page. If you are using a custom task list, we highly recommend triggering an offline data sync instead of relying on the pull to refresh behavior to ensure everything syncs successfully.

## How users work with offline forms

To ensure users are getting the most up-to-date data, they should be coached about how to use offline forms.

The most important steps that users should be aware of are:

1.  Make sure the Appian Mobile application is up to date.

    **Note:**  For offline mobile capabilities to work, the Appian Mobile application on the user's device must be the same version or newer than the Appian environment.

2.  When online, [trigger an offline data sync](#triggering-an-offline-data-sync) to download the latest interfaces, processes, and data to the device. Remain online until the sync completes.
3.  Complete and submit offline forms as normal, whether offline or online.
    -   If the user is offline when they submit the form, it will queue the form for submission. The user can access the form in the navigation menu under Pending Forms. After they go back online, the form is submitted automatically.

        ![screenshot of pending mobile forms](images/offline_mobile_pending_form.png)

    -   If they are online when they submit the form, the form submits right away.

        **Tip:**  Sometimes when a pending form fails to submit, a retry icon displays on the Pending Forms list. The user can tap the icon to retry the form submission.

        ![screenshot of a completed offline action form](images/offline_mobile_action_completed.png)

## Diagram of the offline mobile process

The following diagram shows how offline forms are evaluated.

[![diagram of the dynamic offline data flow as offline mobile interfaces are evaluated](images/dynamic_offline_flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img327)

[![](images/dynamic_offline_flow.png)](#_)

| Step | Description |
| --- | --- |
| Initial evaluation on the server | During an offline [data sync](#syncing-data-for-offline-use), the [data queries](offline-mobile-design-best-practices.html#working-with-data) and [partially compatible functions](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions) that are loaded in local variables at the top of the parent interface are downloaded and cached onto the mobile device. |
| User input | Whether the user is offline or online, they enter information into the form using the mobile device. |
| Offline reevaluation | The data on the interface reevaluates based on the user input. The user does not need to be online for this reevaluation to occur. Only **Compatible** and **Partially Compatible** functions in the [Appian functions table](Appian_Functions.html) are supported in offline mobile. If you need to use **Partially Compatible** functions, you will need to load them in a [local variable at the top of the interface](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions). |
| User input stored | The user input is stored on the device. If the user is offline, the form goes into a pending state. |
| Form submitted | When the user has an online connection, the form is submitted. The server replays all user interactions to ensure consistency, then moves to the next node in the process model, such as the [write records](Write_Records_Smart_Service.html) smart service. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...