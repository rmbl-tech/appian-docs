---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/package-summary.html
original_path: api/com/appiancorp/exceptions/package-summary.html
version: "25.3"
title: "Package com.appiancorp.exceptions"
page_id: "api/com/appiancorp/exceptions/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.exceptions

* * *

package com.appiancorp.exceptions

-   All Classes and InterfacesInterfacesClassesEnum ClassesExceptionsErrors

    Class

    Description

    [AppianError](AppianError.html "class in com.appiancorp.exceptions")

    This class holds information about an error.

    [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")

    A builder to create instances of [`AppianError`](AppianError.html "class in com.appiancorp.exceptions").

    [AppianErrorBuilder](AppianErrorBuilder.html "class in com.appiancorp.exceptions")

    Builds localized [`AppianError`](AppianError.html "class in com.appiancorp.exceptions") objects using Appian error codes.

    [AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions")

    [AppianErrorCode.InvalidErrorCode](AppianErrorCode.InvalidErrorCode.html "class in com.appiancorp.exceptions")

    [AppianErrorCodeStaticMessageFormatter](AppianErrorCodeStaticMessageFormatter.html "interface in com.appiancorp.exceptions")

    Callback used to format an AppianErrorCode's static message.

    [AppianErrorCodeTitleFormatter](AppianErrorCodeTitleFormatter.html "interface in com.appiancorp.exceptions")

    Callback used to format an AppianErrorCode's title.

    [AppianException](AppianException.html "class in com.appiancorp.exceptions")

    Deprecated.

    use [`AppianException`](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    [AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions")

    [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")

    A builder to create instances of [`AppianResponseError`](AppianResponseError.html "class in com.appiancorp.exceptions").

    [Environment](Environment.html "enum class in com.appiancorp.exceptions")

    [ErrorCodeHolder](ErrorCodeHolder.html "interface in com.appiancorp.exceptions")

    Used to indicate that an error includes Appian ErrorCode information

    [ExceptionHandler](ExceptionHandler.html "interface in com.appiancorp.exceptions")

    Encapsulates reusable logic for handling exceptions.

    [InsufficientPrivilegesException](InsufficientPrivilegesException.html "class in com.appiancorp.exceptions")

    [InvalidStatusException](InvalidStatusException.html "class in com.appiancorp.exceptions")

    [KeyNotFoundException](KeyNotFoundException.html "class in com.appiancorp.exceptions")

    Thrown when a key is not found in a map.

    [LocalizedAppianRuntimeException](LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")

    This is a wrapper Exception for the purposes of localizing the exception before it is sent to the client

    [LocalizedAppianRuntimeException.LocalizedAppianException](LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")

    [ObjectNotFoundException](ObjectNotFoundException.html "class in com.appiancorp.exceptions")

    [ReportSizeException](ReportSizeException.html "class in com.appiancorp.exceptions")

    [ResultPageSizeException](ResultPageSizeException.html "class in com.appiancorp.exceptions")

    [ToggledOffException](ToggledOffException.html "class in com.appiancorp.exceptions")

    This is a marker exception that is intended to be thrown from code that requires a feature toggle to be on.