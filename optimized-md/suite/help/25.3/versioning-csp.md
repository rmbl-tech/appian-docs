---
source_url: https://docs.appian.com/suite/help/25.3/versioning-csp.html
original_path: versioning-csp.html
version: "25.3"
title: "Release a New Version"
page_id: "versioning-csp"
section: "Major versioning"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Release a New Version

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides details on how to create a new version of a connected system plug-in. See the [versioning core concept page](versioning.html) for more context about what to consider when versioning.

## Major versioning

If you are going to make a major version change to your connected system template, integration template, or client API template, do the following:

1.  Create a copy of the connected system class and give it a new name.
    -   Example:
        -   `GoogleDriveSampleConnectedSystemTemplate.java`
        -   `GoogleDriveSampleConnectedSystemTemplate2.java`
2.  Update the new connected system class to have new annotation.
    -   Example: `@TemplateId(name = "GoogleDriveSampleConnectedSystemTemplate", majorVersion = 2)`
3.  Create a copy of any integration templates and client API classes that you **will be modifying** or create your new classes.
    -   Example:
        -   `GoogleDriveSendFileIntegrationTemplate.java`
        -   `GoogleDriveSendFileIntegrationTemplate2.java`
4.  Modify new class files to have your updated logic. Leave the original version unchanged and make your (incompatible) updates to the **new version only**.

5.  Update `appian-plugin.xml` version field to indicate a major change has been made.
    -   Example: `1.1.3` –> `2.0.0`
6.  Update `appian-plugin.xml` to add references to new connected system, integration, or client API templates you created. Ensure each template has a unique key.
    -   Example:

```
1
2
3
4
5
6
<connected-system-template key="GoogleDriveSampleConnectedSystem" name="GoogleDriveSampleConnectedSystem" class="com.mycorp.googledrive.templates.GoogleDriveSampleConnectedSystemTemplate">
   <integration-template key="GoogleDriveSendFileIntegrationTemplate" name="GoogleDriveSendFileIntegrationTemplate" class="com.mycorp.googledrive.templates.GoogleDriveSendFileIntegrationTemplate" />
</connected-system-template>
<connected-system-template key="GoogleDriveSampleConnectedSystem2" name="GoogleDriveSampleConnectedSystem" class="com.mycorp.googledrive.templates.GoogleDriveSampleConnectedSystemTemplate2">
   <integration-template key="GoogleDriveSendFileIntegrationTemplate2" name="GoogleDriveSendFileIntegrationTemplate" class="com.mycorp.googledrive.templates.GoogleDriveSendFileIntegrationTemplate2" />
</connected-system-template>
```

## Minor and patch versioning

Connected system templates do not directly support minor or patch versions.

We recommend that you indicate the logical minor and patch versions through the `appian-plugin.xml` instead. Backwards-compatible feature additions to a connected system should cause a minor version bump (for example, `1.1.3` –> `1.2.0`) for the Plug-in Bundle, and bugfixes should cause a patch version bump (for example, `1.1.3` –> `1.1.4`) for the Plug-in Bundle.

Don't create a copy of the connected system tag or contents. Make your (compatible) updates to the existing connected system.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...