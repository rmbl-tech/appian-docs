---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate"
section: "Class SimpleTestableConnectedSystemTemplate"
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
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html)
-   [No Frames](SimpleTestableConnectedSystemTemplate.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.simplified.sdk.connectiontesting

## Class SimpleTestableConnectedSystemTemplate

-   Object
-   -   [com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")
    -   -   [com.appian.connectedsystems.simplified.sdk.SimpleConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")
        -   -   com.appian.connectedsystems.simplified.sdk.connectiontesting.SimpleTestableConnectedSystemTemplate

-   All Implemented Interfaces:

    [ConnectedSystemTemplate](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk"), [TestableConnectedSystemTemplate](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")

    * * *

    public abstract class SimpleTestableConnectedSystemTemplate
    extends [SimpleConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")
    implements [TestableConnectedSystemTemplate](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")

    [`SimpleConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk") that contains credentials that can be validated against an external system.

    Connected System Templates that extend this class are able to be tested by the designer in the UI. Tests will trigger a call to [`testConnection(SimpleConfiguration, ExecutionContext)`](../../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-). This method returns a response that is displayed to the designer.

-   -   ### Field Summary

        -   ### Fields inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[typePropertyFactory](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#typePropertyFactory)`

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html#SimpleTestableConnectedSystemTemplate--">SimpleTestableConnectedSystemTemplate</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">testConnection</a></span>(<a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configDescriptor, <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected abstract <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">testConnection</a></span>(<a href="../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html" title="class in com.appian.connectedsystems.simplified.sdk.configuration">SimpleConfiguration</a>&nbsp;configuration, <a href="../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Validates credentials in the connected system Called when designer tests the credentials of a Testable Connected System</div></td></tr></tbody></table>

        -   ### Methods inherited from class com.appian.connectedsystems.simplified.sdk.[SimpleConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk")

            `[getConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfiguration-com.appian.connectedsystems.simplified.sdk.configuration.SimpleConfiguration-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-), [getConfigurationDescriptor](../../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)`

        -   ### Methods inherited from class com.appian.connectedsystems.simplified.sdk.configuration.[ConfigurableTemplate](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html "class in com.appian.connectedsystems.simplified.sdk.configuration")

            `[booleanProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#booleanProperty-java.lang.String-), [deroot](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#deroot-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-), [documentProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#documentProperty-java.lang.String-), [doubleProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#doubleProperty-java.lang.String-), [dropdownProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#dropdownProperty-java.lang.String-java.util.List-), [encryptedTextProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#encryptedTextProperty-java.lang.String-), [folderProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#folderProperty-java.lang.String-), [integerProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#integerProperty-java.lang.String-), [listTypeProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#listTypeProperty-java.lang.String-), [localType](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localType-java.lang.String-), [localTypeProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-), [localTypeProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#localTypeProperty-com.appian.connectedsystems.templateframework.sdk.configuration.LocalTypeDescriptor-java.lang.String-), [textProperty](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/ConfigurableTemplate.html#textProperty-java.lang.String-)`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

        -   ### Methods inherited from interface com.appian.connectedsystems.templateframework.sdk.[ConnectedSystemTemplate](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

            `[getConfigurationDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html?is-external=true#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk")`

-   -   ### Constructor Detail

        -   #### SimpleTestableConnectedSystemTemplate

            public SimpleTestableConnectedSystemTemplate()

    -   ### Method Detail

        -   #### testConnection

            protected abstract [TestConnectionResult](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting") testConnection([SimpleConfiguration](../../../../../../com/appian/connectedsystems/simplified/sdk/configuration/SimpleConfiguration.html "class in com.appian.connectedsystems.simplified.sdk.configuration") configuration,
                                                                   [ExecutionContext](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Validates credentials in the connected system

            Called when designer tests the credentials of a Testable Connected System

            Parameters:

            `configuration` - The current configuration of the connected system. This will not be null.

            `executionContext` - Designer specific data needed to initiate a connection with the external system.

            Returns:

            Test result, which will contain guidance if an error occurred.

        -   #### testConnection

            public [TestConnectionResult](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting") testConnection([ConfigurationDescriptor](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.configuration") configDescriptor,
                                                       [ExecutionContext](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Specified by:

            `[testConnection](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html?is-external=true#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")` in interface `[TestableConnectedSystemTemplate](../../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/simplified/sdk/connectiontesting/SimpleTestableConnectedSystemTemplate.html)
-   [No Frames](SimpleTestableConnectedSystemTemplate.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#fields.inherited.from.class.com.appian.connectedsystems.simplified.sdk.configuration.ConfigurableTemplate) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._