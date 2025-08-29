---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationError.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/IntegrationError.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationError.html)
-   [No Frames](IntegrationError.html)

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

## Class IntegrationError

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.IntegrationError

-   * * *

    public final class IntegrationError
    extends Object

    Information why an integration [execution](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) failed.

-   -   ### Nested Class Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Nested Class Summary table, listing nested classes, and an explanation"><caption><span>Nested Classes</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Class and Description</th></tr><tr class="altColor"><td class="colFirst"><code>static class&nbsp;</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></span></code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html" title="class in com.appian.connectedsystems.templateframework.sdk">IntegrationError.IntegrationErrorBuilder</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#builder--">builder</a></span>()</code><div class="block">Builder for <a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html" title="class in com.appian.connectedsystems.templateframework.sdk">integration error</a></div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#equals-java.lang.Object-">equals</a></span>(Object&nbsp;o)</code>&nbsp;</td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#getDetail--">getDetail</a></span>()</code><div class="block">The error detail.</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#getMessage--">getMessage</a></span>()</code><div class="block">The error message.</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#getTitle--">getTitle</a></span>()</code><div class="block">The error title.</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html#hashCode--">hashCode</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Method Detail

        -   #### getTitle

            public String getTitle()

            The error title. This text will be displayed prominently to the user on a failed execution.

        -   #### getMessage

            public String getMessage()

            The error message. This text will be displayed below the title.

        -   #### getDetail

            public String getDetail()

            The error detail. This text will be displayed below the message.

        -   #### equals

            public boolean equals(Object o)

            Overrides:

            `equals` in class `Object`

        -   #### hashCode

            public int hashCode()

            Overrides:

            `hashCode` in class `Object`

        -   #### builder

            public static [IntegrationError.IntegrationErrorBuilder](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk") builder()

            Builder for [integration error](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk")

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.IntegrationErrorBuilder.html "class in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/IntegrationError.html)
-   [No Frames](IntegrationError.html)

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