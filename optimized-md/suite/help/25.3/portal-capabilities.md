---
source_url: https://docs.appian.com/suite/help/25.3/portal-capabilities.html
original_path: portal-capabilities.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Portal Capabilities

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Portals and sites both give your users rich experiences that display valuable data and manage important processes. However, since portals are run in a service that is separate from your Appian environment, there are some capabilities that work a little differently in portals.

Appian capabilities can be either compatible, partially compatible, or incompatible with portals:

-   **Compatible**: Works with portals without a custom integration.
-   **Partially compatible**: Works with portals using a custom integration to connect the portal to the Appian environment.
-   **Incompatible**: Doesn't work in portals. However, there may be a workaround available that allows you to achieve a similar outcome.

## Portal capabilities

The following table lists some common capabilities and whether they are compatible, partially compatible, or incompatible with portals. The compatibility of functions and components is also listed in the [Appian Functions](Appian_Functions.html) table. Keep this compatibility in mind when designing your portal to make sure you are using them in a way that works with portals.

| Platform capability | Portals compatibility | How to use |
| --- | --- | --- |
| Using a record type to [write or query data](portals-data.html#working-with-data-using-record-types) | Compatible | To query data, in the portal interface, use [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html).

To write data, in the portal interface, use [a!startProcess()](Start_Process_Smart_Service.html#astartprocess). In the process, use the [Write Record](Write_Records_Smart_Service.html) or [Delete Record](Delete_Records_Smart_Service.html) smart services. |
| Records-powered [grids](read-only-grid-configuration.html), [charts](Chart_Configuration_Using_Records.html), and [selection components](SAIL_Components.html#selection) | Compatible | Use the record type as the source for read-only grids, charts, and selection components ([card choices](card-choices-component.html), [checkbox](Checkbox_Component.html), [dropdown](Dropdown_Component.html), [multiple dropdown](Multiple_Dropdown_Component.html), and [radio button](Radio_Button_Component.html)). For considerations when using read-only grids in a portal, see [Using records-powered grids in a portal](Paging_Grid_Component.html#using-records-powered-grids-in-a-portal) and [Working with Data in a Portal](portals-data.html#write-record-data). |
| Record [actions](record-actions.html), [lists](record-list.html), and [views](record-view.html) | Incompatible | Build a custom interface instead of using a record action, list, or view. |
| Starting a process | Compatible | In a portal interface, use [a!startProcess()](Start_Process_Smart_Service.html#astartprocess) in the _saveInto_ parameter of a submit link or button. |
| Writing and querying data from a [publicly accessible external database](portals-data.html#working-with-data-in-a-publicly-accessible-external-database) | Compatible | \- |
| Using a CDT to write or query data, including connecting to a database behind a VPN | Partially compatible | Connect to a web API object using an integration object. From the web API, use an Appian function to [write or query data in your database](portals-data.html#working-with-data-using-cdts). |
| [Uploading and downloading](portals-design.html#working-with-documents) files | Compatible | \- |
| [HTTP](http-connected-system.html) and [OpenAPI](openapi-connected-system.html) connected systems using basic and API key authentication | Compatible | \- |
| HTTP and OpenAPI connected systems using AWS Signature Version 4, Google Service Account, and OAuth 2.0 [authentication types](connected_system_authentication.html) | Partially compatible | [Connect to a web API object using an integration object](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal). From the web API, call an integration object using the desired authentication type. |
| [Pre-built connected systems](Connected_System_Object.html#connected-system-types) | Partially compatible | [Connect to a web API object using an integration object](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal). From the web API, call an integration object using the desired connected system. |
| Constants of type Application, Group, Group Type, Report, or Task Report | Incompatible | \- |
| Interface components | See each component in the [Appian Functions](Appian_Functions.html) table for its compatibility with portals. | Don't use [incompatible components](portals-design.html#portal-compatibility-with-functions-components-and-objects) in a portal. |
| Appian functions | See each function in the [Appian Functions](Appian_Functions.html) table for its compatibility with portals. | You can still leverage functions that are listed as [partially compatible](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal) by connecting to a web API object using an integration object From the web API, call the function.

Don't use [incompatible functions](portals-design.html#portal-compatibility-with-functions-components-and-objects) in a portal. |
| [Function plug-ins](Custom_Function_Plug-ins.html) | Partially compatible | [Connect to a web API object using an integration object](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal). From the web API, call the function plug-in. |
| [AppMarket component plug-ins](https://community.appian.com/b/appmarket?tags=Component%20Plug-in%2C) | See [Portal Best Practices](portals-design.html#determining-if-a-component-plug-in-is-compatible-with-portals) for determining compatibility with portals. | If you need to use a [connected system plug-in](https://community.appian.com/b/appmarket?tags=Connected%20System%20Plug-in%2C) with the component plug-in, see [Using connected system plug-ins](portals-design.html#using-connected-system-plug-ins-in-a-portal) for more information. |
| [Custom component plug-ins](component-plugins.html) | Compatible | See [Develop Component Plug-ins for Portals](component-portals.html) for guidelines to ensure that your component plug-ins are compatible with portals. |
| \- [Connected system plug-ins](connected-system-plug-in-landing.html) (unless they are used with a compatible component plug-in)
\- [Smart service plug-ins](Custom_Smart_Service_Plug-ins.html)
\- [Data type plug-ins](Custom_Data_Types_from_Java_Object.html)
\- [Servlet plug-ins](Custom_Servlet_Plug-ins.html) | Incompatible | \- |
| [Appian-supported locales, time zones, and calendars](Appian_Administration_Console.html#internationalization) | Compatible | \- |
| Rule inputs | Compatible | Use rule inputs in any expression or interface used by a portal. [Certain rule inputs](url-parameters.html#types-of-rule-inputs-that-work-with-url-parameters) can be used with [URL parameters](url-parameters.html#what-are-url-parameters). See [Use URL Parameters for Site and Portal Navigation](url-parameters.html) for more information. |
| [Translation sets](translation-set-object.html) | Compatible | You can [reference translation strings](reference-translation-strings.html) in portal interfaces. Translation strings will display in the **Primary Locale** that is configured in the [Administration Console](Appian_Administration_Console.html#internationalization) for the environment. |
| [Decision objects](Decisions.html) | Partially compatible | [Connect to a web API object using an integration object](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal). From the web API, call the decision object. |
| [Tasks](Tasks.html) | Incompatible - Your users should be authenticated if you need to send them a task. | \- |
| Accessing the portal in the [Appian Mobile](Appian_for_Mobile_Devices.html) application | Incompatible | Access the portal from a mobile browser. |
| [Offline mobile](offline-mobile-overview.html) | Incompatible | \- |
| Display a portal page in an external website | Compatible | See [Connecting Appian to External Websites](Using_appian_with_custom_websites.html) for instructions and more information. |
| Environments configured with [dual inbound access](Configuring_Dual_Inbound_Access.html) and [trusted IPs](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html) | Compatible | Environments that use [inbound web access over VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html#inbound-web-access-over-privatelink) can connect to a portal as long as they are configured with [dual inbound access](Configuring_Dual_Inbound_Access.html) and the appropriate Appian Cloud outbound IP addresses are added to the [list of trusted IP address](Configuring_Trusted_IP_Addresses_for_Appian_Cloud.html#enabling-trusted-ip-addresses) for the environment. |
| Restricting access to a portal using a VPN | Incompatible | \- |
| [Mutual TLS](Web_API_Authentication.html#mutual-tls-authentication) | Incompatible | \- |
| Appian environments with custom domains that use privately-signed certificates | Incompatible | To use portals in an environment that has a custom domain, the certificate must be signed by a public certificate authority. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...