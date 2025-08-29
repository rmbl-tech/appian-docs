---
source_url: https://docs.appian.com/suite/help/25.3/Scaling_Appian.html
original_path: Scaling_Appian.html
version: "25.3"
title: "Scaling Appian"
page_id: "Scaling_Appian"
section: "Upgrade"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Scaling Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian is a highly scalable and reliable platform that leading companies, large and small, depend upon for their mission critical work. As you build more applications, and add more users to your system, your sizing and scaling demands increase. With Appian, meeting this increased demand is easy. This page provides guidance on several options for scaling your system, including which options are best for which situations, and how to know which options are most applicable to you.

| Symptom | Suggested Option |
| --- | --- |
| High load average in system.csv | [Add Hardware](#add-hardware) |
| High Java work queue size in the engine performance logs | [Add Application Servers](#add-application-servers) |
| High other time in engine call summary log | [Add Engine Replicas](#add-engine-replicas) |
| Low idle time in the engine performance logs | [Add Execution and Analytics Shards](#add-execution-and-analytics-shards) |
| High execute time in perf\_monitor\_rdbms\_slow.csv | [Optimize Your Queries and Applications](#optimize-your-queries-and-applications) and [External Data Sources](#external-data-sources) |

## Upgrade

Appian is constantly improving its performance and scalability. Newer versions bring both internal optimizations as well as new configuration options that increase your ability to scale Appian.

For self-managed installations, see the [upgrade guide](Upgrade_Guide.html). For Appian Cloud installations, [schedule your upgrade on MyAppian](https://community.appian.com/support/w/kb/679/kb-1403-rescheduling-cloud-installation-upgrades).

## Add hardware

Resource constraints on the servers that run Appian can affect its performance, throughput, and scalability.

The two main resources to manage in this respect are CPU and RAM. By default, production installations in Appian Cloud come with 4 CPUs and 30GB of RAM.

If your server's load average, as measured by [system.csv and engine\_system.csv](Logging.html#system-metrics-logs), is over or near the number of CPUs on the server (also recorded in the same log files), then your system is CPU-constrained and increasing the number of CPUs will likely improve the performance and scalability of your system.

The Appian engines reach optimal performance when they each have an entire CPU dedicated to their use. The engines will not use any additional CPUs above this threshold as they are each single-threaded and can use at most 1 CPU. By default there are 15 engines (see [Add Engine Replicas](#add-engine-replicas) and [Add Execution and Analytics Shards](#add-execution-and-analytics-shards) for how to add more). So, for a server that is running the full default set of engines, service manager (which is required on any server that runs at least one engine), and nothing else, increasing the CPU count up to 17 might improve performance and scalability. Increasing the CPU count beyond that number would likely not improve performance and scalability.

Applications with record types that [sync](about-data-sync.html) large amounts of data from external sources will benefit from running on hardware servers that have more RAM. If you're syncing more than 500,000 rows and the [sync duration](monitoring_view.html#sync-history) is longer than expected, it may be advisable to increase available RAM.

Contact your account executive to make changes to your hardware configuration.

## Add application servers

As more users interact with your Appian instance, the amount of CPU required by your application servers will increase. There are two principle ways to meet this demand. The first is to [add hardware](#add-hardware) and the second is to add more application servers. Generally speaking, it is preferable to add additional smaller application servers rather than move a much larger application server as this approach also has the benefit of increasing your resiliency to failure. If one application server out of five dies or has some sort of other problem where it can't service traffic, this situation will have a much smaller impact on your users than if the same failure happens to your single, large application server.

The amount of memory used by an application server generally scales with how much user traffic it takes at a time. High levels of user traffic will cause it to use higher amounts of memory. To reduce the memory required for any single application server, you can add additional application servers so that each one handles less load.

In addition to processing user requests from web browsers and mobile apps, the application server is also responsible for executing the background activity, including processing [unattended process activities](Process_Node_and_Smart_Service_Properties.html#assignment-tab), sending notification emails, polling email inboxes, timer events, and any other processing that is not done in direct response to a user action. Each application server dedicates a fixed number of threads to this sort of processing. If more background processing is requested in a short period of time than can be handled by a single application server, the background processing will back up. This may lead to unexpected behavior in your applications and tasks taking longer to complete than expected. To monitor the levels of requested, but not yet completed background activity, look at the **Work Queue - Java Work Queue Size** in the [engine performance logs](Logging.html#engine-performance-logs) and the work item completion time in [work\_poller\_summary.csv](Logging.html#work-poller-performance-logs). If the work queue size is generally increasing and the time it takes to complete work items is low, then adding additional application servers may speed up background processing. If the time it takes to complete work items is high, then the cause is likely an overloading of a downstream resource, such as a database, which is needed to complete the work items. Adding additional application servers would likely not help.

For Appian Cloud sites, contact your account executive to add additional application servers. For self-managed installations, see the documentation on setting up [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html).

## Add engine replicas

By default there is one copy of each Appian engine. However, in high-load situations this single instance can sometimes be overwhelmed with requests, which results in poor performance. Appian supports adding replicas for all engine types to increase the capacity of your system. When there is more than one instance of a given engine, read traffic is balanced across those instances, spreading the load. Write traffic is still executed by all engine instances.

Write traffic propagates asynchronously from a primary engine instance to the replica instances via a transaction log stored in Kafka and consumed by the replica engines. Engines that are not up to date with the latest data will reject attempted read connections and those requests will be re-tried on the primary instance of the engine. This means that in periods of especially heavy write load, the balancing between the engines will not be exactly even, but you are protected from reading out-of-date data.

Adding replica engines will likely increase the total amount of CPU required to handle the same level of load, even though it results in faster response times and lower latency experienced by your users. This is because write traffic is executed by all engine instances.

To see if you would benefit from adding additional engine replicas, you should look at the **Other Time** column in [engine\_call\_summary.csv](Logging.html#engine-call-logs). This value generally represents the amount of time one user spends waiting on other users to use the engine in question. If this value is high, adding a replica engine will likely help your performance and scalability. The effect will be larger when the ratio of the **Read Count** to **Write Count** columns is higher.

For self-managed Appian installations, [checkpointing an engine](Configuring_Application_Checkpointing.html) is a blocking operation for the engine in question, which means that all user traffic must wait for the checkpoint to complete before it can be processed. If there is more than one instance of a given engine, then the checkpointing will happen on a replica instance, not the primary. This allows the continued processing of user requests during the checkpoint, although at a temporarily reduced capacity. If you need uninterrupted operations during checkpoints, move to the [high-availability](High_Availability_and_Distributed_Installations.html).

For Appian Cloud sites, checkpointing is not a blocking operation and all engine instances remain available to service user traffic throughout the checkpointing process.

As mentioned in the [Adding Hardware](#add-hardware) section above, each Appian engine instance can use up to one full CPU. If you do not have enough CPUs for each engine instance to have a full one for its exclusive use, adding additional CPUs is typically easier than adding additional replica engines and it has lower ongoing maintenance overhead. Adding replica engines without allocating adequate CPU capacity will likely result in little impact on scale or performance.

Only one instance of any given engine can run on the same server, so when adding additional replica engines you will also need to set up at least one additional server in a [distributed installation](High_Availability_and_Distributed_Installations.html).

To add engine replicas on Appian Cloud sites, contact your account executive and ask about the [high-availability offering](High_Availability_for_Appian_Cloud.html). For self-managed installations, see the documentation on setting up [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html).

## Add execution and analytics shards

Appian splits process data across several different shards of the execution and analytics engines. Data for any individual process lives on only one shard of the execution engine and one shard of the analytics engine. This allows the amount of memory used by the execution and analytics processes to remain lower than it otherwise would be if a single OS process held all of the data. It also allows the execution and analytics engines to use more than one CPU to service requests, as the 1-CPU limit applies to each shard. Adding shards of execution and analytics will likely only improve your performance if it has unused CPU capacity for the new shards to use. If you are CPU-constrained, adding additional shards will not improve your performance.

To see if adding additional shards of execution and analytics will help you, look at the **Idle Time** column in the [engine performance logs](Logging.html#engine-performance-logs) for the execution engines. If the listed idle times are low, adding additional shards will likely help.

Because there is a set of common data that is replicated in every shard of execution and analytics (the list of users in the system, data type definitions, rules, etc), adding additional shards will typically use more total system memory than having fewer shards for the same number of processes. Each engine will also be smaller than if there were fewer shards.

The execution and analytic engines must always have the same number of shards.

By default Appian runs with 3 shards each of the execution and analytics engines. The maximum number of shards for each of these engines is 32. Because they store unique data, once you have added a new shard for execution and analytics, you cannot remove that shard from your configuration.

To add additional shards of the execution and analytics engines to an Appian Cloud site, contact your account representative. For self-managed installations, to add additional shards of execution and analytics, see [Adding Execution and Analytics Engines](Adding_Execution_and_Analytics_Engines.html).

**Tip:**  [Autoscale](autoscale-processes.html) is available for Appian Cloud customers running high volumes of unattended processes. This capability dynamically adjusts process execution capacity based on demand.

## Distributed RDBMS

In applications handling heavy database workloads, it is recommended to host the RDBMS on dedicated servers, ensuring an improved capacity, reliability, and the overall security of database operations. This separation proves especially beneficial when application servers and engines frequently contend for resources, potentially leading to performance bottlenecks.

When gauging the hardware requirements for dedicated RDBMS servers, you should assess it independently. Consider factors such as the database's data volume, concurrency levels, and data movement patterns. Typically, database servers can be provisioned with fewer CPUs and memory resources compared to application and engine servers.

Additionally, aligning disk size with the total database capacity is essential. By taking into account the current data size in the database and anticipating potential data volume growth over the next 12 months, you ensure an optimal storage capacity that easily adapts to evolving needs.

For Appian Cloud sites, contact your account executive to add additional RDBMS servers. For self-managed installations, see the documentation on setting up [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html).

## Optimize your queries and applications

Much of the work performed by an Appian system is specified in the applications it runs. This means that the designers of those applications have considerable influence over the scalability of your platform as a whole, and that inefficiencies in application design can cause unnecessary stress. Optimizing these applications, especially those with the processes and interfaces that are used the most, can have a large impact on the overall scaling characteristics of your Appian instance.

See [Interface Evaluation Lifecycle](SAIL_Performance.html) for more information on how to optimize the performance of your interfaces.

## External data sources

Appian applications frequently reach out to other systems via [integrations](Integration_Object.html), [web services](Call_Web_Service_Smart_Service.html), [data stores](Data_Stores.html), or [LDAP](Appian_Administration_Console.html#ldap-authentication). These other systems can greatly impact the scalability of your Appian system if they are not set up to handle the load. Consult with the owner of any external systems that your applications connect to and discuss sizing and expected load levels to ensure that these systems have adequate capacity.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...