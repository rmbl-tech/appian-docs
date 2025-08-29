---
source_url: https://docs.appian.com/suite/help/25.3/Log_Streaming_for_Appian_Cloud.html
original_path: Log_Streaming_for_Appian_Cloud.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Log Streaming for Appian Cloud

 [![](images/appian-protect.png) Requires Appian Protect Professional Success Plan or higher](
                /suite/help/25.3/Appian_Protect.html
              )

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

**Note:**  Log Streaming is available only to customers enrolled in Professional or Signature Success Plans. The functionality described below is not included in the base Appian platform.

## Overview

Appian Cloud environments can be configured to stream [supported logs](#supported-logs), in real time, to your own syslog receiver. Once logs are stored in a central repository, you can index, access, search, and correlate events using your existing Log Management and Security Information and Event Management (SIEM) tools.

This service operates on a push-based model, in which Appian Cloud environments are configured to send a stream of logs to your syslog receiver. Logs are forwarded in real-time as the messages are written in the Appian Cloud environment.

These logs can be further digested and aggregated by tools of your choice, such as Splunk, LogRhythm, and Elasticsearch-Logstash-Kibana (ELK) stack.

## Benefits

With this service enabled on your Appian Cloud environment, you can integrate the information contained in the logs for a consolidated view of your enterprise operations. Some benefits of this service include:

-   **Simplified log management**: You can easily consume your logs from a centralized location.
-   **Faster diagnosis and troubleshooting of your enterprise applications**: You benefit from increased visibility of debugging messages. For example, you can expose these messages to Appian designers and system administrators to quickly resolve application-level incidents as soon as they are generated.
-   **Improved system visibility**: You can assess historic performance by aggregating system metrics over time. This allows you to visualize, identify, and predict patterns in the demand of your enterprise applications.
-   **Integrated security analytics**: You can continuously monitor for login activity to your Appian Cloud environment. By integrating with other enterprise systems, you can audit and correlate patterns in a unified platform.

## Setup

Log Streaming supports the transmission of messages to either a self-managed syslog receiver or a Sumo Logic Cloud Syslog Source.

### Self-Managed Syslog Receiver (IPsec VPN Tunnel)

The figure below shows an example of the message flow between your Appian Cloud environment and a self-managed syslog receiver in your network using an IPsec VPN tunnel.

![images:Log_Streaming.png](images/Log_Streaming.png)

Log transmission is performed over an [IPsec VPN tunnel](Cloud_VPN_Integration.html) established to your network. As an additional security layer, syslog messages can be encrypted using a TLS certificate installed on the syslog receiver that you provide. TLS encryption is enabled by default but can be disabled upon your request.

### Self-Managed Syslog Receiver (AWS PrivateLink)

The figure below shows an example of the message flow between your Appian Cloud environment and a self-managed syslog receiver in your network using AWS PrivateLink.

![images:Log_Streaming_PrivateLink.png](images/Log_Streaming_PrivateLink.png)

Log transmission is performed using an [AWS PrivateLink](AWS-PrivateLink_Integration.html) connection established to your network. Syslog messages are encrypted with TLS using a trusted public CA-signed certificate that you install on your own syslog receiver.

### Self-Managed Syslog Receiver (TLS 1.2)

The figure below shows an example of the message flow between your Appian Cloud environment and a self-managed syslog receiver over the public internet using TLS 1.2.

![images:Log_Streaming_TLS.png](images/Log_Streaming_TLS.png)

Log transmission is performed using TLS 1.2 with TCP and syslog messages are encrypted using a publicly trusted CA-signed certificate that you install on your syslog receiver.

### Sumo Logic Cloud Syslog Source

The figure below shows an example of the message flow between your Appian Cloud instance and a Sumo Logic Cloud Syslog Source.

![sumo_logic.png](images/sumo_logic.png)

For a Sumo Logic Cloud Syslog Source, log transmission is performed over the internet and syslog messages are encrypted with TLS using the trusted public CA-signed certificate provided by your Sumo Logic deployment.

### Supported logs

The table below contains the logs to be forwarded by each Appian Cloud environment with this feature enabled. For details about the contents and frequency of the log messages, refer to the Appian [Logging](Logging.html) documentation. To add or remove logs to stream, open a [Support Case](https://forum.appian.com/suite/sites/support).

| Log | Filename | Tag |
| --- | --- | --- |
| [Admin Console Audit](Logging.html#admin-console) | `admin_console_audit.csv` | `admin-console-audit:` |
| [Admin Console User Start Pages](Logging.html#admin-console) | `admin_console_user_start_pages_audit.csv` | `admin-console-user-start-pages-a:` |
| [Application Server](Logging.html#application-server) | `tomcat-stdOut.log` | `tomcat-logs:` |
| [Authorization Audit](Logging.html#authorizations) | `authz-audit.log` | `authz-audit:` |
| Autoscale Error Logs | `tomcat-stdOut.log` | `autoscale-tomcat-logs:` |
| [Blocked Files](Logging.html#blocked-files) | `blocked_files.csv` | `blocked-files:` |
| [Cloud Database Audit](Logging.html#cloud-database-requests) | `RDBMS-audit.log` | `rdbms-audit:` |
| [Deletions](Logging.html#deletions) | `deletion.log` | `deletion:` |
| [Design Objects](Logging.html#design-objects) | `design_objects.csv` | `design-objects:` |
| [Forgot Password Requests](Logging.html#forgot-password-requests) | `forgot_password_requests.csv` | `forgot-password-requests:` |
| [Group Management](Logging.html#group-management) | `group_management.csv` | `group-management:` |
| [Logins](Logging.html#logins) | `login-audit.csv` | `login-audit:` |
| [Logouts](Logging.html#logouts) | `logout-audit.csv` | `logout-audit:` |
| [Password Resets](Logging.html#password-resets) | `password_resets.csv` | `password-resets:` |
| [Perf Monitor RDBMS](Logging.html#data-store-performance-logs) | `perf_monitor_rdbms.csv` | `perf-monitor-rdbms:` |
| [Perf Monitor RDBMS - Slow](Logging.html#data-store-performance-logs) | `perf_monitor_rdbms_slow.csv` | `perf-monitor-rdbms-slow:` |
| [Records Usage](Logging.html#records-usage) | `records_usage.csv` | `records-usage:` |
| [Robotic Process Automation](Logging.html) | `jidoka.log` | `jidoka:` |
| [Secure Credentials Store](Logging.html#secure-credentials-store) | `secure_credentials_store.csv` | `secure-credentials-store:` |
| [Sites Usage](Logging.html#sites-usage) | `sites_usage.csv` | `sites-usage:` |
| [System metrics](Logging.html#system-metrics-logs) | `system.csv` | `system-metrics:` |
| [Task Errors](Logging.html#task-errors) | `task_errors.csv` | `task-errors:` |
| [Tomcat Access](Logging.html#application-server) | `tomcat-access.log` | `tomcat-access:` |
| [Unscanned Files](Logging.html#unscanned-files) | `unscanned_files.csv` | `unscanned-files:` |
| [User Management](Logging.html#user-management) | `user_management.csv` | `user-management:` |
| [Username Changes](Logging.html) | `username_changes.csv` | `username-changes:` |
| [Web API Details](Logging.html#prodlink-web-api-performance-logs) | `web_api_details.csv` | `web-api-details:` |
| [Web API Summary](Logging.html#prodlink-web-api-performance-logs) | `web_api_summary.csv` | `web-api-summary:` |

**Caution:**  It is only possible to stream the RDBMS audit logs in a single-node or standard 3-node [Appian Cloud HA configuration](High_Availability_for_Appian_Cloud.html). Customers with other topologies where Appian and the RDBMS are not running on the same server will be unable to stream this log.

Syslog messages have the following format:

```
1
<PRI> <TIMESTAMP> <HOSTNAME> <TAG> <MESSAGE>
```

-   `PRI`: Specifies the priority of the syslog message (RFC5424)
-   `TIMESTAMP`: Date and time of the message. The value will be expressed in the timezone configured on your syslog receiver.
-   `HOSTNAME`: Appian Cloud instance name.
-   `TAG`: Message tag depending on the log file.
-   `MESSAGE`: Complete log message generated by the Appian component. Messages also contain timestamps expressed in Greenwich Mean Time Zone (GMT).

## Prerequisite checklist

| Prerequisite | Description | Organizational Role |
| --- | --- | --- |
| Professional or Signature Success Plans Order Form | This offering is available via Professional or Signature Success Plans. | Business relationship owner |
| Update to a current Appian version | Appian Cloud environments with this feature enabled should be running a supported Appian version [per the Support Policy](cloud-support.html). | Authorized Support Contact |
| Set up an IPSec VPN Tunnel, AWS PrivateLink, or TLS 1.2 connection (Only required for self-managed syslog receivers) | For self-managed syslog receivers you are required to establish an IPSec VPN Tunnel, AWS PrivateLink, or TLS 1.2 connection to your network which will allow connectivity to your syslog receiver. Both Static and Dynamic IPSec VPN tunnels are compatible with Log Streaming. Refer to [Cloud VPN Integration documentation](Cloud_VPN_Integration.html), [Dynamic VPN Integration documentation](Dynamic_VPN_Routing.html), or [Cloud PrivateLink Integration documentation](Access_Customer_VPC_using_AWS_PrivateLink.html) for detailed steps. | Network Administrator / Authorized support contact |
| Set up syslog receiver | For Sumo Logic Cloud Syslog Source:
-   Configure a Cloud Syslog Source in your account (refer to the [documentation](https://help-opensource.sumologic.com/docs/send-data/hosted-collectors/cloud-syslog-source/rsyslog/) for details)

For Self-Managed Syslog Receiver:

-   The syslog receiver is required to listen for messages over TCP (UDP is not supported)
-   By default, the syslog clients running in your Appian Cloud environment will attempt to connect to your syslog receiver using TLS. You will need to enable TLS on your syslog receiver and install a valid publicly trusted CA-signed certificate. You may only use a certificate signed by a private CA or a self-signed certificate when using an IPSec VPN tunnel to connect to your syslog receiver
-   Upon your request, Appian can disable TLS encryption only for self-managed syslog receivers using IPsec VPN tunnels. This setting is not recommended as logs would travel in clear text in your network after the syslog traffic leaves the VPN device

 | Server/Network Administrator |

## Steps

Once all prerequisites have been completed, you can follow these steps to enable log streaming in your Appian Cloud environment:

1.  Open a [Support Case](https://forum.appian.com/suite/sites/support) requesting for enabling this service in your Appian Cloud environment. Provide the following details:
    1.  Syslog receiver target
        -   For self-managed syslog receivers using IPsec VPN, you will provide a private IP address or hostname that is part of your private network space.
        -   For self-managed syslog receivers using AWS PrivateLink or TLS 1.2, you will provide the hostname of your syslog receiver.
        -   For Sumo Logic, you provide the endpoint hostname.
    2.  Port
    3.  Token (Sumo Logic only). You need to provide the token that is generated during the setup process. This information should be provided to Appian Support over the phone or in-person to be consistent with good security practices.
2.  Appian Support will schedule a maintenance window and deploy the necessary configurations.
3.  After the maintenance window, your Appian Cloud environment will start forwarding logs to your syslog receiver.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...