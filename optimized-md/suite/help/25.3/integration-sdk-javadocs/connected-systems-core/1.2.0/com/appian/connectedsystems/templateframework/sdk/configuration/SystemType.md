---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/SystemType"
section: "Enum SystemType"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html)
-   [No Frames](SystemType.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Enum Constants](#enum.constant.summary) | 
-   Field | 
-   [Method](#method.summary)

-   Detail: 
-   [Enum Constants](#enum.constant.detail) | 
-   Field | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Enum SystemType

-   Object
-   -   Enum<[SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.SystemType

-   All Implemented Interfaces:

    Serializable, Comparable<[SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    * * *

    public enum SystemType
    extends Enum<[SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    Out-of-the-box types for [`PropertyState`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   -   ### Enum Constant Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Enum Constant Summary table, listing enum constants, and an explanation"><caption><span>Enum Constants</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Enum Constant and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#BOOLEAN">BOOLEAN</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>BooleanPropertyDescriptor</code></a></div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#DOCUMENT">DOCUMENT</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>DocumentPropertyDescriptor</code></a></div></td></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#DOUBLE">DOUBLE</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>DoublePropertyDescriptor</code></a></div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#ENCRYPTED">ENCRYPTED</a></span></code><div class="block">For internal use.</div></td></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#EXPRESSION">EXPRESSION</a></span></code><div class="block">Produced by any <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--">expressionable</a> property state when the user specifies an expression for the value.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#FOLDER">FOLDER</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>FolderPropertyDescriptor</code></a></div></td></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#INTEGER">INTEGER</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>IntegerPropertyDescriptor</code></a></div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#STRING">STRING</a></span></code><div class="block">Produced by <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>TextPropertyDescriptor</code></a> and <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>EncryptedTextPropertyDescriptor</code></a></div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>Object</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#getDefault--">getDefault</a></span>()</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#valueOf-java.lang.String-">valueOf</a></span>(String&nbsp;name)</code><div class="block">Returns the enum constant of this type with the specified name.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">SystemType</a>[]</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#values--">values</a></span>()</code><div class="block">Returns an array containing the constants of this enum type, in the order they are declared.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Enum

            `clone, compareTo, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

        -   ### Methods inherited from class Object

            `getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Enum Constant Detail

        -   #### STRING

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") STRING

            Produced by [`TextPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") and [`EncryptedTextPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### ENCRYPTED

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") ENCRYPTED

            For internal use. [`EncryptedTextPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") produces [`STRING`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html#STRING) state.

        -   #### BOOLEAN

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") BOOLEAN

            Produced by [`BooleanPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### EXPRESSION

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") EXPRESSION

            Produced by any [expressionable](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html#isExpressionable--) property state when the user specifies an expression for the value. Expressions are only used during configuration and are evaluated before execution.

        -   #### INTEGER

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") INTEGER

            Produced by [`IntegerPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### DOUBLE

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") DOUBLE

            Produced by [`DoublePropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### FOLDER

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") FOLDER

            Produced by [`FolderPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

        -   #### DOCUMENT

            public static final [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") DOCUMENT

            Produced by [`DocumentPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

    -   ### Method Detail

        -   #### values

            public static [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\[\] values()

            Returns an array containing the constants of this enum type, in the order they are declared. This method may be used to iterate over the constants as follows:

            for (SystemType c : SystemType.values())
                System.out.println(c);

            Returns:

            an array containing the constants of this enum type, in the order they are declared

        -   #### valueOf

            public static [SystemType](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") valueOf(String name)

            Returns the enum constant of this type with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this type. (Extraneous whitespace characters are not permitted.)

            Parameters:

            `name` - the name of the enum constant to be returned.

            Returns:

            the enum constant with the specified name

            Throws:

            `IllegalArgumentException` - if this enum type has no constant with the specified name

            `NullPointerException` - if the argument is null

        -   #### getDefault

            public Object getDefault()

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/SystemType.html)
-   [No Frames](SystemType.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Enum Constants](#enum.constant.summary) | 
-   Field | 
-   [Method](#method.summary)

-   Detail: 
-   [Enum Constants](#enum.constant.detail) | 
-   Field | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._