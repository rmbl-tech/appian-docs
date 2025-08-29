---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor"
section: "Class TextPropertyDescriptor"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html)
-   [No Frames](TextPropertyDescriptor.html)

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

## Class TextPropertyDescriptor

-   Object
-   -   [com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")<[TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\>
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.TextPropertyDescriptor

-   * * *

    public final class TextPropertyDescriptor
    extends [PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")<[TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    A text property. When set to [`read-only`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isReadOnly-boolean-), text properties can be useful for displaying information to the designer.

    **State Value**: `String`

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TextPropertyDescriptor.TextPropertyDescriptorBuilder</a></span></code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>text property descriptor</code></a></div></td></tr></tbody></table>

    -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#HAS_TRANSIENT_CHOICES">HAS_TRANSIENT_CHOICES</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#IS_MASKED">IS_MASKED</a></span></code>&nbsp;</td></tr></tbody></table>

        -   ### Fields inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[CHOICES](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#CHOICES), [data](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#data), [DESCRIPTION](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DESCRIPTION), [DISPLAY_HINT](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DISPLAY_HINT), [INSTRUCTION_TEXT](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#INSTRUCTION_TEXT), [IS_EXPRESSIONABLE](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_EXPRESSIONABLE), [IS_HIDDEN](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_HIDDEN), [IS_IMPORT_CUSTOMIZABLE](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_IMPORT_CUSTOMIZABLE), [IS_READ_ONLY](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_READ_ONLY), [IS_REQUIRED](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_REQUIRED), [KEY](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#KEY), [LABEL](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#LABEL), [PLACEHOLDER](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#PLACEHOLDER), [REFRESH](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#REFRESH), [TYPE_NAME](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#TYPE_NAME)`

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TextPropertyDescriptor.TextPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#builder--">builder</a></span>()</code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>text property descriptor</code></a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#getBuilder--">getBuilder</a></span>()</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>List&lt;<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">Choice</a>&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#getChoices--">getChoices</a></span>()</code><div class="block">If choices are provided, the property appears as a dropdown to the user.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#hasTransientChoices--">hasTransientChoices</a></span>()</code><div class="block">If the field is marked as transient the available choices options would be removed when the object is saved.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html#isMasked--">isMasked</a></span>()</code><div class="block">Whether the property's value will be masked in the UI.</div></td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[getDescription](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDescription--), [getDisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDisplayHint--), [getInstructionText](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getInstructionText--), [getKey](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--), [getLabel](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getLabel--), [getPlaceholder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getPlaceholder--), [getRefresh](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getRefresh--), [getTypeRef](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getTypeRef--), [isExpressionable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--), [isHidden](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isHidden--), [isImportCustomizable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isImportCustomizable--), [isReadOnly](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isReadOnly--), [isRequired](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isRequired--), [toString](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#toString--), [update](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#update-java.util.function.Function-)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

-   -   ### Field Detail

        -   #### IS\_MASKED

            public static final String IS\_MASKED

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.TextPropertyDescriptor.IS_MASKED)

        -   #### HAS\_TRANSIENT\_CHOICES

            public static final String HAS\_TRANSIENT\_CHOICES

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.TextPropertyDescriptor.HAS_TRANSIENT_CHOICES)

    -   ### Method Detail

        -   #### isMasked

            public boolean isMasked()

            Whether the property's value will be masked in the UI. Masked values appear as "\*\*\*\*\*\*" to the user, and when masked, the property value is never transmitted to the client. Unmasked values appear as plain text.

        -   #### getChoices

            public List<[Choice](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")\> getChoices()

            If choices are provided, the property appears as a dropdown to the user.

            If you expect more than 100 choices, it is recommended to use [`TextPropertyDescriptor.TextPropertyDescriptorBuilder.transientChoices(boolean)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html#transientChoices-boolean-).

        -   #### hasTransientChoices

            public boolean hasTransientChoices()

            If the field is marked as transient the available choices options would be removed when the object is saved. Mark a text field as transient when you expect a large number (more than 100) of choices

        -   #### builder

            public static [TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builder()

            Builder for the [`text property descriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### getBuilder

            protected [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getBuilder()

            Specified by:

            `[getBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getBuilder--)` in class `[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")<[TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")>`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html)
-   [No Frames](TextPropertyDescriptor.html)

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