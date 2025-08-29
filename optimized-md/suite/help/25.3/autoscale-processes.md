---
source_url: https://docs.appian.com/suite/help/25.3/autoscale-processes.html
original_path: autoscale-processes.html
version: "25.3"
title: "Autoscale Processes in Appian"
page_id: "autoscale-processes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Autoscale Processes in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td style="padding-right: 20px; padding-left: 10px; margin-left: 0px;"><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>This Appian Cloud capability is separately licensed and is only available for Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Autoscale Processes in Appian with Real-World Examples and Best Practices

This video from the [Introduction to Autoscale Academy Online course](https://academy.appian.com/#/online-courses/b324955e-c004-48a2-80c3-3dc77d9602e0) explains the power of autoscale, how to enable it, and the best practices you need to know to get started.

## Overview

In today's business environment, companies of all sizes are concerned with speed and efficiency. Automation can free up your human workforce to focus on the most valuable tasks by delegating routine and predictable tasks to technology. As that automated workload rapidly increases, do you have the infrastructure to support it?

You do if you have Appian. We've built speed and efficiency into the runners that execute your high-volume processes. Let's explore what autoscale can do, some examples of when it's useful, and how you can apply it to your existing process models.

## What is autoscale?

Autoscale is an Appian Cloud capability that dynamically adjusts process execution capacity based on demand. Specifically designed for high-volume, high-throughput automation, process autoscale delivers 10-100x the power without having to over-provision resources.

By default, all existing process models and any new processes are run without autoscale. You have the freedom to assess where autoscale would help and enable it for the appropriate processes in a workflow. When you [enable the capability](#how-to-enable-autoscale), the process is now autoscaled.

## Benefits of autoscale

When automating critical business processes, you may realize that some of these workflows need high throughput and maximum resource flexibility.

Appian makes it possible to meet these use cases with high-performance features built with our proven and familiar process modeler. Let's go over some use cases and explore these features in depth.

### High-throughput and high-volume automation

Your business may have workflows with demand that is consistently high compared to other processes. For example, you might be working to automate routing of new work requests to the appropriate team or to systems that can handle the request without a human actor.

To keep up during periods of high demand, you can enable autoscale on the process models that validate the work request and apply your organization's rules so it's assigned correctly. Then, teams are able to start work faster and with the confidence that they have the most up-to-date data to perform the work.

There may be a few types of work requests that need some human intervention, perhaps to verify data in a way that can't be automated. In this case, you can start a separate process for the human-in-the-loop tasks. These processes, run without autoscale enabled, are only needed as exceptions to the main, automated workflow.

### Process orchestration

Just like Appian's data fabric makes it simple to bring disparate data together, autoscale lets you do the same for your workflows. You can gather and link previously siloed information in one environment, orchestrating the operation of external resources through a central workflow in Appian. This lets you optimize the use of those external systems and realize a greater return on investment.

When Appian is your application's back end, it can be the central data pipeline to create integrated workflows with far less effort and expert developer involvement. Connected system and integration objects let you build sophisticated system-to-system interactions in a low-code fashion. Then, you can use the process modeler to quickly visualize, build, and run your process at whatever scale your business needs.

Say you want to upgrade an application for managing customers' cell phone accounts. When a customer creates an account or updates their data through a web front end, you need to run business logic in separate internal systems to manage the customer's phone number, quantity of lines, and account with other service providers in the network. Using Appian as the back end lets you orchestrate all of this work in an easy-to-understand workflow and helps you see where further improvements can be made.

Let's say the app currently makes 750,000 requests per day to the back end. Autoscale ensures that the app could handle 100 times as many requests by increasing processing resources to handle the additional load.

## When to use autoscale

Autoscale is best suited for high-throughput, unattended process models, and autoscale supports the process model functionality that enables those use cases. By default, process models are run without autoscale, which enables the full range of smart services and attended task capabilities. However, processes that do not have autoscale enabled may limit your ability to scale up and meet your business needs over time.

Autoscale lets you overcome this obstacle, but some process models do not need to run a very high scale. These are generally models with human interaction as part of the workflow, so you should continue running these without autoscaling.

There are also network requirements for Autoscale. It cannot be used if you need to make inbound calls through Dynamic VPN tunnels or PrivateLink; outbound VPN connections are supported.

## How to enable autoscale

To enable autoscale on a process model:

1.  Open the process model you want to run with autoscale.
2.  From the process modeler menu, select **File > Properties**.
3.  Select the **Autoscale** checkbox in the process's properties.

    [![Process model properties showing autoscale enabled](images/epex/autoscaling-checkbox.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img857)

    [![](images/epex/autoscaling-checkbox.png)](#_)

4.  From the process modeler menu, select **Save & Publish**.

### Supported nodes

Once autoscale is enabled, the palette adjusts to show the nodes you can use in the process model.

The following nodes are supported in autoscaled process models:

-   Activities
    -   [Script Task](Configuring_the_Script_Task.html)
-   AI Skills
    -   [Advanced IDP Tools Skill](Advanced_IDP_Tools_Smart_Service.html)
    -   [Execute Generative AI Skill](Execute_Generative_AI_Skill_Smart_Service.html)
-   Events
    -   [End Event](End_Event.html)
    -   [Start Event](Start_Event.html)
    -   [Timer Event](Intermediate_Event_-_Timer.html)
-   Gateways
    -   [AND](AND_Node.html)
    -   [Complex](Complex_Gateway_Node.html)
    -   [OR](OR_Gateway.html)
    -   [XOR](XOR_Node.html)
-   Data services
    -   [Write Records](Write_Records_Smart_Service.html)
    -   [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html)
    -   [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)
-   Integration & APIs
    -   [Call Integration](Call_Integration_Smart_Service.html)
-   Process management
    -   [Start Process](Start_Process_Smart_Service.html)

## Next steps

If you are ready to start building with autoscale, check out these pages for more information:

-   [Ways to Start a Process](Ways_to_Start_a_Process_From_a_Process.html) explains the different ways you can run a process with autoscale enabled.
-   [Monitoring Autoscaled Processes](Monitoring_and_Editing_Processes.html) shows you how to use the Autoscaled Process Activity tab for troubleshooting.
-   [Autoscale Patterns and Best Practices](autoscale-patterns-practices.html) provides guidance for optimizing your autoscaled processes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...