---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate"
section: "Interface OAuthConnectedSystemTemplate"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.oauth")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html)
-   [No Frames](OAuthConnectedSystemTemplate.html)

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

com.appian.connectedsystems.templateframework.sdk.oauth

## Interface OAuthConnectedSystemTemplate

-   All Superinterfaces:

    [ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

    * * *

    public interface OAuthConnectedSystemTemplate
    extends [ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

    [`ConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") that uses the [Authorization Code Grant type](https://tools.ietf.org/html/rfc6749#section-4.1)

    Connected System Types that implement [`OAuthConnectedSystemTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk.oauth") can be authorized from the UI by a user. [`getOAuthConfiguration(ConfigurationDescriptor)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html#getOAuthConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-) is called when a user attempts to authorize.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html" title="class in com.appian.connectedsystems.templateframework.sdk.oauth">OAuthConfigurationData</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html#getOAuthConfiguration-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-">getOAuthConfiguration</a></span>(<a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">ConfigurationDescriptor</a>&nbsp;configurationDescriptor)</code><div class="block">Given user entered data, returns information needed to authorize using OAuth 2.0 authorization code grant Given the user entered information contained in the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ConfigurationDescriptor</code></a>, returns an <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html" title="class in com.appian.connectedsystems.templateframework.sdk.oauth"><code>OAuthConfigurationData</code></a> object that contains the information needed to prompt the user to authorize</div></td></tr></tbody></table>

        -   ### Methods inherited from interface com.appian.connectedsystems.templateframework.sdk.[ConnectedSystemTemplate](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk")

            `[getConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/ConnectedSystemTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-)`

-   -   ### Method Detail

        -   #### getOAuthConfiguration

            [OAuthConfigurationData](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html "class in com.appian.connectedsystems.templateframework.sdk.oauth") getOAuthConfiguration([ConfigurationDescriptor](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") configurationDescriptor)

            Given user entered data, returns information needed to authorize using OAuth 2.0 authorization code grant

            Given the user entered information contained in the [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"), returns an [`OAuthConfigurationData`](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html "class in com.appian.connectedsystems.templateframework.sdk.oauth") object that contains the information needed to prompt the user to authorize

            Parameters:

            `configurationDescriptor` - - The current configuration of the connected system. This object will not be null.

            Returns:

            OAuthConfigurationData - Contains authorization url, token url, client id, client secret and scope.

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.Builder.html "class in com.appian.connectedsystems.templateframework.sdk.oauth")
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConnectedSystemTemplate.html)
-   [No Frames](OAuthConnectedSystemTemplate.html)

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