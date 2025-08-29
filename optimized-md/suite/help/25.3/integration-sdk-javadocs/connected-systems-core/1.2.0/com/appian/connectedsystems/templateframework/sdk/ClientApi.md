---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApi.html
version: "25.3"
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
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApi.html)
-   [No Frames](ClientApi.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk

## Interface ClientApi

-   * * *

    public interface ClientApi

    A ClientApi enhances Component Plugins with the capability to execute code on the server with access to secured values

    Each Client API must be associated with exactly one [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") via the [`TemplateId`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html "annotation in com.appian.connectedsystems.templateframework.sdk") annotation. A [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") may have zero or more associated Client APIs.

    Client APIs are re-instantiated per request. Therefore, each call to [`execute(ClientApiRequest, ExecutionContext)`](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html#execute-com.appian.connectedsystems.templateframework.sdk.ClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) is on a new instance of the class.

    Client APIs are immediately available once deployed. They do not require any additional configuration in Appian.

    Do not include [`TemplateId.majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) when using [`TemplateId`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html "annotation in com.appian.connectedsystems.templateframework.sdk") annotation, otherwise the template will fail to upload. Versioning will be handled by modifying the [`TemplateId.majorVersion()`](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html#majorVersion--) on the associated [`ConnectedSystemTemplate`](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk").

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">ClientApiResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html#execute-com.appian.connectedsystems.templateframework.sdk.ClientApiRequest-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-">execute</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ClientApiRequest</a>&nbsp;request, <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html" title="interface in com.appian.connectedsystems.templateframework.sdk">ExecutionContext</a>&nbsp;executionContext)</code><div class="block">Defines the behavior of the Client API.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### execute

            [ClientApiResponse](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html "class in com.appian.connectedsystems.templateframework.sdk") execute([ClientApiRequest](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk") request,
                                      [ExecutionContext](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk") executionContext)

            Defines the behavior of the Client API.

            Parameters:

            `request` - A non-null [`ClientApiRequest`](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk").

            `executionContext` - Contains all of the contextual information needed to execute the Client API including User information, User locale, and proxy configuration. [`ExecutionContext`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

            Returns:

            ClientApiResponse that will be returned to the Component Plugin.

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApi.html)
-   [No Frames](ClientApi.html)

-   [All Classes](../../../../../allclasses-noframe.html)

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