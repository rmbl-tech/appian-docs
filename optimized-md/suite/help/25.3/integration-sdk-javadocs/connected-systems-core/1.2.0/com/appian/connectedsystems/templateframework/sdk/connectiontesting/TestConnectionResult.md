---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult"
section: "Class TestConnectionResult"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html)
-   [No Frames](TestConnectionResult.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.connectiontesting

## Class TestConnectionResult

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.connectiontesting.TestConnectionResult

-   * * *

    public final class TestConnectionResult
    extends Object

    A container for the results of [`TestableConnectedSystemTemplate.testConnection(ConfigurationDescriptor, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html" title="class in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#error-java.util.List-">error</a></span>(List&lt;String&gt;&nbsp;integrationErrorMessages)</code><div class="block">Return in <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> when credentials are invalid</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html" title="class in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#error-java.lang.String-">error</a></span>(String&nbsp;integrationErrorMessage)</code><div class="block">Return in <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> when credentials are invalid</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>List&lt;String&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#getIntegrationErrorBulletList--">getIntegrationErrorBulletList</a></span>()</code><div class="block">A list of error messages describing the failures to validate the provided credentials with the external system This is set using <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#error-java.util.List-"><code>error(List)</code></a></div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#getIntegrationErrorMessage--">getIntegrationErrorMessage</a></span>()</code><div class="block">A single error message describing the failure to validate the provided credentials with the external system.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#isSuccess--">isSuccess</a></span>()</code><div class="block">Whether the test was successful</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html" title="class in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#success--">success</a></span>()</code><div class="block">Return in <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> when credentials are valid</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### success

            public static [TestConnectionResult](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting") success()

            Return in [`TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) when credentials are valid

        -   #### error

            public static [TestConnectionResult](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting") error(String integrationErrorMessage)

            Return in [`TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) when credentials are invalid

            Parameters:

            `integrationErrorMessage` - required message to display to the user

        -   #### error

            public static [TestConnectionResult](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting") error(List<String> integrationErrorMessages)

            Return in [`TestableConnectedSystemTemplate.testConnection(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) when credentials are invalid

            Parameters:

            `integrationErrorMessages` - required list of messages to display to the user

        -   #### isSuccess

            public boolean isSuccess()

            Whether the test was successful

        -   #### getIntegrationErrorMessage

            public String getIntegrationErrorMessage()

            A single error message describing the failure to validate the provided credentials with the external system. This is set using [`error(String)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#error-java.lang.String-)

        -   #### getIntegrationErrorBulletList

            public List<String> getIntegrationErrorBulletList()

            A list of error messages describing the failures to validate the provided credentials with the external system This is set using [`error(List)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html#error-java.util.List-)

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.connectiontesting")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html)
-   [No Frames](TestConnectionResult.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._