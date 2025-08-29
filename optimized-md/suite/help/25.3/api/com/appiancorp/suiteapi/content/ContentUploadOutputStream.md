---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentUploadOutputStream.html
original_path: api/com/appiancorp/suiteapi/content/ContentUploadOutputStream.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentUploadOutputStream

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.io.OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

com.appiancorp.suiteapi.content.ContentUploadOutputStream

All Implemented Interfaces:

`[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`, `[Flushable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Flushable.html "class or interface in java.io")`, `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

* * *

public abstract class ContentUploadOutputStream extends [OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

Represents a document and its output stream to which the document's content should be written during an upload. The document's data should be written to the returned output stream and the upload will be completed by calling [`close()`](#close\(\)). Invoking the stream's close method will calculate the size of the data written to the stream and save it as metadata for the document.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentUploadOutputStream](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `abstract void`

    `[close](#close\(\))()`

    `abstract [Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[getApproval](#getApproval\(\))()`

    Returns the approval for the created content object.

    `abstract [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentId](#getContentId\(\))()`

    Returns the id of the created content object.

    ### Methods inherited from class java.io.[OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

    `[flush](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#flush\(\) "class or interface in java.io"), [nullOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#nullOutputStream\(\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(byte%5B%5D\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(byte%5B%5D,int,int\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(int\) "class or interface in java.io")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContentUploadOutputStream

        public ContentUploadOutputStream()

-   ## Method Details

    -   ### getContentId

        public abstract [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentId()

        Returns the id of the created content object.

    -   ### getApproval

        public abstract [Approval](Approval.html "class in com.appiancorp.suiteapi.content") getApproval()

        Returns the approval for the created content object. See [`ContentService.createApproval(Content, Integer)`](ContentService.html#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)).

    -   ### close

        public abstract void close() throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

        Specified by:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html#close\(\) "class or interface in java.lang")` in interface `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

        Specified by:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html#close\(\) "class or interface in java.io")` in interface `[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`

        Overrides:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#close\(\) "class or interface in java.io")` in class `[OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")`

        Throws:

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`