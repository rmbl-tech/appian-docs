---
source_url: https://docs.appian.com/suite/help/25.3/Enterprise_Architecture_Overview.html
original_path: Enterprise_Architecture_Overview.html
version: "25.3"
title: "Enterprise Architecture Overview"
page_id: "Enterprise_Architecture_Overview"
section: "High level overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Enterprise Architecture Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how Appian works as part of an enterprise solution. It includes:

-   An overview of the core components of the Appian suite.
-   How Appian interacts with other software and systems in the enterprise.
-   How these components work together to provide features for end users, application developers, and administrators.

## High level overview

At a very high level, Appian is composed of six main software components:

-   A front end server hosting the Appian web application.
-   A set of backend in-memory database engines.
-   One or more search servers.
-   A relational database hosting Appian internal data and metadata, plus any additional relational databases hosting Appian business data.
-   A data service to store application data and metadata.
-   An internal messaging service that relays messages between different components of Appian.

The Appian web application serves requests from users' browsers or mobile apps and is primarily responsible for all end user, designer, and administrator web interface features.

The Appian engines contain metadata for most Appian objects created by the designers (groups, process models, rules, constants, knowledge centers, etc.), as well as runtime data created by users or processes (process instances, document metadata, etc). Data stored in the engines is accessed and updated by the web application.

The search server provides additional support for application features like viewing recent user activity in the Admin Console.

The Appian Data Source is a relational database that stores Appian data and metadata, such as News posts, CDT and Record Type definitions, and Admin Console properties. Additional business data sources can be configured to store and access business data from Appian applications.

The data service is Appian's next-generation data persistence layer. It provides better performance, higher reliability, and increased security for application data. Currently, the data service is used to store user-saved filters and serves as the storage layer for record types with [data sync](about-data-sync.html) enabled.

## Appian architecture

Appian is an enterprise software platform that includes core components that work with other systems (database server, mail server) to provide capabilities and services to users. The following diagram illustrates the components of a typical Appian installation in greater detail:

