---
source_url: https://docs.appian.com/suite/help/25.3/portals-security.html
original_path: portals-security.html
version: "25.3"
title: "Portal Website Protections"
page_id: "portals-security"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Portal Website Protections

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Portals are publicly accessible so it makes sense that there are different concerns about protecting portals than there are about sites.

Publicly accessible websites need to be concerned with both [denial-of-service (DoS) protections](#denial-of-service-protections) as well as how the website will [scale](#scalability) with varying degrees of usage.

### See also

-   For more information on portal object security, see the [Portal Object](portal-object.html#security) page.
-   To understand how service accounts are used to grant permissions to the portal, see [Service Accounts in Portals](portals-service-accounts.html).

## Denial-of-service protections

Denial-of-service (DoS) and distributed denial-of-service (DDoS) attacks overwhelm a website with a large number of requests to try to make it unavailable to its users. Portals have DoS protections to help make sure your portal remains available when there is a suspected DoS or DDoS attack.

If a portal experiences an unusually high level of traffic, the DoS protections may be triggered. When this happens, new requests to the affected environment may be blocked until the in-flight requests are completed or the high load subsides.

For more details about Appian Cloud perimeter security in general, see [Appian Cloud Content Delivery](Appian_Cloud_Content_Delivery.html#perimeter-protection).

## Scalability

The scalability of your portal is how well your portal will perform when different amounts of users are using the portal at the same time.

Each portal automatically scales up and down to handle user traffic. Be mindful of what your portal connects to, as that may affect the overall scalability of your portal.

### Portal scalability

Each portal runs as a serverless web app inside a service that is separate from the environment used to publish the portal. That service automatically scales up and down to meet user demand, independent from the platform. This allows portals to scale to handle the load caused by many concurrent users visiting a portal at the same time.

However, the scalability of your portal is bound to the scalability of the services it connects to.

When the portal connects back to the platform to query or write data, start processes, or work with documents, consider the expected usage of both your portal and platform when following the [platform scaling guidance](Scaling_Appian.html).

If your portal connects to other services outside of Appian, you must also consider the scalability of those services to determine the overall scalability of your portal.

Additionally, user traffic to your portal is limited to 10 terabytes per month.

### User experience when portal traffic is high

Using compatible functions to connect to your data, documents, or processes stored in Appian, ensures your logged-in Appian users and portal users retain a functional user experience.

The capabilities with these protections are:

-   [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) function
-   [a!queryRecordType()](fnc_system_queryrecordtype.html) function
-   [a!startProcess()](Start_Process_Smart_Service.html#astartprocess)function
-   [document()](fnc_scripting_document.html) function
-   [Document Download Link](Document_Link_Component.html) component
-   [Document Viewer](Document_Viewer_Component.html) component
-   [File Upload](File_Upload_Component.html) component
-   [Connected system plug-ins](component-plugins.html) that are used with [component plug-ins](connected-system-plug-in-landing.html)

When you use these functions, we prioritize logged-in users over portal traffic to ensure they aren't affected by unexpected increases in portal usage.

Additionally, these functions make sure that your portal continues to function even after unexpected spikes in usage. When there are spikes in traffic, Appian may throttle requests to the platform. So instead of the portal breaking altogether, portal users will see a progressively slower response time.

You can even use [autoscaled processes](autoscale-processes.html) in a portal while retaining these protections.

### Testing for scalability

Keep in mind your expected usage and always [test](portals-manage-portals.html) your portal at scale. Test all databases, web APIs, and processes connected to your portal to ensure that all parts of your portal are performing well and scaling effectively.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...