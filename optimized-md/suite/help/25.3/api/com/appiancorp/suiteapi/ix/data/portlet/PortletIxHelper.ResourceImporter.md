---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceImporter.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceImporter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class PortletIxHelper.ResourceImporter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceImporter

Enclosing class:

[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

* * *

public static class PortletIxHelper.ResourceImporter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ResourceImporter](#%3Cinit%3E\(com.appiancorp.ix.Type,U,com.appiancorp.ix.ImportDriver\))(com.appiancorp.ix.Type<H,I,U> type, U uuid, com.appiancorp.ix.ImportDriver driver)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[importResource](#importResource\(java.io.OutputStream,java.lang.String\))([OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io") os, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName)`

    Imports a resource (such as a file).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ResourceImporter

        public ResourceImporter(com.appiancorp.ix.Type<H,I,U> type, U uuid, com.appiancorp.ix.ImportDriver driver)

-   ## Method Details

    -   ### importResource

        public void importResource([OutputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/OutputStream.html "class or interface in java.io") os, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Imports a resource (such as a file). Given the resource name and an output stream, this method writes the data of the specified resource into the given stream. **NOTE: The caller is responsible for closing the output stream.**

        Parameters:

        `os` - The output stream into which the resource data should be written.

        `resourceName` - The name of the resource to import. This must match the name used to export the resource using [`PortletIxHelper.ResourceExporter.exportResource(InputStream, String)`](PortletIxHelper.ResourceExporter.html#exportResource\(java.io.InputStream,java.lang.String\)).

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the given resource cannot be written to the given stream successfully.