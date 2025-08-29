---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_FAQ.html
original_path: Appian_Cloud_FAQ.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud FAQ

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

The purpose of this page is to provide answers and links to additional information for the most commonly asked questions around Appian Cloud capabilities and policies.

## Initial Appian Cloud environment setup

### How are environments named?

Your Appian Cloud environment URLs are generated based on the environment name that is recorded in your legal agreement, using the following naming conventions:

|   | Commercial regions | US GovCloud regions |
| --- | --- | --- |
| Production environment | `ENVIRONMENT_NAME.appiancloud.com` | `ENVIRONMENT_NAME.appiancloud.us` |
| Lower environments | `ENVIRONMENT_NAMEdev.appiancloud.com` | `ENVIRONMENT_NAMEdev.appiancloud.us` |

Example production environment: _`hello`_`.appiancloud.com`. Example lower environments: _`hello`_`dev.appiancloud.com` and _`hello`_`test.appiancloud.com`.

### Can our environment name be changed?

If you wish to change the name of one or more of your environments, this can be requested from Appian Support by one of your designated support contacts opening a support case through MyAppian. Note that this change will require a [maintenance window](Appian_Cloud_Site_Maintenance.html), during which time the environments will not be available.

For information on configuring a custom domain, refer to [Using a Custom Domain in Appian Cloud](Using_a_Custom_Domain_in_Appian_Cloud.html).

### Who is my subscription administrator?

The legal agreement will name your first subscription administrator, also known as a license administrator. It is important to name the correct person because Appian can only provide certain details to this named individual.

When your environments are initially set up and provided to you, a system administrator account is created for each environment. The subscription administrator will receive an email notification with the details of each environment URL and the details for first time login. The subscription administrator can then log into your Appian Cloud environments and create additional users, including additional system administrators.

The subscription administrator also serves as your initial User Registration Administrator and Licensing Point of Contact. User Registration Administrators are responsible for naming your company's designated support contacts. Licensing Points of Contact can approve or deny product license requests and are also notified when licenses are going to expire.

To modify these assignments:

