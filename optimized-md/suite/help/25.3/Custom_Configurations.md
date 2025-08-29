---
source_url: https://docs.appian.com/suite/help/25.3/Custom_Configurations.html
original_path: Custom_Configurations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Configurations

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Overview

Appian uses `.properties` and `.xml` files to set or modify standard configuration settings. This page describes how to set custom parameters in these files so that your customizations are retained whenever Appian is updated.

## Custom properties

Most system settings can be centrally managed by configuring a single properties file called `custom.properties` located at `<APPIAN_HOME>/conf/`. In multiple server environments, the contents of this file must be identical on all Appian servers.

-   The `custom.properties` file you create is not overwritten when an upgrade occurs.

A `custom.properties.example` file is installed in the same directory to provide you with general examples. Be sure you are familiar with each setting in the example file before implementing its settings.

-   If you enable the settings listed in this example file without configuring it properly for your environment, the Appian Engines may not start.

Most properties can safely be left at their default settings. For any properties that must be set for the system to work correctly, see also: [Required Configurations](Post-Install_Configurations.html#required-configurations).

Once the `custom.properties` file is created and Appian is running, some properties can be read dynamically while others require the application server to restart.

The table below lists the various property prefixes and whether or not changes to them require the Application Server to be restarted to have the changes take effect.

| Property Prefix | Application Server Restart Needed |
| --- | --- |
| conf.forms.\* | No |
| conf.mailhandler.\* | No |
| conf.node.webservice.\* | No |
| conf.security.\* | No |
| resources.appian.ag.application.\* | No |
| resources.appian.ag.constants.\* | No |
| resources.appian.applications.applications.\* | No |
| resources.appian.km.file\_icons.\* | No |
| resources.appian.process.email-expressions.\* | No |
| server.conf.\* | No |
| All other prefixes | Yes |

## Logging options

The filenames, locations, and content of log files can be configured using `appian_log4j.properties` file.

See also: [Customizing Log Output](Customizing_Application_Logging.html)

## Server configurations

Appian allows you to manage server configurations using a custom topology file. An example file named `appian-topology.xml.example` is included in the following location:

-   `<APPIAN_HOME>/conf/`

Common uses for a custom topology configuration file include:

-   [Configuring Port Numbers](Port_Usage.html).

-   [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...