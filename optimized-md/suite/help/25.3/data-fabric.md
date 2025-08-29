---
source_url: https://docs.appian.com/suite/help/25.3/data-fabric.html
original_path: data-fabric.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Fabric

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## What is data fabric?

Appian's data fabric is a data architecture that allows you to unify, secure, and optimize data spread across the enterprise. With this unified data architecture, you can quickly build modern, data-driven applications that automate your business.

Our data fabric respects the way your enterprise structures and stores data right now. You don’t need to migrate your data to use it in Appian. Instead, you can simply connect to where your data already lives. Data fabric provides a virtual data layer on top of your enterprise data so you can access all the data you need in one place.

[![images/stopCollecting-startConnecting.png](images/stopCollecting-startConnecting.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img438)

[![](images/stopCollecting-startConnecting.png)](#_)

Once your data is connected, you can seamlessly use it throughout Appian—from interfaces, to processes, to RPA bots and generative AI. Plus, your data is automatically optimized in our data fabric, so your applications are more performant without any manual performance tuning.

## Why use data fabric?

Today, businesses are often challenged to build applications using data spread across the enterprise. As a result of siloed systems and data architectures, it can be difficult to integrate disparate data sources while maintaining data security. Even if you manage to integrate those sources, you may require technical expertise for costly, on-going maintenance for each source.

Appian’s data fabric is the solution to siloed and costly data management experiences.

With data fabric, you can:

-   **Accelerate application development**. No data migrations equals faster application development. When you connect your data using Appian’s data fabric, you can use a uniform data model to access and query enterprise data throughout your applications—no custom API development or database programming needed. Better yet, you can extend your data model using [no-code data modeling features](about-data-sync.html#what-is-data-sync?) to relate and transform enterprise data in just a few clicks.

-   **Display and take action on data**. Unlike other data fabric technologies, Appian’s data fabric supports both analytical and transactional workloads. This allows you to build applications that display, [create, update, and delete enterprise data](manage-record-data.html)—not just view it.

-   **Secure and democratize access to data**. With centralized access to your data, you can easily determine who can see what data using [row-level security](record-level-security.html). With this granular level of security, more users can safely explore enterprise data in your applications and in our [self-service reporting workspace](allow-users-to-build-reports.html).

-   **Avoid manual performance tuning**. Not only is it faster to build secure, data-driven applications, your applications will be more performant overall. Appian’s data fabric automatically optimizes your enterprise data, so you can focus on critical development tasks.

-   **Automatically scale high throughput query workloads**. In addition to simplifying performance tuning, Appian's data fabric can automatically scale up and down to match your application’s query throughput requirements. Not only reducing the burden for database administration, but also maximizing resource efficiency.

## How does it work?

Let’s look at an example of data fabric in action.

Imagine you’re a developer for the Appian Retail company. This company has data spread across multiple sources, including different databases and Enterprise Resource Planning (ERP) and Customer Relationship Management (CRM) tools. Each data source has its own purpose.

Now, however, the company is asking you to access all of that enterprise data so you can build a new order fulfillment application to manage the business.

Using Appian’s data fabric, you can break down these data silos by connecting the different data sources together.

[![images/dataFabric-connect.png](images/dataFabric-connect.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img439)

[![](images/dataFabric-connect.png)](#_)

With your data connected, you can easily configure row-level security to refine who can see what data. For example, you can ensure that account managers can only view information about their customers, and order fulfillment associates can only view order submissions and their related documents if they’re in a specific region.

Then, using that secure data, you could build a comprehensive dashboard that highlights the current financial status of the company. You can also build automated workflows that use AI to process your purchase orders and then request the necessary items from different warehouses.

[![images/dataFabric-dashboard.png](images/dataFabric-dashboard.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img440)

[![](images/dataFabric-dashboard.png)](#_)

You can even empower other employees at Appian Retail to find their own answers to their common business questions. In Process HQ, operation managers can safely explore data to identify bottlenecks in the order fulfillment processes, and account managers can build custom reports tailored to their specific needs.

[![images/report-builder-ssa.gif](images/report-builder-ssa.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img441)

[![](images/report-builder-ssa.gif)](#_)

## How do you use data fabric?

Appian's data fabric is powered by [record types](Record_Type_Object.html). When you enable [data sync](about-data-sync.html) on your record types, you unlock features that help accelerate application development.

To start creating your data fabric, [create a record type and connect to a data source](configure-record-data-source.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...