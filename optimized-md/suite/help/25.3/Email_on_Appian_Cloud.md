---
source_url: https://docs.appian.com/suite/help/25.3/Email_on_Appian_Cloud.html
original_path: Email_on_Appian_Cloud.html
version: "25.3"
title: "Email on Appian Cloud"
page_id: "Email_on_Appian_Cloud"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Email on Appian Cloud

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Overview

Customers of Appian Cloud can use email to enable communication between their Appian Cloud environments and users. This page explains the email features that are available to Appian Cloud customers and how they can be used.

**Tip:**  If your Appian Cloud site is configured for private access (i.e. inbound access enabled only through [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html)) then you will have fewer email options than those outlined below. See the [Email Capabilities for Private Access sites section](#email-capabilities-for-private-access-sites) below for more details.

## Outbound email

Appian Cloud provides email-as-a-service for all Appian Cloud environments by default. An Appian Cloud environment will send an email for system notifications or when a designer configures a process model to send an email.

### Custom email senders

Appian supports sending emails with a custom address in the From: header. See [Configuring Custom Email Senders page](Configuring_Custom_Email_Senders.html) for more information.

### IP addresses

Appian Cloud email-as-a-service IP addresses are published in up-to-date Sender Policy Framework (SPF) records. These IP addresses are subject to change.

### Deliverability

If Appian detects that an a environment is sending mail that affects the deliverability of Appian Cloud emails, such as spam or a large volume of messages to undeliverable addresses, a limit may be applied to that environment. If this happens to your environment, you will be notified via a support case.

### Domain Keys Identified Mail (DKIM)

DKIM signing is configured for all Appian-owned domains, i.e. appiancloud.com or appiancloud.us, by default.

If you have a custom non-Appian domain, you can [configure DKIM signing](Appian_Administration_Console.html#email) in Appian Cloud from the Administration Console.

## Inbound email

Appian Cloud email-as-a-service also provides a capability to receive mail. This supports sending an email message to a process.

### Sending an email message to a process in Appian Cloud

In Appian Cloud it is possible to start new process instances using an email trigger sent to a specific process model. Appian Cloud environments have been configured to accept incoming email for running processes as well as for specific events.

When an email message is sent to a process model, the message is also received by all running instances of that process model for which there's an active receive message event configured to listen for email messages.

**Tip:**  Appian Cloud email servers are configured with a 70 MB limit for the total size of the email. This includes the email message and all attachments. The 70 MB limit applies to both inbound and outbound emails.

Email messages sent to Appian Cloud processes must use one of the following formats:

#### Target a specific process instance

```
1
process<id>@subdomain.appiancloud.com
```

#### Target a specific event

```
1
event<eventId>@subdomain.appiancloud.com
```

#### Target all process instances of a specific process model or start a new instance of a process model

```
1
2
processmodel<id>@subdomain.appiancloud.com
processmodeluuid<model_uuid>@subdomain.appiancloud.com
```

## Email capabilities for Private Access sites

Due to email's unique reliance on DNS records associated with a site, private access sites (i.e. inbound access enabled only through [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html)) have fewer email capabilities than publicly available sites. Email on private access sites can be enabled using the following options:

1.  Configure DNS records for your Appian Cloud site domain that point to Appian Cloud mail servers. Appian Support can assist with this.
2.  Configure your own custom SMTP server (as outlined below).

With either of the above options you'll be able to utilize [custom email senders](Configuring_Custom_Email_Senders.html) on your private access cloud site.

## Use your own (custom) email service

If the Appian Cloud email-as-a-service does not meet your requirements, you may use your own custom email service for outbound email, inbound email, or both. A secure, network connection to your email service is required. This may require creating a VPN integration. Information on the requirements for configuring a VPN integration tunnel can be found on the [Self Service VPN](Cloud_Self_Service_VPN.html) page.

Once a secure, network connection is available, create a support case on Appian Community to have your environment configured to use your custom email service.

**Note:**  Customers must be on the [Foundation, Professional, or Signature Success Plans](https://appian.com/support/resources/success-plans) to use their own (custom) email service.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...