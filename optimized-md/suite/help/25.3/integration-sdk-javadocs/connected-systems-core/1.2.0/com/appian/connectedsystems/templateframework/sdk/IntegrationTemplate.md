---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate"
section: "Interface IntegrationTemplate"
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html)
-   [No Frames](IntegrationTemplate.html)

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

## Interface IntegrationTemplate

-   * * *

    public interface IntegrationTemplate

    Represents an Integration Type in Appian.

    Each Integration Type must live under a Connected System Type and every IntegrationTemplate must be associated with exactly one [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

    For every Integration Object there is exactly one Integration Type. An IntegrationTemplate contains display and execution logic for that integration type.

    IntegrationTemplate objects are used only once. Each call to the [`getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method will be a call to a new instance of this class.

    Do not include [`TemplateId.majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) when using [`TemplateId`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html "annotation in com.appian.connectedsystems.templateframework.sdk") annotation, otherwise the template will fail to upload. Versioning will be handled by modifying the [`TemplateId.majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) on the associated [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;integrationConfigDescriptor, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;connectedSystemConfigDescriptor, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Returns an <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk"><code>IntegrationResponse</code></a>.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfigurationDescriptor</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;integrationConfigDescriptor, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;connectedSystemConfigDescriptor, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Returns a configuration for the given Integration object.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### getConfigurationDescriptor

            [ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getConfigurationDescriptor([ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") integrationConfigDescriptor,
                                                               [ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") connectedSystemConfigDescriptor,
                                                               [PropertyPath](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty,
                                                               [ExecutionContext](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Returns a configuration for the given Integration object.

            This method is called when a new Integration object is created, when a saved Integration object is reloaded in the Designer, and when the user proposes a change to the Integration object in the Designer (subject to the edited field's [`RefreshPolicy`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")). This method should both validate and update the proposed integrationConfigDescriptor before returning.

            Parameters:

            `integrationConfigDescriptor` - The new, user-proposed configuration of an Integration object. This object will be `null` when a new IntegrationObject is created.

            `connectedSystemConfigDescriptor` - The configuration of the user-selected Connected System object associated with the Integration object. Selecting a new Connected System object always triggers the [`getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method. This object will be `null` when no connected system is selected

            `updatedProperty` - The path at which the user is proposing a change to the integrationConfigurationDescriptor. For a field to trigger the [`getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method, its RefreshPolicy must be set to [`RefreshPolicy.ALWAYS`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#ALWAYS). Use this path to find the new, user-updated value in the integrationConfigurationDescriptor. This parameter will be `null` when a new Integration object is created, and when a saved Integration object is reloaded in the designer.

            `executionContext` - Contains all of the contextual information needed to configure the Integration object, including User information, User locale, and proxy configuration. [`ExecutionContext`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            the updated and validated [`ConfigurationDescriptor`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

        -   #### execute

            [IntegrationResponse](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") execute([ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") integrationConfigDescriptor,
                                        [ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") connectedSystemConfigDescriptor,
                                        [ExecutionContext](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Returns an [`IntegrationResponse`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk").

            This method is called when a user hits the test-request button in the Integration Designer, or when an integration is executed from a process, a SAIL form, or a Web API.

            Parameters:

            `integrationConfigDescriptor` - The configuration of the integration. This object will never be `null`

            `connectedSystemConfigDescriptor` - The configuration of the connected system associated with the integration. This object will never be `null`

            `executionContext` - Contains all of the contextual information needed to execute the integration and configure diagnostics, including User information, User locale, and proxy configuration. [`ExecutionContext`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            IntegrationResponse containing a success boolean, a result map, a list of errors, and user-localized diagnostic information

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html)
-   [No Frames](IntegrationTemplate.html)

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