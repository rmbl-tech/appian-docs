---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html)
-   [No Frames](LocalTypeDescriptor.html)

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

## Class LocalTypeDescriptor

-   Object
-   -   [com.appian.connectedsystems.templateframework.sdk.configuration.TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor

-   * * *

    public final class LocalTypeDescriptor
    extends [TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    A complex data structure composed of [property descriptors](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Local types can be nested through the [`LocalTypePropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

    Both [connected system](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") and [integration](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") templates must have at least one local type at the root of their [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). This root type represents the top level properties for that object.

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor.Builder</a></span></code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>LocalTypeDescriptor</code></a> class</div></td></tr></tbody></table>

    -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#NAME">NAME</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#PROPERTIES">PROPERTIES</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#builder--">builder</a></span>()</code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>LocalTypeDescriptor</code></a> class</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#clearProperties--">clearProperties</a></span>()</code><div class="block">Removes all properties</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>List&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#getProperties--">getProperties</a></span>()</code><div class="block">The list of <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">properties</a> that compose the local type.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>Optional&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#getProperty-java.lang.String-">getProperty</a></span>(String&nbsp;key)</code><div class="block">Gets a property by its key</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>List&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#getPropertyKeys--">getPropertyKeys</a></span>()</code><div class="block">Keys of the <code>PropertyDescriptors</code></div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#removeProperties-java.util.function.Predicate-">removeProperties</a></span>(Predicate&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&gt;&nbsp;filter)</code><div class="block">Removes all properties that meet the supplied condition For Example: <code>myType.removeProperties(p -&gt; "PROP_TO_REMOVE".equals(p.getKey()))</code></div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#updateProperties-java.util.function.Predicate-java.util.function.UnaryOperator-">updateProperties</a></span>(Predicate&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&gt;&nbsp;filter, UnaryOperator&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a>&gt;&nbsp;update)</code><div class="block">Iterates through the list of properties, applying the operator to each property that meets the filter condition.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code>void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#updateProperties-java.util.function.UnaryOperator-">updateProperties</a></span>(UnaryOperator&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a>&gt;&nbsp;update)</code><div class="block">Iterates through the list of properties, applying the operator to each.</div></td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[getName](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html#getName--)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### NAME

            public static final String NAME

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor.NAME)

        -   #### PROPERTIES

            public static final String PROPERTIES

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor.PROPERTIES)

    -   ### Method Detail

        -   #### getProperties

            public List<[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getProperties()

            The list of [properties](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") that compose the local type. The order of the properties determines the order they appear in the UI.

        -   #### getProperty

            public Optional<[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getProperty(String key)

            Gets a property by its key

            Parameters:

            `key` - Key of the [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") to retrieve

            Returns:

            The [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") with the provided key, if it exists. Otherwise, returns `Optional.empty()`.

        -   #### getPropertyKeys

            public List<String> getPropertyKeys()

            Keys of the `PropertyDescriptors`

        -   #### updateProperties

            public void updateProperties(UnaryOperator<[PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> update)

            Iterates through the list of properties, applying the operator to each.

            For Example:

            ```

               myType.updateProperties(p -> p.isReadOnly(true))

            ```

            Parameters:

            `update` - A `UnaryOperator` to be applied to each [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### updateProperties

            public void updateProperties(Predicate<[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> filter,
                                         UnaryOperator<[PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> update)

            Iterates through the list of properties, applying the operator to each property that meets the filter condition.

            For Example:

            ```

               myType.updateProperties(p -> "PROP_TO_UPDATE".equals(p.getKey()), p -> p.isReadOnly(true))

            ```

            Parameters:

            `filter` - Predicate that determines which PropertyDescriptor to apply the `update` function to

            `update` - A `UnaryOperator` to apply to each [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") that meets the `filter` condition

        -   #### removeProperties

            public void removeProperties(Predicate<[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> filter)

            Removes all properties that meet the supplied condition

            For Example:

            ```

               myType.removeProperties(p -> "PROP_TO_REMOVE".equals(p.getKey()))

            ```

            Parameters:

            `filter` - Predicate to determine which properties to remove. Properties that return true when supplied to this predicate will be removed.

        -   #### clearProperties

            public void clearProperties()

            Removes all properties

        -   #### builder

            public static [LocalTypeDescriptor.Builder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builder()

            Builder for the [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") class

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html)
-   [No Frames](LocalTypeDescriptor.html)

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