---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html)
-   [No Frames](IntegrationResponse.Builder.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk

## Class IntegrationResponse.Builder

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.IntegrationResponse.Builder

-   Enclosing class:

    [IntegrationResponse](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public static class IntegrationResponse.Builder
    extends Object

    Builder for the [integration response](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

-   -   ### Field Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Field Summary table, listing fields, and an explanation"><caption><span>Fields</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Field and Description</th></tr><tr class="altColor"><td class="colFirst"><code>protected <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#error">error</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>protected <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#integrationDesignerDiagnostic">integrationDesignerDiagnostic</a></span></code>&nbsp;</td></tr><tr class="altColor"><td class="colFirst"><code>protected Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#result">result</a></span></code>&nbsp;</td></tr><tr class="rowColor"><td class="colFirst"><code>protected boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#success">success</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#Builder-com.appian.connectedsystems.templateframework.sdk.IntegrationResponse-">Builder</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a>&nbsp;integrationResponse)</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#build--">build</a></span>()</code><div class="block">Constructs the built <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html" title="class in com.appian.connectedsystems.templateframework.sdk">integration response</a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#getError--">getError</a></span>()</code><div class="block">Returns the error</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>Map&lt;String,Object&gt;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#getResult--">getResult</a></span>()</code><div class="block">Returns the result</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#isSuccess--">isSuccess</a></span>()</code><div class="block">Returns the success status</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#toError-com.appian.connectedsystems.templateframework.sdk.IntegrationError-">toError</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a>&nbsp;integrationError)</code><div class="block">Clears the result and replaces the error with the given value</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#toSuccess-java.util.Map-">toSuccess</a></span>(Map&lt;String,Object&gt;&nbsp;result)</code><div class="block">Clears the error and replaces the result with the given value</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationResponse.Builder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html#withDiagnostic-com.appian.connectedsystems.templateframework.sdk.diagnostics.IntegrationDesignerDiagnostic-">withDiagnostic</a></span>(<a href="../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html" title="class in com.appian.connectedsystems.templateframework.sdk.diagnostics">IntegrationDesignerDiagnostic</a>&nbsp;diagnostic)</code><div class="block">A builder with the diagnostics set</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Field Detail

        -   #### success

            protected boolean success

        -   #### result

            protected Map<String,Object> result

        -   #### error

            protected [IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") error

        -   #### integrationDesignerDiagnostic

            protected [IntegrationDesignerDiagnostic](../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") integrationDesignerDiagnostic

    -   ### Constructor Detail

        -   #### Builder

            public Builder([IntegrationResponse](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") integrationResponse)

    -   ### Method Detail

        -   #### withDiagnostic

            public [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") withDiagnostic([IntegrationDesignerDiagnostic](../../../../../com/appian/connectedsystems/templateframework/sdk/diagnostics/IntegrationDesignerDiagnostic.html "class in com.appian.connectedsystems.templateframework.sdk.diagnostics") diagnostic)

            A builder with the diagnostics set

        -   #### toSuccess

            public [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") toSuccess(Map<String,Object> result)

            Clears the error and replaces the result with the given value

        -   #### toError

            public [IntegrationResponse.Builder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html "class in com.appian.connectedsystems.templateframework.sdk") toError([IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") integrationError)

            Clears the result and replaces the error with the given value

        -   #### isSuccess

            public boolean isSuccess()

            Returns the success status

        -   #### getResult

            public Map<String,Object> getResult()

            Returns the result

        -   #### getError

            public [IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") getError()

            Returns the error

        -   #### build

            public [IntegrationResponse](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") build()

            Constructs the built [integration response](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.Builder.html)
-   [No Frames](IntegrationResponse.Builder.html)

-   [All Classes](../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   [Field](#field.summary) | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   [Field](#field.detail) | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

_Copyright © 2018-present Appian Corporation. All Rights Reserved._