---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html)
-   [No Frames](PropertyState.html)

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

## Class PropertyState

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState

-   * * *

    public final class PropertyState
    extends Object

    The state for a single property in a [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

    PropertyState is used in [`ConfigurationDesctiptors`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") for 3 things:

    1.  The presence of PropertyState objects with associated [`LocalTypeDescriptors`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") determines which fields appear in the UI
    2.  The [error messages](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#errors) that appear in the UI and where they appear
    3.  The [`value`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#value) is the value for the corresponding [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    Property state is a recursive data structure. The [`value`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#value) can be a primitive when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) is a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), a list when the type is a [`ListTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), or a `Map` of `String` to PropertyState when the [`TypeReference`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). The keys of this map correspond to the local type's [property keys.](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html#getPropertyKeys--)

    The [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) may not always reflect the corresponding [`PropertyDesctiptor's`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") type. [expressionable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--) property descriptors may have a [`SystemType.EXPRESSION`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#EXPRESSION) type during configuration. [`EncryptedTextPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") will have a [`SystemType.STRING`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#STRING) type.

    See the documentation for a [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") to know it's [`value's`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#value) class

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#ERRORS_KEY">ERRORS_KEY</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#TYPE_KEY">TYPE_KEY</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#VALUE_KEY">VALUE_KEY</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#addErrors-java.util.Collection-">addErrors</a></span>(Collection&lt;String&gt;&nbsp;errors)</code><div class="block">Adds a collection of errors to the existing list of errors.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#addErrors-java.lang.String...-">addErrors</a></span>(String...&nbsp;errors)</code><div class="block">Adds a single error to the existing list of errors.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#clearErrors--">clearErrors</a></span>()</code><div class="block">Clears all errors for this property state.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#clearErrorsAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">clearErrorsAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;propertyPath)</code><div class="block">Clears all errors for the property state at the given path.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#equals-java.lang.Object-">equals</a></span>(Object&nbsp;o)</code>&nbsp;</td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>List&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--">getErrors</a></span>()</code><div class="block">Errors related to this property state.</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>List&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrorsAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">getErrorsAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path)</code><div class="block">The property state's errors at a given <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyPath</code></a>.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getPropertyStateAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">getPropertyStateAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path)</code><div class="block">The property state at a given path.</div></td></tr><tr id="i8" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getType--">getType</a></span>()</code><div class="block">The property state's type</div></td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getTypeAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">getTypeAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path)</code><div class="block">/** The property state's type at a given <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyPath</code></a>.</div></td></tr><tr id="i10" class="altColor"><td class="colFirst"><code>Object</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getValue--">getValue</a></span>()</code><div class="block">The property state's value</div></td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code>Object</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getValueAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">getValueAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path)</code><div class="block">The property state's value at a given <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyPath</code></a>.</div></td></tr><tr id="i12" class="altColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#hashCode--">hashCode</a></span>()</code>&nbsp;</td></tr><tr id="i13" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#isExpression--">isExpression</a></span>()</code><div class="block">Whether the property state's type is <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#EXPRESSION"><code>SystemType.EXPRESSION</code></a></div></td></tr><tr id="i14" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setError-java.lang.String-">setError</a></span>(String&nbsp;error)</code><div class="block">Clears all existing errors and adds the provided error to the empty list of errors.</div></td></tr><tr id="i15" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setErrorAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-java.lang.String-">setErrorAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path, String&nbsp;error)</code><div class="block">Clears all existing errors, replacing them with the given error.</div></td></tr><tr id="i16" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setErrors-java.util.Collection-">setErrors</a></span>(Collection&lt;String&gt;&nbsp;errors)</code><div class="block">Clears all existing errors and adds the provided errors to the empty list of errors.</div></td></tr><tr id="i17" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setErrorsAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-java.util.List-">setErrorsAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path, List&lt;String&gt;&nbsp;errors)</code><div class="block">Clears all existing errors, replacing them with the given errors.</div></td></tr><tr id="i18" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setType-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">setType</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;type)</code><div class="block">The property state's type</div></td></tr><tr id="i19" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setType-com.appian.connectedsystems.templateframework.sdk.configuration.SystemType-">setType</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a>&nbsp;type)</code><div class="block">The property state's type</div></td></tr><tr id="i20" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setType-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-">setType</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a>&nbsp;type)</code><div class="block">The property state's type</div></td></tr><tr id="i21" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setValue-java.lang.Object-">setValue</a></span>(Object&nbsp;value)</code><div class="block">The property state's value</div></td></tr><tr id="i22" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyState</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#setValueAtPath-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-java.lang.Object-">setValueAtPath</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;path, Object&nbsp;value)</code><div class="block">The property state's value at a given path.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### TYPE\_KEY

            public static final String TYPE\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState.TYPE_KEY)

        -   #### VALUE\_KEY

            public static final String VALUE\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState.VALUE_KEY)

        -   #### ERRORS\_KEY

            public static final String ERRORS\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyState.ERRORS_KEY)

    -   ### Method Detail

        -   #### getType

            public [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getType()

            The property state's type

        -   #### getTypeAtPath

            public [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getTypeAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path)

            /\*\* The property state's type at a given [`PropertyPath`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Parameters:

            `path` - The path to the nested PropertyState

            Returns:

            A type reference

        -   #### setType

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setType([TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") type)

            The property state's type

        -   #### setType

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setType([SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") type)

            The property state's type

        -   #### setType

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setType([LocalTypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") type)

            The property state's type

        -   #### isExpression

            public boolean isExpression()

            Whether the property state's type is [`SystemType.EXPRESSION`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#EXPRESSION)

        -   #### getValue

            public Object getValue()

            The property state's value

            Returns:

            A boxed primitive corresponding to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), a `List`, or a `Map` of `String` to [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Values can always be null.

        -   #### getValueAtPath

            public Object getValueAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path)

            The property state's value at a given [`PropertyPath`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Parameters:

            `path` - The path to the nested PropertyState

            Returns:

            A boxed primitive corresponding to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), a `List`, or a `Map` of `String` to [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Values can always be null.

        -   #### setValue

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setValue(Object value)

            The property state's value

            Parameters:

            `value` - The value to set. This value can be a boxed primitive corresponding to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), a `List`, or a `Map` of `String` to [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Values can always be null.

        -   #### setValueAtPath

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setValueAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path,
                                                Object value)

            The property state's value at a given path. This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Parameters:

            `path` - The path to the nested PropertyState

            `value` - The value to set. This value can be a boxed primitive corresponding to a [`SystemType`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration"), a `List`, or a `Map` of `String` to [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Values can always be null.

        -   #### getPropertyStateAtPath

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getPropertyStateAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path)

            The property state at a given path. This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Parameters:

            `path` - The path to the nested PropertyState

        -   #### getErrors

            public List<String> getErrors()

            Errors related to this property state.

            Errors function as warnings to the user that their current configuration is invalid in some way. The error message will appear in close proximity to the field that the state corresponds to. If the state does not match a [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") in the [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--), the error will be ignored.

            Errors do not prevent the user from saving a configuration, executing an integration, or testing a connected system.

        -   #### getErrorsAtPath

            public List<String> getErrorsAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path)

            The property state's errors at a given [`PropertyPath`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Errors function as warnings to the user that their current configuration is invalid in some way. The error message will appear in close proximity to the field that the state corresponds to. If the state does not match a [`PropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") in the [`ConfigurationDescriptor.getTypes()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getTypes--), the error will be ignored.

            Errors do not prevent the user from saving a configuration, executing an integration, or testing a connected system.

            Parameters:

            `path` - The path to the nested PropertyState

            Returns:

            List of errors

        -   #### addErrors

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") addErrors(String... errors)

            Adds a single error to the existing list of errors.

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### addErrors

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") addErrors(Collection<String> errors)

            Adds a collection of errors to the existing list of errors.

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### setError

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setError(String error)

            Clears all existing errors and adds the provided error to the empty list of errors.

            Errors are only supported for Integration templates

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### setErrorAtPath

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setErrorAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path,
                                                String error)

            Clears all existing errors, replacing them with the given error. This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Errors are only supported for Integration templates

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

            Parameters:

            `path` - The path to the nested PropertyState

            `error` - The error to set

        -   #### setErrorsAtPath

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setErrorsAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") path,
                                                 List<String> errors)

            Clears all existing errors, replacing them with the given errors. This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            Errors are only supported for Integration templates

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

            Parameters:

            `path` - The path to the nested PropertyState

            `errors` - The errors to set

        -   #### setErrors

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") setErrors(Collection<String> errors)

            Clears all existing errors and adds the provided errors to the empty list of errors.

            Errors are only supported for Integration templates

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### clearErrors

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") clearErrors()

            Clears all errors for this property state. Nested property state's errors are preserved

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### clearErrorsAtPath

            public [PropertyState](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") clearErrorsAtPath([PropertyPath](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") propertyPath)

            Clears all errors for the property state at the given path. This method can only be used when the [`type`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#type) points to a [`LocalTypeDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            See also: [`getErrors()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html#getErrors--)

        -   #### equals

            public boolean equals(Object o)

            Overrides:

            `equals` in class `Object`

        -   #### hashCode

            public int hashCode()

            Overrides:

            `hashCode` in class `Object`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html)
-   [No Frames](PropertyState.html)

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