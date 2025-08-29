---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException"
section: "Class DocumentDownloadException"
tags: ["appian","docs","v25.3"]
---


[Skip navigation links](#skip.navbar.top "Skip navigation links")

-   [Overview](../../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../../deprecated-list.html)
-   [Index](../../../../../../../index-all.html)
-   [Help](../../../../../../../help-doc.html)

-   Prev Class
-   Next Class

-   [Frames](../../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html)
-   [No Frames](DocumentDownloadException.html)

-   [All Classes](../../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.services.exceptions

## Class DocumentDownloadException

-   Object
-   -   Throwable
    -   -   Exception
        -   -   RuntimeException
            -   -   com.appian.connectedsystems.templateframework.sdk.services.exceptions.DocumentDownloadException

-   All Implemented Interfaces:

    Serializable

    * * *

    public class DocumentDownloadException
    extends RuntimeException

    An exception thrown during download. The most common `cause` will be an `IOException`.

    If this exception is thrown by the [`DocumentDownloadService`](../../../../../../../com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html "interface in com.appian.connectedsystems.templateframework.sdk.services") and not caught, the framework will return an [`IntegrationError`](../../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationError.html "class in com.appian.connectedsystems.templateframework.sdk") instead of propagating the exception to the designer.

    See Also:

    [Serialized Form](../../../../../../../serialized-form.html#com.appian.connectedsystems.templateframework.sdk.services.exceptions.DocumentDownloadException)

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html#DocumentDownloadException-java.lang.Exception-java.lang.String-java.lang.Long-">DocumentDownloadException</a></span>(Exception&nbsp;cause, String&nbsp;filename, Long&nbsp;folderId)</code>&nbsp;</td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html#getFilename--">getFilename</a></span>()</code><div class="block">The name of the file that failed to save</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>Long</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html#getFolderId--">getFolderId</a></span>()</code><div class="block">The folder to which the file was being saved</div></td></tr></tbody></table>

        -   ### Methods inherited from class Throwable

            `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### DocumentDownloadException

            public DocumentDownloadException(Exception cause,
                                             String filename,
                                             Long folderId)

    -   ### Method Detail

        -   #### getFilename

            public String getFilename()

            The name of the file that failed to save

        -   #### getFolderId

            public Long getFolderId()

            The folder to which the file was being saved

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../../deprecated-list.html)
-   [Index](../../../../../../../index-all.html)
-   [Help](../../../../../../../help-doc.html)

-   Prev Class
-   Next Class

-   [Frames](../../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html)
-   [No Frames](DocumentDownloadException.html)

-   [All Classes](../../../../../../../allclasses-noframe.html)

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