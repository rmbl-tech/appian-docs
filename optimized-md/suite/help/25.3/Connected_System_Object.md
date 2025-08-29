---
source_url: https://docs.appian.com/suite/help/25.3/Connected_System_Object.html
original_path: Connected_System_Object.html
version: "25.3"
title: "Connected System Object"
page_id: "Connected_System_Object"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Connected System Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Create a Connected System

This video from the [Integrations 101 Academy Online course](https://academy.appian.com/#/online-courses/edc9b638-b053-438d-957d-e3db00012372) explains how to store authentication credentials to access an external system.

## Overview

Connected system objects store authentication and connection information. This allows you to easily connect to external integrations and data sources. It also allows you to deploy connection information across environments and use different connection information for each environment.

For integration connected systems, you can share base URL and authentication details across multiple integrations. This means that a password only has to be updated once, even if it's used in 10 different integrations.

For data source connected systems, you can control access to data sources using object-level security. That means you can restrict access to sensitive information during development.

This page provides detailed design information about the connected system object and its configuration options.

See also:

-   To learn how to use a connected system when creating an integration, see [Create an HTTP Integration](Create_an_Integration.html) or [Create a SQL Integration](create-sql-integration.html).
-   For a real-world example of how to build and use connected systems and integrations, see the [Integration Tutorial](Integration_Tutorial.html).

## Connected system types

When you create a connected system, you can choose from the four main types of connected systems:

|
Type

 |

Description

 |
| --- | --- |
|

[Data Source](data-source-connected-systems.html) Connected Systems

 |

Use these connected systems to connect to [Appian-supported databases](System_Requirements.html#databases). You can create connected systems to connect to the following databases:

-   DB2 Data Source
-   MariaDB Data Source
-   MySQL Data Source
-   Oracle Data Source
-   PostgreSQL Data Source
-   SQL Server Data Source
-   Aurora MySQL Data Source
-   Aurora Postgres Data Source

 |
|

[HTTP](http-connected-system.html) and [OpenAPI](openapi-connected-system.html) Connected Systems

 |

Use these connected systems to generically connect to most APIs.

 |
|

[Custom JDBC](custom-jdbc-connected-system.html) Connected System

 |

Use this connected system to connect to a database not currently supported as a business data source using the JDBC protocol.

 |
|

Pre-Built Connected Systems

 |

We created these connected systems to make it easier for you to connect to some of the most common systems you might want to use in your applications and portals. You can choose from:

-   [Amazon Machine Learning](amazon-machine-learning.html)
-   [Blue Prism](blue-prism-connected-system.html)
-   [DocuSign](docusign-connected-system.html)
-   [Google Cloud Natural Language](google-cloud-natural-language.html)
-   [Google Cloud Translation](google-cloud-translate.html)
-   [Google Cloud Vision](google-cloud-vision.html)
-   [Google Drive](google-drive-connected-system.html)
-   [Google reCAPTCHA](google_reCAPTCHA.html)
-   [Microsoft Azure LUIS](microsoft-azure-luis-connected-system.html)
-   [Microsoft Dynamics 365](microsoft-dynamics-365-crm-connected-system.html)
-   [Salesforce](salesforce-connected-system.html)
-   [Sharepoint](sharepoint-connected-system.html)

 |

## Properties

Each connected system has their own properties. See the linked page for each connected system for more information about their properties.

## Import customization file

When connected systems are deployed, each environment-specific value field will be included in an [import customization file](Managing_Import_Customization_Files.html) so that you can specify a different value for each environment. When importing your import customization file to an envioronment you must also include the connected system in the import package.

When a field is **sensitive**, its value won't be pre-populated when you export the import customization file. For example, when dealing with API Key authentication, the Header Name value will be pre-populated in the import customization file, while the API Key value will be blank. This is because the API key value is sensitive.

When a field is **required**, then it must be configured such that the field will have a value in the target environment once the import is completed. In other words, if a required field is going to be blank, Appian will throw an error and block import. This means that any time you include a required field for a connected system in an import customization file, it must have a value that isn't blank.

### HTTP and OpenAPI connected systems vs. pre-built connected systems

Whenever a value is included in the import customization file, the object in the target environment takes that value. However, the behavior of omitted values varies depending on whether you're using an HTTP/OpenAPI connected system or a pre-built connected system.

For **HTTP and OpenAPI connected systems**, environment-specific fields in the target environment will **never** be overwritten by their values in the source environment. Fields that are omitted from the import customization file will always retain their value in the higher environment unless you explicitly include them in the import customization file. This means that when you deploy an HTTP or OpenAPI connected system, you only need to include an import customization file when initially setting the value upon creation or changing that value on subsequent deployments.

For **pre-built connected systems**, environment-specific fields in the target environment will **always** be overwritten by their values in the source environment unless you explicitly include them in the import customization file. This means that each time you deploy a pre-built connected system with values that are different across environments, you will need to include an import customization file with those values defined.

## Versions

Each time you modify and save a connected system, a new version is created. All objects that use the connected system will use the latest version. All versions are accessible to designers who can view the connected system, and a connected system can be reverted back to a previous version at any time.

For information on how to manage object versions, see [Managing Object Versions](Managing_Object_Versions.html).

## Security

The [security](object-security.html) role map of a connected system controls which developers can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a connected system. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any connected system you create. System administrators can always access a connected system, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a connected system's security.

For data source connected systems, if you are using the Appian Cloud database, see [Appian Cloud Database Administration](appian-cloud-database-administration.html#using-schemas-to-configure-access-to-data) for more information on how to grant access to specific schemas in the database.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a connected system's security role map.

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| **Integration Connected Systems Only** |
| Execute integrations that use the connected system | Yes | Yes | Yes | Yes |
| **Data Source Connected System Only** |
| Execute a stored procedure called by a function or smart service | Yes | Yes | Yes | No |
| Access a Data Source from a plug-in function | Yes | Yes | Yes | No |
| **All Connected Systems** |
| Select the connected system in other design objects | Yes | Yes | Yes | No |
| View connected system definition | Yes | Yes | Yes | No |
| Update connected system definition | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Update the security | Yes | No | No | No |
| Delete the connected system | Yes | No | No | No |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...