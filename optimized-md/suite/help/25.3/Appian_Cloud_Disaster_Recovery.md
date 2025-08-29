---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Disaster_Recovery.html
original_path: Appian_Cloud_Disaster_Recovery.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Disaster Recovery

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

The Appian Cloud Disaster Recovery Plan describes the procedures for re-establishing the technology, infrastructure and systems that support the resumption of Appian Cloud services. The plan includes information on:

-   Risk Analysis
-   High Availability
-   Backup Strategy
-   Testing & Training

## Risk-based approach

The Appian Cloud Disaster Recovery Plan is built on a risk analysis conducted with members of Appian management to identify critical processes and recovery priorities. Appian defines a disaster as any event that causes an unexpected outage of the Appian Cloud system or critical resources and requires Appian to perform a recovery of systems or resources to restore service in a timely manner. Each component of the Appian Cloud infrastructure and supporting systems is reviewed to determine the criticality of its functions, as well as its dependencies. Appian Cloud disaster recovery procedures are designed to support target time frames needed to ensure acceptable service levels, and enable Appian Cloud to maintain its 99.95% uptime service level agreement (SLA).

## High Availability

For customers that are running mission critical applications on Appian Cloud, Appian offers High Availability with Professional and Signature Success Plans. With High Availability, Appian Cloud is provided via three Availability Zones without a single point of failure. To achieve this, Appian uses servers and storage that are kept up-to-date with customer data and applications. For this High Availability offering, Appian offers RPO of 1 minute, as well as an RTO of 21 minutes for Professional Success Plan customers, or 4 minutes for Signature Success Plan customers.

## Backup strategy

Appian understands data is our customer's most important asset. The standard backup and retention practices followed by Appian have been designed to meet the following objectives:

-   Minimize interruptions to the normal operations of Appian Cloud
-   Limit the extent of disruption and damage for Appian customers
-   Minimize the overall impact of an unexpected service interruption
-   Establish alternative means of operation
-   Serve as training material for personnel with emergency responsibilities
-   Provide personnel with a reference to aid in restoration of service

All the relevant customer application data submitted to Appian Cloud and necessary for the proper operation of the system is included in the backups. Appian performs regular backups, both full and incremental, to minimize the recovery point objective of the disaster recovery plan, without adding significant overhead to the system. Data from backups are encrypted, and the backups are transferred to geographically dispersed facilities with industry-standard safeguards where they are retained for at least 28 calendar days.

Appian is committed to providing a global delivery strategy, meeting the needs of enterprises and their significant requirements for both availability and security of key systems. Hosting is maintained across regions around the world, each of which consist of multiple availability zones. A full list of hosted regions can be found in the [Appian Cloud Availablility table](Appian_Cloud_Availability.html#cloud-exclusive-feature-support).

The key to Appian Cloud's security and management model is open communication with customers on the health and operation of their environments. Appian Cloud support is distributed across three regions globally to ensure continuity of support operations. These regions are in USA, UK, and Australia. Customers may inquire about their Appian Cloud environment and submit support tickets through Appian's support environment. The Community Success Plan is included with all Appian Cloud production environments; [Foundation, Professional, and Signature Success Plans](https://appian.com/legal/cloud-SLA) are available for purchase. Appian proactively communicates with customers before making any changes that could materially affect system security, availability, and/or confidentiality. Customers may contact Appian support through the Appian Community (https://community.appian.com), which provides online customer support, real-time collaboration and networking, and an ever-growing Knowledge Base of answers for common questions. Customers can also contact Appian technical support by calling the local support team:

-   US: +1 703 442 1066
-   UK: +44 20 3695 0246
-   France: +33 184 886 650
-   Australia: +61 285 203 042
-   Singapore: +65 3158 1663

If calling outside of Support business hours, please include the following information in the voice mail message:

-   Name
-   Company (and Project, where applicable)
-   Brief description of case
-   Preferred contact method and contact information

Customers can also contact Appian Support directly by emailing support@appian.com. When contacting Appian Support, please be prepared to provide the following information:

-   Name
-   Company (and Project, where applicable)
-   Customer environment (if applicable)
-   Phone number
-   Email address
-   Appian software product and version being used
-   Error message(s)
-   Brief description of the case
-   Priority of the case
-   Steps taken to troubleshoot the case thus far

Upon logging a case, you will receive a case identification number for future reference.

## Testing and training

Appian conducts periodic testing of the Appian Cloud Disaster Recovery Plan. The plan is tested at least semi-annually for the following:

-   Data recovery procedures
-   Data integrity from the backups
-   Communication procedures during a major incident

Appian utilizes automated processes to initiate and notify Appian management of the disaster recovery testing session. This process also includes assignment of required tasks to the engineers who will be participating in the test. This includes the tasks that record the testing results and the test details. Finally, the process generates a report for each test and allows the independent test reviewer to validate the information stored in those reports.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...