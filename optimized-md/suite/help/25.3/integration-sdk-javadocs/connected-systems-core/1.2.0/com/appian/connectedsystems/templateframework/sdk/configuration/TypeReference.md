---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html)
-   [No Frames](TypeReference.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class TypeReference

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference

-   * * *

    public final class TypeReference
    extends Object

    The type of [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). TypeReferences can point to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), [`ListTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), or [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#TYPE_REF_STEM">TYPE_REF_STEM</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#equals-java.lang.Object-">equals</a></span>(Object&nbsp;other)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#equals-com.appian.connectedsystems.templateframework.sdk.configuration.SystemType-">equals</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a>&nbsp;systemType)</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#from-com.appian.connectedsystems.templateframework.sdk.configuration.ListTypeDescriptor-">from</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ListTypeDescriptor</a>&nbsp;listTypeDescriptor)</code><div class="block">Constructs a TypeReference from a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ListTypeDescriptor</code></a></div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#from-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">from</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localTypeDescriptor)</code><div class="block">Constructs a TypeReference from a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>LocalTypeDescriptor</code></a></div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#from-com.appian.connectedsystems.templateframework.sdk.configuration.SystemType-">from</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a>&nbsp;type)</code><div class="block">Constructs a TypeReference from a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration"><code>SystemType</code></a></div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>List&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#getGenericTypeArguments--">getGenericTypeArguments</a></span>()</code><div class="block">Retrieves all type references for generic types.</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#getListItemType--">getListItemType</a></span>()</code><div class="block">Returns the type of a list's items</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#getTypeDisplayName--">getTypeDisplayName</a></span>()</code>&nbsp;</td></tr><tr id="i8" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#getUnqualifiedTypeName--">getUnqualifiedTypeName</a></span>()</code><div class="block">The unqualified type name.</div></td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#hashCode--">hashCode</a></span>()</code>&nbsp;</td></tr><tr id="i10" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#isListType--">isListType</a></span>()</code><div class="block">Whether the type points to a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ListTypeDescriptor</code></a></div></td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#isLocalType--">isLocalType</a></span>()</code><div class="block">Whether the type points to a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>LocalTypeDescriptor</code></a></div></td></tr><tr id="i12" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#isSystemType--">isSystemType</a></span>()</code><div class="block">Whether the type points to a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration"><code>SystemType</code></a></div></td></tr><tr id="i13" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#parse-java.lang.String-">parse</a></span>(String&nbsp;typeName)</code><div class="block">Constructs a TypeReference from the <code>String</code> representation of a type reference.</div></td></tr><tr id="i14" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#toString--">toString</a></span>()</code>&nbsp;</td></tr><tr id="i15" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#toSystemType--">toSystemType</a></span>()</code><div class="block">If the value is a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration"><code>SystemType</code></a>, constructs a <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration"><code>SystemType</code></a> from the TypeReference.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Field Detail

        -   #### TYPE\_REF\_STEM

            public static final String TYPE\_REF\_STEM

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference.TYPE_REF_STEM)

    -   ### Method Detail

        -   #### from

            public static [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") from([SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") type)

            Constructs a TypeReference from a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### from

            public static [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") from([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeDescriptor)

            Constructs a TypeReference from a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### from

            public static [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") from([ListTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") listTypeDescriptor)

            Constructs a TypeReference from a [`ListTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### parse

            public static [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") parse(String typeName)

            Constructs a TypeReference from the `String` representation of a type reference. For example "#/types/MyLocalType".

        -   #### isSystemType

            public boolean isSystemType()

            Whether the type points to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### toSystemType

            public [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") toSystemType()

            If the value is a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), constructs a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") from the TypeReference. Otherwise throws a runtime exception.

        -   #### isLocalType

            public boolean isLocalType()

            Whether the type points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### isListType

            public boolean isListType()

            Whether the type points to a [`ListTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### getGenericTypeArguments

            public List<[TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getGenericTypeArguments()

            Retrieves all type references for generic types. The only current generic type is the [`ListTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). For list types, the first item in the returned list is the type of the list's items.

        -   #### getListItemType

            public [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getListItemType()

            Returns the type of a list's items

        -   #### getUnqualifiedTypeName

            public String getUnqualifiedTypeName()

            The unqualified type name. Only differs from the [`toString()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html#toString--) of the type for a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). For local types, removes the qualifier, "#/types", from the start of the name.

        -   #### getTypeDisplayName

            public String getTypeDisplayName()

        -   #### toString

            public String toString()

            Overrides:

            `toString` in class `Object`

        -   #### hashCode

            public int hashCode()

            Overrides:

            `hashCode` in class `Object`

        -   #### equals

            public boolean equals(Object other)

            Overrides:

            `equals` in class `Object`

        -   #### equals

            public boolean equals([SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") systemType)

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html)
-   [No Frames](TypeReference.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._