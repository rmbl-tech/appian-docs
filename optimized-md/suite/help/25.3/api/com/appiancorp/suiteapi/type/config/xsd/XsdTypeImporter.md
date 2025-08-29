---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/xsd/XsdTypeImporter.html
original_path: api/com/appiancorp/suiteapi/type/config/xsd/XsdTypeImporter.html
version: "25.3"
title: "Class XsdTypeImporter"
page_id: "api/com/appiancorp/suiteapi/type/config/xsd/XsdTypeImporter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config.xsd](package-summary.html)

# Class XsdTypeImporter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.config.xsd.XsdTypeImporter

* * *

public final class XsdTypeImporter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Imports datatypes into the system from XSD.

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ImportResult](../ImportResult.html "class in com.appiancorp.suiteapi.type.config")`

    `[importFromStream](#importFromStream\(java.io.InputStream,boolean,com.appiancorp.services.ServiceContext\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") stream_, boolean visible_, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc_)`

    Creates datatypes in the system based on the XML Schema type definitions contained in an input stream.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### importFromStream

        public static [ImportResult](../ImportResult.html "class in com.appiancorp.suiteapi.type.config") importFromStream([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") stream\_, boolean visible\_, [ServiceContext](../../../../services/ServiceContext.html "interface in com.appiancorp.services") sc\_) throws [IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io"), [ImportException](../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions"), [InvalidTypeException](../../exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Creates datatypes in the system based on the XML Schema type definitions contained in an input stream.

        Parameters:

        `stream_` - An input stream representation of an XML Schema

        `sc_` - The service context to use when importing types

        `visible_` - Whether the types referenced in the schema should be made visible

        Returns:

        An [`ImportResult`](../ImportResult.html "class in com.appiancorp.suiteapi.type.config") object

        Throws:

        `[InvalidTypeException](../../exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if an invalid type is encountered during the import

        `[IOException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/IOException.html "class or interface in java.io")` - if there is a problem with the input stream

        `[ImportException](../../exceptions/ImportException.html "class in com.appiancorp.suiteapi.type.exceptions")` - if any other error occurs

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if both visible\_ and temporary\_ are true. A type cannot be both visible and temporary.