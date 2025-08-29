---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html
version: "25.3"
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
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html)
-   [No Frames](DocumentDownloadService.html)

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

com.appian.connectedsystems.templateframework.sdk.services

## Interface DocumentDownloadService

-   * * *

    public interface DocumentDownloadService

    Injected service used to story binary files pulled from external systems. Access this service through the [`ExecutionContext`](../../../../../../com/appian/connectedsystems/templateframework/sdk/ExecutionContext.html "interface in com.appian.connectedsystems.templateframework.sdk")

    `DocumentDownloadService` is **only functional on `execute()`** and will otherwise throw an `UnsupportedOperationException`.

-   -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t3" class="tableTab"><span><a href="javascript:show(4);">Abstract Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">Document</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html#downloadDocument-java.io.InputStream-java.lang.Long-java.lang.String-">downloadDocument</a></span>(InputStream&nbsp;content, Long&nbsp;folderId, String&nbsp;filename)</code><div class="block">Downloads data from provided stream and stores as a file.</div></td></tr></tbody></table>

-   -   ### Method Detail

        -   #### downloadDocument

            [Document](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") downloadDocument(InputStream content,
                                      Long folderId,
                                      String filename)
                               throws [DocumentDownloadException](../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html "class in com.appian.connectedsystems.templateframework.sdk.services.exceptions")

            Downloads data from provided stream and stores as a file.

            Downloaded files are not activated until your [`IntegrationTemplate`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html "interface in com.appian.connectedsystems.templateframework.sdk") returns a successful [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk"). Any downloaded files not included in your [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") result map will be deleted.

            A [`DocumentDownloadException`](../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html "class in com.appian.connectedsystems.templateframework.sdk.services.exceptions") thrown by this method does not need to be caught. By default, these exceptions will be converted to `IntegrationErrors.`

            Parameters:

            `content` - The content of the document. If possible, pass your network stream directly into this method.

            `folderId` - The documents `parentFolderId`, retrieved from the designer through a [`FolderPropertyDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/FolderPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration").

            `filename` - The downloaded document's name and extension.

            Returns:

            The downloaded document. The content of the document is available through the `Document's` `InputStream`. Include the returned [`Document`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") in your [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") result map. If it is not included in the result map, it will be deleted.

            Throws:

            `[DocumentDownloadException](../../../../../../com/appian/connectedsystems/templateframework/sdk/services/exceptions/DocumentDownloadException.html "class in com.appian.connectedsystems.templateframework.sdk.services.exceptions")`

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   Prev Class
-   Next Class

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html)
-   [No Frames](DocumentDownloadService.html)

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