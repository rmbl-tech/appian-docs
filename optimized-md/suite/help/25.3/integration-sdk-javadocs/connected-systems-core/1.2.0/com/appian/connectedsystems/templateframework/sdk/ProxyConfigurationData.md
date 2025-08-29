---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html
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

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html "annotation in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html)
-   [No Frames](ProxyConfigurationData.html)

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

## Interface ProxyConfigurationData

-   * * *

    public interface ProxyConfigurationData

    Proxy configurations for the site. If [`isEnabled()`](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#isEnabled--), you must use the provided configuration data when making HTTP requests to [non-excluded](../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#isExcludedHost-java.lang.String-) hosts.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>String[]</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#getExcludedHosts--">getExcludedHosts</a></span>()</code><div class="block">A list of excluded hosts.</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#getHost--">getHost</a></span>()</code><div class="block">The proxy's host</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#getPassword--">getPassword</a></span>()</code><div class="block">If the proxy is authenticated, returns the password for the proxy</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>int</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#getPort--">getPort</a></span>()</code><div class="block">The proxy's port</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#getUsername--">getUsername</a></span>()</code><div class="block">If the proxy is authenticated, returns the username for the proxy</div></td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#isAuthRequired--">isAuthRequired</a></span>()</code><div class="block">Whether the proxy requires authentication</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#isEnabled--">isEnabled</a></span>()</code><div class="block">Whether a proxy is enabled</div></td></tr><tr id="i7" class="rowColor"><td class="colFirst"><code>boolean</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html#isExcludedHost-java.lang.String-">isExcludedHost</a></span>(String&nbsp;url)</code><div class="block"><code>true</code> if the provided url should <b>NOT</b> be proxied, otherwise <code>false</code></div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### isEnabled

            boolean isEnabled()

            Whether a proxy is enabled

        -   #### getHost

            String getHost()

            The proxy's host

        -   #### getPort

            int getPort()

            The proxy's port

        -   #### isAuthRequired

            boolean isAuthRequired()

            Whether the proxy requires authentication

        -   #### getUsername

            String getUsername()

            If the proxy is authenticated, returns the username for the proxy

        -   #### getPassword

            String getPassword()

            If the proxy is authenticated, returns the password for the proxy

        -   #### getExcludedHosts

            String\[\] getExcludedHosts()

            A list of excluded hosts. If a call is made to a host in this array, the call should **NOT** be routed through the proxy

        -   #### isExcludedHost

            boolean isExcludedHost(String url)

            `true` if the provided url should **NOT** be proxied, otherwise `false`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../deprecated-list.html)
-   [Index](../../../../../index-all.html)
-   [Help](../../../../../help-doc.html)

-   [Prev Class](../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")
-   [Next Class](../../../../../com/appian/connectedsystems/templateframework/sdk/TemplateId.html "annotation in com.appian.connectedsystems.templateframework.sdk")

-   [Frames](../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/ProxyConfigurationData.html)
-   [No Frames](ProxyConfigurationData.html)

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