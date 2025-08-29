---
source_url: https://docs.appian.com/suite/help/25.3/System_Requirements.html
original_path: System_Requirements.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# System Requirements

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details the minimum requirements your system must meet to run Appian.

You can also find additional system requirement information for specific capabilities:

-   [Appian RPA](rpa-9.17/rpa-system-requirements.html)

## Operating systems

This table lists the supported platforms for servers that host Appian. Only 64-bit operating systems running on x86-64 CPU architecture (sometimes referred to as x64) are supported. Linux hosts must have a minimum kernel version of 2.6.23.

| Operating System | Supported Platform |
| --- | --- |
| Linux (Reference Platforms) | Red Hat Enterprise Linux 8.0+ |
| Ubuntu 18.04+ |
| Amazon Linux 2 |
| Windows | Windows Server 2022 |
| Windows Server 2019 |
| Windows Server 2016 |
| Windows 10 |

Only server versions of Windows are supported for production environments. Desktop version of Windows are only supported for local development environments.

While Windows environments are fully supported, Appian recommends running on Linux if possible as we typically observe better performance and stability in Linux environments. Additionally, running more than one instance of the Appian engines and the Internal Messaging Service (Kafka and Zookeeper) is not a supported configuration in Windows environments. This means that high-availability and load balancing the Appian engines are not possible in Windows environments.

Due to the way file names and file paths are calculated for documents stored in Appian, all servers hosting the same Appian installation must use the same type of operating system. Do not mix Windows and Linux.

Customers who wish to run VMware must use one of the platforms listed above as the guest operating system.

**Caution:**  Per Confluent, VMware's vMotion and disk snapshotting capability has been known to cause a full cluster outage when used with Kafka. **For any VMware servers that host Kafka, you must disable vMotion and disk snapshotting**. See the Confluent documentation for the most up to date information on [running Kafka in production](https://docs.confluent.io/platform/current/kafka/deployment.html#vmware-optimization).

## Java

The Appian installation includes OpenJDK 17. The bundled JDK should only be used with Appian, not with other programs that run on the same server.

**Caution:**  Only the JDK bundled with Appian can be used with Appian. Other third-party JDKs are not supported.

## Transport Layer Security

### Inbound to Appian Cloud

Transport Layer Security (TLS) is required for all external sources connecting to an Appian Cloud environment, such as user requests and external systems interacting with Appian web APIs. See [TLS Policies for Inbound Web Access](TLS_Policies.html) for more information about the TLS policies Appian Cloud supports for inbound web access.

### Inbound to self-managed Appian installation

For self-managed installations, you are responsible for setting up your own TLS configuration.

### Outbound from Appian

Appian supports TLS 1.3 when connecting from Appian to an external system, such as a database or an integration.

