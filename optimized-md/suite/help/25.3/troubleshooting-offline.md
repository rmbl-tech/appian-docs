---
source_url: https://docs.appian.com/suite/help/25.3/troubleshooting-offline.html
original_path: troubleshooting-offline.html
version: "25.3"
title: "Troubleshooting Offline Mobile"
page_id: "troubleshooting-offline"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshooting Offline Mobile

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

This page provides troubleshooting steps for resolving errors with offline interfaces and data sync.

If your users are experiencing pending forms that are failing to submit, see [Offline Mobile Design Best Practices](offline-mobile-design-best-practices.html#avoiding-pending-offline-forms-submission-failures) for design guidelines that will help prevent this.

## Troubleshooting errors in offline interfaces

If the offline interface returns an error like the following when you are [testing](testing-offline-actions-and-tasks.html) it, troubleshoot it using the following guidance.

![screenshot of a System Error dialog](images/offline_mobile_system_error_offline_mobile.png)

### Make sure you are following the design best practices

When an error occurs, the message will include the interface name and the line number where the issue arose. Start by reviewing the interface expression to ensure you're adhering to the [Offline Mobile Design Best Practices](offline-mobile-design-best-practices.html).

Check the line number in the interface expression to see if:

-   **Incompatible components or functions are being used**: Make sure that none of the components or functions being used are [incompatible with offline mobile](offline-mobile-design-best-practices.html#dont-use-incompatible-functions-and-components).
-   **Design best practices are being broken**: Review the expression for any violations of the design best practices, such as not loading data and partially compatible functions in local variables at the top of the interface expression.

### Test the interface in a browser

If no issues are immediately apparent in the interface expression, try performing the same steps in a browser.

When accessed via a browser, the interface doesn't use the offline mobile evaluator. So if the error persists in the browser, it is likely a general expression syntax error, unrelated to offline behavior. Review the line number in the error message for potential issues.

## Troubleshooting offline data sync issues

If you experience offline [data sync](how-offline-mobile-works.html#syncing-data-for-offline-use) issues, use this section to help troubleshoot them.

### Identifying offline data sync issues

Some signs of offline data sync issues are:

-   You get an error message like the following after triggering an offline data sync.

    ![offline data sync error message](images/offline_data_sync_error.png)

-   You sync data using one of the other methods and it doesn't seem to work or isn't working completely.

**Tip:**  If you encounter a data sync error message, there is a chance that a partial sync occurred, meaning some of the forms may have synced.

Common causes of offline data sync failures may include:

-   Connectivity problems
-   Server response timeout
-   Server not reachable
-   Expression evaluation error in an offline interface
-   Session timeout (if this is the cause, the user should get a sign in prompt)

### Troubleshooting steps

Here are some general steps you can follow to help determine the cause of the issue.

-   **Check your internet connection**: Verify that your device is connected to a stable internet connection. If a VPN is required to access the environment, make sure it is connected.
-   **Test in a browser**: Test the offline interface in a browser to determine if the issue may be a result of [offline function or component incompatibility](offline-mobile-design-best-practices.html#determining-function-and-component-compatibility).
-   **Test in the mobile app**: Check to make sure none of your offline interfaces have an expression evaluation error on the mobile app. If the interface can't display in the mobile app, it will not be able to be downloaded during the offline data sync, causing an error.
-   **Check for large document downloads**: If your offline interfaces [use documents](offline-mobile-design-best-practices.html#working-with-documents), make sure there are no large documents that are attempting to download.

    **Tip:**  Keep in mind that the documents being downloaded could be different depending on the user. So if one user seems to be having problems when other users aren't, this could be because that user's offline interfaces are trying to download larger documents.

-   **Check the mobile logs**: [Access the mobile app log files](#accessing-the-mobile-app-log-files) and look at logs around the time of the error for anything that could be correlated.
-   **Check the application server logs**: Check the [application server logs](Logging.html#application-server) around the time of the error for errors that could be related, such as server response timeouts.

### Accessing the mobile app log files

If you encounter data sync issues, the logs may help you identify what may have caused the error. While you may not find the exact error that caused the issue, you can look at the logs around the time of the error for anything that could indicate the cause of the error.

To access the logs on iOS:

1.  In Appian Mobile, open the mobile menu.
2.  Tap **Settings**.
3.  Under **DIAGNOSTICS**, tap **Logs**.
4.  Tap **View Logs**.
5.  You can save the logs as a text file by tapping the share icon ![ios_share_icon](images/ios_share_icon.png).

To access the logs on Android:

1.  In Appian Mobile, open the mobile menu.
2.  Tap **Settings**.
3.  Under **Diagnostics**, tap **Send diagnostics**.
4.  Share the file using the provided options.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...