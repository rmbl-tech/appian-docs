---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentOutputStream.html
original_path: api/com/appiancorp/suiteapi/content/ContentOutputStream.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentOutputStream

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.io.OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

[java.io.FileOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html "class or interface in java.io")

com.appiancorp.suiteapi.content.ContentOutputStream

All Implemented Interfaces:

`[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`, `[Flushable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Flushable.html "class or interface in java.io")`, `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ContentOutputStream extends [FileOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html "class or interface in java.io")

Deprecated.

since 23.2. Use [`ContentUploadOutputStream`](ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") or [`DocumentOutputStream`](DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") instead

This class has been deprecated and support for it will be removed in a future release

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentOutputStream](#%3Cinit%3E\(com.appiancorp.suiteapi.content.ContentService,java.lang.Long,com.appiancorp.suiteapi.content.Approval,java.lang.String\))([ContentService](ContentService.html "interface in com.appiancorp.suiteapi.content") cs, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId, [Approval](Approval.html "class in com.appiancorp.suiteapi.content") approval, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filePath)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[close](#close\(\))()`

    Deprecated.

    Closes the stream.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[getApproval](#getApproval\(\))()`

    Deprecated.

    Returns the approval for the created content object.

    `[FileChannel](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/channels/FileChannel.html "class or interface in java.nio.channels")`

    `[getChannel](#getChannel\(\))()`

    Deprecated.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentId](#getContentId\(\))()`

    Deprecated.

    Returns the id of the created content object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class java.io.[FileOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html "class or interface in java.io")

    `[getFD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#getFD\(\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#write\(byte%5B%5D\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#write\(byte%5B%5D,int,int\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#write\(int\) "class or interface in java.io")`

    ### Methods inherited from class java.io.[OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

    `[flush](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#flush\(\) "class or interface in java.io"), [nullOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#nullOutputStream\(\) "class or interface in java.io")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContentOutputStream

        public ContentOutputStream([ContentService](ContentService.html "interface in com.appiancorp.suiteapi.content") cs, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") contentId, [Approval](Approval.html "class in com.appiancorp.suiteapi.content") approval, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filePath) throws [FileNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileNotFoundException.html "class or interface in java.io")

        Deprecated.

        Throws:

        `[FileNotFoundException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileNotFoundException.html "class or interface in java.io")`

-   ## Method Details

    -   ### close

        public void close() throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")

        Deprecated.

        Closes the stream. After closing, the size of the data written to the stream is calculated and saved as metadata on the content object (can subsequently be retrieved from the [`size field`](Content.html#getSize\(\))). Users of this class should make sure to always call close() and not rely on the finalizer.

        Specified by:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html#close\(\) "class or interface in java.lang")` in interface `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

        Specified by:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html#close\(\) "class or interface in java.io")` in interface `[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`

        Overrides:

        `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#close\(\) "class or interface in java.io")` in class `[FileOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html "class or interface in java.io")`

        Throws:

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")`

    -   ### getContentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentId()

        Deprecated.

        Returns the id of the created content object.

    -   ### getApproval

        public [Approval](Approval.html "class in com.appiancorp.suiteapi.content") getApproval()

        Deprecated.

        Returns the approval for the created content object. See [`ContentService.createApproval(Content, Integer)`](ContentService.html#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)).

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getChannel

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [FileChannel](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/nio/channels/FileChannel.html "class or interface in java.nio.channels") getChannel()

        Deprecated.

        This method is deprecated and support for it will be removed in a future release.

        Overrides:

        `[getChannel](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html#getChannel\(\) "class or interface in java.io")` in class `[FileOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/FileOutputStream.html "class or interface in java.io")`