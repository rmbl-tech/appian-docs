---
source_url: https://docs.appian.com/suite/help/25.3/High_Availability_and_Distributed_Installations.html
original_path: High_Availability_and_Distributed_Installations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# High Availability and Distributed Systems

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

This page explains the concepts and methods for distributing an Appian installation.

## When and why to have a distributed installation

There are three principle reasons to run a distributed installation of Appian:

-   [High availability](#high-availability)
-   [Scaling and load balancing](#scaling-and-load-balancing)
-   [Segregation](#segregation)

**Note:**  **Windows**

_High-availability_ and _load balancing_ are not available for Windows environments because running more than one instance of the Appian engines and the Internal Messaging Service (Kafka and Zookeeper) is not a supported configuration in Windows environments.

### High availability

To have a highly-available installation of Appian, it needs to be robust to potential hardware failures. This is only possible if every service that comprises Appian has more than one instance, running on different servers, such that the unexpected loss of one server does not take out all instances of any service. Servers in a high availability installation may be spread across separate data centers as long as there is low (less than 10ms) network latency between the data centers.

Related documentation for high availability with Appian:

-   [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html)
-   [How to Setup a Highly Available system](How_to_Set_Up_High_Availability_Installations.html)
-   [Setting Up for Disaster Recovery](https://community.appian.com/success/w/guide/3329/high-availability-and-disaster-recovery-configurations#disaster_recovery)

### Scaling and load balancing

High-load sites may have more demand for a service than a single instance of it can provide. In this situation, adding additional instances of one or many services can [increase the capacity of the installation](Scaling_Appian.html#add-engine-replicas).

### Segregation

Some customers have requirements to only run one instance of each service, but want them to run on separate servers for capacity (a single server is not large enough to host all services) or security (a desire to host data-persistence services in a different network zone, for example) reasons.

## How to configure a distributed installation

This section explains how to configure a distributed installation of Appian.

### Planning the topology

The first step in setting up a multiple server configuration is mapping out which servers will run the various architectural components of the Appian software. The distribution of the architectural components across one or more servers on a network is referred to by the documentation and the product as the "topology."

The following components of Appian can be configured to run on the same physical machine or on separate machines:

-   Appian Java application
-   Search server
-   Data service
-   Appian engines
-   Kafka
-   Zookeeper
-   RDBMS

Similarly, each component can be clustered independently. For example, an environment may choose to have two instances of application servers and three instances of the search server deployed.

#### Important high availability topology checklist

When planning topology for a high availability installation, ensure it meets the following criteria:

-   [When and why to have a distributed installation](#when-and-why-to-have-a-distributed-installation)
    -   [High availability](#high-availability)
    -   [Scaling and load balancing](#scaling-and-load-balancing)
    -   [Segregation](#segregation)
-   [How to configure a distributed installation](#how-to-configure-a-distributed-installation)
    -   [Planning the topology](#planning-the-topology)
        -   [Important high availability topology checklist](#important-high-availability-topology-checklist)
            -   [All servers are linux environments](#all-servers-are-linux-environments)
            -   [Exactly three (3) instances of search server, data service, and the internal messaging service](#exactly-three-3-instances-of-search-server-data-service-and-the-internal-messaging-service)
            -   [At least two (2) instances of the application server and Appian engines](#at-least-two-2-instances-of-the-application-server-and-appian-engines)
            -   [No more than one (1) instance of any Appian engine or data service on a single server](#no-more-than-one-1-instance-of-any-appian-engine-or-data-service-on-a-single-server)
            -   [Multiple instances of the internal messaging service only if there are multiple instances of all Appian engines](#multiple-instances-of-the-internal-messaging-service-only-if-there-are-multiple-instances-of-all-appian-engines)
    -   [Network configuration](#network-configuration)
    -   [Install Appian on each machine](#install-appian-on-each-machine)
    -   [Configuration](#configuration)
        -   [Topology XML file](#topology-xml-file)
        -   [Engine security token](#engine-security-token)
        -   [Data service security token](#data-service-security-token)
        -   [Service manager password](#service-manager-password)
    -   [Scheduling checkpoints](#scheduling-checkpoints)
    -   [Shared files](#shared-files)
        -   [Shared logs](#shared-logs)
-   [Load balancing application servers](#load-balancing-application-servers)
-   [How to run a distributed installation](#how-to-run-a-distributed-installation)
    -   [Starting](#starting)
    -   [Stopping](#stopping)

##### All servers are linux environments

Clustering the Appian engines, Kafka, or Zookeeper is only supported on Linux environments, not on Windows environments.

Due to the way file names and file paths are calculated for documents stored in Appian, the application server and engine servers must be on servers using the same type of operating system. Do not mix Windows and Linux.

##### Exactly three (3) instances of search server, data service, and the internal messaging service

No more or less than three (3) instances of the search server, data service, and the internal messaging service (Kafka and Zookeeper) components in total. Components that require establishing consensus between the different instances (search server, data service, Kafka, and Zookeeper) require three instances in order to have a system that is robust to a failure of one of the instances. Appian does not support more than three of each of these components. And no more than three instances can be configured.

##### At least two (2) instances of the application server and Appian engines

Components that do not establish consensus (the application server and the Appian engines) require at least two instances in order to be robust to a failure of one instance. While only two instances are required, Appian recommends that high availability installations have at least three instances of each of these services.

##### No more than one (1) instance of any Appian engine or data service on a single server

Only one instance of any given Appian engine may run on a given server. Similarly, only one instance of data service can run on a given server. The Appian engine and data service can run on the same server.

##### Multiple instances of the internal messaging service only if there are multiple instances of all Appian engines

Configuring multiple instances of the internal messaging service (Kafka and Zookeeper) can provide additional resiliency for those services in the event of a hardware or network failure, but the additional resiliency for the system as a whole will only be achieved if there are also multiple copies of all of the Appian engines.

If there is only one instance of a certain type of engine, the risk from adding additional components to the system (and therefore adding additional opportunities for failure) outweighs the benefit from adding resiliency to the Kafka and Zookeeper layers. Appian recommends only running multiple instances of the internal messaging service if you also have multiple instances of all Appian engines.

### Network configuration

Distributed installations require static IP addresses for each server. You must have a static IP address assigned to each machine prior to configuring your distributed installation. If you have not done so already, assign static IP addresses to each machine you plan to use to host Appian.

You must also verify that each machine can communicate with the others in the network over the [ports that Appian uses](Port_Usage.html). As a security best practice, it is recommended to configure firewall settings so that each port is only open to the machines that need access.

For example, the internal messaging service (IMS) uses ports `2181`, `2888`, `3888`, and `9092`, and the other services that need to communicate with the IMS are engines, the data service, application server, Zookeeper, and other IMS instances. So ports `2181`, `2888`, `3888`, and `9092` should only be open to machines that are hosting an instance of engines, the data service, application server, Zookeeper, or IMS. For a non-distributed installation where all Appian services are hosted on one server, then only the local host should have access to the ports.

### Install Appian on each machine

[Install a full version of Appian](Installation_Guide.html) on machines that you wish to host any Appian component. Regardless of whether the machine is intended to run just Appian engines, just the main Java application, just a search server node, or some combination thereof, the full installation should exist on each server in the environment in order to eliminate the possibility of misconfiguration due to missing components. An Appian installation is not required on the machine running the RDBMS.

Each installation of Appian must be of the same version with the same [hotfixes](Hotfixes.html).

### Configuration

**Caution:**  **Configuration File Consistency**

When running across multiple servers, it is especially important to make sure that they are configured the same. All configuration files, such as **appian-topology.xml**, **custom.properties**, **data-server-sec.properties**, and others must be the same on all servers.

#### Topology XML file

The way to specify which components of Appian run on which hosts is with the **appian-topology.xml** file, located in `<APPIAN_HOME>/conf/`. Example configurations can be found in **appian-topology.xml.example**, which is located in the same directory.

When specifying hostnames in the **appian-topology.xml** file for a distributed installation, you must not use "localhost" as that will resolve differently on the different machines in the cluster. Hostnames specified in **appian-topology.xml** must exactly match the `host` value that is marked with `_h` in the output from **\_admin/\_scripts/licinfo.sh (.bat)**.

If an **appian-topology.xml** file is empty or contains only XML comments, the engines will use a default topology. If a topology contains invalid XML, an error will be thrown.

#### Engine security token

As part of a distributed installation, it is a requirement to copy the **appian.sec** file across all machines in the distributed environment, for it is necessary to enable authorized connections between the engines and specified application servers. It is located in `<APPIAN_HOME>/conf/`.

Refer to [Appian Engine Connection Restrictions](Appian_Engine_Connection_Restrictions.html) for more information.

#### Data service security token

For a distributed installation, a `data-server-sec.properties` file must exist in the `<APPIAN_HOME>/conf` and `<APPIAN_HOME>/data-server/conf` directories for each server in the distributed environment, and must have the same token value across all nodes of an environment. The token in this file authorizes internal requests to the data service's HTTP endpoints.

Refer to [Data Service Connection Restrictions](Data_Server_Connection_Restrictions.html) for instructions.

**Caution:**  [Registering an environment with the configure script](Configure_Script.html#registering-an-environment) creates a `data-server-sec.properties` file with a unique `dataserver.password` property value. For a distributed installation of Appian, this script must be run on each node of the distributed environment and so the generated `dataserver.password` property value will be distinct on each node.

Make sure to update the `dataserver.password` property value to be the same value on each node so that the `dataserver.password` is consistent across the distributed environment. If this is not done, the data service will not be able to start and the application server will not be able to connect to the data service.

#### Service manager password

As part of a distributed installation, it is a requirement to copy the **service\_manager.conf** file located in `/services/conf/` across all machines in the distributed environment, for it is necessary to enable authorized connections to the service manager and the engines across machines.

The **service\_manager.conf** file is created when running the [password script](Service_Manager_Scripts.html#password-script).

### Scheduling checkpoints

When moving to a high-availability configuration you should also remove any custom configurations for [checkpoint scheduling](Configuring_Application_Checkpointing.html#configuring-checkpointing-frequency). High availability installations should use the default values for these configurations as engines do not become unavailable when checkpointing when there is more than one set of engines.

### Shared files

The following directories must be shared across all servers that run that component. All servers that run the given component need both read and write access to these directories.

| Component Name | Folder Name |
| --- | --- |
| Application Server | `APPIAN_HOME/_admin/accdocs1/` |
| Application Server | `APPIAN_HOME/_admin/accdocs2/` |
| Application Server | `APPIAN_HOME/_admin/accdocs3/` |
| Application Server | `APPIAN_HOME/server/archived-process/` |
| Application Server | `APPIAN_HOME/server/msg/` |
| Application Server | `APPIAN_HOME/_admin/mini/` |
| Application Server | `APPIAN_HOME/_admin/models/` |
| Application Server | `APPIAN_HOME/_admin/plugins/` |
| Application Server | `APPIAN_HOME/_admin/process_notes/` |
| Application Server | `APPIAN_HOME/_admin/shared/` |
| Channels Engine | `APPIAN_HOME/server/channels/gw1/` |
| Content and Collaboration Statistics Engines | `APPIAN_HOME/server/collaboration/gw1/` |
| Forums Engine | `APPIAN_HOME/server/forums/gw1/` |
| Notifications and Notifications Email Engines | `APPIAN_HOME/server/notifications/gw1/` |
| Personalization Engine | `APPIAN_HOME/server/personalization/gw1/` |
| Portal Engine | `APPIAN_HOME/server/portal/gw1/` |
| Process Analytics 00 Engine | `APPIAN_HOME/server/process/analytics/0000/gw1/` |
| Process Analytics 01 Engine | `APPIAN_HOME/server/process/analytics/0001/gw1/` |
| Process Analytics 02 Engine | `APPIAN_HOME/server/process/analytics/0002/gw1/` |
| Process Design Engine | `APPIAN_HOME/server/process/design/gw1/` |
| Process Execution 00 Engine | `APPIAN_HOME/server/process/exec/00/gw1/` |
| Process Execution 01 Engine | `APPIAN_HOME/server/process/exec/01/gw1/` |
| Process Execution 02 Engine | `APPIAN_HOME/server/process/exec/02/gw1/` |

If you have more than the default three shards of Process Execution and Process Analytics, the **gw1** directories for those shards must be shared across servers as well.

The recommended approach for sharing directories between servers is:

1.  Set up a central network attached storage server.
2.  Create a directory structure on the storage server that mirrors the directories listed in the table above.
3.  Replace the above directories on each server with links to the corresponding directory on the network attached storage server.

Both Kafka and Zookeeper are sensitive to latency with regard to CPU, memory, and disk contention. For high-load sites and any site that has multiple Kafka or Zookeeper instances, Appian recommends having enough CPUs on the machines that host these services such that they each have at least one CPU reserved for their use.

For example, if you have the default 15 engines, Kafka, Zookeeper, and service manager all on a single server all fully in use, that server should have at least 18 CPUs. This is because each of the 15 engines [may take up to 1 CPU for itself](Scaling_Appian.html#add-hardware), which leaves 3 CPUs split between Kafka, Zookeeper, and service manager. As not all types of system load will result in all engines being fully utilised at the same time, it is possible to have fewer CPUs than the total number of engines as long as the server has enough total CPU capacity to handle the peak loads.

Appian also recommends keeping the data directories for these two components (`services/data/kafka-logs` and `services/data/zookeeper`) on local disks rather than mounting them onto network drives. This recommendation is consistent with industry [best practices for these services](https://docs.confluent.io/current/kafka/deployment.html#disks). The same recommendation about using local disk applies to the [search server](Search_Server.html#index-data) (`<APPIAN_HOME>/search-server/data/`) and the [data service](Configuring_the_Data_Server.html#file-system) (`<APPIAN_HOME>/data-server/data/`) as well.

**Caution:**  The files in these directories should never be manually modified, moved, or deleted.

#### Shared logs

In addition to the above directories, which must be shared across servers to have a functioning system, many administrators choose to share application logs between servers for ease of access by linking the **/logs** directory on the local machine to **/shared-logs/<local machine name>** directory on a network attached storage server and adding a link from **APPIAN\_HOME/shared-logs** to the **shared-logs** directory on the network storage device.

[Appian Health Check's](https://community.appian.com/p/health-check) data collection step will look for a directory named "shared-logs" directly inside the `APPIAN_HOME` directory and will collect logs inside any subdirectories found there.

```
1
2
3
APPIAN_HOME/shared-logs/<machine A>
APPIAN_HOME/shared-logs/<machine B>
APPIAN_HOME/shared-logs/<machine C>
```

With this shared logging configured, the data collection step of Health Check only needs to be run on a single server rather than run once on each server.

## Load balancing application servers

Follow the steps for [Load Balancing Multiple Application Servers](Configuring_Apache_Web_Server_with_Appian.html#load-balancing-multiple-application-servers) to route traffic from your web servers across multiple application servers.

When deploying Appian via the [configure script](Configure_Script.html#configure-tomcat-clustering-by-specifying-a-node-name), ensure that the names you use in the `Configure Tomcat clustering by specifying a node name` step match the node names specified in the web server's config file.

## How to run a distributed installation

### Starting

The procedure for [starting a distributed installation of Appian](Starting_and_Stopping_Appian.html#starting-and-stopping-on-distributed-environments) is no different than starting a non-distributed installation of Appian except that you must start all instances of a given component, across all servers, before moving onto the next component. First make sure the RDBMS is running, then start all of the engines, then start all instances of the data service, then the search server, and then start the application servers.

If the Appian engines are running on different servers than Kafka and Zookeeper, either can be started first. The engines will wait for Kafka and Zookeeper before they become available.

### Stopping

The procedure for [stopping a distributed installation of Appian](Starting_and_Stopping_Appian.html#starting-and-stopping-on-distributed-environments) is no different than stopping a non-distributed installation of Appian except that you must stop all instances of a given component, across all servers, before moving onto the next component. First shut down all application servers, then shut down all instances of the search server, then shut down all the instances of the data service, and then shut down all of the engines (using the `--cluster` option of the [stop script](Service_Manager_Scripts.html#stop-script)).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...