1.  In MyAppian, go to [Support](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Click **Accounts** and select the relevant account.
3.  Go to **Related Actions**.

### How can I add new system administrators without the subscription administrator?

The current subscription administrator can create additional system administrator users on your site. If you have only one subscription administrator and that individual is not available to perform this action (e.g. left your company), you can follow the process outlined in [KB-1811](https://community.appian.com/support/w/kb/1147/kb-1811-how-to-register-administrators-not-listed-in-customer-order-forms-and-agreements). Note that creating a new system administrator provides full control of your environment, so Appian Support will be required to verify the authenticity of the request and secure necessary approvals before performing this change.

### Where is my environment hosted?

A list of all of Appian's available regions and availability zones can be found [here](https://appian.com/support/resources/trust/availability). Your environments are hosted based on the location requested in your legal agreement. If you need to confirm this location for any reason, one of your designated support contacts can request this information from Appian Support by creating a support case in MyAppian.

### Can my environment be moved to a different region?

Environments can be moved to a different hosting region and you will need to initiate this request by creating a support case in MyAppian. The process to migrate the environment is straight forward, but clients need to consider the potential work to re-provision VPN connections and any associated impact.

## Upgrade Policies & Maintenance Windows

### What are Appian's policies for upgrading Appian Cloud environments?

Appian releases new versions of its platform on a quarterly basis. The process to convert Appian Cloud customers to the latest release is fully automated and can usually be scheduled a few weeks after the release is generally available. Appian will make all efforts to minimize the number of service interruptions for customers of Appian Cloud, as well as to perform maintenance activities outside of regular business hours for end users of the system.

Additional information on currently supported versions can be found [here](cloud-support.html).

### How are environment upgrades scheduled, and can they be rescheduled?

[Maintenance windows](Appian_Cloud_Site_Maintenance.html) for upgrades are scheduled to take place outside of regular business hours (based on the region where your environment is hosted) to minimize impact on end users of the system. If you would like to change the date and time for a scheduled upgrade, you can self-manage your upgrades from the [Cloud Installations](https://forum.appian.com/suite/sites/cloud-installations) site in MyAppian, or a designated support contact can create a support cases requesting a new date or time.

### Who is notified about upgrades or any other maintenance activities that require application downtime?

Customers are notified about maintenance activities in advance via email. Email notifications are also sent at the start and completion of the scheduled maintenance. These notifications are sent to the original subscription administrator, your company's designated support contacts, and any other users or distribution lists you have defined on a particular account.

The email notifications include the exact date and time when your Appian Cloud environments have been scheduled for patches or upgrades and will be at least two weeks out from the date of the notification.

### How can I update our contact lists for receiving these notifications?

Your User Registration Administrator can add additional contacts for these notifications.

To add additional contacts:

1.  In MyAppian, go to [Support](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Click **Accounts** and select the relevant account.
3.  Go to **Related Actions**.

If you prefer, you can also create an email distribution list that you manage on your side and add that distribution list for notifications.

### Where can I find more information about the type of maintenance activities in Appian Cloud?

The [Appian Cloud Environment Maintenance](Appian_Cloud_Site_Maintenance.html) topic includes information about the types of maintenance activities for Appian Cloud.

## Monitoring & Alerting

### What areas are included in Appian Cloud Monitoring?

Appian Cloud tracks the health of your environment 24x7x365. This includes monitoring on key operational metrics across the following areas and more…

-   Disk space Utilization
-   Memory Utilization
-   Login Page Availability
-   VPN Tunnel Health (Production Environments)
-   Anti-Virus Alerts
-   Health & Status of Appian Components

### What happens if Appian Cloud Monitoring detects a problem on our environment?

For any alerts that indicate a current or potential environment impact, Appian Support will create a case to notify your designated support contacts and inform them of remediation steps that Appian is taking, or that are required of the customer.

### How does Appian communicate changes that could affect system security, availability, and/or confidentiality?

Unless such a change is initiated upon customer request, changes that may materially affect system security, availability, and/or confidentiality are communicated to affected customers for review in accordance with Appian Maintenance Services agreements before the implementation of the proposed changes. The communication will provide instructions for you to request additional information if desired.

### How does Appian communicate information about any security incidents?

For any confirmed incidents or major updates that affect security, confidentiality, or availability of customer data, Appian will notify affected customers via a support case in MyAppian.

### How does Appian communicate about unexpected service degradation?

Appian will notify affected customers via a support case in MyAppian about unexpected service degradation. For production incidents, customers might define specific administrators or distribution lists that need to be contacted separately by Appian Technical Support as well.

For widespread issues affecting Appian Cloud, the Appian Cloud status page will be updated: [https://status.appiancloud.com](https://status.appiancloud.com/)

### How do I notify Appian about any information security incidents in the Appian platform?

You can notify Appian about any information security incidents for an Appian Cloud environment by either raising a support case in MyAppian, or by filling out the form available at [https://forum.appianportalsgov.com/SecurityIncident](https://forum.appianportalsgov.com/SecurityIncident).

## Private networks

### Why would I want to configure a VPN for our Appian Cloud environments?

IPSec VPN connections enable access to computer resources on a private network from an Appian Cloud environment. Each Appian Cloud environments can have multiple VPN tunnels enabled to securely integrate with resources in different networks. This enables the use of Appian smart services such as the Query Database or the Web Service smart service to connect to resources that are located on your private network, as well as securely integrating with a corporate authentication system (e.g. Active Directory).

### What is required to set up a VPN?

Information on the requirements for configuring a VPN can be found [here](Cloud_VPN_Integration.html).

### How many VPNs do I need for High Availability?

At least one VPN connection is required for each of the three nodes in an Appian Cloud production High Availability configuration.

### Can I have multiple VPNs to the same location, for failover and resilience?

Yes. One failover tunnel is required for each existing main tunnel. For a single node environment with 1 VPN tunnel, failover would require 2 VPN tunnels. For a High Availability environment with 3 VPN tunnels, failover would require a total of 6 VPN tunnels.

### Can I have multiple VPNs going to different locations from the same Appian Cloud environment?

Yes, you can request for VPN connections to multiple, different end locations. The process for this is the same as setting up the original tunnel as described [here](Cloud_VPN_Integration.html). Note that the subnets/IPs that we connect to on your side cannot overlap from one location to the other due to networking limitations.

### Does the same VPN serve all my Appian Cloud environments (production and non-production)?

No. We need to configure a separate VPN connection for each Appian Cloud environment to ensure security and integrity for each environment.

### Does the VPN connection allow third party reporting tools to query the database provided by Appian Cloud?

Customers with High Availability configured in their environment and on Professional or Signature Success Plans can request direct access to their business data source provided by Appian Cloud over the VPN tunnel. For more information on this configuration, refer to [Enhanced Data Pipeline for Appian Cloud](Enhanced_Data_Pipeline_for_Appian_Cloud.html). Foundation Success Plan customers can create their own Appian process models that write directly to a third party RDBMS within the organization's network using the Query Database Node or Write to Datastore Node. Refer to the [Query Database Smart Service](Query_Database_Smart_Service.html) topic for more information about this.

## Data in Appian Cloud

### Which databases are supported in Appian Cloud?

You can integrate Appian Cloud with any of the databases supported by Appian as per the [System Requirements](System_Requirements.html) topic. [An instance of MariaDB](Appian_Cloud_Web_Administration.html) is provided as part of Appian Cloud; customers who want to use a different database management system can host a supported database locally and connect to it remotely. See also: [Appian Cloud Integration](Appian_Cloud_Integration.html).

### Where can I find more information about the capabilities of the relational database provided as part of Appian Cloud?

The [Appian Cloud Web Administration](Appian_Cloud_Web_Administration.html#Appian_Cloud_Database_Administration) and [Query Database Smart Service](Query_Database_Smart_Service.html) topics include sections specifically for Appian Cloud customers where you can find additional information about this topic.

### Is there a way to access the relational database provided as part of Appian Cloud through a different client?

Access to the database instance provided with Appian Cloud is only available through Appian or phpMyAdmin interface.

However, customers can integrate Appian with additional external relational databases hosted within VPN endpoints such as their corporate network. Additional information is available in the [Query Database Smart Service](Query_Database_Smart_Service.html) topic.

Additionally, the Enhanced Data Pipeline feature that is available with Professional or Signature Success Plans provides the ability to read data from the Appian Cloud business database. More information on Enhanced Data Pipeline can be found [here](Enhanced_Data_Pipeline_for_Appian_Cloud.html).

### Can I pull log data from Appian Cloud into my local environment?

Log Streaming is available to customers that are on [Professional or Signature Success Plans](https://appian.com/support/resources/success-plans) using version 18.3 or higher. With this feature, your Appian Cloud environments can be configured to stream supported logs, in real time, to a syslog receiver within your network. Once logs are stored in a central repository, you can index, access, search, and correlate events using your existing Log Management and Security Information & Event Management (SIEM) tools.

These logs can be further digested and aggregated by tools of your choice, such as Splunk, LogRhythm, and Elasticsearch-Logstash-Kibana (ELK) stack.

Customers can also access logs through the interface `ENVIRONMENT_URL/suite/logs`.

### How is data stored in Appian Cloud backed up?

Data stored in Appian Cloud environments is backed up every night and retained for 28 calendar days unless otherwise stated in a customer's legal agreement. These backups include all data stored in each Appian Cloud environment. Data from these backups is stored in a location separate from the primary processing location.

### Does Appian offer data loss prevention (DLP) in Appian Cloud?

Appian Cloud has DLP in place at the infrastructure level to protect against data loss from Appian Cloud's networks. Events flagged by DLP sensors are securely stored in Appian's information security monitoring infrastructure. Access to view these events is strictly limited to Appian's information security team.

DLP events are not available to customers or third parties, but Appian notifies customers of confirmed anomalous activity through technical support cases. If you need DLP for your own endpoints, you will need to implement this solution outside of the Appian Cloud.

### Can Appian delete data generated during testing?

It is possible for Appian Support to create a Snapshot of an environment before testing and to restore the environment to this Snapshot after testing completes. Twelve (12) snapshots and refreshes per year are available to customers on the Signature Success Plan at no additional cost. It is available for a fee for customers on the Signature Success Plan who want more than 12 per year and to customers on Community, Foundation, and Professional Success Plans.

You can contact your Account Executive if you are interested in doing this. If you have provisioned the Snapshot capability and wish to use this, one of your designated support contacts should open a support case through MyAppian at least 3 days in advance and provide the following information on that case:

-   The date when the Snapshot should be taken.
-   The start time and estimated completion time of the test so that Appian can proactively schedule a maintenance window after that time to restore the environment.

### Can Appian copy data from one environment into another environment?

Appian enforces the information security best practice of keeping all systems and data specific to one environment separate from other environments. Consequently, Appian does not provide support to transfer data between environments.

Customers can only use application import / export to move applications across environments. Customers who need data for testing purposes have to generate sample data for the environments where it is needed.

### Is it possible to delete all data from an Appian Cloud environment?

Deleting data from Appian Cloud must be done from the user interface. Appian does not delete any customer data from an Appian Cloud environment. This is also applicable for requests to restore a environment to a "blank" state.

### Does the VPN connection allow third party reporting tools to query the database provided by Appian Cloud?

Customers with High Availability configured in their environment and enrolled in Professional or Signature Success Plans can request direct access to their business data source provided by Appian Cloud over the VPN tunnel. For more information on this configuration, refer to [Enhanced Data Pipeline for Appian Cloud](Enhanced_Data_Pipeline_for_Appian_Cloud.html). Foundation Success Plan customers can create their own Appian process models that write directly to a third party RDBMS within the organization's network using the Query Database Node or Write to Datastore Node. Refer to the [Query Database Smart Service](Query_Database_Smart_Service.html) topic for more information about this.

### What is the data storage limit in Appian Cloud environments?

Storage for Appian Cloud environments is provisioned in alignment with the Customer Service Agreement and there is no upper limit. Customers can work with their Account Executive at any point to expand the storage capacity of an existing Appian Cloud environment.

## Integrations & Customizations

### Where can I find a list of the integration options supported in Appian Cloud?

The [Appian Cloud Integration](Appian_Cloud_Integration.html) topic provides additional information about the available options to integrate Appian Cloud with other systems.

### Can I create custom plug-ins?

Yes, but a licensed self-managed installation is required to develop and test custom plug-ins. An alternative for Appian Cloud customers is to utilize Appian Professional Services or an Appian Partner to build and test custom plug-ins. Any custom plug-in that you want to deploy to your environment must be requested via a support case in MyAppian and source code for the plug-in must be provided along with the request. Appian Support will review and approve the plug-in before it can be deployed. Allow 2 days for this review process.

Cloud Approved [Shared Components](Shared_Components.html) can be added to environments and updated to the latest version through the Admin Console.

Note that custom plug-ins and Shared Components are not supported by Appian Support. Appian Cloud customers are responsible for maintaining these customizations.

### Is it possible to configure our Appian Cloud environment to use our mail server to deliver emails?

Yes, it is possible to do this. You will need a working VPN connection to this email server first. If you do not have a VPN tunnel set up yet for your Appian Cloud environment, fill out the worksheet provided in [Cloud VPN Integration](Cloud_VPN_Integration.html) and submit a support case in MyAppian.

Once the VPN tunnel is set up, create a support case in MyAppian to configure your environments to use your own mail server.

### Can I add custom email senders in Appian Cloud?

Yes, this is a supported configuration. Refer to the [Configuring Custom Email Senders](Configuring_Custom_Email_Senders.html) in the documentation for more information on this topic.

### Can I configure our Appian Cloud environment to poll our own email server?

Yes, this capability is available to Appian Cloud customers. A designated support contact can create a support case in MyAppian to configure your Appian Cloud environments. See also: [Mail Server Setup](Mail_Server_Setup.html#configuring-appian-to-poll-an-email-account) for detailed information about the information needed to enable this functionality.

### Can I integrate Appian Cloud with SharePoint?

Yes. Refer to the [Appian for SharePoint](Appian_for_SharePoint_2013.html) topic to find more information about the supported functionality for integrating Appian Cloud with self-managed SharePoint instances. Document integration with SharePoint Online can be achieved using the [Office 365 Integration Shared Component](https://community.appian.com/b/appmarket/posts/office-365-integration). Note that Shared Components are provided as-is and are not supported by Appian Support. Appian Cloud customers are responsible for testing and maintaining these customizations in their applications.

### Can I configure custom properties in Appian Cloud?

Appian Cloud utilizes standard configuration settings that are the default for Appian. These standard configuration settings have been set based on data collected throughout time from all Appian deployments and have been set to prefer the stability and performance of the system. Designers are required to design and tune their applications to be within standard configuration settings, rather than requesting custom settings to circumvent suboptimal design patterns or poor performing system integrations.

The only changes to settings allowed are those that are exposed via the web browser via the [Admin Console](Appian_Administration_Console.html).

## IP Addresses and Controlling Access to your Appian Environment

### How do I get the IP address used to access my Appian environment(s)?

Appian Cloud does not use static IPs for inbound traffic of environments accessed over the Internet. Customers who need IP based routing must set up their environment for [inbound access over VPN](Configuring_Inbound_Access_Over_VPN.html).

### How do I get the IP address for traffic coming from my Appian environment(s)? Can I specify traffic coming from Appian Cloud to my network using an allow list?

Yes, allowing traffic coming from Appian Cloud infrastructure is possible by adding the IPs for the region where your environments are running to an allow list in your network. Refer to [KB-1582](https://community.appian.com/support/w/kb/971/kb-1582-how-to-whitelist-traffic-coming-from-appian-cloud-based-on-ips) for details. These IPs are subject to change on a quarterly basis. You can receive notifications of any quarterly updates by enabling notifications on this KB article.

### How do I get the IP addresses of SMTP servers?

Appian Cloud SMTP server IP addresses are subject to change at any time. Appian Cloud publishes up-to-date Sender Policy Framework (SPF) records so that receiving mail exchangers can validate Appian Cloud emails are originating from an authorized SMTP server. For an example of how to retrieve up-to-date records for your Appian Cloud site, refer to [KB-2010](https://community.appian.com/support/w/kb/1570/kb-2010-how-to-view-spf-records-for-appian-cloud)

### Can I restrict access to my Appian Cloud environment(s) to specific IP address spaces?

Yes, refer to [Configuring Trusted IP Addresses for Appian Cloud](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html) to learn more about adding IP addresses spaces to an allow list for your Appian Cloud environment(s).

### Can I use a VPN so my end users connect directly from the client network rather than over the internet?

Yes. This configuration is intended for customers who require that only users and systems within their network can access the Appian Cloud environment. The steps required for configuring your Appian Cloud environment to receive inbound HTTPS traffic only over an IPSec VPN tunnel are documented in [Configuring Inbound Traffic over VPN](Configuring_Inbound_Access_Over_VPN.html). With this configuration, the environment will not be accessible over the Internet and all users must first be on their corporate network before navigating to their Appian Cloud environments.

Appian also supports dual access, or access over the internet plus through a VPN. More information on this can be found in [Configuring Dual Inbound Access](Configuring_Dual_Inbound_Access.html).

## Performance, Security and Encryption

### Is it important to do performance testing in Appian Cloud?

Appian strongly recommends Appian Cloud customers to plan, design and perform performance testing on their applications prior to their production launch.

Even though Appian performs internal performance and scalability testing; application performance is also a function of the way applications are designed and developed. Consequently, it is recommended for customers to design performance tests specifically for their applications and what they consider the most common use cases.

Appian Support does not provide assistance related to performance testing tools. Those services are provided by our Professional Services organization.

### Is it important to do penetration testing in Appian Cloud?

Even though Appian works with a third-party to perform penetration testing as part of its development cycle, it is recommended for customers to perform penetration testing specifically tailored to their applications. Appian requires customers to give notice about their penetration and vulnerability testing at least three business days in advance via a support case. Review [KB-1447 Vulnerability Testing](https://community.appian.com/support/w/kb/762/kb-1447-vulnerability-testing) for full details around assessment rules and submitting the results.

## Other Frequently Asked Questions

### Where can I get more information about Appian Cloud security?

Appian is committed to keeping your applications secure, available and compliant with local and global regulations. Comprehensive information on Security & Compliance, Third Party Audits, and Advanced Governance can be found in [Appian's Trust Center](https://www.appian.com/trust/).

### Are Appian best practices still applicable in Appian Cloud?

Yes. Appian recommends reviewing [Appian MAX](https://community.appian.com/success) when developing applications.

### Does Appian support AWS Direct Connect in Appian Cloud?

Customers may work directly with Amazon to set up a Public [Virtual Interface (VIF)](https://docs.aws.amazon.com/directconnect/latest/UserGuide/WorkingWithVirtualInterfaces.html) and route user traffic through Amazon Direct Connect to their Appian environments. No Appian intervention is required.

If a customer would like to use a Private Virtual Interface to expose their resources, customers may work with Amazon to connect their own Virtual Private Cloud (VPC) and use [AWS PrivateLink](Access_Customer_VPC_using_AWS_PrivateLink.html#external-systems-accessed-through-aws-direct-connect) to connect the exposed resources to their Appian environments hosted within Appian's AWS environment.

### Does Appian support AWS VPC Peering in Appian Cloud?

No, Appian Cloud does not support the use of VPC Peering as a form of connection with customer environments; however, Appian Cloud does provide multiple alternatives to connect with AWS resources. One such option is the use of [AWS PrivateLink](Access_Customer_VPC_using_AWS_PrivateLink.html) for outbound traffic to customer VPC Endpoint Services. In the case of needing the ability to send both inbound and outbound traffic or for integrations with services not supported by AWS PrivateLink, Appian Cloud recommends the use of [IPSec VPN Tunnels](Cloud_VPN_Integration.html).

### When a user requests a password reset via email, how long is this link valid for?

Links included in the reset password emails are valid for 15 minutes by default. This expiration can be configured from the Admin Console.

### Can emails be sent to process and process models in Appian Cloud?

Yes, [sending an email to a process](Email_on_Appian_Cloud.html#sending-an-email-message-to-a-process-in-appian-cloud) is supported in Appian Cloud.

Note that in order for this functionality to work with a custom mail server CNAME expansion must be disabled in your environment per [KB-1394](https://community.appian.com/support/w/kb/654/kb-1394-emails-are-not-sent-to-appian-cloud-because-of-cname-expansion).

### How often does Appian renew the certificate for environments hosted on the Appian Cloud default domains?

The certificates for environments hosted on the Appian Cloud default domains are typically renewed each year. Our team is alerted a month before certificates expire and will renew them before their expiry date. No action is required by customers to keep the certificates up-to-date. Appian may also replace these certificates at any time and without prior notice. Systems integrating with Appian should not rely exclusively on cached certificates and should not pin these SSL certificates or their chain of trust, as it could lead to connectivity issues when a new SSL certificate gets deployed. If you must pin an SSL certificate or chain of trust for your environment, we recommend configuring a [custom domain](Using_a_Custom_Domain_in_Appian_Cloud.html) using your own SSL certificates.

### Why are HTTP headers sent to Appian changing case?

Appian Cloud adheres to the HTTP/2 spec as defined in [RFC 7540 section 8.1.2](https://www.rfc-editor.org/rfc/rfc7540#section-8.1.2), and as such, does not guarantee that request headers sent by your clients will maintain their original casing when returned in the response. Thus, Appian Cloud customers should not rely on case-sensitive HTTP header names in their Web APIs or other portions of their Appian applications.

### Does Appian Cloud limit the size of requests?

Yes, Appian Cloud has the following limit for inbound web requests, following industry and security best practices:

-   Header size limit: 8KB
-   Body size limit: 2GiB

If the size in a request exceeds any of these limits, Appian Cloud will return a `413 - Request Entity Too Large` error.

### If my company network has an allowlist configured, what Appian Cloud domains do I need to allow?

You will need to allow the [default Appian Cloud domains](Using_a_Custom_Domain_in_Appian_Cloud.html#fqdn-configuration).

If your environment is using static content delivery (enabled by default for public environments), you will also need to allowlist the appropriate [static content delivery domain(s)](Static_Content_Delivery_In_Appian_Cloud.html#endpoints-to-add-to-your-network-allowlist).

If you want to use AI skills, you must also allowlist the S3 endpoints listed [here](https://docs.appian.com/suite/help/latest/security-compliance.html#add-ai-skill-endpoints-to-your-network-allowlist).

### Can I allowlist individual Appian Cloud paths on my company network for security purposes?

No, due to the dynamic nature of Appian Cloud services, entire Appian Cloud domains must be included your network allowlist to ensure your Appian Cloud environment works correctly, not just certain paths.

For example, allowlist `appiancloud.com`, not `mysite.appiancloud.com/suite/sites`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...