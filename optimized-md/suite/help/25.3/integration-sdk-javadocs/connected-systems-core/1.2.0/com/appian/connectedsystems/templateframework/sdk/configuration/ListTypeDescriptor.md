---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor"
section: "Class ListTypeDescriptor"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html)
-   [No Frames](ListTypeDescriptor.html)

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

## Class ListTypeDescriptor

-   Object
-   -   [com.appian.connectedsystems.templateframework.sdk.configuration.TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.ListTypeDescriptor

-   * * *

    public final class ListTypeDescriptor
    extends [TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ListTypeDescriptor.Builder</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html#LIST_TYPE_NAME">LIST_TYPE_NAME</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ListTypeDescriptor.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html#builder--">builder</a></span>()</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">TypeReference</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html#getListItemType--">getListItemType</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.templateframework.sdk.configuration.[TypeDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

            `[getName](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeDescriptor.html#getName--)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### LIST\_TYPE\_NAME

            public static final String LIST\_TYPE\_NAME

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.configuration.ListTypeDescriptor.LIST_TYPE_NAME)

    -   ### Method Detail

        -   #### getListItemType

            public [TypeReference](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TypeReference.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getListItemType()

        -   #### builder

            public static [ListTypeDescriptor.Builder](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") builder()

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/ListTypeDescriptor.html)
-   [No Frames](ListTypeDescriptor.html)

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