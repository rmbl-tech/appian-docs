---
source_url: https://docs.appian.com/suite/help/25.3/blue-prism-connected-system.html
original_path: blue-prism-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Blue Prism

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Blue Prism Robotic Process Automation (RPA) connected system provides an easy way to integrate software robots into your business process, and eliminate repetitive and error-prone tasks that people perform. Automatic discovery of the available Blue Prism processes and their data inputs makes it quick and easy to set up.

See the [Blue Prism documentation](https://docs.blueprism.com/en-US/coveo-search#q=exposing%20and%20calling%20web%20services&t=All&sort=relevancy) for information about exposing and calling web services.

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Blue Prism connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Username\* | **Required**. Blue Prism account used to execute the Blue Prism process or object |
| Password\* | Blue Prism account used to execute the Blue Prism process or object |
| Host URL\* | **Required**. The Host URL for your Blue Prism instance |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![bp_connected_system](images/create_a_connected_system/bp_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `username`
-   `password`
-   `host`

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Execute Blue Prism Process](#execute-blue-prism-process) | Calls a Blue Prism Process that was exposed as a web service | WRITE |
| [Execute Blue Prism Business Object](#execute-blue-prism-business-object) | Calls an action defined in a Blue Prism business object | WRITE |

### Execute Blue Prism Process

Calls a Blue Prism Process that was exposed as a web service.

Execute Blue Prism Process is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![bp_integration_process.png](images/create_a_connected_system/bp_integration_process.png)

### Execute Blue Prism business object

Calls an action defined in a Blue Prism business object

Execute Blue Prism Business Object is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![bp_integration_business_object.png](images/create_a_connected_system/bp_integration_business_object.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...