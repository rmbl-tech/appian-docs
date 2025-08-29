---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder"
section: "Class IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html)
-   [No Frames](IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html)

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

com.appian.connectedsystems.templateframework.sdk.diagnostics

## Class IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder

-   Enclosing class:

    [IntegrationDesignerDiagnostic](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

    * * *

    public static final class IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder
    extends Object

    Builder for the [diagnostics](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html#addErrorDiagnostic-com.appian.connectedsystems.templateframework.sdk.IntegrationError-">addErrorDiagnostic</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a>&nbsp;integrationError)</code><div class="block">Unlike in the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk"><code>IntegrationResponse</code></a>, developer-provided error messages should be internationalized in the diagnostics.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html#addExecutionTimeDiagnostic-long-">addExecutionTimeDiagnostic</a></span>(long&nbsp;ms)</code><div class="block">Sets how long the external system took to complete the operation</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html#addRequestDiagnostic-java.util.Map-">addRequestDiagnostic</a></span>(Map&lt;String,Object&gt;&nbsp;rawRequestMap)</code><div class="block">Adds a map of keys and values that represent the raw values sent to the external system.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html#addResponseDiagnostic-java.util.Map-">addResponseDiagnostic</a></span>(Map&lt;String,Object&gt;&nbsp;rawResponseMap)</code><div class="block">Adds a map of keys and values that represent the raw values returned by the external system.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html#build--">build</a></span>()</code><div class="block">Constructs the built <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">diagnostics</a></div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### build

            public [IntegrationDesignerDiagnostic](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") build()

            Constructs the built [diagnostics](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

        -   #### addErrorDiagnostic

            public [IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") addErrorDiagnostic([IntegrationError](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") integrationError)

            Unlike in the [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk"), developer-provided error messages should be internationalized in the diagnostics.

        -   #### addRequestDiagnostic

            public [IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") addRequestDiagnostic(Map<String,Object> rawRequestMap)

            Adds a map of keys and values that represent the raw values sent to the external system.

            For example, if using HTTP, your map could contain a _Headers_ entry containing all sent headers' keys and values.

            Valid values for diagnostic entries are primitives, lists, and maps

        -   #### addResponseDiagnostic

            public [IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") addResponseDiagnostic(Map<String,Object> rawResponseMap)

            Adds a map of keys and values that represent the raw values returned by the external system.

            For example, if using HTTP, your map could contain a _Headers_ entry containing all received headers' keys and values.

            Valid values for diagnostic entries are primitives, lists, and maps

        -   #### addExecutionTimeDiagnostic

            public [IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") addExecutionTimeDiagnostic(long ms)

            Sets how long the external system took to complete the operation

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html)
-   [No Frames](IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html)

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