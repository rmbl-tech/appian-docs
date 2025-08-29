---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor"
section: "Class FolderPropertyDescriptor"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Expression.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html)
-   [No Frames](FolderPropertyDescriptor.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class FolderPropertyDescriptor

-   Object
-   -   [com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.FolderPropertyDescriptor

-   * * *

    public class FolderPropertyDescriptor
    extends [PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    A folder property. Use this value to determine where to save a [`Document`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") that comes from an external request.

    Folder properties appear as a folder picker to users. Construct using [`builder()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html#builder--).

    **State value on [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-):** `Long`

    **State value on [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-):** `Long`

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">FolderPropertyDescriptor.FolderPropertyDescriptorBuilder</a></span></code><div class="block">Builder for <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">folder property descriptor</a>.</div></td></tr></tbody></table>

    -   ### Field Summary

        -   ### Fields inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[CHOICES](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#CHOICES), [data](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#data), [DESCRIPTION](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DESCRIPTION), [DISPLAY_HINT](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#DISPLAY_HINT), [INSTRUCTION_TEXT](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#INSTRUCTION_TEXT), [IS_EXPRESSIONABLE](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_EXPRESSIONABLE), [IS_HIDDEN](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_HIDDEN), [IS_IMPORT_CUSTOMIZABLE](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_IMPORT_CUSTOMIZABLE), [IS_READ_ONLY](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_READ_ONLY), [IS_REQUIRED](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#IS_REQUIRED), [KEY](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#KEY), [LABEL](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#LABEL), [PLACEHOLDER](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#PLACEHOLDER), [REFRESH](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#REFRESH), [TYPE_NAME](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#TYPE_NAME)`

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html#FolderPropertyDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.FolderPropertyDescriptor.FolderPropertyDescriptorBuilder-">FolderPropertyDescriptor</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">FolderPropertyDescriptor.FolderPropertyDescriptorBuilder</a>&nbsp;folderPropertyDescriptorBuilder)</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">FolderPropertyDescriptor.FolderPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html#builder--">builder</a></span>()</code><div class="block">Builder for <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">folder property descriptor</a>.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html#getBuilder--">getBuilder</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[getDescription](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDescription--), [getDisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getDisplayHint--), [getInstructionText](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getInstructionText--), [getKey](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getKey--), [getLabel](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getLabel--), [getPlaceholder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getPlaceholder--), [getRefresh](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getRefresh--), [getTypeRef](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getTypeRef--), [isExpressionable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--), [isHidden](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isHidden--), [isImportCustomizable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isImportCustomizable--), [isReadOnly](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isReadOnly--), [isRequired](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isRequired--), [toString](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#toString--), [update](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#update-java.util.function.Function-)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### FolderPropertyDescriptor

            public FolderPropertyDescriptor([FolderPropertyDescriptor.FolderPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") folderPropertyDescriptorBuilder)

    -   ### Method Detail

        -   #### getBuilder

            protected [PropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getBuilder()

            Specified by:

            `[getBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#getBuilder--)` in class `[PropertyDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")`

        -   #### builder

            public static [FolderPropertyDescriptor.FolderPropertyDescriptorBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builder()

            Builder for [folder property descriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Expression.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html)
-   [No Frames](FolderPropertyDescriptor.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.templateframework.sdk.configuration.PropertyDescriptor) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._