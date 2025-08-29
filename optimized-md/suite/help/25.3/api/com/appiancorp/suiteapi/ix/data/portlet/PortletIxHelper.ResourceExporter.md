---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceExporter.html
original_path: api/com/appiancorp/suiteapi/ix/data/portlet/PortletIxHelper.ResourceExporter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.ix.data.portlet](package-summary.html)

# Class PortletIxHelper.ResourceExporter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.ix.data.portlet.PortletIxHelper.ResourceExporter

Enclosing class:

[PortletIxHelper](PortletIxHelper.html "class in com.appiancorp.suiteapi.ix.data.portlet")

* * *

public static class PortletIxHelper.ResourceExporter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ResourceExporter](#%3Cinit%3E\(com.appiancorp.ix.Type,U,com.appiancorp.ix.ExportDriver\))(com.appiancorp.ix.Type<H,I,U> type, U uuid, com.appiancorp.ix.ExportDriver driver)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[exportResource](#exportResource\(java.io.InputStream,java.lang.String\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") is, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName)`

    Exports a resource (such as a file).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ResourceExporter

        public ResourceExporter(com.appiancorp.ix.Type<H,I,U> type, U uuid, com.appiancorp.ix.ExportDriver driver)

-   ## Method Details

    -   ### exportResource

        public void exportResource([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") is, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") resourceName) throws [AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Exports a resource (such as a file). Given the resource name and an input stream, this method reads the data from the stream and exports it with the specified name. **NOTE: The caller is responsible for closing the input stream.**

        Parameters:

        `is` - The input stream from which to read the resource data.

        `resourceName` - The name of the resource to export.

        Throws:

        `[AppianException](../../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the given resource cannot be read from the given stream successfully.