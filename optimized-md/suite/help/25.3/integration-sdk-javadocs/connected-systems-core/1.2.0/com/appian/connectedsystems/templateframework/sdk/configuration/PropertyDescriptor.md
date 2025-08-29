---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor"
section: "Class PropertyDescriptor<T extends [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html \"class in com.appian.connectedsystems.templateframework.sdk.configuration\")\>"
tags: ["appian","docs","v25.3"]
---


[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.LocalTypePropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html)
-   [No Frames](PropertyDescriptor.html)

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

## Class PropertyDescriptor<T extends [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\>

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor<T>

-   Direct Known Subclasses:

    [BooleanPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [DocumentPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [DoublePropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [EncryptedTextPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [FolderPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [IntegerPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [ListTypePropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [LocalTypePropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [TextPropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    * * *

    public abstract class PropertyDescriptor<T extends [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\>
    extends Object

    Properties are used to accept and store user input, display read-only information to the user, and store additional metadata needed for execution. The methods of this class provide configurations that modify how properties are rendered and stored.

    Each PropertyDescriptor implementation can have specific configurations for its UI field

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#CHOICES">CHOICES</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>protected Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#data">data</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DESCRIPTION">DESCRIPTION</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DISPLAY_HINT">DISPLAY_HINT</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#INSTRUCTION_TEXT">INSTRUCTION_TEXT</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_EXPRESSIONABLE">IS_EXPRESSIONABLE</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_HIDDEN">IS_HIDDEN</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_IMPORT_CUSTOMIZABLE">IS_IMPORT_CUSTOMIZABLE</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_READ_ONLY">IS_READ_ONLY</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_REQUIRED">IS_REQUIRED</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#KEY">KEY</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#LABEL">LABEL</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#PLACEHOLDER">PLACEHOLDER</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#REFRESH">REFRESH</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#TYPE_NAME">TYPE_NAME</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>protected abstract <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getBuilder--">getBuilder</a></span>()</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDescription--">getDescription</a></span>()</code><div class="block">Text displayed as a tooltip.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">DisplayHint</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDisplayHint--">getDisplayHint</a></span>()</code><div class="block">Default: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#NORMAL"><code>DisplayHint.NORMAL</code></a> Whether UI component is displayed as an expression box or a standard input field</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getInstructionText--">getInstructionText</a></span>()</code><div class="block">Text displayed below the field's value</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--">getKey</a></span>()</code><div class="block">Unique identifier for this property.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getLabel--">getLabel</a></span>()</code><div class="block">Text to display as the field label</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getPlaceholder--">getPlaceholder</a></span>()</code><div class="block">Text to display in the component when it is empty.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">RefreshPolicy</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getRefresh--">getRefresh</a></span>()</code><div class="block">Default: <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#NEVER"><code>RefreshPolicy.NEVER</code></a> Determines when changes to the UI component will trigger refresh</div></td></tr><tr id="i8" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getTypeRef--">getTypeRef</a></span>()</code>&nbsp;</td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--">isExpressionable</a></span>()</code><div class="block">Default: <code>false</code> Whether the field can be entered as an expression If dynamic behavior will be defined by the designer set this to <code>true</code> To make the property always appear as an expression box, use the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDisplayHint--"><code>display hint</code></a>.</div></td></tr><tr id="i10" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isHidden--">isHidden</a></span>()</code><div class="block">Default: <code>false</code> Whether the field is displayed in the UI.</div></td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isImportCustomizable--">isImportCustomizable</a></span>()</code><div class="block">Default: <code>false</code> Whether this value should be changed between environments.</div></td></tr><tr id="i12" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isReadOnly--">isReadOnly</a></span>()</code><div class="block">Default: <code>false</code> Determines whether the property's value is editable by the user.</div></td></tr><tr id="i13" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isRequired--">isRequired</a></span>()</code><div class="block">Default: <code>false</code> Whether the field is required</div></td></tr><tr id="i14" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#toString--">toString</a></span>()</code>&nbsp;</td></tr><tr id="i15" class="rowColor"><td class="colFirst"><code>&lt;R extends <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a>&lt;? extends <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a>&gt;&gt;<br>R</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#update-java.util.function.Function-">update</a></span>(Function&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="type parameter in PropertyDescriptor">T</a>,<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="type parameter in PropertyDescriptor">T</a>&gt;&nbsp;update)</code><div class="block">Updates individual fields of the property descriptor</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

-   -   ### Field Detail

        -   #### KEY

            public static final String KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.KEY)

        -   #### LABEL

            public static final String LABEL

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.LABEL)

        -   #### DESCRIPTION

            public static final String DESCRIPTION

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.DESCRIPTION)

        -   #### INSTRUCTION\_TEXT

            public static final String INSTRUCTION\_TEXT

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.INSTRUCTION_TEXT)

        -   #### PLACEHOLDER

            public static final String PLACEHOLDER

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.PLACEHOLDER)

        -   #### TYPE\_NAME

            public static final String TYPE\_NAME

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.TYPE_NAME)

        -   #### REFRESH

            public static final String REFRESH

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.REFRESH)

        -   #### IS\_REQUIRED

            public static final String IS\_REQUIRED

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.IS_REQUIRED)

        -   #### IS\_READ\_ONLY

            public static final String IS\_READ\_ONLY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.IS_READ_ONLY)

        -   #### IS\_HIDDEN

            public static final String IS\_HIDDEN

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.IS_HIDDEN)

        -   #### IS\_EXPRESSIONABLE

            public static final String IS\_EXPRESSIONABLE

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.IS_EXPRESSIONABLE)

        -   #### IS\_IMPORT\_CUSTOMIZABLE

            public static final String IS\_IMPORT\_CUSTOMIZABLE

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.IS_IMPORT_CUSTOMIZABLE)

        -   #### CHOICES

            public static final String CHOICES

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.CHOICES)

        -   #### DISPLAY\_HINT

            public static final String DISPLAY\_HINT

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor.DISPLAY_HINT)

        -   #### data

            protected Map<String,Object> data

    -   ### Method Detail

        -   #### getKey

            public String getKey()

            Unique identifier for this property. It is used to retrieve the field's value. The key is not visible to the designer.

        -   #### getLabel

            public String getLabel()

            Text to display as the field label

        -   #### getDescription

            public String getDescription()

            Text displayed as a tooltip. The tooltip displays a maximum of 500 characters. The icon will not display if there is no label.

        -   #### getInstructionText

            public String getInstructionText()

            Text displayed below the field's value

        -   #### getPlaceholder

            public String getPlaceholder()

            Text to display in the component when it is empty. Does not show if the component is read only.

        -   #### getTypeRef

            public [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getTypeRef()

        -   #### getRefresh

            public [RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") getRefresh()

            Default: [`RefreshPolicy.NEVER`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#NEVER) Determines when changes to the UI component will trigger refresh

        -   #### getDisplayHint

            public [DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") getDisplayHint()

            Default: [`DisplayHint.NORMAL`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#NORMAL) Whether UI component is displayed as an expression box or a standard input field

        -   #### isRequired

            public boolean isRequired()

            Default: `false` Whether the field is required

        -   #### isExpressionable

            public boolean isExpressionable()

            Default: `false` Whether the field can be entered as an expression

            If dynamic behavior will be defined by the designer set this to `true`

            To make the property always appear as an expression box, use the [`display hint`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDisplayHint--).

        -   #### isReadOnly

            public boolean isReadOnly()

            Default: `false` Determines whether the property's value is editable by the user. Read only fields can be used to provide the user with additional context or information.

        -   #### isHidden

            public boolean isHidden()

            Default: `false`

            Whether the field is displayed in the UI.

            Use hidden fields to store internal values needed for execution that cannot be acquired efficiently at execution time.

        -   #### isImportCustomizable

            public boolean isImportCustomizable()

            Default: `false`

            Whether this value should be changed between environments. For example, when the system you are connecting to has development, test, and production environments with different credentials, you should set this value to `true`.

        -   #### update

            public <R extends [PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")<? extends [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\>> R update(Function<[T](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "type parameter in PropertyDescriptor"),[T](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "type parameter in PropertyDescriptor")\> update)

            Updates individual fields of the property descriptor

            Type Parameters:

            `R` - Subtype of property descriptor

            Parameters:

            `update` - Applies updates to the PropertyDescriptor

            Returns:

            Updated PropertyDescriptor

        -   #### toString

            public String toString()

            Overrides:

            `toString` in class `Object`

        -   #### getBuilder

            protected abstract [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getBuilder()

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.LocalTypePropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html)
-   [No Frames](PropertyDescriptor.html)

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