---
source_url: https://docs.appian.com/suite/help/25.3/project-structure.html
original_path: project-structure.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Project Structure

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page shows you how to structure your connected system plug-in project to ensure that your plug-in JAR contains the right files in the right places.

**Tip:**  This version of Appian supports component plug-ins that use [SDK version](reference-manifest.html) 1.0.0. Refer to the [Integration SDK compatibility table](integration-sdk-versions.html) for version details.

## Plug-in project structure

-   ![file](images/icon/file-zip-o.png) MyPlugin - packaged as a JAR
    -   ![folder](images/icon/folder.png) src
        -   ![folder](images/icon/folder.png) main
            -   ![folder](images/icon/folder.png) java
                -   ![folder](images/icon/folder.png) com
                    -   ![folder](images/icon/folder.png) mycorp
                        -   ![file](images/icon/file-code-o.png) MyConnectedSystemTemplate.java - stores credentials and authentication configuration details
                        -   ![file](images/icon/file-code-o.png) MyIntegrationTemplate.java - a single operation available to designers
            -   ![folder](images/icon/folder.png) resources
                -   ![folder](images/icon/folder.png) com
                    -   ![folder](images/icon/folder.png) mycorp
                        -   ![file](images/icon/file-image-o.png) MyConnectedSystemTemplate\_40px.png - See [How To Add Logos](branding-a-plug-in.html)
                        -   ![file](images/icon/file-image-o.png) MyConnectedSystemTemplate\_50px.png
                        -   ![file](images/icon/file-image-o.png) MyConnectedSystemTemplate\_80px.png
                -   ![file](images/icon/file-code-o.png) appian-plugin.xml - Connected System Plug-in [Manifest](csp-configuration-files.html#plug-in-manifest)
                -   ![file](images/icon/file-o.png) resources\_en\_US.properties, see [Internationalization Bundles](csp-configuration-files.html#internationalization-bundles)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...