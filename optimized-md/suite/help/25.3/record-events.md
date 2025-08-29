---
source_url: https://docs.appian.com/suite/help/25.3/record-events.html
original_path: record-events.html
version: "25.3"
title: "About Record Events"
page_id: "record-events"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Record Events

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Capture and Display Events in 3 Steps

Watch this video to learn how to configure your applications to capture and display events so that your business users can easily see the updates made to a specific record.

This page describes how you can use record events to capture event data, then use that data to monitor and improve your business processes.

## Overview

Your enterprise is built on key business processes. Whether it's logging support cases, completing orders, or managing employees, keeping track of who does what and when can help you better understand your business and improve how it operates.

Record events allow you to seamlessly track what happens in your applications and when, with minimal configuration on your part.

Once you start tracking event data, you can use that data to:

-   [Display an activity log](#display-an-activity-log).
-   [Enable collaboration](#enable-collaboration).
-   [Improve business processes](#improve-business-processes).

### Display an activity log

You can provide application users with a timeline of events so they can monitor and respond to those events.

For example, in a Financial Onboarding app, an account manager could see at-a-glance the latest activities that took place on a client's request for a new account, so they can decide if they need to follow up on an internal review step that's taking longer than expected.

When capturing data for an activity log, you can track any type of events, including [ad hoc events](#decide-whether-to-track-ad-hoc-events).

As you collect event data, you can display a history of events in your record views, interfaces, and reports using the [event history list component](Event_History_List_Component.html). This component is automatically added to any [generated Summary view](record-view.html#generate-a-record-view) so users can quickly see a history of events related to their records.

[![images/eventHistoryListExample.png](images/eventHistoryListExample.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img507)

[![](images/eventHistoryListExample.png)](#_)

You can display your event history as a timeline or as a list to show a snapshot of your business operations. Use the component to display a history of events for all records, or only display the events for a specific record.

### Enable collaboration

You can allow team members to have discussions and ask questions directly in the context of their records.

For example, in a Financial Onboarding app, you can enable collaboration on the Account record type that tracks account changes during the account management process. Then, an onboarding specialist can use the [event history list component](Event_History_List_Component.html) to ask a manager a question about the customer's documents. The manager receives an email notification about the question, then uses the component to start a threaded conversation about the account.

When you enable collaboration, you can capture [top-level comments](record-events-collaboration.html#top-level-comments) as ad hoc events and store [threaded conversations](record-events-collaboration.html#threaded-conversations) as additional metadata in a separate record type.

[![images/record-events-collaboration-example.png](images/record-events-collaboration-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img508)

[![](images/record-events-collaboration-example.png)](#_)

### Improve business processes

You can analyze the larger behavior of a business process, so your organization can identify opportunities to improve that process.

For example, in the same Financial Onboarding app, you can gather information about activities taking place during the account evaluation. Then, you can determine how long it takes to complete a full evaluation, or even how long it takes to complete a particular sequence of activities in an evaluation. Appian can even automatically create the custom record fields you need to [calculate that duration](custom-record-fields.html#calculate-duration--_realtime-).

With this information, your organization can begin to identify trouble spots in the process itself. Even better, you can dig deeper on your event data using [Process HQ](processhq.html) to find new ways to optimize your business processes.

[![images/process_insights/process-diagram-all-colors.png](images/process_insights/process-diagram-all-colors.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img509)

[![](images/process_insights/process-diagram-all-colors.png)](#_)

When capturing data to improve a business process, you should track events specific to your process. Typically, this means excluding [ad hoc events](#decide-whether-to-track-ad-hoc-events).

When you've collected event data, you can use it to optimize your business processes with [Process HQ](processhq.html). Since your event data is stored in your record types, it's easy to [capture](capture-process-data.html) and [prepare](prepare-data.html) the data for [process insights](process-insights.html).

## Guidelines

Before you [configure record events](#get-started), you'll want to make a few decisions about what events to track and when. This section provides guidelines to help you with those decisions.

### Configure record events on the appropriate record types

While you can configure record events on any synced record type, we recommend that you only configure it on record types that represent your major business concepts or processes. You should not configure record events on record types that contain lookup data.

For example, in a Financial Onboarding app, you may have the following record types:

-   Account
-   Customer
-   Employee
-   Region

Depending on how you want to use your event data, you could configure record events on the Account record type to track changes that occur in the account management process.

You could also configure record events on the Customer and Employee record types to create an activity log of customer changes (like new zip codes or a change in licensing status) or employee changes (like promotions or departure dates).

It's unlikely that you would need to configure record events on the Region record type, however, since this record type stores lookup data that is unlikely to change.

### Make your event types specific

The types of events (or _event types_) you track should be meaningful and comprehensive to ensure you get a complete picture of your business operations.

To get the most out of record events, you should track events that represent the main steps in your business process. Ideally, each of those events occurs only once, and the events should occur in a specific order. These events can then be displayed in an activity log or used to improve your business process in [process insights](process-insights.html).

Let's look at an example of event types for a Financial Onboarding app. In this app, you would want to track when a customer applies for an account and each action your employees take to evaluate that account before creating it. To do so, you would configure the following event types:

-   Received Application
-   Completed Pre-Onboarding Compliance Check
-   Completed Know Your Customer (KYC) Review
-   Completed Financial Document Verification
-   Completed Financial Review
-   Approved Application
-   Completed User Account Provisioning
-   Funded Account

These event types represent all possible activities that could occur in this process. A process improvement analysis can focus on times when events are skipped, occur more than once, or occur in an unexpected order. Tracking only these events will give you optimal data for analysis.

### Standardize your event type names

Event types should focus solely on the activity that occurs during the event. Avoid using the event type to capture dynamic details about the event. Instead, capture those details in additional fields on the event history record type.

For example, instead of creating an event type called "Financial Review Completed by Angela Lewis," create an event type called "Completed Financial Review". Then, at the time of the event, write the employee who completed the review to the `user` field of the event history record type. This way, you can still capture details about a particular activity, and your event types will be consistent and easy to understand.

**Tip:**  Since each event represents a completed activity, Appian recommends naming your event types in the past tense.

### Avoid tracking status changes

When you're choosing events to track, avoid tracking case or ticket statuses like "Pending," "In Progress," or "In Review." While the status of the case is important, it doesn’t reflect the actions being done to move the case through the business process. Instead, focus your event types on the specific user or automated actions that cause the status to change.

For example, let’s say you have a record type that stores data about Financial Onboarding cases. While a case moves through the onboarding process, the status updates to reflect its current onboarding phase.

Instead of creating event types like "Pending" or "In Progress," choose event types like "Created Case," "Verified Documents," and "Assigned Onboarding Manager."

[![images/record-events-statuses-vs-events-example.png](images/record-events-statuses-vs-events-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img510)

[![](images/record-events-statuses-vs-events-example.png)](#_)

### Avoid field-level auditing

Auditing changes in field values can be a valuable monitoring tool, but these audits aren’t well suited for record events. Changed field values can clutter an activity log, and since they don’t necessarily represent steps in a business process, they won’t be helpful for analyzing processes for potential improvements.

Avoid using record events to recreate field-level audits, and instead focus on the user actions and automated actions that occur during a business process.

### Decide whether to track ad hoc events

If you're using event data in an activity log, you may also decide to track events that are expected to occur more than once and at any time during the process. We call these _ad hoc events_.

For example, in a Financial Onboarding app, an employee might update the customer's contact information at any time (Updated), or a reviewer might add a comment on the account with a question that needs to be answered (Commented). These kinds of events are useful in the context of an activity log, but they're not very useful when analyzing how the evaluation process itself is doing. If you're tracking events to improve your processes, you'll want [exclude ad hoc events](common-preparations.html#remove-ad-hoc-events) like comments from process analysis.

### Capture the right timestamps

When tracking events for any purpose, you should always [capture a timestamp](record-events-configuration.html#write-events) when an action completes. For example, in a Financial Onboarding app, you would capture the timestamp when financial document verification is done, with an event type of "Completed Financial Document Verification".

To support process analysis, you can also capture a timestamp at the start of the event, so you can calculate a waiting time between activities.

For example, in the Financial Onboarding app, you can capture a timestamp at the start and end of financial document verification. To follow this approach:

-   Structure each event type as the activity itself. For example, instead of an event type called "Completed Financial Document Verification," you would use the event type "Financial Document Verification."
-   Add a custom field to the event history record type (for example, `start`).
-   Configure the nodes of your process to update the `start` field when the event starts and the default `timestamp` field when the event ends.

Then, to determine the activity duration, you can calculate the time between the start timestamp (`start`) and the end timestamp (`timestamp`) of the event. Or to determine the waiting time between activities, you can calculate the time between the end timestamp of one event and the start timestamp of the next event. For example, between `timestamp` for Financial Document Verification and `start` for Financial Review.

### Measure automation

Record events can be used to track which user or [automation](Automation_Landing.html) takes action on your records, so you can measure how automated a given process is. Use the [standard automation types](record-events-automation.html#standard-automation-types) when configuring how your process model writes events, and configure the [event history list component](Event_History_List_Component.html) to display either the username or automation type for each event.

## Get started

Once you've reviewed the [guidelines](#guidelines) above, you can start [configuring record events](record-events-configuration.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...