If you must connect to systems using TLS 1.2 or lower, follow the steps in the [Post-Install Configuration](Post-Install_Configurations.html#transport-layer-security) page.

## Hardware requirements

The tables below describe the physical system requirements for Appian.

Development sites (sites where applications are built) and production sites (sites where the applications run) have different load profiles, scaling characteristics, and performance demands and so are broken out separately.

[Sizing](Using_the_Sizing_Script.html) is best run with sample data while your application is under development, and with real data after your application is complete.

### Development sites

| Usage Pattern | RAM (GB) | Storage (GB) | CPU Cores |
| --- | --- | --- | --- |
| Infrequent Use, Few Applications | 15 | 30 | 2 |
| Frequent Use or Many Applications | 30 | 100 | 4 |

### Production sites

Production instances of Appian should run on dedicated hardware or virtual machines in order to prevent resource contention, port conflicts, and interference from other applications.

| Usage Pattern | Concurrent Users | RAM (GB) | Storage (GB) | CPU Cores |
| --- | --- | --- | --- | --- |
| Single application | < 100 | 30 | 100 | 4 |
| Departmental adoption | 100 - 1,000 | 60 | 500 | 8 |
| Enterprise adoption | \> 1,000 | 240 | 1,000 | 32 |

Additionally, customers on [advanced and premium tiers](Appian_Tiers.html) will need at least 128 GB of RAM to take advantage of the 20 million row limit.

**Note:**  The sizing guidelines in the table above are a rough approximation for hardware requirements. They should be treated only as a starting point. Actual sizing also depends on the following:

-   The number of active processes and the data in those processes.
-   The number of archived processes.
-   The number of uploaded files.
-   The [engine checkpoint frequency](Configuring_Application_Checkpointing.html).
-   [High availability](High_Availability_and_Distributed_Installations.html).
-   Usage of features, like [data sync](about-data-sync.html) and [sync filters that filter by a relationship](records-filter-source-data.html#basic-mode).

Based on these factors, your actual requirements may vary.

## Cloud infrastructure as a service

For customers who wish to run Appian from cloud infrastructure as a service, Appian will run on any that support the operating systems and minimum hardware requirements as listed in this article.

The following major providers of cloud infrastructure as a service are known to be compatible with Appian:

-   [Amazon Web Services](https://aws.amazon.com/)
-   [Microsoft Azure](https://azure.microsoft.com/en-us/)
-   [Google Cloud Platform](https://cloud.google.com/)

## Kubernetes

For more details on the Kubernetes compatibility requirements for the Appian operator, see [Prerequisite Install Steps](k8s-0.184.0/install-appian-on-k8s.html#kubernetes).

## Databases

The following relational database management systems (RDBMS) are supported as the [Appian data source](Configuring_Relational_Databases.html#appian-data-source) and as [business data sources](Configuring_Relational_Databases.html#business-data-sources). The RDBMS can be hosted on any cloud service providers, such as AWS or Azure, as long as it is one of the types and versions listed below and the network latency falls within the recommended guidelines.

| RDBMS | End-of-Support Date |
| --- | --- |
| MySQL 8.0 with InnoDB engine | 01-Apr-2026 |
| MariaDB Server 10.11 | 16-Feb-2028 |
| MariaDB Server 10.6 | 23-Aug-2029 |
| Oracle 23ai | 31-Dec-2031 |
| Oracle 19c | 31-Dec-2029 |
| Microsoft SQL Server 2022 | 11-Jan-2033 |
| Microsoft SQL Server 2019 | 08-Jan-2030 |
| Microsoft SQL Server 2017 | 12-Oct-2027 |
| Microsoft SQL Server 2016 | 14-Jul-2026 |
| PostgreSQL 16 | 09-Nov-2028 |
| PostgreSQL 15 | 11-Nov-2027 |
| PostgreSQL 14 | 12-Nov-2026 |
| PostgreSQL 13 | 13-Nov-2025 |
| Aurora MySQL 3 | 30-Apr-2027 |
| Aurora PostgreSQL 15 (starting at 15.2.0) | 29-Feb-2028 |
| Aurora PostgreSQL 14 (starting at 14.3.0) | 28-Feb-2027 |
| Aurora PostgreSQL 13 (starting at 13.3.0) | 28-Feb-2026 |
| IBM DB2 UDB v11.5 for Linux, UNIX, and Windows | 30-Sep-2025 |
| IBM DB2 UDB v11.1 for Linux, UNIX, and Windows | 30-Apr-2025 |

### Database drivers

| RDBMS | Driver |
| --- | --- |
| MySQL | Connector/J 8.4 |
| MariaDB | MariaDB Connector/J 3.5 Series |
| Oracle | Oracle 23ai JDBC Driver Certified with JDK17 |
| Microsoft SQL Server | Microsoft JDBC SQL Server Driver 12.x |
| PostgreSQL | PostgreSQL JDBC 42.7.x Driver |
| Aurora MySQL | AWS JDBC Driver for MySQL 1.1.x |
| Aurora PostgreSQL | PostgreSQL JDBC 42.7.x Driver |
| IBM DB2 UDB | IBM DB2 JDBC Driver version 4.31.10 |

In addition to these supported databases, other JDBC-compliant databases can be queried using a [connected system plug-in](connected-system-plug-in-landing.html).

Appian recommends a round-trip time for TCP communications with the database of less than 10 milliseconds with an upper bound of 25 milliseconds for acceptable performance. Network latency outside of these bounds will result in degraded system performance.

**Note:**  If you are connecting to an Amazon Aurora data source through the [Admin Console](Appian_Administration_Console.html#data-sources), for **Type**, select the type of database that best matches your Aurora version. For example, if you are using Aurora PostgreSQL, simply choose PostgreSQL. However, if you are using Aurora MySQL, then you should select the specific option for Aurora MySQL. The non-Aurora MySQL data source option is not advised as it utilizes a different JDBC driver than AWS recommends.

## Web browsers

For [Appian Sites](Sites.html), mobile users should use the Appian Mobile app. For [Appian Portals](portals-home.html), mobile users should use a mobile browser. See [Mobile devices](#mobile-devices) for more information.

Web browsers must allow cookies. If a user's browser is not configured to allow cookies, then Appian displays an alert stating that cookies must be enabled in order to log in. Appian uses browser cookies to maintain user sessions, to enable protections against threats such as cross-site request forgeries (CSRF), and, if configured, remember certain user choices between sessions. The cookies contain anonymized tokens and unique identifiers. No personally identifiable information (PII) is ever stored by Appian in a browser cookie.

Web browsers for Appian Cloud users should be configured to allow TLS version 1.2.

### Supported browsers

Appian supports the most recent stable version of the following desktop browsers:

| Browser | Comments |
| --- | --- |
| Microsoft Edge | Supported on Windows and MacOS operating systems. |
| Mozilla Firefox | Mozilla Firefox updates automatically. |
| Google Chrome | Google Chrome updates automatically. |
| Apple Safari | Safari is only supported on Mac operating systems. |

**Note:**  Appian does not support browsers that are no longer supported by their vendor. Use the latest supported browser version and always apply all available security updates.

### Appian feature support by browser

The table below lists browser compatibility by feature. Certain features in Appian, such as the Process Modeler, have their own browser configuration requirements. See [Web Browser Configuration](Web_Browser_Configuration.html) for more information.

| Feature | Edge | Mozilla Firefox | Google Chrome | Apple Safari |
| --- | --- | --- | --- | --- |
| Tempo | Yes | Yes | Yes | Yes |
| Sites | Yes | Yes | Yes | Yes |
| Portals | Yes | Yes | Yes | Yes |
| Embedded Interfaces | Yes | Yes | Yes | Yes |
| Appian Designer | Yes | Yes | Yes | Yes |
| Admin Console | Yes | Yes | Yes | Yes |
| Process Modeler | Yes | Yes | Yes | Yes |
| Web Content Component | Yes | Yes | Yes | No |
| RPA Console | Yes | Yes | Yes | Yes |
| Process Mining | Yes | Yes | Yes | No |
| [Portal Pages](Portal_Pages.html) (deprecated) | Yes (in IE mode)1 | Yes (runtime only) | No | No |

1Legacy [portal pages (deprecated)](Portal_Pages.html) is the only product area supported in IE Mode. All other product areas must be used with a modern browser and are not guaranteed to work when using IE Mode.

## Mobile devices

All supported versions of the Appian Mobile app are listed in [Mobile Support](mobile-support.html).

The latest version of the Appian Mobile app is always backward-compatible with previous supported Appian versions, so we encourage you to upgrade to take advantage of new features and enhancements.

### Mobile operating system support policy

It is important that you use an OS version supported by Google and Apple to ensure that you have the latest security updates to protect your enterprise data. For more information, refer to the security bulletins published and maintained by [Google](https://source.android.com/security/bulletin) and [Apple](https://support.apple.com/en-us/HT201222).

#### iOS

The Appian Mobile iOS app is generally supported on the latest version of iOS and one prior major version. As of today, we support iOS 18 and iOS 17.

#### Android

The Appian Mobile Android app is generally supported on the latest version of Android OS and three prior major versions. As of today, we support Android 16, Android 15, Android 14, and Android 13.

**Note:**  We do our best to maintain support for older Android OS versions. So you should still be able to use the Appian Mobile app on older OS versions. However, we do not commit to addressing issues specific to an unsupported version.

### Accessing portals on mobile devices

Portals can't be accessed from the Appian Mobile app. Instead, use a mobile browser on the latest versions of iOS or Android to access portals. You can also configure a portal as a [progressive web app](portal-object.html#progressive-web-app-pwa) (PWA), which allows you to configure a customized experience when users install the portal on their device.

## File systems

Network File System (NFS) protocol is supported.

Server Message Block (SMB) protocol is unsupported.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...