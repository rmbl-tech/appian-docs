---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId"
section: "Annotation Type TemplateId"
tags: ["appian","docs","v25.3"]
---


[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   Next Class

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/TemplateId.html)
-   [No Frames](TemplateId.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Field | 
-   [Required](#annotation.type.required.element.summary) | 
-   [Optional](#annotation.type.optional.element.summary)

-   Detail: 
-   Field | 
-   [Element](#annotation.type.element.detail)

com.appian.connectedsystems.templateframework.sdk

## Annotation Type TemplateId

-   * * *

    @Retention(value=RUNTIME)
     @Target(value=TYPE)
    public @interface TemplateId

    **Required** unique identifier for this template Required: Name Default: majorVersion = 1

    [`majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) only applies to [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk"). Do not provide a [`majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) for [`IntegrationTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") or [`ClientApi`](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html "interface in com.appian.connectedsystems.templateframework.sdk"), otherwise the template will fail to upload. [`IntegrationTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") or [`ClientApi`](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html "interface in com.appian.connectedsystems.templateframework.sdk") will use the version from the associated [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   -   ### Required Element Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Required Element Summary table, listing required elements, and an explanation"><caption><span>Required Elements</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Required Element and Description</th></tr><tr class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#name--">name</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Optional Element Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Optional Element Summary table, listing optional elements, and an explanation"><caption><span>Optional Elements</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Optional Element and Description</th></tr><tr class="altColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--">majorVersion</a></span></code>&nbsp;</td></tr></tbody></table>

-   -   ### Element Detail

        -   #### name

            public abstract String name

    -   -   #### majorVersion

            public abstract int majorVersion

            Default:

            1

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   Next Class

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/TemplateId.html)
-   [No Frames](TemplateId.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Field | 
-   [Required](#annotation.type.required.element.summary) | 
-   [Optional](#annotation.type.optional.element.summary)

-   Detail: 
-   Field | 
-   [Element](#annotation.type.element.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._