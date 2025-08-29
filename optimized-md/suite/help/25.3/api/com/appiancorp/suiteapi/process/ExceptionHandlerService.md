---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ExceptionHandlerService.html
original_path: api/com/appiancorp/suiteapi/process/ExceptionHandlerService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface ExceptionHandlerService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ExceptionHandlerService extends com.appiancorp.services.ContextSensitiveService

Provides methods relating to process exception handling.

Process exception handling is used for raising exceptions on processes or tasks when something goes wrong so that particular users (identified by their role for the process or task) can be notified of the problem and given a recommended course of action.

All exception types must first be registered using [`registerExceptionTypesWithNotes(com.appiancorp.suiteapi.process.ProcessExceptionType[], java.lang.String[])`](#registerExceptionTypesWithNotes\(com.appiancorp.suiteapi.process.ProcessExceptionType%5B%5D,java.lang.String%5B%5D\)). See [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") for more information on how to configure a `ProcessExceptionType` before registering it.

Once an exception type has been registered it can be raised using [`raiseException(String, Long)`](#raiseException\(java.lang.String,java.lang.Long\)) or [`raiseExceptionMessage(String, Long, String)`](#raiseExceptionMessage\(java.lang.String,java.lang.Long,java.lang.String\)) to raise an exception with a non-default message. After an exception has been raised on a process or a task (either by the process engine or by manually calling `raiseException`), the exception will be resolved as soon as the state of the process or task becomes anything other than [`ProcessSummary.STATE_PAUSED_BY_EXCEPTION`](ProcessSummary.html#STATE_PAUSED_BY_EXCEPTION) or [`TaskSummary.TASK_STATUS_PAUSED_BY_EXCEPTION`](TaskSummary.html#TASK_STATUS_PAUSED_BY_EXCEPTION) respectively.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`NotesContentService`](NotesContentService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAdministrationService`](ProcessAdministrationService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessAnalyticsService`](analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
-   [`ProcessDesignService`](ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")
-   [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getAllExceptionTypes$UPDATES](#getAllExceptionTypes$UPDATES)`

    `static final boolean`

    `[getExceptionType$UPDATES](#getExceptionType$UPDATES)`

    `static final boolean`

    `[getExceptionTypes$UPDATES](#getExceptionTypes$UPDATES)`

    `static final boolean`

    `[raiseException$UPDATES](#raiseException$UPDATES)`

    `static final boolean`

    `[raiseExceptionMessage$UPDATES](#raiseExceptionMessage$UPDATES)`

    `static final boolean`

    `[registerExceptionTypesWithNotes$UPDATES](#registerExceptionTypesWithNotes$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllExceptionTypes](#getAllExceptionTypes\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get all the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") objects, paging.

    `[ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")`

    `[getExceptionType](#getExceptionType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId_)`

    Get the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") from its unique id.

    `[ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")[]`

    `[getExceptionTypes](#getExceptionTypes\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] exceptionTypeLocalIds_)`

    Get the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") objects from their unique ids.

    `void`

    `[raiseException](#raiseException\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Raise an exception on a task or process.

    `void`

    `[raiseExceptionMessage](#raiseExceptionMessage\(java.lang.String,java.lang.Long,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Raise an exception on a task or process.

    `void`

    `[registerExceptionTypesWithNotes](#registerExceptionTypesWithNotes\(com.appiancorp.suiteapi.process.ProcessExceptionType%5B%5D,java.lang.String%5B%5D\))([ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")[] exceptionTypes_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] content_)`

    Register exception types, and the note content for those exception types.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getExceptionType$UPDATES

        static final boolean getExceptionType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.getExceptionType$UPDATES)

    -   ### getExceptionTypes$UPDATES

        static final boolean getExceptionTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.getExceptionTypes$UPDATES)

    -   ### getAllExceptionTypes$UPDATES

        static final boolean getAllExceptionTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.getAllExceptionTypes$UPDATES)

    -   ### raiseException$UPDATES

        static final boolean raiseException$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.raiseException$UPDATES)

    -   ### raiseExceptionMessage$UPDATES

        static final boolean raiseExceptionMessage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.raiseExceptionMessage$UPDATES)

    -   ### registerExceptionTypesWithNotes$UPDATES

        static final boolean registerExceptionTypesWithNotes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ExceptionHandlerService.registerExceptionTypesWithNotes$UPDATES)

-   ## Method Details

    -   ### getExceptionType

        [ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") getExceptionType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId\_) throws [InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Get the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") from its unique id.

        Parameters:

        `exceptionTypeLocalId_` - The localId of the `ProcessExceptionType` to get.

        Returns:

        Returns the `ProcessExceptionType` associated with the passed id.

        Throws:

        `[InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no `ProcessExceptionType` with the passed id exists.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getExceptionTypes

        [ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")\[\] getExceptionTypes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] exceptionTypeLocalIds\_) throws [InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")

        Get the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") objects from their unique ids.

        Parameters:

        `exceptionTypeLocalIds_` - The localIds of the `ProcessExceptionType` objects to get.

        Returns:

        Returns an array of `ProcessExceptionType` objects associated with the passed ids.

        Throws:

        `[InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - Thrown if no exception type with the passed id exists.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllExceptionTypes

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllExceptionTypes(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Get all the [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process") objects, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This will be one of the `SORT_BY_XXX` constants in [`ProcessExceptionType`](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")

        `sortOrder_` - The order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Returns a ResultPage of ProcessExceptionType objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### raiseException

        void raiseException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raise an exception on a task or process.

        Parameters:

        `exceptionTypeLocalId_` - The localId of the exception type to raise.

        `id_` - The id of the process or task for which the exception should be raised.

        Throws:

        `[InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no exception type with the passed local id exists.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the task or process specified by `id_` does not exist

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process with the passed id exists.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no task with the passed id exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient permissions to execute this method.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### raiseExceptionMessage

        void raiseExceptionMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") exceptionTypeLocalId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_) throws [InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions"), [InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Raise an exception on a task or process.

        Parameters:

        `exceptionTypeLocalId_` - The localId of the exception type to raise.

        `id_` - The id of the process or task for which the exception should be raised.

        `message_` - A custom message to show the user

        Throws:

        `[InvalidExceptionTypeException](exceptions/InvalidExceptionTypeException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no exception type with the passed local id exists.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the task or process specified by `id_` does not exist

        `[InvalidProcessException](exceptions/InvalidProcessException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no process with the passed id exists.

        `[InvalidActivityException](exceptions/InvalidActivityException.html "class in com.appiancorp.suiteapi.process.exceptions")` - if no task with the passed id exists.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient permissions to execute this method.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### registerExceptionTypesWithNotes

        void registerExceptionTypesWithNotes([ProcessExceptionType](ProcessExceptionType.html "class in com.appiancorp.suiteapi.process")\[\] exceptionTypes\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] content\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Register exception types, and the note content for those exception types. The minimum required fields on the exception type are: `localId`. The `noteId` field will be ignored. Note that there is NO need to separately write the note content to disk using [`NotesContentService.createNoteContent(java.lang.String, java.lang.String)`](NotesContentService.html#createNoteContent\(java.lang.String,java.lang.String\)) - this will be handled automatically.

        Parameters:

        `exceptionTypes_` - the exception types to be registered

        `content_` - the content of the notes associated with the respective exception types. The length of this array must be the same as the length of `exceptionTypes_`

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient permissions to execute this method. A user can call this method successfully if `com.appiancorp.suiteapi.process.security.ProcessPermissions#registerExceptionType` returns `true` for the user.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`