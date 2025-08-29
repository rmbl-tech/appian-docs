---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/config/ImportResult.html
original_path: api/com/appiancorp/suiteapi/type/config/ImportResult.html
version: "25.3"
title: "Class ImportResult"
page_id: "api/com/appiancorp/suiteapi/type/config/ImportResult"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.config](package-summary.html)

# Class ImportResult

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.config.ImportResult

* * *

public class ImportResult extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Holds the result of an import of types into the system.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ImportResult](#%3Cinit%3E\(com.appiancorp.suiteapi.type.Datatype%5B%5D,com.appiancorp.suiteapi.type.Datatype%5B%5D,com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D\))([Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[] topLevelDatatypes, [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[] newDatatypes, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics)`

    Creates an instance.

    `[ImportResult](#%3Cinit%3E\(com.appiancorp.suiteapi.type.Datatype%5B%5D,com.appiancorp.suiteapi.type.Datatype%5B%5D,com.appiancorp.suiteapi.type.config.ImportDiagnostic%5B%5D,org.eclipse.emf.ecore.EPackage.Registry\))([Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[] topLevelDatatypes, [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[] newDatatypes, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[] diagnostics, org.eclipse.emf.ecore.EPackage.Registry registry)`

    Creates an instance.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")[]`

    `[getDiagnostics](#getDiagnostics\(\))()`

    Gets the diagnostics that were generated during the import.

    `[Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getNewDatatypes](#getNewDatatypes\(\))()`

    Gets the `Datatype` objects that represent all types that were newly created during the import.

    `org.eclipse.emf.ecore.EPackage.Registry`

    `[getRegistry](#getRegistry\(\))()`

    Returns an Ecore registry populated with all imported types.

    `[Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")[]`

    `[getTopLevelDatatypes](#getTopLevelDatatypes\(\))()`

    Gets the [`Datatype`](../Datatype.html "class in com.appiancorp.suiteapi.type") objects that represent the types that were created during the import.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ImportResult

        public ImportResult([Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] topLevelDatatypes, [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] newDatatypes, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics)

        Creates an instance.

        Parameters:

        `topLevelDatatypes` - the top-level datatypes that were created during the import.

        `newDatatypes` - all datatypes that were newly created during the import.

        `diagnostics` - contains warning and errors information collected during the import.

    -   ### ImportResult

        public ImportResult([Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] topLevelDatatypes, [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] newDatatypes, [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] diagnostics, org.eclipse.emf.ecore.EPackage.Registry registry)

        Creates an instance.

        Parameters:

        `topLevelDatatypes` - the top-level datatypes that were created during the import.

        `newDatatypes` - all datatypes that were newly created during the import.

        `diagnostics` - contains warning and errors information collected during the import.

        `registry` - an Ecore registry populated with all imported types.

-   ## Method Details

    -   ### getTopLevelDatatypes

        public [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getTopLevelDatatypes()

        Gets the [`Datatype`](../Datatype.html "class in com.appiancorp.suiteapi.type") objects that represent the types that were created during the import.

        Returns:

        the top-level datatypes.

    -   ### getNewDatatypes

        public [Datatype](../Datatype.html "class in com.appiancorp.suiteapi.type")\[\] getNewDatatypes()

        Gets the `Datatype` objects that represent all types that were newly created during the import.

        Returns:

        all newly created datatypes.

    -   ### getDiagnostics

        public [ImportDiagnostic](ImportDiagnostic.html "class in com.appiancorp.suiteapi.type.config")\[\] getDiagnostics()

        Gets the diagnostics that were generated during the import.

        Returns:

        all diagnostics generated during the import.

    -   ### getRegistry

        public org.eclipse.emf.ecore.EPackage.Registry getRegistry()

        Returns an Ecore registry populated with all imported types.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`