---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html)
-   [No Frames](IntegrationError.IntegrationErrorBuilder.html)

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

## Class IntegrationError.IntegrationErrorBuilder

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.IntegrationError.IntegrationErrorBuilder

-   Enclosing class:

    [IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public static class IntegrationError.IntegrationErrorBuilder
    extends Object

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html#IntegrationErrorBuilder--">IntegrationErrorBuilder</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html#build--">build</a></span>()</code><div class="block">Constructs the built <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">integration error</a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html#detail-java.lang.String-">detail</a></span>(String&nbsp;detail)</code><div class="block">The error detail.</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html#message-java.lang.String-">message</a></span>(String&nbsp;message)</code><div class="block">The error message.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html#title-java.lang.String-">title</a></span>(String&nbsp;title)</code><div class="block">The error title.</div></td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### IntegrationErrorBuilder

            public IntegrationErrorBuilder()

    -   ### Method Detail

        -   #### title

            public [IntegrationError.IntegrationErrorBuilder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk") title(String title)

            The error title. This text will be displayed prominently to the user on a failed execution.

        -   #### message

            public [IntegrationError.IntegrationErrorBuilder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk") message(String message)

            The error message. This text will be displayed below the title.

        -   #### detail

            public [IntegrationError.IntegrationErrorBuilder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk") detail(String detail)

            The error detail. This text will be displayed below the message.

        -   #### build

            public [IntegrationError](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") build()

            Constructs the built [integration error](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html)
-   [No Frames](IntegrationError.IntegrationErrorBuilder.html)

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