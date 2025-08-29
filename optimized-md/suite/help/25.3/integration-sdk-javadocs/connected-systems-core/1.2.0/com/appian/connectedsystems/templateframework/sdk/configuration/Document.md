---
source_url: https://docs.appian.com/suite/help/25.3/integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/Document.html
original_path: integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/Document.html
version: "25.3"
page_id: "integration-sdk-javadocs/connected-systems-core/1.2.0/com/appian/connectedsystems/templateframework/sdk/configuration/Document"
section: "Class Document"
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

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/Document.html)
-   [No Frames](Document.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

-   Summary: 
-   Nested | 
-   Field | 
-   [Constr](#constructor.summary) | 
-   [Method](#method.summary)

-   Detail: 
-   Field | 
-   [Constr](#constructor.detail) | 
-   [Method](#method.detail)

com.appian.connectedsystems.templateframework.sdk.configuration

## Class Document

-   Object
-   -   com.appian.connectedsystems.templateframework.sdk.configuration.Document

-   * * *

    public final class Document
    extends Object

    Data structure representing a document stored in Appian. Present in [configuration descriptor state](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html#getState--).

    Documents are provided on [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) as the state for [`DocumentPropertyDescriptors`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). Documents are provided on [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-), as a wrapper for the document's Id. The Document object can be cleared using [`emptyDocument()`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#emptyDocument--).

    Documents are also returned by the [`DocumentDownloadService`](../../../../../../com/appian/connectedsystems/templateframework/sdk/services/DocumentDownloadService.html "interface in com.appian.connectedsystems.templateframework.sdk.services") on download. After downloading a document, be sure to include it in your [`IntegrationResponse`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationResponse.html "class in com.appian.connectedsystems.templateframework.sdk") result map. `Document` objects in the map will be converted to Appian document references before being passed to the designer.

    **Note:** On download, the returned stream will be the same stream passed into the download method.

-   -   ### Constructor Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation"><caption><span>Constructors</span><span class="tabEnd">&nbsp;</span></caption><tbody><tr><th class="colOne" scope="col">Constructor and Description</th></tr><tr class="altColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#Document-java.lang.Integer-">Document</a></span>(Integer&nbsp;id)</code><div class="block">Document objects will be passed on <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> and <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> in the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ConfigurationDescriptor</code></a>.</div></td></tr><tr class="rowColor"><td class="colOne"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#Document-java.lang.Integer-java.io.InputStream-java.lang.String-java.lang.String-java.lang.Integer-java.lang.Long-">Document</a></span>(Integer&nbsp;id, InputStream&nbsp;inputStream, String&nbsp;extension, String&nbsp;fileName, Integer&nbsp;fileSize, Long&nbsp;parentFolderId)</code><div class="block">Document objects will be passed on <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> and <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-"><code>IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)</code></a> in the <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration"><code>ConfigurationDescriptor</code></a>.</div></td></tr></tbody></table>

    -   ### Method Summary

        <table class="memberSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation"><caption><span id="t0" class="activeTableTab"><span>All Methods</span><span class="tabEnd">&nbsp;</span></span><span id="t1" class="tableTab"><span><a href="javascript:show(1);">Static Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t2" class="tableTab"><span><a href="javascript:show(2);">Instance Methods</a></span><span class="tabEnd">&nbsp;</span></span><span id="t4" class="tableTab"><span><a href="javascript:show(8);">Concrete Methods</a></span><span class="tabEnd">&nbsp;</span></span></caption><tbody><tr><th class="colFirst" scope="col">Modifier and Type</th><th class="colLast" scope="col">Method and Description</th></tr><tr id="i0" class="altColor"><td class="colFirst"><code>static <a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html" title="class in com.appian.connectedsystems.templateframework.sdk.configuration">Document</a></code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#emptyDocument--">emptyDocument</a></span>()</code><div class="block">Singleton document representing a null document</div></td></tr><tr id="i1" class="rowColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getExtension--">getExtension</a></span>()</code><div class="block">The document's extension</div></td></tr><tr id="i2" class="altColor"><td class="colFirst"><code>String</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getFileName--">getFileName</a></span>()</code><div class="block">The documents name and extension</div></td></tr><tr id="i3" class="rowColor"><td class="colFirst"><code>Integer</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getFileSize--">getFileSize</a></span>()</code><div class="block">The document's size, in bytes</div></td></tr><tr id="i4" class="altColor"><td class="colFirst"><code>Integer</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getId--">getId</a></span>()</code>&nbsp;</td></tr><tr id="i5" class="rowColor"><td class="colFirst"><code>InputStream</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getInputStream--">getInputStream</a></span>()</code><div class="block">A stream of the document's content.</div></td></tr><tr id="i6" class="altColor"><td class="colFirst"><code>Long</code></td><td class="colLast"><code><span class="memberNameLink"><a href="../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html#getParentFolderId--">getParentFolderId</a></span>()</code>&nbsp;</td></tr></tbody></table>

        -   ### Methods inherited from class Object

            `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

-   -   ### Constructor Detail

        -   #### Document

            public Document(Integer id,
                            InputStream inputStream,
                            String extension,
                            String fileName,
                            Integer fileSize,
                            Long parentFolderId)

            Document objects will be passed on [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) and [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) in the [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). In [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) only the id will be accessible and an attempt to read will throw a RuntimeException.

        -   #### Document

            public Document(Integer id)

            Document objects will be passed on [`IntegrationTemplate.execute(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#execute-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) and [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) in the [`ConfigurationDescriptor`](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/ConfigurationDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration"). In [`IntegrationTemplate.getConfigurationDescriptor(com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor, com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath, com.appian.connectedsystems.templateframework.sdk.ExecutionContext)`](../../../../../../com/appian/connectedsystems/templateframework/sdk/IntegrationTemplate.html#getConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.ConfigurationDescriptor-com.appian.connectedsystems.templateframework.sdk.configuration.PropertyPath-com.appian.connectedsystems.templateframework.sdk.ExecutionContext-) only the id will be accessible and an attempt to read will throw a RuntimeException.

    -   ### Method Detail

        -   #### getInputStream

            public InputStream getInputStream()

            A stream of the document's content. Avoid reading the streamed data into memory in its entirety. Files may be large.

        -   #### getExtension

            public String getExtension()

            The document's extension

        -   #### getFileName

            public String getFileName()

            The documents name and extension

        -   #### getFileSize

            public Integer getFileSize()

            The document's size, in bytes

        -   #### getParentFolderId

            public Long getParentFolderId()

        -   #### getId

            public Integer getId()

        -   #### emptyDocument

            public static [Document](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/Document.html "class in com.appian.connectedsystems.templateframework.sdk.configuration") emptyDocument()

            Singleton document representing a null document

[Skip navigation links](#skip.navbar.bottom "Skip navigation links")

-   [Overview](../../../../../../overview-summary.html)
-   [Package](package-summary.html)
-   Class
-   [Tree](package-tree.html)
-   [Deprecated](../../../../../../deprecated-list.html)
-   [Index](../../../../../../index-all.html)
-   [Help](../../../../../../help-doc.html)

-   [Prev Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DisplayHint.html "enum in com.appian.connectedsystems.templateframework.sdk.configuration")
-   [Next Class](../../../../../../com/appian/connectedsystems/templateframework/sdk/configuration/DocumentPropertyDescriptor.html "class in com.appian.connectedsystems.templateframework.sdk.configuration")

-   [Frames](../../../../../../index.html?com/appian/connectedsystems/templateframework/sdk/configuration/Document.html)
-   [No Frames](Document.html)

-   [All Classes](../../../../../../allclasses-noframe.html)

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