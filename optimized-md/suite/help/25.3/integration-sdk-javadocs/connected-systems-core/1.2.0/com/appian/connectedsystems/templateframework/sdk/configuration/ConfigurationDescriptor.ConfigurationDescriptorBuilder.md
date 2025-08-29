---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html)
-   [No Frames](ConfigurationDescriptor.ConfigurationDescriptorBuilder.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class ConfigurationDescriptor.ConfigurationDescriptorBuilder

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor.ConfigurationDescriptorBuilder

-   Enclosing class:

    [ConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    * * *

    public static final class ConfigurationDescriptor.ConfigurationDescriptorBuilder
    extends Object

    Builder for a [configuration descriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#build--">build</a></span>()</code><div class="block">Constructs the built configuration descriptor</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withState-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState-">withState</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a>&nbsp;state)</code><div class="block">Sets the root state of the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a> state map.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withType-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">withType</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;type)</code><div class="block">Adds a type to the list of types needed to define the template See also: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--"><code>ConfigurationDescriptor.getTypes()</code></a></div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withTypes-java.util.Collection-">withTypes</a></span>(Collection&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&gt;&nbsp;types)</code><div class="block">Adds all provided types to the list of types needed to define the template See also: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--"><code>ConfigurationDescriptor.getTypes()</code></a></div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withTypes-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor...-">withTypes</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>...&nbsp;types)</code><div class="block">Adds all provided types to the list of types needed to define the template See also: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--"><code>ConfigurationDescriptor.getTypes()</code></a></div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor.ConfigurationDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html#withTypes-java.util.stream.Stream-">withTypes</a></span>(Stream&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&gt;&nbsp;types)</code><div class="block">Adds all provided types to the list of types needed to define the template See also: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--"><code>ConfigurationDescriptor.getTypes()</code></a></div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### withType

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") withType([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") type)

            Adds a type to the list of types needed to define the template

            See also: [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--)

        -   #### withTypes

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") withTypes([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")... types)

            Adds all provided types to the list of types needed to define the template

            See also: [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--)

        -   #### withTypes

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") withTypes(Collection<[LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> types)

            Adds all provided types to the list of types needed to define the template

            See also: [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--)

        -   #### withTypes

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") withTypes(Stream<[LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> types)

            Adds all provided types to the list of types needed to define the template

            See also: [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--)

        -   #### withState

            public [ConfigurationDescriptor.ConfigurationDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") withState([PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") state)

            Sets the root state of the [ConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") state map. For new configuration descriptors, create this root state using [`StateGenerator.generateDefaultState(LocalTypeDescriptor)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html#generateDefaultState-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-), passing in the desired root [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            See also: [`ConfigurationDescriptor.getRootState()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getRootState--)

        -   #### build

            public [ConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") build()

            Constructs the built configuration descriptor

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html)
-   [No Frames](ConfigurationDescriptor.ConfigurationDescriptorBuilder.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

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