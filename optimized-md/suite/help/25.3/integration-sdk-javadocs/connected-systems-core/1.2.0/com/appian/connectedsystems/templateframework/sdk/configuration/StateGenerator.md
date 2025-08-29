---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html)
-   [No Frames](StateGenerator.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class StateGenerator

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.StateGenerator

-   * * *

    public class StateGenerator
    extends Object

    Generates [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") objects given types and pre-existing state. Use this class to generate default state in the [`ConnectedSystemTemplate.getConfigurationDescriptor(ConfigurationDescriptor, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method and [`IntegrationTemplate.getConfigurationDescriptor(ConfigurationDescriptor, ConfigurationDescriptor, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) method when the [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") is null.

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#StateGenerator-java.util.Collection-">StateGenerator</a></span>(Collection&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&gt;&nbsp;localTypeDescriptors)</code><div class="block">Creates a state generator that can create state for the provided local types.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#StateGenerator-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor...-">StateGenerator</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>...&nbsp;localTypeDescriptors)</code><div class="block">Creates a state generator that can create state for the provided local types.</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">generateDefaultState</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;typeDescriptor)</code><div class="block">Convenience method for <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-"><code>generateDefaultState(TypeReference)</code></a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-">generateDefaultState</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a>&nbsp;typeRef)</code><div class="block">Generates a default <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyState</code></a> for the provided type.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>protected Object</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultValue-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-int-">generateDefaultValue</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a>&nbsp;typeReference, int&nbsp;level)</code>&nbsp;</td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateFromExistingState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-">generateFromExistingState</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localTypeDescriptor, <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a>&nbsp;stateToCast)</code><div class="block">Maps properties from the provided state to a new <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyState</code></a> with the given type.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateFromExistingState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">generateFromExistingState</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localTypeDescriptor, <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a>&nbsp;oldRootState, <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path)</code><div class="block">Convenience method for <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateFromExistingState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-"><code>generateFromExistingState(LocalTypeDescriptor, PropertyState)</code></a>.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>protected Set&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#getStateKeysToMaintain-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.util.Map-">getStateKeysToMaintain</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localTypeDescriptor, Map&lt;String,Object&gt;&nbsp;oldStateMap)</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### StateGenerator

            public StateGenerator([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")... localTypeDescriptors)

            Creates a state generator that can create state for the provided local types.

        -   #### StateGenerator

            public StateGenerator(Collection<[LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> localTypeDescriptors)

            Creates a state generator that can create state for the provided local types.

    -   ### Method Detail

        -   #### generateFromExistingState

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") generateFromExistingState([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeDescriptor,
                                                           [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") oldRootState,
                                                           [PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path)

            Convenience method for [`generateFromExistingState(LocalTypeDescriptor, PropertyState)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateFromExistingState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-). Allows specifying path for mapping nested state.

            Parameters:

            `localTypeDescriptor` - The target type of the `stateToCast`

            `oldRootState` - The root state

            `path` - The path to the state to map to the `localTypeDescriptor`

            Returns:

            The newly mapped state from the value at the `path`. This method does not return root state.

        -   #### generateFromExistingState

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") generateFromExistingState([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeDescriptor,
                                                           [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") stateToCast)

            Maps properties from the provided state to a new [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") with the given type. Extra properties are retained when possible (see [`shouldKeepOldState(PropertyDescriptor, PropertyState)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#shouldKeepOldState-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-). Any properties that cannot be retained are dropped. On being saved, templates will lose all extra properties.

            Parameters:

            `localTypeDescriptor` - The target type of the `stateToCast`

            `stateToCast` - The state to map to the `localTypeDescriptor`

            Returns:

            The newly mapped state

        -   #### generateDefaultState

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") generateDefaultState([TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") typeRef)

            Generates a default [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") for the provided type. Default state for [`SystemTypes`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") will be null. For [`local types`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), the default [`PropertyState.getValue()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getValue--) is a `Map` of `String` to [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") where they key for each entry is the property's [key](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--).

            When generating state for a type that references other types, ensure the state generator was constructed with all referenced types.

            Use this method to generate initial state for template [`ConfigurationDescriptors`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). The provided type should be the root type for your configuration.

            Parameters:

            `typeRef` - The type to generate state for

            Returns:

            The generated state

        -   #### generateDefaultState

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") generateDefaultState([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") typeDescriptor)

            Convenience method for [`generateDefaultState(TypeReference)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-)

        -   #### generateDefaultValue

            protected Object generateDefaultValue([TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") typeReference,
                                                  int level)

        -   #### getStateKeysToMaintain

            protected Set<String> getStateKeysToMaintain([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeDescriptor,
                                                         Map<String,Object> oldStateMap)

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html)
-   [No Frames](StateGenerator.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._