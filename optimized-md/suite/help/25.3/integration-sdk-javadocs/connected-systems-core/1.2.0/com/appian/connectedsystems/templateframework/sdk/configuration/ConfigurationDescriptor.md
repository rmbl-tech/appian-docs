---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html
version: "25.3"
---

[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.ChoiceBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html)
-   [No Frames](ConfigurationDescriptor.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class ConfigurationDescriptor

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor

-   * * *

    public final class ConfigurationDescriptor
    extends Object

    A data structure that describes an instance of an [`IntegrationTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") or [`ConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

    The data structure contains an IntegrationTemplate's or ConnectedSystemTemplate's definition, meaning [`state`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#state), and the associated [`types`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#types) that define the structure of and rendering for that state.

    [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getValue--) values are provided by the user, but the [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") objects determine which fields appear in the UI.

    For a type's field to appear, it must be present in the state. Therefore, the [`ConnectedSystemTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) and [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) methods must construct the initial state for each connected system and integration instance using [`StateGenerator.generateDefaultState(com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-).

    As users provide values, the configuration descriptor can by dynamically updated to progressively disclose configuration options, fill in dropdown choices, and set default values.

    Construct configuration descriptors using the [`ConfigurationDescriptor.ConfigurationDescriptorBuilder`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></span></code><div class="block">Builder for a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">configuration descriptor</a></div></td></tr></tbody></table>

    -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#ROOT_KEY">ROOT_KEY</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#STATE_KEY">STATE_KEY</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#TYPES_KEY">TYPES_KEY</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#builder--">builder</a></span>()</code><div class="block">Builder for a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">configuration descriptor</a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getRootState--">getRootState</a></span>()</code><div class="block">The combination of user input and developer configuration data that defines an instance of a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>ConnectedSystemTemplate</code></a> or <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>IntegrationTemplate</code></a>.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>Map&lt;String,<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getState--">getState</a></span>()</code><div class="block">Use <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getRootState--"><code>getRootState()</code></a></div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>Map&lt;String,<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--">getTypes</a></span>()</code><div class="block">The structure of and rendering configurations for the data that define a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>ConnectedSystemTemplate</code></a> or <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html" title="interface in com.appian.connectedsystems.templateframework.sdk"><code>IntegrationTemplate</code></a> instance.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#toBuilder--">toBuilder</a></span>()</code><div class="block">Converts the immutable configuration descriptor to a mutable builder.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### STATE\_KEY

            public static final String STATE\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor.STATE_KEY)

        -   #### TYPES\_KEY

            public static final String TYPES\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor.TYPES_KEY)

        -   #### ROOT\_KEY

            public static final String ROOT\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor.ROOT_KEY)

    -   ### Method Detail

        -   #### getState

            public Map<String,[PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getState()

            Use [`getRootState()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getRootState--)

        -   #### getRootState

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getRootState()

            The combination of user input and developer configuration data that defines an instance of a [`ConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") or [`IntegrationTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

            The root [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getType--) type must be a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Returns:

            The root state of the template provided in [`ConfigurationDescriptor.ConfigurationDescriptorBuilder.withState(com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withState-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-)

        -   #### getTypes

            public Map<String,[LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getTypes()

            The structure of and rendering configurations for the data that define a [`ConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") or [`IntegrationTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") instance.

            The root state must have a corresponding type present in the type map. Any property whose [key](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--) is not present in the type's [property keys](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#getPropertyKeys--) will be neither displayed in the UI nor persisted. This rule applies to all nested [`LocalTypePropertyDescriptor's`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") properties.

            Returns:

            A map of [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html#getName--) names to their respective [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

        -   #### toBuilder

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") toBuilder()

            Converts the immutable configuration descriptor to a mutable builder.

        -   #### builder

            public static [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builder()

            Builder for a [configuration descriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.ChoiceBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html)
-   [No Frames](ConfigurationDescriptor.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._