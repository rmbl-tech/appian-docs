---
source_url: https://docs.appian.com/suite/help/25.3/process_modeling.html
original_path: process_modeling.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Modeling with Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

What are Process Models?

This video from [Academy Online](https://academy.appian.com/) introduces you to Process Models.

[Process Modeling](https://appian.myabsorb.com/#/online-courses/1d1c51f8-66cc-4966-94ba-28b9ee4e4e39)

Learn how to configure and test an executable workflow in Appian with this course on Process Modeling.

Business Process Model Notation (BPMN) is the standard by which anyone can graphically describe their business processes. With Appian, that model isn't just the starting point for building your process, it _is_ the process. Appian translates your business workflows to executable processes automatically. Process models in Appian orchestrate the intelligent automation in your business applications. This page explains the fundamental concepts behind process modeling.

-   For detailed design information about process models, see [Process Model Object](process-model-object.html).
-   For design patterns related to common workflows, see [Process Recipes](Process_Model_Recipes.html).

## What Can You Do

Fundamentally, process modeling with Appian is a versatile capability that allows you to execute business rules, manipulate data, integrate with other systems, schedule and automate processes, task users with work, and connect forms and interfaces wherever you need. This makes it easy to implement systems like [Dynamic Case Management](https://www.appian.com/platform/case-management/).

## Process Models

You might have a simple process for submitting expenses where an employee fills out a form and sends it to a reviewer, and the reviewer can reject it, send it back for changes, or approve it.

Your BPMN standard diagram is actually the perfect starting place for your Appian process model. Here's what a business process model looks like in Appian.

[![images/process_modeling_example.png](images/process_modeling_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img876)

[![](images/process_modeling_example.png)](#_)

The [process model object](process-model-object.html) isn't just a nice diagram of a process, it's the definition of how the actual process will run in Appian. You can easily connect it to your interfaces and databases to capture any business process and its associated data.

## Process Instances

The process model is the definition of the process, but not the process itself. Whenever an employee launches the process model, an instance of that model is created. Multiple Expense Reimbursement Requests can be started at the same time. We can see all active instances of that process from the [**Monitor** view](monitoring_view.html). You can see their status, along with other helpful information. If we want to examine a particular instance, we can open it and see the workflow highlighting. For higher-level information, you have [advanced reporting options](Process_and_Report_Data.html), which can include process data, usage, performance, and tasks metrics, so you can learn how to optimize your processes and applications over time.

## Smart Processes

What really differentiates Appian is more than being able to easily capture your business processes, it's how they can be used specifically in the Appian platform to easily create contextual processes. One of the ways you can use them is to create contextual actions; you might have a [record](Record_Type_Object.html) for your customers where you can see relevant information about them. When reviewing the record, you might want to take a [related action](record-actions.html#related-actions) like updating the record or launching a satisfaction survey. Rather than navigating away from that customer record to some other system to launch those processes, you can define a process to launch from the context of that record.

[![images/process_modeling_ra.png](images/process_modeling_ra.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img877)

[![](images/process_modeling_ra.png)](#_)

This is just scratching the surface of what's possible with process modeling in Appian. Start your [learning journey](learner_journey.html) today.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...