---
source_url: https://docs.appian.com/suite/help/25.3/methods_of_integrations.html
original_path: methods_of_integrations.html
version: "25.3"
title: "Methods of Integrations"
page_id: "methods_of_integrations"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Methods of Integrations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Get External Data with Appian Integrations

Watch this video for a high-level overview of integration design objects, and how you can use them to display external data in a record type.

## Overview

Various objects, methods, and protocols are available to connect Appian with other systems. This page provides an overview of the resources available to designers.

If you are familiar with integrations and just trying to figure out what integration type you use in a given situation, checkout the [Choosing the Right Integration Type](Choosing_the_Right_Type_of_Integration.html) article.

## How Appian connects to other systems

When thinking about connecting with third-party systems, it helps to frame it with the question, _Which system is initiating the call?_. If a third party-system is making the request, designers would create object to return a response to the system. Similarly, if Appian is making the request, a different set of object would be configured to connect with the other system.

![images/integration_architecture.png](images/integration_architecture.png)

### Appian calling other systems

For connections where Appian is calling other systems, designers would create or configure one or more of the following objects:

-   [Connected Systems](Connected_System_Object.html)
-   [Integrations](Integration_Object.html)
-   [Process Models](Call_Integration_Smart_Service.html)
-   [Connector Functions](Connectors.html)

#### Integrations and connected systems

![images:obj_connected_system30px.png](images/object_type_icons/obj_connected-system30px.png) ![images:obj_integration30px.png](images/object_type_icons/obj_integration30px.png)

Integrations and connected systems work together to let designers quickly connect to an external system. Connected systems contain particular common integration information like endpoint, and authentications. This enables you to generate multiple integrations from the same connected system.

Once built, Integrations can be called in an expression rule, interface, or process model.

#### Process models

The following connectivity smart services support calling other systems from Appian.

| Activity | Protocols Supported |
| --- | --- |
| [Call Integration](Call_Integration_Smart_Service.html) | HTTP and JDBC |
| [Call Web Service](Call_Web_Service_Smart_Service.html) | SOAP |
| [Invoke SAP BAPI](Invoke_SAP_BAPI_Smart_Service.html) | HTTP |

These smart services can be configured to perform specific calls to other systems directly from a process model.

#### Connectors

Designers can also use [connector functions](Connectors.html) to call other services. These expressions can then be used in a custom rule, or in any relevant expression editor.

### Other systems calling Appian

For connections where other systems are calling Appian, designers would create or configure one or more of the following objects:

#### Web APIs

Web APIs provide a way to expose Appian data and services to outside systems. Each Web API is an association between a URL/HTTP method combination and an [expression](Expressions.html). When a client makes an HTTP request to the given URL, the associated expression is executed and the result is returned to the client. This means that any data or service that is available inside an expression can be exposed to an external system via a Web API.

Some things you might choose to expose with a Web API include:

-   A list of tasks for a specified user
-   A list of records for a specific record type
-   Data about a specific record, similar to a record dashboard
-   An Appian document
-   The ability to write to a data store
-   The ability to start a new instance of a process model

To learn about Web APIs, see [Web APIs](Web_APIs.html)

To learn more about designing Web APIs, see [Designing Web APIs](Designing_Web_APIs.html)

#### Process models

A start event can be configured with a receive message trigger to kick off a process via an incoming integration. Similarly, [receive message events](Receive_Message_Event.html) can be configured to handle incoming integrations after a process has been kicked off. Messages can come into the process either through a JMS bus or E-mail via Secure Message Transfer Protocol (SMTP).

##### JMS

JMS authentication is configured during installation setup. If JMS is properly setup, no further authentication steps are needed by the Designer. This is not an Appian username/password. Rather it is specific to the JMS provider in the application server. For more information, see [Working with the Java Messaging Service](Working_with_the_Java_Messaging_Service.html#configuring-java-messaging)

##### SMTP

In order to send or receive e-mails in Appian, a [mail server](Mail_Server_Setup.html) must be set up. This is done by the system administrator.

**Note:**  The [Anonymous user](Anonymous_User.html) account must be enabled to allow the receipt of email messages to start a process.

Unlike start events with a receive message trigger, intermediate receive message events only listen for messages when they are activated. When messages are targeted at an active receive message event, the event only executes if all conditions configured for the event are met. Otherwise, the event does not execute and the message is lost.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...