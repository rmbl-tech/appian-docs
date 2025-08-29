---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html)
-   [No Frames](ConnectedSystemTemplate.html)

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

## Interface ConnectedSystemTemplate

-   All Known Subinterfaces:

    [OAuthConnectedSystemTemplate](../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.oauth"), [TestableConnectedSystemTemplate](../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")

    * * *

    public interface ConnectedSystemTemplate

    Each implementation of ConnectedSystemTemplate represents a new type of connected system available to designers in Appian.

    A connected system in Appian stores shared information, usually credentials, across multiple [integrations](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

    Your plugin must contain at least one implementation of ConnectedSystemTemplate and at least one implementation of [`IntegrationTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

    Default to implementing one of the subinterfaces of ConnectedSystemTemplate: [`TestableConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting") or [`OAuthConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.oauth"). Only implement this interface directly if there are no credentials to test or credentials are untestable.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfigurationDescriptor</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configDescriptor, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Returns the configuration that defines the UI and data stored for a Connected System object.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### getConfigurationDescriptor

            [ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getConfigurationDescriptor([ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") configDescriptor,
                                                               [PropertyPath](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty,
                                                               [ExecutionContext](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Returns the configuration that defines the UI and data stored for a Connected System object.

            This method is called in the following scenarios:

            -   A designer creates a new connected system. `configDescriptor` and `updatedProperty` will be null.
            -   A designer loads an existing connected system to edit. `updatedProperty` will be null.
            -   A designer edits a [`property`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") that has a [`refresh policy`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") of `ALWAYS`.

            Parameters:

            `configDescriptor` - The current [`ConfigurationDescriptor`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). This value will be null for new connected systems.

            `updatedProperty` - The [`path`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") to the updated property. This value will be null for new connected systems and when loading an existing connected system for editing.

            `executionContext` - The [`ExecutionContext`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") for the current evaluation of the connected system descriptor

            Returns:

            The updated [`ConfigurationDescriptor`](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html)
-   [No Frames](ConnectedSystemTemplate.html)

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