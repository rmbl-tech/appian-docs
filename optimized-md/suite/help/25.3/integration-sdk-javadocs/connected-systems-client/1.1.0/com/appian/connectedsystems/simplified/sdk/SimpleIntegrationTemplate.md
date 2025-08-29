---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate"
section: "Class SimpleIntegrationTemplate"
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

-   [Prev Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")
-   Next Class

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html)
-   [No Frames](SimpleIntegrationTemplate.html)

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

## Class SimpleIntegrationTemplate

-   Object
-   -   [com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
    -   -   com.appian.connectedsystems.simplified.sdk.SimpleIntegrationTemplate

-   All Implemented Interfaces:

    [IntegrationTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public abstract class SimpleIntegrationTemplate
    extends [ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
    implements [IntegrationTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    Each implementation of SimpleIntegrationTemplate represents a new type of integration available to designers in Appian.

    Each new type of integration should represent a single operation in the external system. Create a new IntegrationTemplate for each operation.

    Every SimpleIntegrationTemplate must be associated with exactly one [`SimpleConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")

    Each implementation of this class must have the [`TemplateId`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") annotation to be successfully deployed

    Use the [`IntegrationTemplateType`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateType.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.metadata") annotation to express whether this integration modifies or queries data

    [`getConfiguration(SimpleConfiguration, SimpleConfiguration, PropertyPath, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) determines the UI that designers use to configure the integration for execution. [`execute(SimpleConfiguration, SimpleConfiguration, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#execute-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) uses the integration and connected system's configurations to make a call to an external system.

    SimpleIntegrationTemplates are re-instantiated per request. Therefore, each call to [`execute(SimpleConfiguration, SimpleConfiguration, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#execute-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) or [`getConfiguration(SimpleConfiguration, SimpleConfiguration, PropertyPath, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) is on a new instance of the class.

-   -   ### Field Summary

        -   ### Fields inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[typePropertyFactory](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#typePropertyFactory)`

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#SimpleIntegrationTemplate--">SimpleIntegrationTemplate</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;integrationConfigDescriptor, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;connectedSystemConfigDescriptor, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected abstract <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#execute-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;integrationConfiguration, <a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;connectedSystemConfiguration, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Completes the operation in the external system and returns the result to the designer This method is called when a designer hits the test-request button in the Integration Designer, or when an integration is executed from a process, a SAIL form, or a Web API.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>protected abstract <a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfiguration</a></span>(<a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;integrationConfiguration, <a href="../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;connectedSystemConfiguration, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Returns a configuration that defines the UI and values of an Appian integration object.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">getConfigurationDescriptor</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;integrationConfigDescriptor, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;connectedSystemConfigDescriptor, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">localTypeProperty</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localType)</code>&nbsp;</td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.lang.String-">localTypeProperty</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localType, String&nbsp;key)</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[booleanProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#booleanProperty-java.lang.String-), [deroot](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#deroot-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-), [documentProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#documentProperty-java.lang.String-), [doubleProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#doubleProperty-java.lang.String-), [dropdownProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#dropdownProperty-java.lang.String-java.util.List-), [encryptedTextProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#encryptedTextProperty-java.lang.String-), [folderProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#folderProperty-java.lang.String-), [integerProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#integerProperty-java.lang.String-), [listTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#listTypeProperty-java.lang.String-), [localType](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localType-java.lang.String-), [textProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#textProperty-java.lang.String-)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### SimpleIntegrationTemplate

            public SimpleIntegrationTemplate()

    -   ### Method Detail

        -   #### getConfiguration

            protected abstract [SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") getConfiguration([SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") integrationConfiguration,
                                                                    [SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") connectedSystemConfiguration,
                                                                    [PropertyPath](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty,
                                                                    [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Returns a configuration that defines the UI and values of an Appian integration object. This method should update the `integrationConfiguration`.

            Every call to this method must call [`SimpleConfiguration.setProperties(PropertyDescriptor[])`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#setProperties-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor...-)

            Example: Text field for entering customer ID and toggle for retrieving additional information

               return configuration.setProperties(
                 textProperty("customerID").label("Customer ID").build(),
                 booleanProperty("additionalInfo").label("Get Additional Info").build()
               );

            This method is called in the following scenarios:

            -   A designer creates a new Integration.
            -   A designer loads an existing Integration in the Designer.
            -   A designer edits a [`property`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") that has a [`refresh policy`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") of `ALWAYS`.
            -   A designer selects a new connected system

            Parameters:

            `integrationConfiguration` - The current [`configuration`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") This will never be `null`

            `connectedSystemConfiguration` - The configuration of the designer-selected Appian connected system object associated with the Appian Integration object. This will never be `null`

            `updatedProperty` - Field that has been modified by the designer. For a field to trigger the [`getConfiguration(SimpleConfiguration, SimpleConfiguration, PropertyPath, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method, its RefreshPolicy must be set to [`RefreshPolicy.ALWAYS`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html?is-external=true#ALWAYS "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration"). Use this path to find the new, designer-updated value in the integrationConfiguration. This parameter will be `null` when a new Appian Integration object is created, when a saved Appian Integration object is reloaded in the designer, and when a new Appian connected system is selected.

            `executionContext` - Contains all of the contextual information needed to configure the Appian Integration object, including Designer information, Designer locale, and proxy configuration. [`ExecutionContext`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            The updated [`SimpleConfiguration`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") integrationConfiguration

        -   #### execute

            protected abstract [IntegrationResponse](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") execute([SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") integrationConfiguration,
                                                           [SimpleConfiguration](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") connectedSystemConfiguration,
                                                           [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Completes the operation in the external system and returns the result to the designer

            This method is called when a designer hits the test-request button in the Integration Designer, or when an integration is executed from a process, a SAIL form, or a Web API.

            Use the [`SimpleConfiguration.getValue(String)`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html#getValue-java.lang.String-) method to retrieve values from the integration and connected system. These values can then be sent to the external system.

            Parameters:

            `integrationConfiguration` - The configuration of the integration. This will never be `null`

            `connectedSystemConfiguration` - The configuration of the connected system associated with the integration. This will never be `null`

            `executionContext` - Contains all of the contextual information needed to execute the integration and configure diagnostics, including Designer information, Designer locale, and proxy configuration. [`ExecutionContext`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            IntegrationResponse A success boolean, a result map, a list of errors, and designer-localized diagnostic information

        -   #### getConfigurationDescriptor

            public [ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") getConfigurationDescriptor([ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") integrationConfigDescriptor,
                                                                      [ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") connectedSystemConfigDescriptor,
                                                                      [PropertyPath](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty,
                                                                      [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Specified by:

            `[getConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk")` in interface `[IntegrationTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")`

        -   #### execute

            public [IntegrationResponse](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") execute([ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") integrationConfigDescriptor,
                                               [ConfigurationDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") connectedSystemConfigDescriptor,
                                               [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Specified by:

            `[execute](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk")` in interface `[IntegrationTemplate](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")`

        -   #### localTypeProperty

            public [PropertyDescriptorBuilder](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeProperty([LocalTypeDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localType)

            Overrides:

            `[localTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-)` in class `[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")`

            Parameters:

            `localType` - Data structure composed of properties

            Returns:

            Local type property builder with the name of the local type as the key

        -   #### localTypeProperty

            public [PropertyDescriptorBuilder](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeProperty([LocalTypeDescriptor](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localType,
                                                               String key)

            Overrides:

            `[localTypeProperty](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.lang.String-)` in class `[ConfigurableTemplate](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")`

            Parameters:

            `localType` - Data structure composed of properties

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Local type property builder with the provided key

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")
-   Next Class

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html)
-   [No Frames](SimpleIntegrationTemplate.html)

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