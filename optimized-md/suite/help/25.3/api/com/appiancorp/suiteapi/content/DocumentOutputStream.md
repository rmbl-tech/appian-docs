---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/DocumentOutputStream.html
original_path: api/com/appiancorp/suiteapi/content/DocumentOutputStream.html
version: "25.3"
title: "Class DocumentOutputStream"
page_id: "api/com/appiancorp/suiteapi/content/DocumentOutputStream"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class DocumentOutputStream

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.io.OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

com.appiancorp.suiteapi.content.DocumentOutputStream

All Implemented Interfaces:

`[Closeable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Closeable.html "class or interface in java.io")`, `[Flushable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Flushable.html "class or interface in java.io")`, `[AutoCloseable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/AutoCloseable.html "class or interface in java.lang")`

* * *

public abstract class DocumentOutputStream extends [OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

Represents an output stream for a Document object.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DocumentOutputStream](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `abstract long`

    `[getBytesWritten](#getBytesWritten\(\))()`

    DocumentOutputStream tracks the number of bytes to this OutputStream, This can then be used to accuratly set the Document size

    ### Methods inherited from class java.io.[OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io")

    `[close](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#close\(\) "class or interface in java.io"), [flush](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#flush\(\) "class or interface in java.io"), [nullOutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#nullOutputStream\(\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(byte%5B%5D\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(byte%5B%5D,int,int\) "class or interface in java.io"), [write](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html#write\(int\) "class or interface in java.io")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### DocumentOutputStream

        public DocumentOutputStream()

-   ## Method Details

    -   ### getBytesWritten

        public abstract long getBytesWritten()

        DocumentOutputStream tracks the number of bytes to this OutputStream, This can then be used to accuratly set the Document size

        Returns:

        the number of bytes written