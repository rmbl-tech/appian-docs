---
source_url: https://docs.appian.com/suite/help/25.3/testing-offline-actions-and-tasks.html
original_path: testing-offline-actions-and-tasks.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Testing Offline Forms

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

[Offline forms](how-offline-mobile-works.html#the-building-blocks-of-offline-forms) are offline-enabled interfaces set up as site actions or tasks. As you create and update these offline forms, you will need to test them on a mobile device to make sure that everything works without any errors.

This document outlines how to test offline forms.

### Prerequisites

In order to test offline forms, you need to:

-   Test it on a mobile device.
-   Use the Appian Mobile application.
-   Have an offline-enabled interface set up as a site action or task.

## Test the offline form on a mobile device

To test offline forms, you must use the Appian Mobile application on a mobile device. If you try testing in a browser, the interface will be treated as a regular interface and you won't receive any errors related to offline functionality.

**Note:**  Offline errors are visible only in Appian Mobile and will appear whether the device is online or offline.

To test offline forms on a mobile device:

1.  Make sure your changes are saved.
2.  On a mobile device, open the Appian Mobile app.

    **Note:**  You do not need to go offline to test the form. The form will behave the same way whether it is offline or not.

3.  Go to the mobile menu and [trigger an offline data sync](how-offline-mobile-works.html#triggering-an-offline-data-sync).
4.  Go to the site with the offline functionality.
5.  Access the offline form.
    -   For site actions, open the site page.
    -   For tasks, open the task from a task list.
        -   To access a [custom task report](how-offline-mobile-works.html#custom-task-report), open the site page.
        -   To access the [mobile site task list](how-offline-mobile-works.html#mobile-site-task-list), tap the menu icon and tap **Tasks**.
6.  Fill out all of the fields in the offline form, whether they are required or not. Go through every screen to the final submission.

    **Note:**  Test the entire form completely, including all fields, or users may run into issues at runtime that will cause them to lose their work.

    -   If an error like the following appears, [troubleshoot it](troubleshooting-offline.html#troubleshooting-errors-in-offline-interfaces). After troubleshooting the error, save the changes and trigger an offline data sync again.

        ![screenshot of a System Error dialog](images/offline_mobile_system_error_offline_mobile.png)

7.  Ensure that the form submits and that the process model completes successfully.

    **Tip:**  If you are offline, a completed form will go to [Pending Forms](how-offline-mobile-works.html#how-users-work-with-offline-forms) until you go back online. When you are online, a form should automatically submit from Pending Forms.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...