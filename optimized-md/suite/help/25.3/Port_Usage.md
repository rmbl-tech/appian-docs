---
source_url: https://docs.appian.com/suite/help/25.3/Port_Usage.html
original_path: Port_Usage.html
version: "25.3"
title: "Port Usage"
page_id: "Port_Usage"
section: "Internal Ports"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Port Usage

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Internal Ports

| Service | Default Ports | Accessed By |
| --- | --- | --- |
| Engines [1](#fn:1) | 5000-5081, 7070 | Application Server, other Engines |
| Search Server | 9200, 9300 | Application Server, other Search Servers |
| Data Service [2](#fn:2) | 5400-5430, 5448, 5449, 5450-5453 | Application Server, other Data Services |
| Internal Messaging Service | 2181, 2888, 3888, 9092 | Engines, Data Service, Application Server [3](#fn:3), and other Internal Messaging Services |

Appian allocates the ports used by each engine on startup. This allows you greater flexibility when configuring Appian to handle changing user needs, such as adding a gateway or moving an engine server to a separate server host machine.

Starting from the base port (5000 by default) each engine is assigned two consecutive ports, one for the gateway, the other one for the database. For example, the Forums gateway takes port number 5000 and the Forums engine server takes port number 5001. Then the Notify gateway process takes port number 5002, and the Notify engine server takes port number 5003. Ports are assigned in this manner until all active engines and gateways have port assignments.

The default configuration uses a single gateway for each Appian engine (`gw1`). If additional gateways are enabled (as is possible with a distributed installation) an additional port is sequentially assigned for each additional gateway.

You can directly configure the ports used by the engines with a custom topology file (`appian-topology.xml`) stored in `<APPIAN_HOME>/conf/`. Use the `<APPIAN_HOME>/conf/appian-topology.xml.example` file as a guide when configuring port allocation.

Appian Cloud is fully compatible with IPv6. Customers with self-managed environments can configure Appian in IPv4 or IPv6 configurations. The Appian platform component services communicate via TCP/IP protocols. All component services are natively IPv6 compatible except the Appian Engine servers which achieve IPv6 compatibility via IPv6 bridging. Any IPv6-to-IPv4 bridging techniques (dual-stack or Network Address Translation) can be used to provide IPv6 connectivity to the Appian Engine servers in self-managed installations.

As a security best practice, it is recommended to configure firewall settings so that the port(s) for each Service are only accessible to machines that host a Service listed in the corresponding "Accessed By" column. For example, Search Server uses port 9300 and the other Services that need to communicate with the Search Server are the Application Server and other Search Servers. So port 9300 should only be open to machines that are hosting an instance of Application Server or Search Server. For a non-distributed installation where all Appian services are hosted on one machine, then only the local host should have access to the ports.

## Ports for External Traffic

| Service | Default Ports | Accessed By |
| --- | --- | --- |
| Application Server | 8009 | Web Server |
| Application Server | 61616 | External JMS Messages |
| Apache Kafka [4](#fn:4) | 9090 | MirrorMaker Tool in Kafka |

1.  Engines. These ports should be sufficient for customers running all the engines and up to 16 execution and 16 analytics shards. To increase shards beyond 16, open two additional ports for every new shard added. `5000 + ((9 + analytics_shards + execution_shards) * 2) - 1` can be used to calculate the maximum number of ports need to be opened. For example, a system with 32 execution and 32 analytics shards will need to have ports 5000 through 5145 opened. [↩](#fnref:1)

2.  Data Service. These are the ports that should be opened under a [default port configuration](Configuring_the_Data_Server.html) where the `appian-topology.xml` file has the attribute `port="5400"` specified on the `data-server-cluster` or `data-server` xml elements. If using a custom port configuration, i.e. `port="BASE"`, the data service will require ports `BASE` through `BASE + 30` to be opened, as well as ports `BASE + 48`, `BASE + 49`, and `BASE + 50` through `BASE + (2 * rts-count) - 1` to be opened. For example, under a custom configuration where `port="6000"` and `rts-count="2"` are specified, ports 6000 through 6030 must be opened, as well as ports 6048, 6049, and 6050 through 6053. [↩](#fnref:2)

3.  Application Server. Note that the Application Server only requires connections to ports 2181 and 9092 of the Internal Messaging Service. Ports 2888 and 3888 do not need to be opened between the Application Server and the Internal Messaging Service. [↩](#fnref:3)

4.  Apache Kafka. MirrorMaker is an optional tool in Kafka for customer use for [Internal Messaging Service replication](Live_Backup_Procedure.html#internal-messaging-service-replication). This port can be configured with `serviceManager.topology.mirrorMetricsPort=<PORT_NUMBER>` in [custom properties](Custom_Configurations.html#custom-properties). [↩](#fnref:4)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...