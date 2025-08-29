---
source_url: https://docs.appian.com/suite/help/25.3/process-insights.html
original_path: process-insights.html
version: "25.3"
title: "Process Insights"
page_id: "process-insights"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Insights

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Welcome to process insights in [Process HQ](processhq.html)! Here, you'll learn how to rapidly explore and discover insights about the business processes that drive your Appian applications.

## Overview

Optimizing your processes aligns easily with every company's goals:

[![Company goals and how they align with process optimization](images/process_insights/process-optimization-benefits.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img728)

[![](images/process_insights/process-optimization-benefits.png)](#_)

But before you can optimize your process, you have to first understand how those processes actually perform, not how you _think_ they perform. You need visibility into your processes. That's what process insights delivers—the ability to uncover and share rich, accessible insights into the performance of your processes.

Put simply, process insights lets you take advantage of low-code process mining. You can avoid having to manually organize, interpret, analyze, and visualize the complex web of your process data. Instead, we apply machine learning to discover the most influential inefficiencies and bottlenecks in your processes, saving you valuable time and resources.

You don't need prior experience with process mining or a background in data science to identify critical issues in your process. In fact, if you aren't familiar with these concepts, don't worry—process insights is built just for you!

## How process insights works

[![Diagram of data flow in process insights](images/process_insights/process-insights-overview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img729)

[![](images/process_insights/process-insights-overview.png)](#_)

First, you'll collect data about your business processes. Your IT systems typically track process activities, including when they happen, who performed them, and other characteristics. For example, in a retail organization, this data might include information about when an order is received, a product is delivered, a customer is contacted, a payment is made, and more.

You'll be leveraging Appian's [data fabric](data-fabric.html) to make [capturing this data easy and continuous](capture-process-data.html). [Configure record events](record-events.html) to capture your process data right in Appian, or connect to your business process data wherever it's stored.

Once your process data is collected, you'll [prepare the data for analysis](prepare-data.html) with a point-and-click interface that's supported by Appian expressions.

Next, behind-the-scenes, process insights aggregates and analyzes your data, applying machine learning to discover patterns in the workflow. Using rich visualizations of that analyzed data, you'll be able to [explore how your process actually operates](explore.html).

Then, it's time to apply your invaluable knowledge of the business context to the aggregated data. As you [explore your business process](explore.html) and [drill down on specific characteristics](investigate.html), you can follow the intelligent recommendations we surface along the way. We help you focus on the most critical factors affecting the process, pointing out opportunities to use more automation, and highlighting how much time you can save by implementing changes.

The outcome of drilling down is an insight that you can easily share with other stakeholders, so you can [collaborate](collaborate-on-insight.html) across your organization to identify actionable conclusions that optimize your business outcomes.

## Get started

Ready to get started with process insights?

Take the following steps:

1.  [Connect to the process data](capture-process-data.html) you want to analyze by either [configuring record events](record-events.html) or connecting directly to existing event data.
2.  [Prepare your data](prepare-data.html) using powerful features in synced record types to clean and enrich your data.
3.  [Configure security](configure-security.html) by granting data governors, data stewards, and business users access to the workspace and process data.
4.  [Add your process data for analysis](add-process.html), refining what data gets analyzed and specifying who in your organization you want to work on that data with you.
5.  [Explore your aggregated and analyzed data](explore.html) to understand on a new level how your process actually operates and where possible bottlenecks or inefficiencies might be found.
6.  [Drill down on specific characteristics](investigate.html) of the process to identify causes of slowness or inefficiency and build insights that will help you strategically target your improvement efforts.
7.  [Collaborate with colleagues](collaborate-on-insight.html), inviting them to review and directly contribute to the insights you've built.

## Availability

Process insights is only available for Cloud customers at this time. Self-managed customers and Appian Government Cloud customers cannot access this capability. Process insights is not offered as part of a [high-availability configuration](High_Availability_for_Appian_Cloud.html#exceptions).

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Process insights architecture

This section features an image that provides a clear visual representation of how data flows within process insights, ensuring your data remains secure and compliant within the Appian Cloud environment. Take a look at the diagram to understand the key components and data pathways, designed to support your process analysis and keep your data safe.

[![process-insights-arch-diagram.png](images/process_insights/process-insights-arch-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img730)

[![](images/process_insights/process-insights-arch-diagram.png)](#_)

### Data transit and retention

-   All of your data stays within the [Appian Cloud environment](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a).
-   All data in-transit is encrypted using TLS.
-   Communication between Appian and the process insights service uses asymmetric signing where each customer site has a unique key used to verify its identity.

When data is synced to the process insights service, structured files with record information are uploaded to an Amazon Simple Storage Service (Amazon S3) bucket.

The Amazon S3 bucket is:

-   Encrypted using keys specific to each customer site
-   Segmented for each customer site
-   Not accessible by application developers or users

### Multi-tenant service

Appian's multi-tenant process insights service is shared among multiple customers and has multiple layers of control to restrict data access to respective customer sites. The service has site-level controls to restrict data access and encryption/decryption permissions, whether that distinction is a separate customer site or a separate site within a single customer's environment. This shared service method reduces costs as production increases.

Actual processing of data occurs in a single-tenant sub-service, providing additional security. This ensures that core data is not processed by the multi-tenant service and is never stored on the same logical container with data from other customers.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...