---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException"
section: "Class ExpiredTokenException"
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
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html "class in com.appian.connectedsystems.templateframework.sdk.oauth")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html)
-   [No Frames](ExpiredTokenException.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#methods.inherited.from.class.Throwable)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   Method

com.appian.connectedsystems.templateframework.sdk.oauth

## Class ExpiredTokenException

-   Object
-   -   Throwable
    -   -   Exception
        -   -   RuntimeException
            -   -   com.appian.connectedsystems.templateframework.sdk.oauth.ExpiredTokenException

-   All Implemented Interfaces:

    Serializable

    * * *

    public class ExpiredTokenException
    extends RuntimeException

    An exception to throw when the token provided by [`ExecutionContext.getAccessToken()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getAccessToken--) is invalid.

    For example, throw this exception when a call to an OAuth-secured external system returns a 401 status code.

    When this exception is thrown, Appian will attempt to refresh the access token. If Appian successfully refreshes the token, the method that threw this exception will be called again with the new access token. If Appian is unable to refresh the token, the user will be prompted to authorize again with the external system.

    You can check whether the exception has already been thrown during this evaluation of the integration using [`ExecutionContext.getAttemptNumber()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html#getAttemptNumber--).

    See Also:

    [Serialized Form](../../../../../../serialized-form.html#com.appian.connectedsystems.templateframework.sdk.oauth.ExpiredTokenException)

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html#ExpiredTokenException--">ExpiredTokenException</a></span>()</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        -   ### Methods inherited from class Throwable

            `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### ExpiredTokenException

            public ExpiredTokenException()

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/oauth/OAuthConfigurationData.html "class in com.appian.connectedsystems.templateframework.sdk.oauth")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/oauth/ExpiredTokenException.html)
-   [No Frames](ExpiredTokenException.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#methods.inherited.from.class.Throwable)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   Method

_Copyright © 2018-present Appian Corporation. All Rights Reserved._