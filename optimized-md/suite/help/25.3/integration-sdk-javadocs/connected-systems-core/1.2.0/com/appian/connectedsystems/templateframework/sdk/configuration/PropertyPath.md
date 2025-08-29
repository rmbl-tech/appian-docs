---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html)
-   [No Frames](PropertyPath.html)

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

## Class PropertyPath

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath

-   All Implemented Interfaces:

    Iterable<Object>

    * * *

    public class PropertyPath
    extends Object
    implements Iterable<Object>

    Path in [property keys](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--) or [list indices](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") from one [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") to another.

    Paths are used to easily access a [`PropertyState's`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") nested state.

    Do not include the key of the root property. Include the key of the ending property.

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#PropertyPath-java.util.List-">PropertyPath</a></span>(List&lt;Object&gt;&nbsp;pathSegments)</code><div class="block">Constructs a path of the provided segments</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#PropertyPath-java.lang.Object...-">PropertyPath</a></span>(Object...&nbsp;pathSegments)</code><div class="block">Constructs a path of the provided segments</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#addSegment-java.lang.Object-">addSegment</a></span>(Object&nbsp;segment)</code><div class="block">Appends the provided segment to the end of the path</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#equals-java.lang.Object-">equals</a></span>(Object&nbsp;obj)</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#forEach-java.util.function.Consumer-">forEach</a></span>(Consumer&lt;? super Object&gt;&nbsp;action)</code>&nbsp;</td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#hashCode--">hashCode</a></span>()</code>&nbsp;</td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>Iterator&lt;Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#iterator--">iterator</a></span>()</code>&nbsp;</td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>Spliterator&lt;Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#spliterator--">spliterator</a></span>()</code>&nbsp;</td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html#toString--">toString</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### PropertyPath

            public PropertyPath(Object... pathSegments)

            Constructs a path of the provided segments

        -   #### PropertyPath

            public PropertyPath(List<Object> pathSegments)

            Constructs a path of the provided segments

    -   ### Method Detail

        -   #### addSegment

            public [PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") addSegment(Object segment)

            Appends the provided segment to the end of the path

        -   #### hashCode

            public int hashCode()

            Overrides:

            `hashCode` in class `Object`

        -   #### equals

            public boolean equals(Object obj)

            Overrides:

            `equals` in class `Object`

        -   #### toString

            public String toString()

            Overrides:

            `toString` in class `Object`

        -   #### iterator

            public Iterator<Object> iterator()

            Specified by:

            `iterator` in interface `Iterable<Object>`

        -   #### forEach

            public void forEach(Consumer<? super Object> action)

            Specified by:

            `forEach` in interface `Iterable<Object>`

        -   #### spliterator

            public Spliterator<Object> spliterator()

            Specified by:

            `spliterator` in interface `Iterable<Object>`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html)
-   [No Frames](PropertyPath.html)

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