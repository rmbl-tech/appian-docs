---
source_url: https://docs.appian.com/suite/help/25.3/How_to_Set_Up_High_Availability_Installations.html
original_path: How_to_Set_Up_High_Availability_Installations.html
version: "25.3"
title: "How to Set Up High Availability"
page_id: "How_to_Set_Up_High_Availability_Installations"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Set Up High Availability

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Overview

This page provides instructions on how to set up a recommended, high-availability (HA) system for Appian self-managing customers. Cloud customers should see [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html).

Setup scenarios covered include:

1.  Setting up HA on a new environment.
2.  Converting a standalone environment to HA.
3.  Converting an HA environment to standalone.

Since high availability is a configuration of distributed Appian systems, you should be familiar with the concepts and caveats of distributing Appian first. See [High Availability and Distributed Systems](High_Availability_and_Distributed_Installations.html).

## Requirements

-   **Linux operating systems**: High availability is not available for Windows operating systems.
-   **Required ports**: All of the servers should be able to connect to each other over the [required ports](Port_Usage.html).
-   **Shared file storage**: All servers involved in a high availability configuration need to be able to read and write the same files.

### Architectural overview

These instructions provide the necessary steps to set up or convert a highly-available system with the recommended levels of redundancy. The below diagram represents the HA configuration used in the instructions.

![HA Architecture](images/ha_howto/ha-basic-2.png)

The Standalone configuration referenced in the instructions assumes using one web server and one machine running all Appian components.

While the following instructions are specific to running a copy of all of Appian's components on every server, you can modify the instructions where necessary to match your actual desired configuration so long as all major components of your Appian system are replicated in structure and content in the redundant systems. If your Appian system is distributed among multiple servers, you will need to recreate that configuration for your redundant systems as well. This means if you have Appian distributed across two different servers, each redundant system will need two servers to mirror that distribution (for a total of six servers).

## Setting up HA on a new environment

The following steps will set up HA Appian on a **new environment**.

### 1\. Install Appian

[Install Appian](Linux_Installation_Guide.html) on three Linux servers.

**Note:**  Be sure to install the same version of Appian on all three servers, including any [hotfixes](Hotfixes.html) for that version.

### 2\. Update topology

On one server, update `<APPIAN_HOME>/conf/appian-topology.xml` to include the other servers using the example below, replacing the listed machine names with the hostnames of your servers.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
<topology port="5000">
  <server host="machine1.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <server host="machine2.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <server host="machine3.example.com">
    <engine name="forums"/>
    <engine name="notify"/>
    <engine name="notify-email"/>
    <engine name="channels"/>
    <engine name="content"/>
    <engine name="collaboration-statistics"/>
    <engine name="personalization"/>
    <engine name="portal"/>
    <engine name="process-design"/>
    <engine name="process-analytics0"/>
    <engine name="process-analytics1"/>
    <engine name="process-analytics2"/>
    <engine name="process-execution0"/>
    <engine name="process-execution1"/>
    <engine name="process-execution2"/>
  </server>
  <search-cluster>
    <search-server host="machine1.example.com"/>
    <search-server host="machine2.example.com"/>
    <search-server host="machine3.example.com"/>
  </search-cluster>
  <data-server-cluster>
    <data-server host="machine1.example.com" port="5400" rts-count="2"/>
    <data-server host="machine2.example.com" port="5400" rts-count="2"/>
    <data-server host="machine3.example.com" port="5400" rts-count="2"/>
  </data-server-cluster>
  <kafkaCluster>
    <broker host="machine1.example.com" port="9092"/>
    <broker host="machine2.example.com" port="9092"/>
    <broker host="machine3.example.com" port="9092"/>
  </kafkaCluster>
  <zookeeperCluster>
    <zookeeper host="machine1.example.com" port="2181"/>
    <zookeeper host="machine2.example.com" port="2181"/>
    <zookeeper host="machine3.example.com" port="2181"/>
  </zookeeperCluster>
