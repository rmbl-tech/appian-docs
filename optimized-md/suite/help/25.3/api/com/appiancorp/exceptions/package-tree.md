---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/package-tree.html
original_path: api/com/appiancorp/exceptions/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.exceptions

Package Hierarchies:

-   [All Packages](../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.exceptions.[AppianError](AppianError.html "class in com.appiancorp.exceptions") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.exceptions.[AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions")
    -   com.appiancorp.exceptions.[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")
    -   com.appiancorp.exceptions.[AppianErrorBuilder](AppianErrorBuilder.html "class in com.appiancorp.exceptions")
    -   com.appiancorp.exceptions.[AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
    -   com.appiancorp.exceptions.[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")
    -   java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") (implements java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   java.lang.[Error](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Error.html "class or interface in java.lang")
            -   com.appiancorp.exceptions.[AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")
        -   java.lang.[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")
            -   com.appiancorp.suiteapi.common.exceptions.[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")
                -   com.appiancorp.exceptions.[AppianException](AppianException.html "class in com.appiancorp.exceptions")
                    -   com.appiancorp.exceptions.[InsufficientPrivilegesException](InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")
                    -   com.appiancorp.suiteapi.process.exceptions.[ReportSizeException](../suiteapi/process/exceptions/ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")
                        -   com.appiancorp.exceptions.[ReportSizeException](ReportSizeException.html "class in com.appiancorp.exceptions")
                -   com.appiancorp.suiteapi.common.exceptions.[InvalidStatusException](../suiteapi/common/exceptions/InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions")
                    -   com.appiancorp.exceptions.[InvalidStatusException](InvalidStatusException.html "class in com.appiancorp.exceptions")
                -   com.appiancorp.exceptions.[LocalizedAppianRuntimeException.LocalizedAppianException](LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")
                -   com.appiancorp.exceptions.[ObjectNotFoundException](ObjectNotFoundException.html "class in com.appiancorp.exceptions")
                -   com.appiancorp.suiteapi.process.exceptions.[ResultPageSizeException](../suiteapi/process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")
                    -   com.appiancorp.exceptions.[ResultPageSizeException](ResultPageSizeException.html "class in com.appiancorp.exceptions")
            -   com.appiancorp.exceptions.[KeyNotFoundException](KeyNotFoundException.html "class in com.appiancorp.exceptions")
            -   java.lang.[RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")
                -   com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")
                    -   com.appiancorp.exceptions.[LocalizedAppianRuntimeException](LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")
                    -   com.appiancorp.exceptions.[ToggledOffException](ToggledOffException.html "class in com.appiancorp.exceptions")

## Interface Hierarchy

-   com.appiancorp.exceptions.[AppianErrorCodeStaticMessageFormatter](AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")
-   com.appiancorp.exceptions.[AppianErrorCodeTitleFormatter](AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions")
-   com.appiancorp.exceptions.[ErrorCodeHolder](ErrorCodeHolder.html "interface in com.appiancorp.exceptions")
-   com.appiancorp.exceptions.[ExceptionHandler](ExceptionHandler.html "interface in com.appiancorp.exceptions")

## Enum Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<E> (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, java.lang.constant.[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.exceptions.[Environment](Environment.html "enum class in com.appiancorp.exceptions")