---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Plug-ins.html
original_path: Appian_Plug-ins.html
version: "25.3"
title: "Appian Suite Plug-ins"
page_id: "Appian_Plug-ins"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Suite Plug-ins

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian Plug-ins simplify the creation and deployment of common Appian extensions, such as Custom Functions, Custom Data Types, and Smart Services. Appian's Plug-in architecture is based on an industry-standard architecture called [OSGI](https://www.osgi.org/).

-   A **Plug-in** is a JAR file that contains Modules and supporting JAR files.
-   A **Module** is a contribution to an extension point such as a Function, a Function Category, or a Smart Service.
-   A **Bundled Plug-in** is a Plug-in that is a core part of the Appian System and can not be removed, disabled, or undeployed.

See also:

-   [Smart Service Plug-ins](Custom_Smart_Service_Plug-ins.html)
-   [Function Plug-ins](Custom_Function_Plug-ins.html)
-   [Data Type Plug-ins](Custom_Data_Types_from_Java_Object.html)
-   [Servlet Plug-ins](Custom_Servlet_Plug-ins.html)

## Deploying plug-ins

Plug-ins are located in `APPIAN_INSTALL/_admin/plugins/`. Deploy a plug-in by copying it to this directory.

On application server start-up, Appian attempts to deploy all plug-ins. If, on start-up, a plug-in fails to deploy due to a timeout, Appian will retry the deployment, but if the plug-in continues to timeout, the application server will fail to start. This guardrail is in place to ensure that Appian does not start with missing dependencies that could cause errors in running processes.

Plug-in deployment supports hot deployment. Changes in the Plug-ins directory are read at the polling interval `conf.plugins.poll-interval` specified in the `custom.properties` file. If this interval is set to 0 (zero), hot deployment is disabled.

In order for a plug-in to be authorized to use the `EncryptionService`, the plug-in must be granted access to it via the Plug-ins page of the Admin Console.

See also: [Admin Console](Appian_Administration_Console.html#plug-ins)

## Plug-in manifest (appian-plugin.xml)

Every Appian Plug-in must have an `appian-plugin.xml` at the root of the Plug-in jar. If this file is not present, the Plug-in is ignored.

## Required properties

**Plug-in Key**: The unique identifier for a Plug-in.

```
1
2
3
4
5
<appian-plugin key="acme.sample.key" name="Sample Plugin">
	<plugin-info>
		...
	</plugin-info>
</appian-plugin>
```

**Best Practice**: As a best practice, use a namespace for your Plug-in. The _appian-system_ namespace is reserved.

**Plug-in Name**: A readable name for the Plug-in. Internationalization of this name is recommended.

```
1
2
3
4
5
<appian-plugin key="acme.sample.key" name="Sample Plugin">
	<plugin-info>
		...
	</plugin-info>
</appian-plugin>
```

**Plug-in Version**

The version of the plug-in. When updating a plug-in custom data type, the version number of the plug-in **must** be incremented for the changes to take effect.

The recommended format for plug-in version number is two digits (X.X) or three digits (X.X.X).

```
1
2
3
4
5
<plugin-info>
	...
	<version>6.2</version>
	...
</plugin-info>
```

**Best Practice**: As a best practice, increment the version number any time you change a plug-in that has been released.

## Optional properties

**Appian version dependencies**

```
1
2
3
4
5
<plugin-info>
	...
	<application-version min="6.0.2" max="6.2.0"/>
	...
</plugin-info>
```

**Java version dependencies**

```
1
2
3
4
5
<plugin-info>
	...
	<java-version min="1.6"/>
	...
</plugin-info>
```

**Plug-in Description**: Description for the Plug-in. Internationalization of this description is recommended.

```
1
2
3
4
5
<plugin-info>
	...
	<description>A Sample appian-plugin.xml</description>
	...
</plugin-info>
```

**Vendor name and URL**

```
1
2
3
4
5
<plugin-info>
	...
	<vendor name="Appian Corporation" url="http://www.appian.com" />
	...
</plugin-info>
```

## Logging

Include the `log4j` library from `deployment/web.war/WEB-INF/lib/` in the build path of the project and your plug-in's `META-INF/lib/` directory. Any logging settings specific to the plug-in should be added to `appian_log4j.properties`.

See also: [Customizing Application Logging](Customizing_Application_Logging.html)

## Provided Java libraries

Appian provides plug-ins with access to certain libraries, like Appian's [public Java API](APIs.html), and these libraries do not need to be included in your plug-in package. The full list of provided libraries can be found on the [Custom Plug-in Packages](Custom_Plug-in_Packages.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...