---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html
original_path: integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-client/1.1.0/com/appian/connectedsystems/simplified/sdk/SimpleClientApi"
section: "Class SimpleClientApi"
tags: ["appian","docs","v25.3"]
---


[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html)
-   [No Frames](SimpleClientApi.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.simplified.sdk

## Class SimpleClientApi

-   Object
-   -   com.appian.connectedsystems.simplified.sdk.SimpleClientApi

-   All Implemented Interfaces:

    [ClientApi](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public abstract class SimpleClientApi
    extends Object
    implements [ClientApi](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

    A Client API enhances a Component Plugin (CP) with the capability to execute code on the server with access to secured values

    Each Client API must be associated with exactly one [`SimpleConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk"). A [`SimpleConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleConnectedSystemTemplate.html "class in com.appian.connectedsystems.simplified.sdk") may have zero or more associated Client APIs.

    The [`TemplateId`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/TemplateId.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") annotation defines the friendly name of the SimpleClientAPI when called from the Component Plugin.

    Client APIs are re-instantiated per request. Therefore, each call to [`execute(SimpleClientApiRequest, ExecutionContext)`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html#execute-com.appian.connectedsystems.simplified.sdk.SimpleClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) is on a new instance of the class.

    Client APIs are immediately available once deployed. They do not require any additional configuration in Appian.

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html#SimpleClientApi--">SimpleClientApi</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ClientApiResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html#execute-com.appian.connectedsystems.templateframework.sdk.ClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ClientApiRequest</a>&nbsp;request, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code>&nbsp;</td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>protected abstract <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ClientApiResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html#execute-com.appian.connectedsystems.simplified.sdk.SimpleClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html" title="class in com.appian.connectedsystems.simplified.sdk">SimpleClientApiRequest</a>&nbsp;request, <a href="../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true" title="class or interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Defines the behavior of the Client API.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### SimpleClientApi

            public SimpleClientApi()

    -   ### Method Detail

        -   #### execute

            protected abstract [ClientApiResponse](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") execute([SimpleClientApiRequest](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk") request,
                                                         [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Defines the behavior of the Client API.

            Parameters:

            `request` - A non-null [`SimpleClientApiRequest`](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk").

            `executionContext` - Contains all of the contextual information needed to execute the Client API including Designer information, Designer locale, and proxy configuration. [`ExecutionContext`](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            Value that will be returned to the Component Plugin.

        -   #### execute

            public [ClientApiResponse](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") execute([ClientApiRequest](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") request,
                                             [ExecutionContext](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Specified by:

            `[execute](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html?is-external=true#execute-com.appian.connectedsystems.templateframework.sdk.ClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext- "class or interface in com.appian.connectedsystems.templateframework.sdk")` in interface `[ClientApi](../../../../../../../connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html?is-external=true "class or interface in com.appian.connectedsystems.templateframework.sdk")`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../com/appian/connectedsystems/simplified/sdk/SimpleClientApiRequest.html "class in com.appian.connectedsystems.simplified.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/simplified/sdk/SimpleClientApi.html)
-   [No Frames](SimpleClientApi.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._