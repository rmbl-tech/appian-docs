---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiRequest"
section: "Interface ClientApiRequest"
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html)
-   [No Frames](ClientApiRequest.html)

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

## Interface ClientApiRequest

-   * * *

    public interface ClientApiRequest

    Representation of a request from a Component Plugin coupled with data from the associated Connected System object.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html#getConnectedSystemConfigDescriptor--">getConnectedSystemConfigDescriptor</a></span>()</code><div class="block">The configuration of the connected system associated with the Client API.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html#getPayload--">getPayload</a></span>()</code><div class="block">the payload sent by the Component Plugin.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### getConnectedSystemConfigDescriptor

            [ConfigurationDescriptor](../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") getConnectedSystemConfigDescriptor()

            The configuration of the connected system associated with the Client API.

            Returns:

            non-null ConfigurationDescriptor

        -   #### getPayload

            Map<String,Object> getPayload()

            the payload sent by the Component Plugin.

            Returns:

            non-null map

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html)
-   [No Frames](ClientApiRequest.html)

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