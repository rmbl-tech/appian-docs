---
source_url: https://docs.appian.com/suite/help/25.3/Data_Server_Connection_Restrictions.html
original_path: Data_Server_Connection_Restrictions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Service Connection Restrictions

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

Appian restricts connections to the data service's HTTP endpoints by authenticating requests with a security token. Unauthenticated requests could be made after an unauthorized network intrusion or by a security application that scans the HTTP endpoints. When a unique security token is used, only trusted systems are permitted to make calls to the data service.

## Setting the secure token

The security token must be set by the administrator during the Appian installation or upgrade.

To properly set the token, a `data-server-sec.properties` file must be created in both the `<APPIAN_HOME>/conf` and `<APPIAN_HOME>/data-server/conf` directories for each node in the Appian installation. For each `data-server-sec.properties` file that was created, the `dataserver.password` property must be set to the same value across each node where the application server or data service is installed.

**Caution:**  [Registering an environment with the configure script](Configure_Script.html#registering-an-environment) creates a `data-server-sec.properties` file with a unique `dataserver.password` property value. For a [distributed installation](High_Availability_and_Distributed_Installations.html) of Appian, this script must be run on each node of the distributed environment and so the generated `dataserver.password` property value will be distinct on each node.

Make sure to update the `dataserver.password` property value to be the same value on each node so that the `dataserver.password` is consistent across the distributed environment. If this is not done, the data service will not be able to start and the application server will not be able to connect to the data service.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...