---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html
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

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html)
-   [No Frames](TestableConnectedSystemTemplate.html)

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

## Interface TestableConnectedSystemTemplate

-   All Superinterfaces:

    [ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public interface TestableConnectedSystemTemplate
    extends [ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

    [`ConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") that contains credentials that can be validated against an external system.

    Connected Systems that implement this interface are able to be tested by the user in the UI. Tests will trigger a call to [`testConnection(ConfigurationDescriptor, ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-). This method returns a response that is displayed to the user.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html" title="class in com.appian.connectedsystems.templateframework.sdk.connectiontesting">TestConnectionResult</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html#testConnection-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">testConnection</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configDescriptor, <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Validates credentials in the connected system Called when user tests the credentials of a Testable Connected System</div></td></tr></tbody></table>

        -   ### Methods inherited from interface com.appian.connectedsystems.templateframework.sdk.[ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

            `[getConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)`

-   -   ### Method Detail

        -   #### testConnection

            [TestConnectionResult](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting") testConnection([ConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") configDescriptor,
                                                [ExecutionContext](../../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Validates credentials in the connected system

            Called when user tests the credentials of a Testable Connected System

            Parameters:

            `configDescriptor` - - The current configuration of the connected system. This object will not be null.

            `executionContext` - - User specific data needed to initiate a connection with the external system.

            Returns:

            TestConnectionResult - Contains test result. If an error occurred this object contains guidance

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestConnectionResult.html "class in com.appian.connectedsystems.templateframework.sdk.connectiontesting")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/connectiontesting/TestableConnectedSystemTemplate.html)
-   [No Frames](TestableConnectedSystemTemplate.html)

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