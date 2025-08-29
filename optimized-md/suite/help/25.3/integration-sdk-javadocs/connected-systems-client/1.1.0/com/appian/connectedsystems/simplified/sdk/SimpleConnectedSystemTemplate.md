---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html "class in com.appian.connectedsystems.simplified.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html)
-   [No Frames](SimpleConnectedSystemTemplate.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.simplified.sdk

## Class SimpleConnectedSystemTemplate

-   Object
-   -   [com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
    -   -   com.appian.connectedsystems.simplified.sdk.SimpleConnectedSystemTemplate

-   All Implemented Interfaces:

    [ConnectedSystemTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    Direct Known Subclasses:

    [SimpleOAuthConnectedSystemTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/oauth/SimpleOAuthConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk.oauth"), [SimpleTestableConnectedSystemTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk.connectiontesting")

    * * *

    public abstract class SimpleConnectedSystemTemplate
    extends [ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
    implements [ConnectedSystemTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    Each subclass of SimpleConnectedSystemTemplate represents a new type of ConnectedSystem available to designers in Appian.

    A Connected System in Appian stores shared information, usually credentials, across multiple [`integrations`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html "class in com.appian.connectedsystems.simplified.sdk"). The data structure will be created in [`getConfiguration(SimpleConfiguration, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)

    Each subclass must have the [`TemplateId`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") annotation to be successfully deployed

    Your plugin must contain at least one subclass of SimpleConnectedSystemTemplate

    This should only be extended directly if the Connected System has no credentials to test or credentials are untestable. Otherwise extend one of the subclasses of SimpleConnectedSystemTemplate: [`TestableConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk.connectiontesting") or [`OAuthConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/simplified/sdk/oauth/SimpleOAuthConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk.oauth").

-   -   ### Field Summary

        -   ### Fields inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[typePropertyFactory](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#typePropertyFactory)`

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#SimpleConnectedSystemTemplate--">SimpleConnectedSystemTemplate</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>protected abstract <a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfiguration</a></span>(<a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;configuration, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Returns the configuration that defines the UI and data stored for an Appian Connected System object.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfigurationDescriptor</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configDescriptor, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[booleanProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#booleanProperty-java.lang.String-), [deroot](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#deroot-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-), [documentProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#documentProperty-java.lang.String-), [doubleProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#doubleProperty-java.lang.String-), [dropdownProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#dropdownProperty-java.lang.String-java.util.List-), [encryptedTextProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#encryptedTextProperty-java.lang.String-), [folderProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#folderProperty-java.lang.String-), [integerProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#integerProperty-java.lang.String-), [listTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#listTypeProperty-java.lang.String-), [localType](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localType-java.lang.String-), [localTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-), [localTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.lang.String-), [textProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#textProperty-java.lang.String-)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### SimpleConnectedSystemTemplate

            public SimpleConnectedSystemTemplate()

    -   ### Method Detail

        -   #### getConfiguration

            protected abstract [SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") getConfiguration([SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") configuration,
                                                                    [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Returns the configuration that defines the UI and data stored for an Appian Connected System object.

            Every call to this method must call [`SimpleConfiguration.setProperties(PropertyDescriptor[])`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setProperties-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor...-)

            Example: Creating a single input for an API Key

               return configuration.setProperties(
                 encryptedTextProperty("apiKey").label("API Key").build()
               );

            This method is called in the following scenarios:

            -   A designer creates a new Connected System.
            -   A designer loads an existing Connected System to edit.
            -   A designer edits a [`property`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") that has a [`refresh policy`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") of `ALWAYS`.

            Parameters:

            `configuration` - The current [`configuration`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration"). This value will never be null

            `executionContext` - The [`ExecutionContext`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") for the current evaluation of the Connected System descriptor This value will never be null

            Returns:

            The updated [`configuration`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

        -   #### getConfigurationDescriptor

            public [ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") getConfigurationDescriptor([ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") configDescriptor,
                                                                      [PropertyPath](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty,
                                                                      [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Specified by:

            `[getConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk")` in interface `[ConnectedSystemTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html "class in com.appian.connectedsystems.simplified.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html)
-   [No Frames](SimpleConnectedSystemTemplate.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._