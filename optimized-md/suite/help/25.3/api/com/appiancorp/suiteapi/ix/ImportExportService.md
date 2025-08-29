---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/ix/ImportExportService.html
original_path: api/com/appiancorp/suiteapi/ix/ImportExportService.html
version: "25.3"
title: "Interface ImportExportService"
page_id: "api/com/appiancorp/suiteapi/ix/ImportExportService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.ix](package-summary.html)

# Interface ImportExportService

* * *

public interface ImportExportService

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix")`

    `[importPackage](#importPackage\(java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage)`

    Imports objects inside a package and returns the detailed results about the import.

    `[ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix")`

    `[importPackage](#importPackage\(java.io.InputStream,java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage, [InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importCustomizationFile)`

    Imports objects inside applications, as well as admin console settings.

    `[ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix")`

    `[inspectPackage](#inspectPackage\(java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage)`

    Inspects objects inside a package and returns detailed results about the inspection.

    `[ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix")`

    `[inspectPackage](#inspectPackage\(java.io.InputStream,java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage, [InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importCustomizationFile)`

    Inspects objects inside an application package or an admin console package and returns detailed results about the inspection.

    Valid Inputs:
    1) application package
    2) admin console package
    3) admin console package + import customization file

    inspectPackage is a read-only operation and does not modify objects in the target environment.

-   ## Method Details

    -   ### importPackage

        [ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix") importPackage([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Imports objects inside a package and returns the detailed results about the import. Valid import packages are ones exported from an Appian environment that is the same as or earlier than the version of Appian where this API is being called.

        Parameters:

        `importPackage` - An input stream representation of a .zip file.

        Returns:

        The results of the import operation.

        Throws:

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### inspectPackage

        [ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix") inspectPackage([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Inspects objects inside a package and returns detailed results about the inspection. inspectPackage is a read-only operation and does not modify objects in the target environment. When inspecting process models that use the Call Web Service smart service, the inspection result reports an error for the process models if the data types used by the Call Web Service smart service are not included in the package and are not in the target environment. This error can be ignored because the process models will automatically create the necessary data types when they are published during import. As a best practice, Appian recommends including all necessary data types in your package if they are not present in the target environment, or if they need to be updated.

        Parameters:

        `importPackage` - An input stream representation of a .zip file.

        Returns:

        The results of the inspect operation.

        Throws:

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### importPackage

        [ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix") importPackage([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage, [InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importCustomizationFile) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Imports objects inside applications, as well as admin console settings. The import customization file allows you to change values for admin console settings that are different between environments.

        Valid Inputs:
        1) application package
        2) admin console package
        3) admin console package + import customization file

        Valid import packages are ones exported from an Appian environment that is the same as or earlier than the version of Appian where this API is being called.

        Parameters:

        `importPackage` - An input stream representation of an application package or admin console package

        `importCustomizationFile` - An input stream representation of an import customization file

        Returns:

        The results of the import operation.

        Throws:

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### inspectPackage

        [ImportResults](ImportResults.html "class in com.appiancorp.suiteapi.ix") inspectPackage([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importPackage, [InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") importCustomizationFile) throws [AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Inspects objects inside an application package or an admin console package and returns detailed results about the inspection.

        Valid Inputs:
        1) application package
        2) admin console package
        3) admin console package + import customization file

        inspectPackage is a read-only operation and does not modify objects in the target environment. When inspecting process models that use the Call Web Service smart service, the inspection result reports an error for the process models if the data types used by the Call Web Service smart service are not included in the package and are not in the target environment. This error can be ignored because the process models will automatically create the necessary data types when they are published during import. As a best practice, Appian recommends including all necessary data types in your package if they are not present in the target environment, or if they need to be updated.

        Parameters:

        `importPackage` - An input stream representation of an application package or admin console package

        `importCustomizationFile` - An input stream representation of an import customization file

        Returns:

        The results of the inspect operation.

        Throws:

        `[AppianException](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`