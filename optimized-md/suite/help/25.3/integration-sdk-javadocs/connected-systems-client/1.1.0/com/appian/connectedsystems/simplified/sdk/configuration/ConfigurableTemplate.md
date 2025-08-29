---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate"
section: "Class ConfigurableTemplate"
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
-   [Next Class](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html)
-   [No Frames](ConfigurableTemplate.html)

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

com.appian.connectedsystems.simplified.sdk.configuration

## Class ConfigurableTemplate

-   Object
-   -   com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate

-   Direct Known Subclasses:

    [SimpleConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk"), [SimpleIntegrationTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleIntegrationTemplate.html "class in com.appian.connectedsystems.simplified.sdk")

    * * *

    public class ConfigurableTemplate
    extends Object

    Creates fields that are used to accept and store user input, display read-only information to the user, and store additional metadata needed for execution.

    All properties should be constructed using the methods found here. Properties constructed outside of the ConfigurableTemplate might have unexpected behavior.

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>protected com.appian.connectedsystems.simplified.sdk.configuration.TypePropertyFactory</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#typePropertyFactory">typePropertyFactory</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#ConfigurableTemplate--">ConfigurableTemplate</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#booleanProperty-java.lang.String-">booleanProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#deroot-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-">deroot</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyPath</a>&nbsp;updatedProperty)</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#documentProperty-java.lang.String-">documentProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.DoublePropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">DoublePropertyDescriptor.DoublePropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#doubleProperty-java.lang.String-">doubleProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">TextPropertyDescriptor.TextPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#dropdownProperty-java.lang.String-java.util.List-">dropdownProperty</a></span>(String&nbsp;key, List&lt;<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">Choice</a>&gt;&nbsp;choices)</code>&nbsp;</td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#encryptedTextProperty-java.lang.String-">encryptedTextProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">FolderPropertyDescriptor.FolderPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#folderProperty-java.lang.String-">folderProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#integerProperty-java.lang.String-">integerProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i8" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.Builder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ListTypePropertyDescriptor.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#listTypeProperty-java.lang.String-">listTypeProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr><tr id="i9" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localType-java.lang.String-">localType</a></span>(String&nbsp;name)</code><div class="block">A data structure consisting of a name and a list of <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration"><code>PropertyDescriptor</code></a>.</div></td></tr><tr id="i10" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-">localTypeProperty</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localType)</code>&nbsp;</td></tr><tr id="i11" class="rowColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">PropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.lang.String-">localTypeProperty</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">LocalTypeDescriptor</a>&nbsp;localType, String&nbsp;key)</code>&nbsp;</td></tr><tr id="i12" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">TextPropertyDescriptor.TextPropertyDescriptorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#textProperty-java.lang.String-">textProperty</a></span>(String&nbsp;key)</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### typePropertyFactory

            protected final com.appian.connectedsystems.simplified.sdk.configuration.TypePropertyFactory typePropertyFactory

    -   ### Constructor Detail

        -   #### ConfigurableTemplate

            public ConfigurableTemplate()

    -   ### Method Detail

        -   #### localType

            public [LocalTypeDescriptor.Builder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.Builder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localType(String name)

            A data structure consisting of a name and a list of [`PropertyDescriptor`](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration"). Local type representing a person:

               localType("personType")
                 .properties(
                   textProperty("name")
                     .label("Name")
                     .build(),
                   integerProperty("height")
                     .label("Height")
                     .build(),
                   booleanProperty("isMinor")
                     .label("Is Minor")
                     .build())
                 .build();

            Parameters:

            `name` - Name of the type

            Returns:

            Local type builder with provided name

        -   #### localTypeProperty

            public [PropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeProperty([LocalTypeDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localType)

            Parameters:

            `localType` - Data structure composed of properties

            Returns:

            Local type property builder with the name of the local type as the key

        -   #### localTypeProperty

            public [PropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localTypeProperty([LocalTypeDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/LocalTypeDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") localType,
                                                               String key)

            Parameters:

            `localType` - Data structure composed of properties

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Local type property builder with the provided key

        -   #### listTypeProperty

            public [ListTypePropertyDescriptor.Builder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ListTypePropertyDescriptor.Builder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") listTypeProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            List type property builder with the provided key

        -   #### textProperty

            public [TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") textProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Text property builder with the provided key

        -   #### encryptedTextProperty

            public [EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/EncryptedTextPropertyDescriptor.EncryptedTextPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") encryptedTextProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Encrypted text property builder with the provided key

        -   #### booleanProperty

            public [BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/BooleanPropertyDescriptor.BooleanPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") booleanProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Boolean property builder with the provided key

        -   #### integerProperty

            public [IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/IntegerPropertyDescriptor.IntegerPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") integerProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Integer property builder with the provided key

        -   #### doubleProperty

            public [DoublePropertyDescriptor.DoublePropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DoublePropertyDescriptor.DoublePropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") doubleProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Double property builder with the provided key

        -   #### documentProperty

            public [DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.DocumentPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") documentProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Document property builder with the provided key

        -   #### dropdownProperty

            public [TextPropertyDescriptor.TextPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/TextPropertyDescriptor.TextPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") dropdownProperty(String key,
                                                                                         List<[Choice](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/Choice.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration")\> choices)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `choices` - List of choices to be displayed in the dropdown

            Returns:

            Text property builder configured as a dropdown with the provided choices

        -   #### folderProperty

            public [FolderPropertyDescriptor.FolderPropertyDescriptorBuilder](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.FolderPropertyDescriptorBuilder.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") folderProperty(String key)

            Parameters:

            `key` - Unique identifier to get and set the value of the property in [`SimpleConfiguration`](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            Returns:

            Folder property builder with the provided key

        -   #### deroot

            protected [PropertyPath](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") deroot([PropertyPath](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/PropertyPath.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") updatedProperty)

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html)
-   [No Frames](ConfigurableTemplate.html)

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