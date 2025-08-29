---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/package-summary.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/package-summary.html
version: "25.3"
---

[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   Package
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   Prev Package
-   [Next Package](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/package-summary.html)

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/package-summary.html)
-   [No Frames](package-summary.html)

-   [All Classes](../../../../../allclasses-noframe.html)

# Package com.appian.connectedsystems.templateframework.sdk

-   <table class="typeSummary" border="0" cellpadding="3" cellspacing="0" summary="Interface Summary table, listing interfaces, and an explanation"><caption><span>Interface Summary</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Interface</th><th class="colLast" scope="col">Description</th></tr></tbody><tbody><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ClientApi</a></td><td class="colLast"><div class="block">A ClientApi enhances Component Plugins with the capability to execute code on the server with access to secured values Each Client API must be associated with exactly one <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>ConnectedSystemTemplate</code></a> via the <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html" title="annotation in com.appian.connectedsystems.templateframework.sdk"><code>TemplateId</code></a> annotation.</div></td></tr><tr class="rowColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ClientApiRequest</a></td><td class="colLast"><div class="block">Representation of a request from a Component Plugin coupled with data from the associated Connected System object.</div></td></tr><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ConnectedSystemTemplate</a></td><td class="colLast"><div class="block">Each implementation of ConnectedSystemTemplate represents a new type of connected system available to designers in Appian.</div></td></tr><tr class="rowColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a></td><td class="colLast"><div class="block">Injected context that may be necessary to create or recreate a Configuration or execute an Integration.</div></td></tr><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk">IntegrationTemplate</a></td><td class="colLast"><div class="block">Represents an Integration Type in Appian.</div></td></tr><tr class="rowColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ProxyConfigurationData</a></td><td class="colLast"><div class="block">Proxy configurations for the site.</div></td></tr></tbody></table>

-   <table class="typeSummary" border="0" cellpadding="3" cellspacing="0" summary="Class Summary table, listing classes, and an explanation"><caption><span>Class Summary</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Class</th><th class="colLast" scope="col">Description</th></tr></tbody><tbody><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">ClientApiResponse</a></td><td class="colLast"><div class="block">The result of a <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>ClientApi</code></a> execution which is serialized and sent to the client.</div></td></tr><tr class="rowColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a></td><td class="colLast"><div class="block">Information why an integration <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execution</a> failed.</div></td></tr><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></td><td class="colLast">&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a></td><td class="colLast"><div class="block">The result of an operation in an external system .</div></td></tr><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></td><td class="colLast"><div class="block">Builder for the <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">integration response</a></div></td></tr></tbody></table>

-   <table class="typeSummary" border="0" cellpadding="3" cellspacing="0" summary="Annotation Types Summary table, listing annotation types, and an explanation"><caption><span>Annotation Types Summary</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Annotation Type</th><th class="colLast" scope="col">Description</th></tr></tbody><tbody><tr class="altColor"><td class="colFirst"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html" title="annotation in com.appian.connectedsystems.templateframework.sdk">TemplateId</a></td><td class="colLast"><div class="block"><b>Required</b> unique identifier for this template Required: Name Default: majorVersion = 1 <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--"><code>majorVersion()</code></a> only applies to <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>ConnectedSystemTemplate</code></a>.</div></td></tr></tbody></table>

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   Package
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   Prev Package
-   [Next Package](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/package-summary.html)

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/package-summary.html)
-   [No Frames](package-summary.html)

-   [All Classes](../../../../../allclasses-noframe.html)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._