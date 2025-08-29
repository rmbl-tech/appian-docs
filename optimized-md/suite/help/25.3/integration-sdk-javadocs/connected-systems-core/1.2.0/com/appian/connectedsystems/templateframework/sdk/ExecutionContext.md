---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html
version: "25.3"
---

[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html)
-   [No Frames](ExecutionContext.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk

## Interface ExecutionContext

-   * * *

    public interface ExecutionContext

    Injected context that may be necessary to create or recreate a Configuration or execute an Integration. This context object is a collection of read-only information provided to a developer and should not be implemented.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t5" class="tableTab"><span><a href="javascript:show(16);">Default Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>Optional&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getAccessToken--">getAccessToken</a></span>()</code><div class="block">OAuth access token for the current user.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getAttemptNumber--">getAttemptNumber</a></span>()</code><div class="block">The number of attempts to call execute an Integration or retrieve a Configuration.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>Locale</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getDesignerLocale--">getDesignerLocale</a></span>()</code><div class="block">The locale of the user configuring the integration.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>default <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html" title="interface in com.appian.connectedsystems.templateframework.sdk.services">DocumentDownloadService</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getDocumentDownloadService--">getDocumentDownloadService</a></span>()</code><div class="block">Returns a DocumentDownloadService.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>Locale</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getExecutionLocale--">getExecutionLocale</a></span>()</code><div class="block">The locale to use when creating an <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk"><code>IntegrationError</code></a>.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ProxyConfigurationData</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getProxyConfigurationData--">getProxyConfigurationData</a></span>()</code><div class="block">Proxy configurations for the site.</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#hasAccessToConnectedSystem--">hasAccessToConnectedSystem</a></span>()</code><div class="block">Whether the user has access to the connected system.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#isDiagnosticsEnabled--">isDiagnosticsEnabled</a></span>()</code><div class="block">Whether diagnostics should be provided.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### getDesignerLocale

            Locale getDesignerLocale()

            The locale of the user configuring the integration. Use this value to internationalize property labels, instructions, etc.

        -   #### getExecutionLocale

            Locale getExecutionLocale()

            The locale to use when creating an [`IntegrationError`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk"). Use the [`designer locale`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getDesignerLocale--) in all other contexts.

        -   #### isDiagnosticsEnabled

            boolean isDiagnosticsEnabled()

            Whether diagnostics should be provided.

        -   #### hasAccessToConnectedSystem

            boolean hasAccessToConnectedSystem()

            Whether the user has access to the connected system.

            If the user does not have access to the connected system, it means that they cannot update the connected system's configuration descriptor. Keep this in mind when displaying error messages.

            The connected system's [`ConfigurationDescriptor`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") will still be passed to [`IntegrationTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") methods regardless of whether the user has access to view the connected system.

        -   #### getProxyConfigurationData

            [ProxyConfigurationData](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html "interface in com.appian.connectedsystems.templateframework.sdk") getProxyConfigurationData()

            Proxy configurations for the site.

        -   #### getAccessToken

            Optional<String> getAccessToken()

            OAuth access token for the current user.

        -   #### getAttemptNumber

            int getAttemptNumber()

            The number of attempts to call execute an Integration or retrieve a Configuration. This number will be incremented every time one of the above methods throws an [`ExpiredTokenException`](../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html "class in com.appian.connectedsystems.templateframework.sdk.oauth").

        -   #### getDocumentDownloadService

            default [DocumentDownloadService](../../../../../com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html "interface in com.appian.connectedsystems.templateframework.sdk.services") getDocumentDownloadService()

            Returns a DocumentDownloadService. This method will only return a functional service in [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-). In all other cases, calls to the service will throw an `UnsupportedOperationException`.

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html)
-   [No Frames](ExecutionContext.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._