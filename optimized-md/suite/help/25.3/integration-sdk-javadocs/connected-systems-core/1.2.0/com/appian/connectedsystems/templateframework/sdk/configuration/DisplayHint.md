---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html)
-   [No Frames](DisplayHint.html)

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

## Enum DisplayHint

-   Object
-   -   Enum<[DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.DisplayHint

-   All Implemented Interfaces:

    Serializable, Comparable<[DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    * * *

    public enum DisplayHint
    extends Enum<[DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    Alters the display of a property in the UI

-   -   ### Enum Constant Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Enum Constant Summary table, listing enum constants, and an explanation"><caption><span>Enum Constants</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Enum Constant and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#EXPRESSION">EXPRESSION</a></span></code><div class="block">Displays the property as an expression box Expression boxes are large code editor fields.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#NORMAL">NORMAL</a></span></code><div class="block">Displays the property using default rendering</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">DisplayHint</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#valueOf-java.lang.String-">valueOf</a></span>(String&nbsp;name)</code><div class="block">Returns the enum constant of this type with the specified name.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">DisplayHint</a>[]</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html#values--">values</a></span>()</code><div class="block">Returns an array containing the constants of this enum type, in the order they are declared.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Enum

            `clone, compareTo, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

        -   ### Methods inherited from class Object

            `getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Enum Constant Detail

        -   #### EXPRESSION

            public static final [DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") EXPRESSION

            Displays the property as an expression box

            Expression boxes are large code editor fields. Any field that [`PropertyDescriptorBuilder.isExpressionable(boolean)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#isExpressionable-boolean-) can be configured using an expression editor. Setting this value makes it more prominent.

            Use this display hint if you know that this field is highly dynamic and will always require a large expression to configure.

            **Important:** Setting a field to `EXPRESSION` makes providing quick values for testing more difficult. Use this setting judiciously.

        -   #### NORMAL

            public static final [DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") NORMAL

            Displays the property using default rendering

    -   ### Method Detail

        -   #### values

            public static [DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\[\] values()

            Returns an array containing the constants of this enum type, in the order they are declared. This method may be used to iterate over the constants as follows:

            for (DisplayHint c : DisplayHint.values())
                System.out.println(c);

            Returns:

            an array containing the constants of this enum type, in the order they are declared

        -   #### valueOf

            public static [DisplayHint](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") valueOf(String name)

            Returns the enum constant of this type with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this type. (Extraneous whitespace characters are not permitted.)

            Parameters:

            `name` - the name of the enum constant to be returned.

            Returns:

            the enum constant with the specified name

            Throws:

            `IllegalArgumentException` - if this enum type has no constant with the specified name

            `NullPointerException` - if the argument is null

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.ConfigurationDescriptorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html)
-   [No Frames](DisplayHint.html)

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