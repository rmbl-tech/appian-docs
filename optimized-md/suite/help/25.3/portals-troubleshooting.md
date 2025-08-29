---
source_url: https://docs.appian.com/suite/help/25.3/portals-troubleshooting.html
original_path: portals-troubleshooting.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshooting a Portal

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

When a user encounters an error in a portal, there are various options for you to identify and troubleshoot the issue. You can also monitor how your portals are performing when users interact with them.

This page details the various options you have for identifying issues in a portal and troubleshooting them, as well as some common errors in portals and how to resolve them.

## Portals published with errors

If your portal publishes, but it can't be displayed because of errors, a **Service Unavailable** message will display. This may happen while you're developing your portal, similar to how site pages display expression validation errors when you're developing a site. To see the cause of the error and how to fix it, go to the portal object.

![published-portal-error](images/published-portal-error.png)

## Identifying issues in a portal

There are several places to help you identify and troubleshoot issues with a portal. The following grid details the types of troubleshooting information that is available and their locations.

| Name | Location | Description |
| --- | --- | --- |
| [Email error alerts](#email-error-alerts) |
-   Email

 | An email that is automatically sent to administrators of a portal object when a user encounters an error in a portal. |
| [Portal Errors grid](#portal-errors-grid) |

-   Portal Object
    ([Troubleshoot tab](portal-object.html#troubleshoot-tab)\*)
-   Monitor view
    ([Portal Monitoring](monitoring_view.html#portal-monitoring))

 | Grid that displays errors that users have encountered on a portal. |
| [Portal Error Log](#portal-error-log) |

-   Portal Object
    ([Troubleshoot tab](portal-object.html#troubleshoot-tab)\*)
-   Monitor view
    ([Portal Monitoring](monitoring_view.html#portal-monitoring))

 | Log file that displays error messages that users have encountered on a portal. |
| [Portal Server Log](#portal-server-log) |

-   Portal Object
    ([Troubleshoot tab](portal-object.html#troubleshoot-tab)\*)

 | Log file that displays system-level log entries for the microservice that runs the portals in an environment. |
| [Latency, traffic, and error rate metrics](#latency-traffic-and-error-rate-metrics) |

-   Monitor view
    ([Portal Monitoring](monitoring_view.html#portal-monitoring))
-   [System Logs](Logging.html#portals-latency-traffic-and-error-rate-metric-logs)

 | Latency, traffic, and error rate metrics for each portal in the environment and any [connected environments](#viewing-metrics-and-errors-in-connected-environments). |

\*Certain environments don't have a Troubleshoot tab. See [Environment support for enhanced portal logs](#environment-support-for-enhanced-portal-logs) for more information.

The following sections go into more detail about this and other troubleshooting information that is available for portals.

### Environment support for enhanced portal logs

In certain Appian Cloud environments, enhanced portal logs aren't available.

In these environments:

-   [Email error alerts](#email-error-alerts) will not be sent.
-   The [Troubleshoot tab](portal-object.html#troubleshoot-tab) doesn't display. Instead, at the bottom of the portal object a **Resources** section provides access to the Portal Monitoring view and the [Portal Server Log](#portal-server-log).
-   On the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view, the number in the Error Count column will not be clickable to open the Portal Errors grid or download the Portal Error Log.

If these capabilities aren't available in your environment, use the [Portal Server Log](#portal-server-log) to help troubleshoot portals.

### Email error alerts

When a user encounters an error in a portal, an email alert will be automatically sent to the administrators of the portal object with details about the error.

In order to access the portal object from the link in the email, you must have the [Designer user role](User_Roles.html#designer-role) assigned, which gives access to Appian Designer. If your environment has [enhanced portal logs](#environment-support-for-enhanced-portal-logs) and connected environments, you can still view the error details from an environment you have access to in the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab. See [Viewing metrics and errors in connected environments](#viewing-metrics-and-errors-in-connected-environments) for more information.

Only one email will be sent per error message every hour and it is limited to 500 recipients. To see all the instances of an error, check the [Portal Errors grid](#portal-errors-grid).

To receive email error alerts for a portal, make sure:

-   [Outbound emails](Appian_Administration_Console.html#outbound-email-toggle) are turned on for the environment.
-   You have **Administrator** permissions to the portal object in that environment.

### Portal Errors grid

The Portal Errors grid displays up to 100 of the most recent error messages that users have encountered on a published portal. It can display errors from the last 90 days.

There are two ways to access the Portal Errors grid:

-   From a portal, go to the [Troubleshoot tab](portal-object.html#troubleshoot-tab).
-   From the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view, click on a number in the **Error Count** column.
    -   To view the error grid for portals in [connected environments](#viewing-metrics-and-errors-in-connected-environments), you can use the icon to switch between environments.

### Portal Error Log

To view more than 100 errors for a selected date range, or to search, sort, and filter them, download the Portal Error Log, which can be accessed above the [Portal Errors grid](#portal-errors-grid). This error log can display errors from the last 90 days.

To download the Portal Error Log:

1.  Access the Portal Errors grid.
    -   From the [portal object](portal-object.html), go to the **Troubleshoot** tab.
    -   From Appian Designer, go to the [Monitor](monitoring_view.html) view and click **Portal Monitoring**.
2.  Select a **DATE RANGE** that you want to download error details for. Error details are only available for the last 90 days.
3.  Click the **Portal Error Log** link to download the error details for the selected date range.

![screenshot of an error grid with portal error log highlighted](images/portal-error-log-both.png)

### Portal Server Log

If enhanced portal logs aren't available in your environment, or to view more details about the activity on the published portal, check the Portal Server Log.

This log file contains system-level log entries for the microservice that runs a portal. These logs can provide insights about user activity and errors that users might be encountering when they interact with a portal.

The Portal Server Log does not include every error related to a portal or the objects and connections it uses. See [Other logs](#other-logs) for other places to check for troubleshooting information.

**Note:**  In environments that don't support [enhanced portal logs](portals-troubleshooting.html#environment-support-for-enhanced-portal-logs), the **Troubleshoot** tab doesn't display. Instead, access the [Portal Server Log](portals-troubleshooting.html#portal-server-log) from the **Resources** section at the bottom of the portal object.

To download a Portal Server Log:

1.  In a [portal object](portal-object.html), go to the **Troubleshoot** tab.
2.  In the **View System Activity** section, select a **Time Range** that you want to view log entries from. You can choose to view log entries from the last 15 minutes, hour, day, or week.
3.  (Optional) To reduce the log file download time, select **Limit to 1000 entries** to see only the last 1000 log entries.
4.  Click **Download the Portal Server Log** to download the log entries for the selected time range.

### Latency, traffic, and error rate metrics

The [Portal Monitoring](monitoring_view.html#portal-monitoring) tab of the Monitor view allows you to view key metrics and details that can help you understand how users are interacting with your portals and whether they are experiencing issues. Regularly monitoring these metrics alerts you to any potential issues related to portal performance and availability. For more information, see [Latency, traffic, and error rate metrics explained](monitoring_view.html#latency-traffic-and-error-rate-metrics-explained).

See [Troubleshooting errors](#troubleshooting-errors) and [Troubleshooting latency issues](#troubleshooting-latency-issues) for details about how to troubleshoot errors and latency issues.

### Viewing metrics and errors in connected environments

If you have [connected environments](Appian_Administration_Console.html#infrastructure) set up, you can switch between them to view the following for each environment:

-   [Latency, traffic, and error rate metrics](#latency-traffic-and-error-rate-metrics)
-   [Portal Errors grid](#portal-errors-grid)
-   [Portal Error Log](#portal-error-log)

This can be especially helpful to view metrics and errors for portals in a production environment without requiring Designer access to the environment.

You must have at least [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) to portals in the _current_ environment in order to view their metrics from another environment.

To view metrics and error details for other connected environments:

1.  In the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab of the Monitor view, click the icon.
2.  Select an environment and click **VIEW PORTAL MONITORING** to view the metrics for that environment.
3.  If there is a number in the **Error Count** column, click it to open the Portal Errors grid, where you can also download the Portal Error Log.

### Other logs

You can find more information for portal processes, performance, and activities in the following logs:

-   To help troubleshoot errors that deal with connecting back to Appian, integrations, databases, or APIs, download the [application server log](Logging.html#application-server) for an environment.
-   To help troubleshoot latency issues, download the [Portals rule performance details log](Logging.html#portals-rule-performance-details-logs) (available in Appian Cloud environments where [enhanced portal logs](#environment-support-for-enhanced-portal-logs) are available).
-   To help troubleshoot errors with external systems or databases, view the server logs for the system or database.

## Troubleshooting errors

When troubleshooting errors, start by looking at the error message to see what may be causing the error. From there, you can determine the best place to look for more information. The following is a high level overview of the steps you can take to troubleshoot errors in a portal.

-   To determine which object is affected and what the issue is, view the error details in the [email alert](#email-error-alerts).
-   To help identify how often the error has occurred, as well as other errors that may be related, click **VIEW THE PORTAL OBJECT** in the email to open the portal object. Go to the [Troubleshoot tab](portal-object.html#troubleshoot-tab) to view the the [Errors grid](#portal-errors-grid).
-   To search, filter, and sort the error details, or to view more than 100 errors for a selected time period, download the [Portal Error Log](#portal-error-log).
-   For a more comprehensive log file that may highlight issues that affect objects besides interfaces and expression rules, such as connected systems, download the [Portal Server log](#portal-server-log) from the [Troubleshoot tab](portal-object.html#troubleshoot-tab) of the portal object.
-   If the error is about connecting back to Appian, integrations, databases, or APIs, check out the [application server log](Logging.html#application-server) for your environment.
-   If the error is for external system or databases, view the external server logs for the system or database.
-   To view the [error rate](monitoring_view.html#error-rate) and error count for a portal, go to the the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab in the Monitor view.

In environments that support [enhanced portal logs](#environment-support-for-enhanced-portal-logs), if you have [connected environments](#viewing-metrics-and-errors-in-connected-environments) set up, you can view error details for portals in other environments by switching between environments using the icon. This is especially helpful to view errors for portals in a production environment without requiring designer access to the environment.

## Troubleshooting latency issues

The speed with which the server responds to a traffic request depends on a variety of factors. When issues arise, it may not always be clear what's causing the problem.

Design issues in an interface or slow rule evaluations could be to blame when your users are subjected to longer than normal response times when interacting with your portals.

If you identify latency issues in the [Portal Monitoring](monitoring_view.html#portal-monitoring) tab, download the [portals rule performance details](Logging.html#portals-rule-performance-details-logs) log to help troubleshoot. This log captures the performance details for every rule and interface within any published portal in an environment.

## Common errors

**Tip:**  The error messages on this page are examples. Your actual error message may be different.

| Error Message | Cause/Next Steps |
| --- | --- |
| _\[title=Connection failed, message=Could not authenticate with the connected system or connect to the external system at the specified URL, detail=HTTP/1.1 404 Not Found\]_

For integrations that don't use connected systems:

_\[title=The requested URL cannot be found, message=The external system did not find the requested URL or is refusing to allow access, detail=HTTP/1.1 404 Not Found\]_

More information about this error can be found in the [Portal Server Log](#portal-server-log) which you can download from the portal object.

There are two different ways to view this error:

\- [If the integration queries info (GET)](Call_an_Integration.html#call-an-integration-to-query-data), then the error will be available in the error field of the dictionary returned.
\- [If the integration modifies data (POST)](Call_an_Integration.html#call-an-integration-to-modify-data-in-an-interface-component-or-web-api), then the error can be accessed by `fv!error` in the _onError_ parameter of the integration rule. | **Cause**: Incorrect API key or credentials in the connected system, or invalid URL for web API.

**Next Steps**:

1\. If you're in a development environment, check your connected system to make sure your credentials are correct by clicking the **TEST CONNECTION** button in the connected system object. If you're in a staging or production environment, make sure that the credentials or API keys listed in the import customization file that you used for deployment are correct and have permission to your Appian web API.
2\. Ensure that the integration used by your interface can connect to the Appian web API.
 |
| _File upload authentication failed. No service account was found. A service account is required to upload files._ | **Cause**: Missing or incorrect service account for file upload.

**Next Steps**: Check that the service account used when publishing your portal has permission to upload documents to the target document folder. |
| _Expression evaluation error at function a!queryEntity \[line 21\]: Connection to the data store entity failed. The connected system data source was not found at the specified URL or is refusing to allow access._ | **Cause**: Scenarios such as invalid database/data store entity, wrong credentials in the import customization file, or data store entity not verified.

**Next Steps**:

1\. Check that the data source is configured correctly and can be connected to from the interface.
2\. If you're in a development environment, check your objects to make sure that they are using the correct credentials or API keys. If you're in a staging or production environment, make sure that the credentials or API keys listed in the import customization file that you used for deployment are correct and able to authenticate to the data source connected system. |
| Varies based on function or component used. Example:

_Expression evaluation error at function a!userRecordLink: Invalid function a!recordlink (not available as \[\])_ | **Cause**: The parent interface or child objects use incompatible functions or components.

**Next Steps**: Ensure all functions and components used in the interface are [compatible with Appian Portals](portals-design.html#portal-compatibility-with-functions-components-and-objects) and that [partially compatible functions](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal) are connected using an integration and web API. |
| _HTTP Code: 404 Could not find portal interface with uuid: \_a-0000e827-7a29-8000-9bd3-011c48011c48\_11234_ | **Cause**: A precedent of the portal has been deleted or is missing from this environment. All interface precedents must be included in the environment that is being used to publish the portal.

**Next Steps**: Ensure there are no missing precedents of the portal in the current environment. |
| Varies depending on error from Google. Example:

_reCAPTCHA connection failed. Check that proper credentials have been provided in the reCAPTCHA connected system and test the connection._ | **Cause**: Issue with reCAPTCHA.

**Next Steps**: Se[e Testing, monitoring, and troubleshooting reCAPTCHA](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha) for more information.

1\. Ensure that the reCAPTCHA Site key, API key, and Project ID are correct in [the portal object](portals-create.html#step-4-add-a-service-account-and-set-permissions).
2\. Ensure that your Google project is set up correctly to use reCAPTCHA. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...