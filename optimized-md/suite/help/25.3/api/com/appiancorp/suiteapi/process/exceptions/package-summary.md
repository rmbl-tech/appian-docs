---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.process.exceptions

* * *

package com.appiancorp.suiteapi.process.exceptions

Contains exceptions related to processes.

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

-   All Classes and InterfacesClassesEnum ClassesExceptions

    Class

    Description

    [ArchivedProcessException](ArchivedProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on a process that has been archived.

    [IncompatibleArchivedVersionException](IncompatibleArchivedVersionException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if an archived process file is from an incompatible release version, requiring the migration of the archived process file(s).

    [InvalidActivityClassParameterException](InvalidActivityClassParameterException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user provides an [`ActivityClassParameter`](../ActivityClassParameter.html "class in com.appiancorp.suiteapi.process") for an Activity Class, and that Activity Class does not take that parameter.

    [InvalidActivityClassSchemaException](InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on an activity class schema (or schemaId or local Id), and that schema does not exist in the database.

    [InvalidActivityException](InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on an activity (a task or an unattended activity) and that activity does not exist in the database.

    [InvalidExceptionTypeException](InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on a `ProcessExceptionType` (or exception type id) and that exception type does not exist in the database.

    [InvalidExpressionGroupException](InvalidExpressionGroupException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on an expression group (a task or an unattended activity) and that expression group does not exist in the database.

    [InvalidNodeDataTypeReferenceException](InvalidNodeDataTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    [InvalidNoteException](InvalidNoteException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on a note (or noteId) and that note does not exist in the database.

    [InvalidObjectTypeIdException](InvalidObjectTypeIdException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on an object type id that does not correspond to an id block allocated in Service Manager.

    [InvalidProcessException](InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on a process (or process Id), and that process does not exist in the database.

    [InvalidProcessVariableNameException](InvalidProcessVariableNameException.html "class in com.appiancorp.suiteapi.process.exceptions")

    Exception that is thrown if the user calls a method with a process variable name that does not match any variable in the database.

    [InvalidPvTypeReferenceException](InvalidPvTypeReferenceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    [InvalidTaskException](InvalidTaskException.html "class in com.appiancorp.suiteapi.process.exceptions")

    Deprecated.

    use InvalidActivityException

    [ReportComplexityException](ReportComplexityException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the expression is too complex.

    [ReportSizeException](ReportSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the report has too many cells.

    [ResultPageSizeException](ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")

    [RetryableSmartServiceException](RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    A subclass of SmartServiceException that indicates that the exception is transient and the smart service can be safely retried.

    [RetryableSmartServiceException.Builder](RetryableSmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

    The Builder inner class is used to create an instance of the SmartServiceException.

    [SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    An exception thrown by a smart service in the course of its execution.

    [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

    The Builder inner class is used to create an instance of the SmartServiceException.

    [TaskNavigationException](TaskNavigationException.html "class in com.appiancorp.suiteapi.process.exceptions")

    [UnattendedActivityValidationException](UnattendedActivityValidationException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if validation fails (the validate() method of the parameter helper class returns false) when trying to execute an unattended activity.

    [UnsupportedReportSpecificationException](UnsupportedReportSpecificationException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This exception is thrown if the user calls an API method that acts on a report specification and that specification has an unsupported metric, transformation, attribute, etc.

    [UnsupportedReportSpecificationException.Environment](UnsupportedReportSpecificationException.Environment.html "enum class in com.appiancorp.suiteapi.process.exceptions")

    [UnsupportedReportSpecificationException.ErrorType](UnsupportedReportSpecificationException.ErrorType.html "enum class in com.appiancorp.suiteapi.process.exceptions")

    [WSImporterException](WSImporterException.html "class in com.appiancorp.suiteapi.process.exceptions")

    This Exception is thrown when Process Model Importer fails to import or configure a WebService Node (v2)