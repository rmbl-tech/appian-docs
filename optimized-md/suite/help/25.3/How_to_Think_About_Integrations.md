---
source_url: https://docs.appian.com/suite/help/25.3/How_to_Think_About_Integrations.html
original_path: How_to_Think_About_Integrations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Why Integrate

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Connecting two systems together can be difficult. This article was created for those who need a starting point when thinking about integrating with other systems.

If you would like to know more about the different objects in Appian that can connect with other systems, see the [Methods of Integrations](methods_of_integrations.html) page.

## Why integrate

The first question someone needs to ask when considering an integration between two systems is, _'Why do I need to integrate these systems?'_.

Understanding the purpose of each integration is important. Consider whether the users of one system need data from another system to do their job properly. Integrations will offer the highest value when the information or actions shared between systems offer value not otherwise possible.

Determining whether viable alternatives exist is also important. Is the information sharing between systems a one-time event or on-going? How timely does the data need to be? Depending on the frequency and urgency of the data, sometimes a one-time or periodic manual transfer of data is all that's required.

If the integration is important and there's not a viable alternative to get data, then it's a safe bet to invest time in building the integration.

There are many scenarios that can make you consider using an integration. Here are a few examples:

-   Cross-organizational users would benefit from knowing more about and collaborating with each other.
-   Multiple applications need to know about something that's happened.
-   A legacy system needs replaced but the cost of fully removing that system is too high in a single step.
-   Data from third-party organizations, like government and academic institutions, are essential to a process.

Each of these scenarios require different configurations. [Choosing the Right Integration Type](Choosing_the_Right_Type_of_Integration.html) provides further guidance on each scenario article of the Integration guide.

## How to integrate

Behind every connection type, there is an underlying protocol. Before configuring any object or expression, it is important to know more about these protocols:

-   **HTTP**: For RESTful Web Service Calls. [Web APIs](Web_APIs.html), [Integrations](Integration_Object.html), and most [connector functions](Connectors.html) can connect with other systems via HTTP.
-   **SOAP**: For Web Service Definition Language (WSDL) Integrations. Can be created within a process model or expression.
-   **JMS**: For direct messaging between process models. Also, used with the [receive message event](Receive_Message_Event.html) when other systems are configured on a [JMS bus](Working_with_the_Java_Messaging_Service.html).
-   **SMTP**: E-mail message sent to [process models](Sending_an_Email_Message_to_a_Process.html). Generally, a ‘listener’ model is configured to handle all incoming e-mails for an application, which will then parse the data appropriately.

Additional types of integration can be added using Appian's [Integration SDK](integration-sdk-overview.html).

## Working in multiple systems & multiple documentation sources

One significant challenge when setting up an integration between two systems is understanding the differences between how systems work and how they're documented.

This page provides a comprehensive set of articles needed to successfully choose and configure an integration in Appian. However, it is also important to have a thorough understanding of the system connecting to Appian. Where possible, we will try to highlight things to look at while reading third-party documentation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...