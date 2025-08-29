---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic"
section: "Class IntegrationDesignerDiagnostic"
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
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html)
-   [No Frames](IntegrationDesignerDiagnostic.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.diagnostics

## Class IntegrationDesignerDiagnostic

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic

-   * * *

    public final class IntegrationDesignerDiagnostic
    extends Object

    Diagnostics for users to debug failed calls or unexpected results during [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-).

    Diagnostics are visible to the user in the Integration Designer UI but are not programmatically accessible.

    Provide all information that you think a person could use to debug errors, but do not overload the diagnostics with unnecessary information.

    Unlike in the [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk"), developer-provided error messages should be internationalized in the diagnostics.

    Use the [`builder()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#builder--) to construct diagnostics.

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></span></code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">diagnostics</a></div></td></tr></tbody></table>

    -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#ERROR_DETAIL">ERROR_DETAIL</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#ERROR_KEY">ERROR_KEY</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#ERROR_MESSAGE">ERROR_MESSAGE</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#ERROR_TITLE">ERROR_TITLE</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#REQUEST_KEY">REQUEST_KEY</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#RESPONSE_KEY">RESPONSE_KEY</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#SEND_WAIT_RECEIVE">SEND_WAIT_RECEIVE</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>static String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#TIMINGS_KEY">TIMINGS_KEY</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#builder--">builder</a></span>()</code><div class="block">Builder for the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">diagnostics</a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html#getData--">getData</a></span>()</code><div class="block">The diagnostics data represented as a <code>Map</code></div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### ERROR\_KEY

            public static final String ERROR\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.ERROR_KEY)

        -   #### REQUEST\_KEY

            public static final String REQUEST\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.REQUEST_KEY)

        -   #### RESPONSE\_KEY

            public static final String RESPONSE\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.RESPONSE_KEY)

        -   #### TIMINGS\_KEY

            public static final String TIMINGS\_KEY

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.TIMINGS_KEY)

        -   #### ERROR\_TITLE

            public static final String ERROR\_TITLE

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.ERROR_TITLE)

        -   #### ERROR\_MESSAGE

            public static final String ERROR\_MESSAGE

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.ERROR_MESSAGE)

        -   #### ERROR\_DETAIL

            public static final String ERROR\_DETAIL

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.ERROR_DETAIL)

        -   #### SEND\_WAIT\_RECEIVE

            public static final String SEND\_WAIT\_RECEIVE

            See Also:

            [Constant Field Values](../../../../../../constant-values.html#com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic.SEND_WAIT_RECEIVE)

    -   ### Method Detail

        -   #### getData

            public Map<String,Object> getData()

            The diagnostics data represented as a `Map`

        -   #### builder

            public static [IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") builder()

            Builder for the [diagnostics](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.IntegrationDesignerDiagnosticBuilder.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html)
-   [No Frames](IntegrationDesignerDiagnostic.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   [Nested](#nested.class.summary) | 
-   [Field](#field.summary) | 
-   Constr | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   Constr | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._