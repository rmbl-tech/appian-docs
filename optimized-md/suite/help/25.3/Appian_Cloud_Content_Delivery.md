---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Cloud_Content_Delivery.html
original_path: Appian_Cloud_Content_Delivery.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Content Delivery

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

Appian Cloud's content delivery network (CDN) is designed to deliver web content to users as securely, quickly, and reliably as possible no matter where they are located.

### Dynamic content

Content that changes based on factors such as user input and permissions. For example, data fetched from an upstream service, application server, or a [Web API](Web_APIs.html).

### Static content

Web assets, such as images, JavaScript, and CSS, that are the same for all users of an Appian service and do not change based on input. See [static content delivery](Static_Content_Delivery_In_Appian_Cloud.html) for more information.

**Caution:**  Appian Cloud uses dynamic IP addresses for public inbound web traffic which are subject to change without notice.

Relying on specific IP addresses or Classless Inter-Domain Routing (CIDR) ranges to restrict access from your corporate network is not recommended, as it could impact the access to and functionality of your Appian Cloud environment when they change.

## Features

### Dynamic scaling

As traffic increases, resource capacity automatically scales to ensure performance and reliability are not affected by volume.

### Self-healing

Appian Cloud continuously monitors the health of its web servers and automatically replaces them as needed to ensure resiliency to hardware failures.

In the event of an application server hardware failure or availability zone failure on environments configured with High Availability (HA), web servers will intelligently route traffic to the healthy environments or zones. See [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html) for more information.

### Perimeter protection

#### Intrusion Detection System (IDP)

Appian Cloud employs an intrusion detection system (IDP) to monitor incoming web requests for potentially malicious perimeter attacks, such as denial-of-service (DoS), server-side request forgery (SSRF), cross-site scripting (XSS), and SQL injection (SQLi).

In the case of a suspected DoS attack where an environment is experiencing an unusually high level of traffic, new requests to the affected environment may be blocked until the in-flight requests are completed or the high load subsides.

For customers who want to add an additional layer of security and control over access to their Appian Cloud environments, it is possible to set up a reverse proxy or web application firewall (WAF) in front of your Appian Cloud environments by leveraging custom domain records in your tool's configuration. See [Using a Custom Domain in Appian Cloud](Using_a_Custom_Domain_in_Appian_Cloud.html) for more information on configuring a custom domain.

**Note:**  Note that if your company WAF or reverse proxy tool becomes unavailable, this may impact users from being able to access your Appian Cloud environments. Additionally, Appian recommends carefully evaluating performance in your lower environments before setting up a WAF or reverse proxy in production.

#### HTTP Strict Transport Security (HSTS)

[HTTP Strict Transport Security (HSTS)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security) enforces the use of HTTPS for incoming web requests as a security best practice, ensuring all traffic between a web client and Appian Cloud is end-to-end encrypted.

Additionally, all environments using the [default Appian Cloud domains](https://docs.appian.com/suite/help/24.2/Using_a_Custom_Domain_in_Appian_Cloud.html#fqdn-configuration) have their URLs [preloaded](https://hstspreload.org/) so that browsers will automatically use HTTPS for the initial request, even if the client specifies HTTP.

**Tip:**  Preloading is not supported for [portals](https://docs.appian.com/suite/help/latest/portals-home.html).

### Access restrictions

Based on your security and compliance needs, you can configure your Appian Cloud environments to restrict access to specific [Trusted IPs](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...