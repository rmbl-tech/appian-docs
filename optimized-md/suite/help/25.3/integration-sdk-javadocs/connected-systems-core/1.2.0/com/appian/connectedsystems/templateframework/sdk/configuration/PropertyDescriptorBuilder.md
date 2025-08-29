---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder"
section: "Class PropertyDescriptorBuilder<TBuilder extends PropertyDescriptorBuilder<TBuilder>>"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html)
-   [No Frames](PropertyDescriptorBuilder.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class PropertyDescriptorBuilder<TBuilder extends PropertyDescriptorBuilder<TBuilder>>

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptorBuilder<TBuilder>

-   Direct Known Subclasses:

    [BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [DoublePropertyDescriptor.DoublePropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.DoublePropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [FolderPropertyDescriptor.FolderPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [ListTypePropertyDescriptor.Builder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [LocalTypePropertyDescriptor.LocalTypePropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypePropertyDescriptor.LocalTypePropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), [TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    * * *

    public abstract class PropertyDescriptorBuilder<TBuilder extends PropertyDescriptorBuilder<TBuilder>>
    extends Object

    Base class for [`property descriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builders.

    [`Property descriptors`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") can be instantiated using extensions of this class, for example, [`BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>protected List&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">Choice</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#choices">choices</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>protected Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#data">data</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier</th><th class="colLast" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colFirst"><code>protected</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#PropertyDescriptorBuilder--">PropertyDescriptorBuilder</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>abstract <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#build--">build</a></span>()</code><div class="block">Constructs the built property descriptor.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected void</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#checkValidState--">checkValidState</a></span>()</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#description-java.lang.String-">description</a></span>(String&nbsp;description)</code><div class="block">Sets text to display in a help icon as a tooltip.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#displayHint-com.appian.connectedsystems.templateframework.sdk.configuration.DisplayHint-">displayHint</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">DisplayHint</a>&nbsp;displayHint)</code><div class="block">Determines whether the UI component appears as a standard input field.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#instructionText-java.lang.String-">instructionText</a></span>(String&nbsp;instructionText)</code><div class="block">Sets optional text displayed below the component's value.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isExpressionable-boolean-">isExpressionable</a></span>(boolean&nbsp;isExpressionable)</code><div class="block">Determines if field can be entered as an expression.</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isHidden-boolean-">isHidden</a></span>(boolean&nbsp;isHidden)</code><div class="block">Determines whether the field is displayed in the UI.</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isImportCustomizable-boolean-">isImportCustomizable</a></span>(boolean&nbsp;isImportCustomizable)</code><div class="block">Determines whether this value should be changed between environments.</div></td></tr><tr id="i8" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isReadOnly-boolean-">isReadOnly</a></span>(boolean&nbsp;isReadOnly)</code><div class="block">Determines whether the property's value is editable by the user.</div></td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isRequired-boolean-">isRequired</a></span>(boolean&nbsp;isRequired)</code><div class="block">Determines whether a non-null value is required to submit the form.</div></td></tr><tr id="i10" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#key-java.lang.String-">key</a></span>(String&nbsp;key)</code><div class="block">Sets the unique identifier for this property.</div></td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#label-java.lang.String-">label</a></span>(String&nbsp;label)</code><div class="block">Sets optional text to display at the top of this component.</div></td></tr><tr id="i12" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#placeholder-java.lang.String-">placeholder</a></span>(String&nbsp;placeholder)</code><div class="block">Sets optional text to display in the component when it is empty.</div></td></tr><tr id="i13" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#refresh-com.appian.connectedsystems.templateframework.sdk.configuration.RefreshPolicy-">refresh</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">RefreshPolicy</a>&nbsp;refresh)</code><div class="block">Determines whether changes to this property's UI component will refresh the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>configuration descriptor</code></a>.</div></td></tr><tr id="i14" class="altColor"><td class="colFirst"><code>protected <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#type-com.appian.connectedsystems.templateframework.sdk.configuration.SystemType-">type</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a>&nbsp;type)</code>&nbsp;</td></tr><tr id="i15" class="rowColor"><td class="colFirst"><code>protected <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="type parameter in PropertyDescriptorBuilder">TBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#type-com.appian.connectedsystems.templateframework.sdk.configuration.TypeReference-">type</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a>&nbsp;typeRef)</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### data

            protected Map<String,Object> data

        -   #### choices

            protected List<[Choice](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> choices

    -   ### Constructor Detail

        -   #### PropertyDescriptorBuilder

            protected PropertyDescriptorBuilder()

    -   ### Method Detail

        -   #### key

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") key(String key)

            Sets the unique identifier for this property. Used to retrieve the field's state. This value is not visible to the user.

        -   #### label

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") label(String label)

            Sets optional text to display at the top of this component.

            In the case of the [`BooleanPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") [`BooleanDisplayMode.CHECKBOX`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanDisplayMode.html#CHECKBOX) display mode, the label appears next to the checkbox.

        -   #### description

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") description(String description)

            Sets text to display in a help icon as a tooltip. The tooltip displays a maximum of 500 characters.

        -   #### instructionText

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") instructionText(String instructionText)

            Sets optional text displayed below the component's value.

        -   #### placeholder

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") placeholder(String placeholder)

            Sets optional text to display in the component when it is empty. Does not show if the component is read only.

        -   #### type

            protected [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") type([TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") typeRef)

        -   #### type

            protected [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") type([SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") type)

        -   #### refresh

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") refresh([RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") refresh)

            Determines whether changes to this property's UI component will refresh the [`configuration descriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). The [`configuration descriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") is refreshed by calling either [`IntegrationTemplate.getConfigurationDescriptor(ConfigurationDescriptor, ConfigurationDescriptor, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) or [`IntegrationTemplate.getConfigurationDescriptor(ConfigurationDescriptor, ConfigurationDescriptor, PropertyPath, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-).

            See also, [`RefreshPolicy`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

            Default: [`RefreshPolicy.NEVER`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#NEVER)

        -   #### displayHint

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") displayHint([DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") displayHint)

            Determines whether the UI component appears as a standard input field. Fields with a [`DisplayHint.NORMAL`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#NORMAL) display hint can still be [`expressionable`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isExpressionable-boolean-).

            See also, [`DisplayHint`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")

            Default: [`DisplayHint.NORMAL`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#NORMAL)

        -   #### isRequired

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") isRequired(boolean isRequired)

            Determines whether a non-null value is required to submit the form.

            Default: `false`.

        -   #### isExpressionable

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") isExpressionable(boolean isExpressionable)

            Determines if field can be entered as an expression. If a field is not a static configuration, set this value to `true`. To make the property always appear as an expression box, use the [`display hint`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#displayHint-com.appian.connectedsystems.templateframework.sdk.configuration.DisplayHint-).

            Default: `false`

        -   #### isReadOnly

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") isReadOnly(boolean isReadOnly)

            Determines whether the property's value is editable by the user. Read only fields can be used to provide the user with additional context or information.

            Default: `false`.

        -   #### isHidden

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") isHidden(boolean isHidden)

            Determines whether the field is displayed in the UI.

            Use hidden fields to store internal values needed for execution that cannot be acquired efficiently at execution time.

            Default: `false`

        -   #### isImportCustomizable

            public [TBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "type parameter in PropertyDescriptorBuilder") isImportCustomizable(boolean isImportCustomizable)

            Determines whether this value should be changed between environments. For example, when the system you are connecting to has development, test, and production environments with different credentials, you should set this value to `true`.

            Default: `false`

        -   #### build

            public abstract [PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") build()

            Constructs the built property descriptor.

        -   #### checkValidState

            protected void checkValidState()

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html)
-   [No Frames](PropertyDescriptorBuilder.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._