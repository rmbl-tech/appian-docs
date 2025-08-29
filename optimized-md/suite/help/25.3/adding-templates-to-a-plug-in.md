---
source_url: https://docs.appian.com/suite/help/25.3/adding-templates-to-a-plug-in.html
original_path: adding-templates-to-a-plug-in.html
version: "25.3"
title: "Add Templates"
page_id: "adding-templates-to-a-plug-in"
section: "Adding a new connected system template"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add Templates

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to add new templates to your connected system plug-in. Examples provided show adding a new connected system, integration, or client API.

## Adding a new connected system template

To create a new connected system and add it to your plug-in, follow the steps below:

1.  Create a new Java class that extends `SimpleConnectedSystemTemplate`.
2.  Specify a template ID using the `@TemplateId` annotation. Specify a `name` and `version`.
    -   This ID should be unique across your entire plug-in.
    -   We recommend using your fully qualified class name.
    -   The `version` parameter is only supported on connected systems and has no effect on integrations or client APIs.
3.  Add the template to `appian-plugin.xml`.

```
1
2
3
  <connected-system-template key="com.mycorp.templates.MyConnectedSystemTemplate" name="MyConnectedSystem" class="com.mycorp.templates.MyConnectedSystemTemplate">
    <!-- Integration Templates and Client APIs go here -->
  </connected-system-template>
```

-   `key` needs to be unique to your plug-in. We recommend using the same value you used for your template ID
-   `name` is displayed in logs and errors
-   See [examples](https://github.com/appian/integration-sdk-examples) for how to implement API key and OAuth.

## Adding a new integration template

To create a new integration and add it to your plug-in, follow the steps below:

1.  Ensure you have a connected system template to associate to.
2.  Create a new Java class that extends `SimpleIntegrationTemplate`.
3.  Specify a template ID using the `@TemplateId` annotation. Specify a `name` only.
    -   This ID should be unique across your entire plug-in.
    -   We recommend using your fully qualified class name.
    -   The `version` parameter is only supported on connected systems and has no effect on integrations or client APIs.
4.  Specify a request policy using `@IntegrationTemplateRequestPolicy`.
    -   If your template definitely has [side effects](https://en.wikipedia.org/wiki/Side_effect_\(computer_science\)), use a `"WRITE"` policy. This will make all integrations created with this template act as a [Smart Service](executing_smart_services.html).
    -   If your template may or may not have [side effects](https://en.wikipedia.org/wiki/Side_effect_\(computer_science\)), depending on its configuration, use a `"READ_AND_WRITE"` policy. **Note:** This will put the responsibility of determining the policy on the designer.
    -   Otherwise, if your template definitely will not have [side effects](https://en.wikipedia.org/wiki/Side_effect_\(computer_science\)), use a `"READ"` policy.
5.  Add the template to `appian-plugin.xml` under an existing connected system tag

```
1
2
3
  <connected-system-template key="com.mycorp.templates.MyConnectedSystemTemplate" name="MyConnectedSystem" class="com.mycorp.templates.MyConnectedSystemTemplate">
    <integration-template key="com.mycorp.templates.MyIntegrationTemplate" name="MyIntegration" class="com.mycorp.templates.MyIntegrationTemplate" />
  </connected-system-template>
```

-   `key` needs to be unique to your plug-in. We recommend using the same value you used for your template ID
-   `name` is displayed in logs and errors
-   See the How To on [Creating and Using a Configuration](creating-and-using-a-configuration.html) for how to set up the integration for your needs.

## Adding a new client API

To create a new client API and add it to your plug-in:

1.  Ensure you have a connected system to associate to.
2.  Create a new Java class that extends `SimpleClientApi`.
3.  Specify a template ID using the `@TemplateId` annotation. Specify a `name` only.
    -   This ID should be unique across your entire plug-in.
    -   We recommend using your fully qualified class name.
    -   The `version` parameter is only supported on connected systems and has no effect on integrations or client APIs.
4.  Add the template to `appian-plugin.xml` under an existing connected system tag.

```
1
2
3
  <connected-system-template key="com.mycorp.templates.MyConnectedSystemTemplate" name="MyConnectedSystem" class="com.mycorp.templates.MyConnectedSystemTemplate">
    <client-api key="com.mycorp.templates.MyClientApi" name="MyClientApi" class="com.mycorp.templates.MyClientApi" />
  </connected-system-template>
```

-   `key` needs to be unique to your plug-in. We recommend using the same value you used for your template ID
-   `name` is displayed in logs and errors
-   See [Client APIs](server-side-logic-for-cp.html) for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...