</topology>
```

Once updated, copy `<APPIAN_HOME>/conf/appian-topology.xml` into both `<APPIAN_HOME>/data-server/conf/appian-topology.xml` and `<APPIAN_HOME>/search-server/conf/appian-topology.xml` locations on the same server.

Copy the `appian-topology.xml` files into the same locations on the other two HA servers.

-   `<APPIAN_HOME>/conf/appian-topology.xml`
-   `<APPIAN_HOME>/search-server/conf/appian-topology.xml`

**Note:**  `<APPIAN_HOME>/data-server/conf/appian-topology.xml` will be copied to the other two HA servers with its entire directory in a later step.

**The topology files must be identical across all servers in all locations**.

When changing the number of Kafka brokers on a site, as you are here, you must also delete the data stored in `<APPIAN_HOME>/services/data/zookeeper/` on every server.

### 3\. Remove checkpoint scheduling changes

Remove any [checkpointing scheduling](Configuring_Application_Checkpointing.html#configuring-checkpointing-frequency) configurations you might have made in `custom.properties`. In a high availability configuration, the default checkpointing configurations are recommended.

### 4\. Set up shared files and folders

1.  On one server, make sure the `<APPIAN_HOME>/conf/data-server-sec.properties` file is identical to `<APPIAN_HOME>/data-server/conf/data-server-sec.properties` (if not, you may have to copy one into another).

2.  In the server in the above step, ensure the value of `conf.password.SearchServer` in `<APPIAN_HOME>/conf/passwords.properties` is the same as the value of `conf.search-server.user.appian.password` in `<APPIAN_HOME>/search-server/conf/custom.properties`.

3.  In the server in the above step, copy the following files to the same location on the two other servers. These files must be the same across all servers.
    -   `<APPIAN_HOME>/conf/appian.sec`
    -   `<APPIAN_HOME>/conf/appian-topology.xml` (covered in previous step)
    -   `<APPIAN_HOME>/conf/data-server-sec.properties`
    -   `<APPIAN_HOME>/conf/tomcatResources.xml`
    -   `<APPIAN_HOME>/conf/custom.properties`
    -   `<APPIAN_HOME>/services/conf/service_manager.conf`
    -   `<APPIAN_HOME>/search-server/conf/appian-topology.xml` (covered in previous step)
    -   `<APPIAN_HOME>/search-server/conf/custom.properties`
4.  Share the following directories across all servers.
    -   `<APPIAN_HOME>/_admin/accdocs1/`
    -   `<APPIAN_HOME>/_admin/accdocs2/`
    -   `<APPIAN_HOME>/_admin/accdocs3/`
    -   `<APPIAN_HOME>/_admin/mini/`
    -   `<APPIAN_HOME>/_admin/models/`
    -   `<APPIAN_HOME>/_admin/plugins/`
    -   `<APPIAN_HOME>/_admin/process_notes/`
    -   `<APPIAN_HOME>/_admin/shared/`
    -   `<APPIAN_HOME>/server/archived-process/`
    -   `<APPIAN_HOME>/server/channels/gw1/`
    -   `<APPIAN_HOME>/server/collaboration/gw1/`
    -   `<APPIAN_HOME>/server/forums/gw1/`
    -   `<APPIAN_HOME>/server/msg/`
    -   `<APPIAN_HOME>/server/notifications/gw1/`
    -   `<APPIAN_HOME>/server/personalization/gw1/`
    -   `<APPIAN_HOME>/server/portal/gw1/`
    -   `<APPIAN_HOME>/server/process/analytics/0000/gw1/`
    -   `<APPIAN_HOME>/server/process/analytics/0001/gw1/`
    -   `<APPIAN_HOME>/server/process/analytics/0002/gw1/`
    -   `<APPIAN_HOME>/server/process/design/gw1/`
    -   `<APPIAN_HOME>/server/process/exec/00/gw1/`
    -   `<APPIAN_HOME>/server/process/exec/01/gw1/`
    -   `<APPIAN_HOME>/server/process/exec/02/gw1/`
5.  Create the following directories on network storage shared by all of the servers, replacing the listed machine names with the hostnames of your servers.
    -   `<APPIAN_HOME>/shared-logs/machine1.example.com/`
    -   `<APPIAN_HOME>/shared-logs/machine2.example.com/`
    -   `<APPIAN_HOME>/shared-logs/machine3.example.com/`
6.  On each server, link the `<APPIAN_HOME>/logs/` directory to the corresponding network storage directory from the previous step.

7.  On each server, create the following directories and link them to corresponding network storage directories from the previous steps.
    -   `<APPIAN_HOME>/shared-logs/machine1.example.com/`
    -   `<APPIAN_HOME>/shared-logs/machine2.example.com/`
    -   `<APPIAN_HOME>/shared-logs/machine3.example.com/`

### 5\. Set up load balancing on Apache

Configure load balancing on Apache to use the HA nodes. Update `http.conf` based on the configuration outlined in [Load Balancing Multiple Application Servers](Configuring_Apache_Web_Server_with_Appian.html#load-balancing-multiple-application-servers) to distribute requests across the three new nodes.

### 6\. Configure Tomcat clustering

For each HA node, use the configure script to [configure Tomcat clustering](Configure_Script.html#configure-tomcat-clustering-by-specifying-a-node-name) for the purpose of load balancing from Apache.

### 7\. Start Appian

Following the directions in [Starting and Stopping Appian](Starting_and_Stopping_Appian.html#starting-the-application-suite-on-linux), start each instance of a component before moving onto the next component.

#### 7.1 Start Appian services

1.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on Server #1
2.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on Server #2
3.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on Server #3

Do not wait for the start script to complete on the first server before running it on servers 2 and 3. The first script will not finish until at least two servers have been started.

#### 7.2 Start the data service

1.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on Server #1
2.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on Server #2
3.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on Server #3

#### 7.3 Start the search server

1.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on Server #1
2.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on Server #2
3.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on Server #3

#### 7.4 Start the application server

1.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on Server #1
2.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on Server #2
3.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on Server #3

## Converting a standalone environment to HA

These instructions will convert an existing standalone environment (one machine running all Appian components) to a new HA environment.

**Caution:**  It is best practice to have a lower environment that matches production to test these steps on before doing them in production.

### 1\. Set up Appian on the new HA environment

Follow all the steps in [Setting up HA on a new environment](#setting-up-ha-on-a-new-environment) to create a new HA setup.

**Note:**  Be sure that each new server is using the same Appian Primary database in its config (`<APPIAN_HOME>/conf/tomcatResources.xml`).

### 2\. Bring down Appian on the HA and standalone environments

On both the HA and standalone environments, bring down Appian using the [stopping instructions](Starting_and_Stopping_Appian.html).

### 3\. Bring down Apache on the HA and standalone environments

Bring down Apache on both HA and standalone environments.

### 4\. Take full backups on the standalone env

In case reverting to a backup is needed, take a full backup of Appian on the standalone environment using the [Full System Backup Procedure](Full_System_Backup_Procedure.html).

### 5\. Copy the services data

Clear the services logs for Kafka and Zookeeper in `<APPIAN_HOME>/services/data` on all three HA nodes.

Copy the Kafka and Zookeeper logs in `<APPIAN_HOME>/services/data` from the standalone server to the **primary HA node**. The primary HA node uses the same Kafka broker host name and Zookeeper host name that were used on the standalone server. We will rely on replication between the nodes for these latest transaction logs.

Take a note of the specific HA node that the logs were copied to.

**Note:**  Copying Kafka logs over to all three nodes gives the potential for Kafka to get confused when it sees data for topics or partitions it wasn't previously assigned by Zookeeper.

### 6\. Copy the data service data

Clear the data service directory `<APPIAN_HOME>/data-server/data` on all 3 HA nodes.

Delete the `<APPIAN_HOME>/ae/data-server/node/election` directory from all 3 HA nodes, if it's present.

Copy the data service directory `<APPIAN_HOME>/data-server/data` from the standalone server to **all three** of the HA nodes to ensure each starts with the correct data.

### 7\. Copy the search server data

Clear the search server directory `<APPIAN_HOME>/search-server/data` on all 3 HA nodes.

Copy the search server directory `<APPIAN_HOME>/search-server/data` from the standalone server to **all three** of the HA nodes to ensure each starts with the correct data.

Delete the \_state directory from the search server data on all three nodes of the HA site at `<APPIAN_HOME>/search-server/data/_state`

**Note:**  In Appian version 24.3, the Elasticsearch server has been upgraded from version 7 to version 8. To ensure a [proper upgrade](Upgrade_Guide.html), do not make any [site topology changes](How_to_Set_Up_High_Availability_Installations.html) while upgrading your site. Topology changes should be made before or after the major Appian version upgrade.

### 8\. Copy the admin and kdbs (mirrored data)

Copy all files in the shared admin console and engine data directories from the single node site to the corresponding shared drive directories for the HA site:

-   `<APPIAN_HOME>/_admin/accdocs1/`
-   `<APPIAN_HOME>/_admin/accdocs2/`
-   `<APPIAN_HOME>/_admin/accdocs3/`
-   `<APPIAN_HOME>/_admin/mini/`
-   `<APPIAN_HOME>/_admin/models/`
-   `<APPIAN_HOME>/_admin/plugins/`
-   `<APPIAN_HOME>/_admin/process_notes/`
-   `<APPIAN_HOME>/_admin/shared/`
-   `<APPIAN_HOME>/server/archived-process/`
-   `<APPIAN_HOME>/server/channels/gw1/`
-   `<APPIAN_HOME>/server/collaboration/gw1/`
-   `<APPIAN_HOME>/server/forums/gw1/`
-   `<APPIAN_HOME>/server/msg/`
-   `<APPIAN_HOME>/server/notifications/gw1/`
-   `<APPIAN_HOME>/server/personalization/gw1/`
-   `<APPIAN_HOME>/server/portal/gw1/`
-   `<APPIAN_HOME>/server/process/analytics/0000/gw1/`
-   `<APPIAN_HOME>/server/process/analytics/0001/gw1/`
-   `<APPIAN_HOME>/server/process/analytics/0002/gw1/`
-   `<APPIAN_HOME>/server/process/design/gw1/`
-   `<APPIAN_HOME>/server/process/exec/00/gw1/`
-   `<APPIAN_HOME>/server/process/exec/01/gw1/`
-   `<APPIAN_HOME>/server/process/exec/02/gw1/`

### 9\. Start Appian on the HA environment

#### 9.1 Start Appian services

1.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on server #1
2.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on server #2
3.  Execute `<APPIAN_HOME>/services/bin/start.sh -p <password> -s all` on server #3

Do not wait for the start script to complete on the first server before running it on servers 2 and 3. The first script will not finish until at least two servers have been started.

#### 9.2 Run rebalance cluster script

Since we are moving from a single node to HA, run the rebalance cluster script on the single node where the Kafka and Zookeeper data was copied to.

`<APPIAN_HOME>/services/lib/scripts/rebalanceCluster.sh`

#### 9.3 Start data service

1.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on server #1
2.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on server #2
3.  Execute `<APPIAN_HOME>/data-server/bin/start.sh` on server #3

#### 9.4 Start search server

1.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on server #1
2.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on server #2
3.  Execute `<APPIAN_HOME>/search-server/bin/start.sh` on server #3

#### 9.5 Change the number of replicas for each index

1.  Bash alias for `curl` should be defined before proceeding with the example commands below.

    `AUTHHEADER="Authorization: Basic $(awk '/^conf.search-server.user.appian.password=/ { match($0, /conf.search-server.user.appian.password=(.*)/, arr); print arr[1] }' /usr/local/appian/ae/search-server/conf/custom.properties | awk '{print "appian:"$1}' | xargs echo -n | base64 -w0)" alias curl='curl --header "$AUTHHEADER"'`

2.  Check that search-server has started and the cluster is up and green.

    `curl localhost:9200/_cluster/health?pretty`

3.  Observe the indices on one of the HA nodes.

    `curl localhost:9200/_cat/indices?v`

    There should be 1 primary shard and 0 replicas for each index (approximately eight indices, though it depends on the Appian version).

    ![Index check](images/ha-index-check.png)

4.  On **one** of the nodes, change the number of replicas to 2 for each index.

    Generic Example:

    `curl -X PUT -H "Content-Type: application/json" -d '{"index":{"number_of_replicas": 2 }}' localhost:9200/<INDEX>/_settings`

    Specific Example:

    `curl -X PUT -H "Content-Type: application/json" -d '{"index":{"number_of_replicas": 2 }}' localhost:9200/document-extraction-table-1/_settings`

    **Note:**  You have to do this for all indices (~8), but only on a single node, since Elasticsearch will replicate the change within the cluster.

5.  Now, the replicas ("rep" column) for all of the indices should be 2.

    `curl localhost:9200/_cat/indices?v`

    ![HA index check - 2 replicas](images/ha-index-replicas2.png)

#### 9.6 Start application server

1.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on server #1
2.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on server #2
3.  Execute `<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh` on server #3

#### 9.7 Start Apache

Start Apache on the HA server.

## Converting an HA environment to standalone

These instructions we will convert an existing HA environment to a new standalone environment.

**Caution:**  It is best practice to have a lower environment that matches production to test these steps on before doing them in production.

### 1\. Install Appian on the new standalone environment

[Install Appian](Linux_Installation_Guide.html) on the standalone environment.

### 2\. Bring down Appian on both HA and standalone environments

On both the HA and standalone environments, bring down Appian using the [stopping instructions](Starting_and_Stopping_Appian.html).

### 3\. Bring down Apache on both HA and standalone environments

Bring down Apache on both HA and standalone environments.

### 4\. Take full backups on the HA environment

If reverting to a backup is needed, take a full backup of the HA environment using the [Full System Backup Procedure](Full_System_Backup_Procedure.html).

### 5\. Reduce Kafka and Zookeeper brokers

1.  In the HA environment, bring up Kafka and Zookeeper.

    `<APPIAN_HOME>/services/bin/start.sh -p password -s kafka,zookeeper`

2.  Check the current brokers.

    `<APPIAN_HOME>/services/kafka_<VERSION_INFO>/bin/kafka-topics.sh --describe --bootstrap-server <KAFKA-HOST>:<KAFKA-PORT>`

3.  Since we are moving from HA to a single node, run the decrease broker count script.

    `<APPIAN_HOME>/services/lib/scripts/decreaseBrokerCount.sh -e <NODE_2_MACHINE NAME>:<KAFKA_PORT>,<NODE_3_MACHINE_NAME>:<KAFKA_PORT>`

    **Note:**  On older versions of Appian this is located at `<APPIAN_HOME>/services/bin/decreaseBrokerCount.sh`

4.  Verify the brokers are removed.

    `<APPIAN_HOME>/services/kafka_<VERSION_INFO>/bin/kafka-topics.sh --describe --bootstrap-server <KAFKA-HOST>:<KAFKA-PORT>`

5.  Stop Kafka on all servers.

    `<APPIAN_HOME>/services/stop.sh -p <password> -s kafka`

6.  Once all Kafka brokers have stopped, stop Zookeeper on all servers.

    `<APPIAN_HOME>/services/stop.sh -p <password> -s zookeeper`

7.  Check the status of Services in the HA environment to make sure they are stopped.

    `<APPIAN_HOME>/services/bin/status.sh -p password -c`

### 6\. Copy the services data

Clear the services logs for Kafka and Zookeeper in `<APPIAN_HOME>/services/data` on the standalone server.

Copy the Kafka and Zookeeper logs in `<APPIAN_HOME>/services/data` from one HA node to the standalone server.

### 7\. Copy the data service data

Clear the data service directory `<APPIAN_HOME>/data-server/data` on the standalone server.

Delete the `<APPIAN_HOME>/ae/data-server/node/election` directory from the standalone server, if it's present.

Copy the data service directory `<APPIAN_HOME>/data-server/data` from one of the HA nodes to the standalone server.

### 8\. Copy the search server data

Clear the search server directory `<APPIAN_HOME>/search-server/data` on the standalone server.

Copy the search server directory `<APPIAN_HOME>/search-server/data` from one of the HA nodes to the standalone server.

Delete the \_state directory from the search server data on the standalone server at `<APPIAN_HOME>/search-server/data/_state`

**Note:**  In Appian version 24.3, the Elasticsearch server has been upgraded from version 7 to version 8. To ensure a [proper upgrade](Upgrade_Guide.html), do not make any [site topology changes](How_to_Set_Up_High_Availability_Installations.html) while upgrading your site. Topology changes should be made before or after the major Appian version upgrade.

### 9\. Start Appian in the standalone environment

#### 9.1 Start Appian services

Bring up services in the standalone environment.

`<APPIAN_HOME>/services/bin/start.sh -p password -s all`

Check the status of services.

`<APPIAN_HOME>/services/bin/status.sh -p password`

#### 9.2 Start Appian data service

Bring up data service in the standalone environment.

`<APPIAN_HOME>/data-server/bin/start.sh`

#### 9.3 Start Appian search server

Bring up search server in the standalone environment.

`<APPIAN_HOME>/search-server/bin/start.sh`

#### 9.4 Change the number of replicas for each index

1.  Bash alias for `curl` should be defined before proceeding with the example commands below.

    `AUTHHEADER="Authorization: Basic $(awk '/^conf.search-server.user.appian.password=/ { match($0, /conf.search-server.user.appian.password=(.*)/, arr); print arr[1] }' /usr/local/appian/ae/search-server/conf/custom.properties | awk '{print "appian:"$1}' | xargs echo -n | base64 -w0)" alias curl='curl --header "$AUTHHEADER"'`

2.  View details of the indices in the standalone environment.

    `curl localhost:9200/_cat/indices?v`

    The health of each index should be yellow and the replicas ("rep" column) should be 2.

    ![ha-index-check-standalone.png](images/ha-index-check-standalone.png)

3.  For each index (~8, but depends on Appian version), set the number\_of\_replicas to 0.

    Generic Example:

    `curl -X PUT -H "Content-Type: application/json" -d '{"index":{"number_of_replicas": 0 }}' localhost:9200/<INDEX>/_settings`

    Specific Example:

    `curl -X PUT -H "Content-Type: application/json" -d '{"index":{"number_of_replicas": 0 }}' localhost:9200/document-extraction-table-1/_settings`

4.  Check the status of the indices again.

    `curl localhost:9200/_cat/indices?v`

    Verify that the health of each index is now green and the rep column is 0.

    ![ha-index-check-standalone.png](images/standalone-index-replicas.png)

#### 9.5 Start Appian application server

Bring up the application server in the standalone environment.

`<APPIAN_HOME>/tomcat/apache-tomcat/bin/start-appserver.sh`

#### 9.6 Start Apache

Bring up Apache in the standalone environment.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...