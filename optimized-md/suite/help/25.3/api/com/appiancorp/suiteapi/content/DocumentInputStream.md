---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/DocumentInputStream.html
original_path: api/com/appiancorp/suiteapi/content/DocumentInputStream.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class DocumentInputStream

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.io.InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")

com.appiancorp.suiteapi.content.DocumentInputStream

All Implemented Interfaces:

`[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`, `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

* * *

public abstract class DocumentInputStream extends [InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")

Represents an input stream for a Document object.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DocumentInputStream](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class java.io.[InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io")

    `[available](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#available\(\) "class or interface in java.io"), [close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#close\(\) "class or interface in java.io"), [mark](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#mark\(int\) "class or interface in java.io"), [markSupported](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#markSupported\(\) "class or interface in java.io"), [nullInputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#nullInputStream\(\) "class or interface in java.io"), [read](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#read\(\) "class or interface in java.io"), [read](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#read\(byte%5B%5D\) "class or interface in java.io"), [read](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#read\(byte%5B%5D,int,int\) "class or interface in java.io"), [readAllBytes](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#readAllBytes\(\) "class or interface in java.io"), [readNBytes](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#readNBytes\(byte%5B%5D,int,int\) "class or interface in java.io"), [readNBytes](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#readNBytes\(int\) "class or interface in java.io"), [reset](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#reset\(\) "class or interface in java.io"), [skip](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#skip\(long\) "class or interface in java.io"), [skipNBytes](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#skipNBytes\(long\) "class or interface in java.io"), [transferTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html#transferTo\(java.io.OutputStream\) "class or interface in java.io")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### DocumentInputStream

        public DocumentInputStream()