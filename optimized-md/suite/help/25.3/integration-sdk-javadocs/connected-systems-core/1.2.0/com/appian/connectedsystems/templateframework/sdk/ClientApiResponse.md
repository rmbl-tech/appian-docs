---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ClientApiResponse"
section: "Class ClientApiResponse"
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html)
-   [No Frames](ClientApiResponse.html)

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

com.appian.connectedsystems.templateframework.sdk

## Class ClientApiResponse

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.ClientApiResponse

-   * * *

    public class ClientApiResponse
    extends Object

    The result of a [`ClientApi`](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApi.html "interface in com.appian.connectedsystems.templateframework.sdk") execution which is serialized and sent to the client.

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html#ClientApiResponse-java.util.Map-">ClientApiResponse</a></span>(Map&lt;String,Object&gt;&nbsp;resultMap)</code><div class="block">Constructs a response</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html#getResultMap--">getResultMap</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### ClientApiResponse

            public ClientApiResponse(Map<String,Object> resultMap)

            Constructs a response

            Parameters:

            `resultMap` - Map that must be JSON serializable.

    -   ### Method Detail

        -   #### getResultMap

            public Map<String,Object> getResultMap()

            Returns:

            the result of the Client API execution

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ClientApiRequest.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ClientApiResponse.html)
-   [No Frames](ClientApiResponse.html)

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