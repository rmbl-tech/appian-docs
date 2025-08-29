---
source_url: https://docs.appian.com/suite/help/25.3/Choosing_the_Right_Type_of_Integration.html
original_path: Choosing_the_Right_Type_of_Integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Choosing the Right Type of Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Appian offers several tools and services that let business applications connect to one another. The following article will help developers choose the right things to use in Appian in order to connect with other systems.

When integrating with Appian, there are two scenarios that require an integration. This article focuses on these two scenarios as a starting point to choosing the right integration:

-   [Another system initiates the interaction with Appian](#another-system-initiates-the-interaction-with-appian) - This sections covers the objects and features to use when a third-party system is getting data from Appian or causes Appian do something.

-   [Appian initiates the interaction with another system](#appian-initiates-the-interactions-with-another-system) - This sections covers how to choose the appropriate objects and features to use when Appian needs to reach out to other systems get or write data.

Instead of covering every possible scenario, in this article, developers are directed to focus one of two simple flow charts to help determine the appropriate feature to use.

If you are unsure about everything that’s involved in creating an integration, check out [Why Integrate](How_to_Think_About_Integrations.html).

## Another system initiates the interaction with Appian

Once you’ve identified that a third-party system will need to interact with Appian, the next question should be, what does that system need Appian need to do? Either that system will be (1) querying Appian data, or (2) tell Appian to do something. The following diagram breaks down this these two scenarios into separate workflows.

![images:systems_initiating_appian.png](images/systems_initiating_appian.png)

### Other systems querying Appian data

If the purpose of the integration is for the third-party system to get data from Appian, a [Web API](Web_APIs.html) should be built. When another system makes a HTTP request to that Web API, the associated expression is executed and the result is returned to the system.

If you’re trying to get data that’s normally exposed through a data store entity, create a Web API that uses [a!queryEntity](fnc_system_a_queryentity.html). For information about getting data from processes, a web API built with [a!queryProcessAnalytics](fnc_system_a_queryprocessanalytics.html) will provide results from specified processes.

### Other systems telling Appian to do something

If the third-party system requires Appian to do something, most of the time the request is best handled through an Appian process or smart service. There are several ways another system can tell Appian to do something. This can come in the form of starting a process or invoking a smart service function. We can call an Appian process via a RESTful service (HTTP), as a WSDL (SOAP), JMS, or through e-mail. If possible, we recommend you interact with Appian via a RESTful web service.

#### REST/HTTP

If the integration can be handle through an HTTP request, developers should consider building a Web API configured to take the desired action through [Smart Service Functions](Designing_Web_APIs.html#executing-a-smart-service). Alternatively, [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) can be invoked by a web API to complete more a more complex business model.

**Tip:**  a!startProcess() is a useful smart service function where more than one thing needs to happen. Workflows that require more than one thing to happen, a!startProcess can call a model, which can include multiple smart service nodes. If the API only needs to perform a single-step, like removing someone from a group or updating values in a relational database, those web APIs could be built to directly call that smart service.

#### WSDL/SOAP

If it is not possible to use a REST service to connect a third-party system to Appian, you can [publish a process model as a web service](Publishing_Process_Models_as_Web_Services.html). This will create a WSDL for other systems to invoke. While not as flexible as Web APIs, which can essentially be configured as broadly as the Appian expression language support, process models published directly as WSDL offer an easy to configure option for systems needing to connect via WSDL.

#### SMTP or JMS

Simple Mail Transfer Protocol (SMTP) and Java Message Service (JMS) are two completely different protocol types, but both can be used to kick off a process by using a [receive message trigger](Receive_Message_Event.html) within a start event.

**Tip:**  Alternatively, the [receive message event](Receive_Message_Event.html) can be used by third-party systems to call an existing process.

To learn more about using e-mails to kick off an Appian process, check out the [Sending an Email Message to a Process](Sending_an_Email_Message_to_a_Process.html) article. To learn more about JMS messaging, checkout the [Working with the Java Message Service](Working_with_the_Java_Messaging_Service.html#receiving-jms-messages) article.

#### Other connection types

If none of these connection types work, for example when sharing documents via HFS, a [custom servlet plug-ins](Appian_Plug-ins.html) can be leveraged to connect between systems. For more common integrations, plug-ins may have already been built and offered on the [Appian AppMarket](https://community.appian.com/b/appmarket). These resources are maintained by the Appian Community and are available to use on an 'as-is' basis.

## Appian initiates the interactions with another system

The second scenario a developer faces when creating an integration is when Appian needs to connect with another system. The following diagram covers the best features and objects to use when getting Appian to query or write data to another system.

![images:appian_initiating_systems.png](images/appian_initiating_systems.png)

If connector functions will not work for a particular scenario, we just have to figure out which protocol to use. For this purpose, we can connect through REST (HTTP), JDBC, WSDL (SOAP), or other means.

### REST/HTTP

[Integrations](Integration_Object.html) should be the primary way to connect to REST services. Once created, integrations can be called in a process using the [Call Integration Smart Service](Call_Integration_Smart_Service.html) or called directly within an expression or interface.

### JDBC

For external databases that support the JDBC protocol, use a [custom JDBC](custom-jdbc-connected-system.html) connected system and a [SQL integration](create-sql-integration.html) object in cases where you can't use an approved business data source.

### WSDL/SOAP

When connecting to a web service using SOAP, developers should use, depending on the object, one of two web service features. If a process needs to call a third-party system, they can use the [Call Web Service Smart Service](Call_Web_Service_Smart_Service.html).

If this is not being called in a process, Designers have access to create expressions using [webservicequery()](fnc_scripting_webservicequery.html) or the [webservicewrite()](fnc_scripting_webservicewrite.html) functions that will call the integration from an Appian rule or interface.

In either case, these web service features have the added benefit of creating a smart service page.

### Other

If you are unable to connect to another system through a purpose-built REST or WSDL service, you can build custom plug-ins to assist calls to a third party system.

For more common integrations, plug-ins may have already been built and offered on the [Appian AppMarket](https://community.appian.com/b/appmarket). These resources are maintained by the Appian Community and are available to use on an 'as-is' basis.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...