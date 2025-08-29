---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Integration.html
original_path: Appian_Cloud_Integration.html
version: "25.3"
title: "Appian Cloud Integration"
page_id: "Appian_Cloud_Integration"
section: "Integration points"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

Appian provides different ways to integrate your applications with external systems.

Beyond assisting customers in the configuration of some of these integration points, changes to default product properties are not supported in Appian Cloud. Appian Cloud utilizes standard configuration settings that are the default for Appian.

Designers are required to design their applications to work within those specifications rather than requesting custom settings to circumvent sub optimal design patterns or poor performing system integrations. The only changes to settings allowed are those that are exposed via the web browser via the [Admin Console](Appian_Administration_Console.html)

## Integration points

The following options are available for extending Appian to integrate with your systems and user environment.

-   **Custom plug-ins**
    -   [Smart Services](Custom_Smart_Service_Plug-ins.html "Smart Services")
    -   [Expression Functions](Custom_Function_Plug-ins.html "Expression Functions")
    -   See the **Developer** menu at the top of this page for more options.
-   **Data stores**
    -   [Creating a Data Store](Data_Stores.html "Creating a Data Store")
-   **Email**
    -   [Email a process](Email_on_Appian_Cloud.html#sending-an-email-message-to-a-process-in-appian-cloud "Email a process")
-   **JDBC direct database connections**
    -   [Query Database](Query_Database_Smart_Service.html "Query Database")
-   **Records**
    -   [Entity-Backed Records](Records_Tutorial.html)
    -   [Service-Backed Records](Service-Backed_Record_Tutorial.html)
-   **VPN**
    -   [VPN Integration](Cloud_VPN_Integration.html " VPN Integration")
-   **AWS PrivateLink**
    -   [PrivateLink Integration](AWS-PrivateLink_Integration.html)
-   **Web services**
    -   [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html "Call Web Service Smart Service")
    -   [Publish a Model as Web Service](Publishing_Process_Models_as_Web_Services.html " Publish a Model as Web Service")
-   **XPath functions**
    -   [Scripting Functions](Scripting_Functions.html "Scripting Functions")

## Design considerations

When integrating Appian Cloud with external systems, it is important to know which attributes can change in an Appian Cloud environment without prior notice and what attributes remain constant for an Appian Cloud environment. In order to implement a robust integration, customers should avoid dependencies on variable attributes.

### Fixed attributes

#### IP address of VPN gateway

If a VPN gateway is configured for an Appian Cloud environment, the IP address of each VPN gateway is fixed.

#### Environment URL

The URL to access an Appian Cloud environment will not change unless the change is exclusively requested by Appian Customers.

### Variable attributes

#### IP addresses

Other than the IP address of the VPN gateway (if VPN is configured), all other IP addresses related to Appian Cloud (including email servers) are subject to change at any time and should not be directly referenced. DNS records should always be consulted to get the current IP addresses being used.

#### SSL certificates

Default SSL certificates used for Appian Cloud environments are managed by Appian and renewed routinely. Appian may replace these certificates at any time and without prior notice. Systems integrating with Appian should not rely exclusively on cached certificates and should not pin these SSL certificates or their chain of trust, as it could lead to connectivity issues when a new SSL certificate gets deployed. If you must pin the SSL certificate or chain of trust for your environment, we recommend configuring a [custom domain](Using_a_Custom_Domain_in_Appian_Cloud.html) using your own SSL certificates.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...