[![images/How_Appian_Works/enterprise_architecture_overview.png](images/How_Appian_Works/enterprise_architecture_overview.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img187)

[![](images/How_Appian_Works/enterprise_architecture_overview.png)](#_)

All core components of the Appian architecture can be configured to support [backup/restore](Configuring_Backup_and_Restoration.html) and [failover](High_Availability_and_Distributed_Installations.html) for high availability. Since Appian depends on other systems it is equally important to ensure that all associated components are similarly configured for high availability and recovery.

For more information on Appian's capabilities as they pertain to support tiers, see [Customer Support](https://appian.com/support/resources/success-plans).

The sections below walk through the Appian architecture to explain what each component does and how they interact, as well as links to additional documentation resources.

## Web/mobile client

Appian's end-user application interface is supported on all major web browsers and native [mobile apps](Appian_for_Mobile_Devices.html) are available for the most popular platforms. The design interface, which is used to build applications, and the system [Admin Console](Appian_Administration_Console.html) are also 100% web-based.

All web and mobile clients access Appian using HTTP/S. HTTPS is recommended for production installations. User-uploaded content and third-party extensions are hosted from two independent domains to prevent unintentional or insecure interaction with Appian interfaces. Minimal web browser [configuration](Web_Browser_Configuration.html) is required and Appian does not use browser extensions or plugins. Internal-facing Appian sites typically require the use of mobile VPN tools to enable mobile access from commercial cellular networks.

## Web server

As with most web applications, Appian installations should use a web server to handle client requests before passing traffic to the application server.

A web server can be used to handle static requests (images, css, etc.) which enables that content to be cached by client browsers for improved performance. Multiple web servers can be used with a load balancer. When using HTTPS, a web server can remove the SSL overhead from the application server. Some deployments may also use an SSL accelerator (often combined with a load balancer) before traffic reaches the web server to further optimize HTTPS performance.

Requests for non-static content are passed through from the web server to the application server. The connection configuration between these components depends on which web and application server platforms are used. For example:

-   Apache web server uses [mod\_jk](Configuring_Apache_Web_Server_with_Appian.html#load-mod_jk-module) to connect to Appian.

-   IIS web server uses the [ISAPI Redirector DLL](Configuring_IIS_with_Appian.html) to connect to Appian.

These methods of communication are not Appian-specific but do require Appian-specific configurations to control which types of content are served by each component and other settings.

## Application server

An application server is a multi-threaded execution environment for web applications and provides built-in support for connecting to a wide range of related system components. Appian requires Java 8 or higher.

The application server coordinates most of the interaction between system components and is responsible for a significant portion of Appian's functionality. Specifically, the application server:

-   Handles end-user web or mobile client requests that are passed through from the web server (including authentication and authorization for those requests).
-   Retrieves and updates data in the Appian engines and the primary and business databases.
-   Manages documents uploaded by users and generated by processes.
-   Executes business rules, runs the activities defined in process models, and communicates with external systems.
-   Can be extended using plug-ins deployed using the OSGi framework.

Because the application server is involved in such a significant amount of activity, it is a central source of [logging](Logging.html) and other information about system usage, health, and performance. It also has a wide range of [configuration options](Post-Install_Configurations.html), most of which are managed in the [custom.properties](Custom_Configurations.html#custom-properties) file or the [Admin Console](Appian_Administration_Console.html).

## Appian engines

The Appian engines are in-memory, real-time databases based on KDB and the K language. The engines provide extremely fast storage and retrieval of data and also contain low level logic for high volume operations like security and group membership checks.

A default Appian installation has 15 engines: 3 process execution engines, 3 process analytics engines, 6 other individual engines, and 3 to support legacy portal. Each engine serves a unique role in the Appian architecture.

The execution and analytics engine come in pairs and are expandable up to 32 pairs of engines:

-   **Process Execution**: Manages process execution and data for associated process models. Also referred to as exec, PX.

-   **Process Analytics**: Stores all relevant information that may be used in a report on a process. Also referred to as analytics, PA.

[Additional execution and analytics engines](Adding_Execution_and_Analytics_Engines.html) can be used to load balance high process execution and/or reporting volume across more engines and more engine servers (in a distributed environment).

The following six engines play a significant and active role in current features:

-   **Content:** Stores metadata and security settings for documents and their organizational structures (communities, knowledge centers, and folders). The actual document content is stored on the file system, not in the engine. Also referred to as collaboration, collab, CO.

-   **Collaboration Statistics:** Contains statistics on document usage and storage. Also referred to as collab-stat, CS.

-   **Portal Notifications:** Stores information about system notification settings. Also referred to as notif, notifications, NO.

-   **Email Notifications:** Responsible for generating and sending notifications via email. Also referred to as notif-email, NE.

-   **Personalization:** Stores information about users, groups, group membership, and group types. Also referred to as groups, PE.

-   **Process Design:** Stores all information that pertains to the design of the process models within the application. Also referred to as design, PD.

The following engines support older features in the Apps Portal interface:

-   **Portal:** Stores all information about pages in the Apps Portal interface. Also referred to as PO.

-   **Channels:** Stores information about the portlet types that are displayed on portal pages in the Apps Portal interface. Also referred to as CH.

-   **Forums:** Stores all of the topics and messages posted to discussion forums in the Apps Portal interface. News content in the Tempo interface is not stored in this engine. Also referred to as discussion forums, DF.

## Search server

The search server contains an ElasticSearch server and aggregates data from the rest of the application to support features like tracking historical performance, viewing recent user activity, and analyzing design-time impacts/dependencies. The search server runs as a stand alone Java application and multiple search servers can be configured to allow for both data redundancy and high availability.

## Relational databases

The Appian Data Source is a relational database that stores internal Appian data and metadata and is required to run Appian. The same relational database that is used as the Appian Data Source can be used as a business data source. Appian also allows for additional business data sources to be configured, providing the ability for database isolation across Appian applications if desired.

The Appian Data Source and business data sources must be [configured with a supported database](Configuring_Relational_Databases.html).

## File storage

The application server and Appian engines are installed on and store run-time content on the file system, although they store data in independent directories and do not use the file system to share data with each other. Shared storage (Windows or NFS) is required when running a distributed environment with multiple application servers or multiple engines different servers.

The application server stores run-time content in the directories under `<APPIAN_HOME>/_admin`:

-   `accdocs1`, `accdocs2`, `accdocsX`: Contain documents uploaded by users and generated by processes.

-   `logs`: Contains all application server logs.

-   `mini`: Contains data displayed in web content channels in the Apps Portal interface.

-   `models`: Contains XML files associated with Appian process models.

-   `process_notes`: Contains data for the process and task notes feature available in the Apps Portal interface.

-   `shared`: Contains the site-wide keystore used for securing passwords and the encryption and secure credential store services.

The Appian engines store run-time content in the directories under `<APPIAN_HOME>/server`:

-   `../gw1`, `../gw2`, `../gwX`: Contain .kdb files that persist in-memory engine state and transactions.

-   `archived-processes`: Contains .l files representing process instances that have been archived by the process execution engines.

-   `logs`: Contains all Appian engine logs.

-   `msg`: Contains message content for discussion forums in the Apps Portal interface.

Default storage locations can be changed using [configuration settings and maintenance scripts](Internal_Data.html).

## Data service

The [data service](Data_Server.html) is a custom-built distributed data system which is optimized to handle both transactional and analytical workloads without any manual database tuning or adminstration required. The data service guarantees ACID-compliant transactions and is designed for high availability and resiliency.

The architecture of the data service is composed of several different components:

-   A historical component for writing data.
-   Multiple real-time store components for querying data.
-   A bulk ingestion component for efficiently processing [full syncs](records-data-sync.html#schedule-full-syncs).
-   An appender component for performing background operations.
-   A data client that runs in the application server and provides an interface for internal requests to the data service.
-   A watchdog component that monitors the health of all components and recovers a component in the event of an isolated failure.

Writes to the data service also depend on the availability of the [Internal Messaging Service](#internal-messaging-service), which serves as a durable transaction log for the data service.

## Mail server

Appian requires an external SMTP server to send outgoing email including system notifications and email messages sent by process instances. [SMTP configuration](Mail_Server_Setup.html#sending-emails) supports common security features like SSL/TLS and server authentication.

Appian can also be configured to [receive email](Mail_Server_Setup.html#receiving-emails) over POP3 or IMAP/S. The application server polls the mail server and routes each incoming message to either start a new process or continue an existing process flow from an event node.

## Appian RPA

Environments with [Appian RPA](rpa-9.17/new-to-rpa.html) enabled use a specific server to orchestrate or queue robotic task executions. This RPA server communicates with RPA agents on customer resources and the [application server](#application-server).

## Process Autoscaling

An optional capability offering horizontal scaling to power high-throughput and high-volume process workflows. This Java-based engine uses Appian Cloud services to automatically react to higher demand by provisioning additional resources when needed and scaling them back down when demand returns to normal.

## Appian Process Mining

You can only use Appian Process Mining 6.0+ in Appian Cloud.

## Authentication services

Appian's default authentication uses a username/password login form for web browser clients and HTTP Basic for web API clients. User credentials are validated against Appian's internal account data in the personalization engine. The default configuration also includes features like "[remember me](Authentication.html#remember-me-authentication)" authentication and [password complexity/expiration controls](Appian_Administration_Console.html#appian-authentication).

Other authentication protocols and methods including LDAP/Active Directory and SAML can be configured in the [Admin Console](Authentication.html#configuring-authentication).

## Integration services

As an enterprise solution Appian often integrates with external systems in order to display information to users, move data between systems, make decisions in business processes, and more. All of these integration capabilities are managed by the application server and can be extended using OSGi plug-ins.

Appian also has several built-in connected systems that enable rapid integration with [Microsoft Dynamics](microsoft-dynamics-365-crm-connected-system.html), [Salesforce](salesforce-connected-system.html), [SharePoint](sharepoint-connected-system.html), and more. The [Appian for SharePoint module](Appian_for_SharePoint_2013.html) provides additional support for exposing Appian data inside SharePoint.

In addition Appian can connect using more general purpose integration methods like [JMS](Working_with_the_Java_Messaging_Service.html), file transfer protocols, and multiple out-of-the-box web services options that can read and write data using process model smart services ([SOAP](Call_Web_Service_Smart_Service.html), [REST](HTTP_Query_Smart_Service.html)) or from interfaces like a record or report (see [Scripting Functions](Appian_Functions.html)). Appian also simplifies incoming integration by exposing [process models as web services](Publishing_Process_Models_as_Web_Services.html).

## Internal messaging service

The Internal Messaging Service is responsible for relaying data between different components of Appian's architecture. It is implemented using Apache Kafka, which is an open source distributed messaging system with publish-subscribe semantics, and Apache Zookeeper, which coordinates leader election within the Kafka cluster.

Currently the Internal Messaging Service is used as a transaction log for the engines and the data service.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...