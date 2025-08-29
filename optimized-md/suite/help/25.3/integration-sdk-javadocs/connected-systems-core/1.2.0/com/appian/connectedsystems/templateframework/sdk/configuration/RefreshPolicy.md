---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy"
section: "Enum RefreshPolicy"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html)
-   [No Frames](RefreshPolicy.html)

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

## Enum RefreshPolicy

-   Object
-   -   Enum<[RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>
    -   -   com.appian.connectedsystems.templateframework.sdk.configuration.RefreshPolicy

-   All Implemented Interfaces:

    Serializable, Comparable<[RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    * * *

    public enum RefreshPolicy
    extends Enum<[RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\>

    Determines whether [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) or [`ConnectedSystemTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) will be called when the user updates a given property.

    Use [`PropertyDescriptorBuilder.refresh(RefreshPolicy)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html#refresh-com.appian.connectedsystems.templateframework.sdk.configuration.RefreshPolicy-) to set this value

    For fields that do not affect the UI, use [`NEVER`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#NEVER). For fields that should result in dynamic UI behavior, use [`ALWAYS`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#ALWAYS).

-   -   ### Enum Constant Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Enum Constant Summary table, listing enum constants, and an explanation"><caption><span>Enum Constants</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Enum Constant and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#ALWAYS">ALWAYS</a></span></code><div class="block">Whenever a user updates the given property's value, <code>getConfigurationDescriptor</code> will be called.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#NEVER">NEVER</a></span></code><div class="block">Updating the property descriptor will never result in a call to create a new <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ConfigurationDescriptor</code></a>; rather, the state will simply be updated with the new value.</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">RefreshPolicy</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#valueOf-java.lang.String-">valueOf</a></span>(String&nbsp;name)</code><div class="block">Returns the enum constant of this type with the specified name.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.configuration">RefreshPolicy</a>[]</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html#values--">values</a></span>()</code><div class="block">Returns an array containing the constants of this enum type, in the order they are declared.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Enum

            `clone, compareTo, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

        -   ### Methods inherited from class Object

            `getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Enum Constant Detail

        -   #### NEVER

            public static final [RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") NEVER

            Updating the property descriptor will never result in a call to create a new [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"); rather, the state will simply be updated with the new value.

        -   #### ALWAYS

            public static final [RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") ALWAYS

            Whenever a user updates the given property's value, `getConfigurationDescriptor` will be called.

    -   ### Method Detail

        -   #### values

            public static [RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")\[\] values()

            Returns an array containing the constants of this enum type, in the order they are declared. This method may be used to iterate over the constants as follows:

            for (RefreshPolicy c : RefreshPolicy.values())
                System.out.println(c);

            Returns:

            an array containing the constants of this enum type, in the order they are declared

        -   #### valueOf

            public static [RefreshPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration") valueOf(String name)

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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/PropertyState.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/StateGenerator.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/RefreshPolicy.html)
-   [No Frames](RefreshPolicy.html)

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