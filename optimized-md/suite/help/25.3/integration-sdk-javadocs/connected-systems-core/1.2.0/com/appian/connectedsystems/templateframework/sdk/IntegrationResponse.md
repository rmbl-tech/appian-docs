---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse"
section: "Class IntegrationResponse"
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html)
-   [No Frames](IntegrationResponse.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk

## Class IntegrationResponse

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.IntegrationResponse

-   * * *

    public final class IntegrationResponse
    extends Object

    The result of an operation in an external system .

    `success`, `result`, and `error` are returned to the user. Diagnostics are displayed to the user for debugging.

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></span></code><div class="block">Builder for the <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">integration response</a></div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#forError-com.appian.connectedsystems.templateframework.sdk.IntegrationError-">forError</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a>&nbsp;error)</code><div class="block">A builder with success set to false Diagnostics should still be added if <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#isDiagnosticsEnabled--"><code>ExecutionContext.isDiagnosticsEnabled()</code></a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>static <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#forSuccess-java.util.Map-">forSuccess</a></span>(Map&lt;String,Object&gt;&nbsp;result)</code><div class="block">A builder with success set to true Diagnostics should still be added if <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#isDiagnosticsEnabled--"><code>ExecutionContext.isDiagnosticsEnabled()</code></a></div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#getError--">getError</a></span>()</code><div class="block">The error that occurred during the call, if an error occurred</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#getIntegrationDesignerDiagnostic--">getIntegrationDesignerDiagnostic</a></span>()</code><div class="block">Diagnostics for the execution</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#getResult--">getResult</a></span>()</code><div class="block">The information retrieved from the external system that is relevant to the user</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#isSuccess--">isSuccess</a></span>()</code><div class="block">Whether the execution was successful</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html#toBuilder--">toBuilder</a></span>()</code><div class="block">Converts response to a builder, preserving field values</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### forSuccess

            public static [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") forSuccess(Map<String,Object> result)

            A builder with success set to true

            Diagnostics should still be added if [`ExecutionContext.isDiagnosticsEnabled()`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#isDiagnosticsEnabled--)

            Parameters:

            `result` - The result of the integration

        -   #### forError

            public static [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") forError([IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") error)

            A builder with success set to false

            Diagnostics should still be added if [`ExecutionContext.isDiagnosticsEnabled()`](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#isDiagnosticsEnabled--)

            Parameters:

            `error` - The [`IntegrationError`](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") describing the failure

        -   #### toBuilder

            public [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") toBuilder()

            Converts response to a builder, preserving field values

        -   #### isSuccess

            public boolean isSuccess()

            Whether the execution was successful

        -   #### getResult

            public Map<String,Object> getResult()

            The information retrieved from the external system that is relevant to the user

        -   #### getError

            public [IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") getError()

            The error that occurred during the call, if an error occurred

        -   #### getIntegrationDesignerDiagnostic

            public [IntegrationDesignerDiagnostic](../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") getIntegrationDesignerDiagnostic()

            Diagnostics for the execution

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html)
-   [No Frames](IntegrationResponse.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   Field | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._