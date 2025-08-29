---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy"
section: "Enum IntegrationTemplateRequestPolicy"
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

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateType.html "annotation in com.appian.connectedsystems.templateframework.sdk.metadata")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html)
-   [No Frames](IntegrationTemplateRequestPolicy.html)

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

com.appian.connectedsystems.templateframework.sdk.metadata

## Enum IntegrationTemplateRequestPolicy

-   Object
-   -   Enum<[IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata")\>
    -   -   com.appian.connectedsystems.templateframework.sdk.metadata.IntegrationTemplateRequestPolicy

-   All Implemented Interfaces:

    Serializable, Comparable<[IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata")\>

    * * *

    public enum IntegrationTemplateRequestPolicy
    extends Enum<[IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata")\>

    Indicates whether executing the [`IntegrationTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") will result in updates to the external system.

-   -   ### Enum Constant Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Enum Constant Summary table, listing enum constants, and an explanation"><caption><span>Enum Constants</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Enum Constant and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#READ">READ</a></span></code><div class="block">Executing the integration template will <i>not</i> make any changes to the external system.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#READ_AND_WRITE">READ_AND_WRITE</a></span></code><div class="block">Executing the integration template may or may not update the external system based on configurations by the designer.</div></td></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#WRITE">WRITE</a></span></code><div class="block">Executing the integration template will make changes to the external system.</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.metadata">IntegrationTemplateRequestPolicy</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#valueOf-java.lang.String-">valueOf</a></span>(String&nbsp;name)</code><div class="block">Returns the enum constant of this type with the specified name.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html" title="enum in com.appian.connectedsystems.templateframework.sdk.metadata">IntegrationTemplateRequestPolicy</a>[]</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#values--">values</a></span>()</code><div class="block">Returns an array containing the constants of this enum type, in the order they are declared.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Enum

            `clone, compareTo, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

        -   ### Methods inherited from class Object

            `getClass, notify, notifyAll, wait, wait, wait`

-   -   ### Enum Constant Detail

        -   #### READ

            public static final [IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata") READ

            Executing the integration template will _not_ make any changes to the external system.

            Designers have more flexibility when executing `READ` integrations compared to `WRITE` and `READ_AND_WRITE` integrations.

        -   #### WRITE

            public static final [IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata") WRITE

            Executing the integration template will make changes to the external system.

            Designers have less flexibility when executing `WRITE` integrations compared to `READ` integrations.

        -   #### READ\_AND\_WRITE

            public static final [IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata") READ\_AND\_WRITE

            Executing the integration template may or may not update the external system based on configurations by the designer. Using this value delegates the responsibility to the designer. Do not use this setting if a read is necessary to perform a write operation. If a write is guaranteed to occur, use [`WRITE`](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html#WRITE)

            Designers have less flexibility when executing `READ_AND_WRITE` integration templates compared to `READ` integration templates.

    -   ### Method Detail

        -   #### values

            public static [IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata")\[\] values()

            Returns an array containing the constants of this enum type, in the order they are declared. This method may be used to iterate over the constants as follows:

            for (IntegrationTemplateRequestPolicy c : IntegrationTemplateRequestPolicy.values())
                System.out.println(c);

            Returns:

            an array containing the constants of this enum type, in the order they are declared

        -   #### valueOf

            public static [IntegrationTemplateRequestPolicy](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html "enum in com.appian.connectedsystems.templateframework.sdk.metadata") valueOf(String name)

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

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateType.html "annotation in com.appian.connectedsystems.templateframework.sdk.metadata")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/metadata/IntegrationTemplateRequestPolicy.html)
-   [No Frames](IntegrationTemplateRequestPolicy.html)

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