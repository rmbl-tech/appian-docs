---
source_url: https://docs.appian.com/suite/help/25.3/monitoring-applications.html
original_path: monitoring-applications.html
version: "25.3"
title: "Monitoring Applications"
page_id: "monitoring-applications"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Monitoring Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes the different areas in Appian applications that you can monitor, as well as the tools you can use to support your monitoring goals.

Monitoring is the final stage in your DevOps journey. It provides feedback that flows back into the planning and development stages, enabling continuous improvements to your applications. User feedback should also be regularly collected and incorporated into the same early stages of the application lifecycle.

Application monitoring consists of two general areas: application performance and system resources. Monitoring these areas can help you prevent issues with your applications, as well as resolve them quickly once they are reported.

Learn more about the [**Monitor** view](monitoring_view.html).

## Application performance

When monitoring an application you should prioritize the most important pieces of it, such as process models, records, and interfaces.

If you don’t know where to start, you should focus on these three objectives:

1.  The application is functional and not producing any errors.
2.  The application is running efficiently and providing a good user experience.
3.  The application is providing business value.

This section divides application performance monitoring into two questions that you should ask yourself after every release: is your application running and is your application fast. For more information, see [Application Monitoring](https://community.appian.com/w/the-appian-playbook/101/application-monitoring).

### Is your application running?

#### Process activity

Processes are at the core of most Appian applications. In order to understand how your application is performing, it’s important to monitor the running and completed processes for errors. The [**Monitor** view](monitoring_view.html) allows you to review recent process activity and process errors in a centralized place.

Appian developers can also configure [alerts](process-model-object.html#alerts-tab) on process models, so a proactive warning is sent when there is a [process error](Process_Errors.html). When you build an autoscaled process model, [Appian automatically sends alert emails](monitoring-autoscaled-processes.html#email-error-alerts) if a process encounters an error.

#### Logs

[Log files](Logging.html) are useful tools for identifying and troubleshooting errors that occur outside of processes, such as record view or task form errors. Logs are stored on the file system, and can be accessed through the [Appian Designer navigation menu](Appian_Cloud_Web_Administration.html#-log-files) for Cloud customers.

One of the most important logs for investigating errors is the [Design Error Log](Logging.html#design-error-log). This log captures every expression error that directly impacts a user. These types of errors often prevent a user from completing their work, so they are important to identify and resolve quickly.

You can also use the [Appian Health Check](health-check.html) to automatically analyze the most important logs. The report identifies objects with errors, application performance bottlenecks, and other risks, such as application design best practices.

**Tip:**  [Log Streaming](Log_Streaming_for_Appian_Cloud.html) is available for Cloud customers with Professional or Signature Success Plans. It allows you to leverage other monitoring tools, such as Splunk, to configure real time alerts based on your logs.

### Is your application fast?

#### Response time

Records are another key part of Appian applications. In order for users to have a good experience while navigating and completing their work, records need to respond quickly. Appian developers can track this metric by monitoring [record response times](monitoring_view.html#record-response-times). Appian narrows down which record interfaces have the slowest response times so you can focus your investigation there.

#### Performance

The response time of records and other user functionality depends on the performance of the underlying objects. Appian provides individual [performance details](Performance_View.html) for interfaces, expression rules, decisions, record type interfaces, and web APIs. These can be used to troubleshoot slow response times.

Since record types are widely used throughout your application, you can also monitor the performance of queries to your record types. To view information about records query performance, go to the [**Query Performance** tab](monitoring_view.html#query-performance) of the **Monitor** view.

You can also track consolidated execution history and performance for the past 30 days through the [Rule Performance](Appian_Administration_Console.html#rule-performance) page in the Admin Console.

## System resources

Issues with system resources can affect your application performance. It’s important to monitor your system resources to ensure that they have sufficient capacity to support your application or that your application isn’t taking up more resources than necessary. System resources include CPU, RAM, disk space, and heap space.

There are several ways you can monitor the system resources for your Appian installation:

-   Monitor [process model metrics](monitoring_view.html#process-model-metrics) to see which process models are using the most memory on your system.
-   Run [Appian Health Check](understanding-the-health-check-report.html) to monitor server metrics such as high CPU utilization, high heap utilization, and high disk utilization. You should regularly run Appian Health Check on all of your environments, including Production.
-   Use the [Server Monitoring Checklist](https://community.appian.com/w/the-appian-playbook/176/server-monitoring) to find out what you should monitor and what the recommended thresholds are.
-   [Cloud Resources](Cloud_Insights.html) allows you to proactively view key metrics and configuration information for your Appian Cloud environments via Appian Community.
-   [Appian Cloud Monitoring](Appian_Cloud_FAQ.html#monitoring-&-alerting) tracks key metrics for you and we inform you about any alerts and how we are resolving them.

For more guidance on how to distribute system resources for your Appian environment, see [Scaling Appian](Scaling_Appian.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...