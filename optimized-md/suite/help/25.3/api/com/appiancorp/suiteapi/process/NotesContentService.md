---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/NotesContentService.html
original_path: api/com/appiancorp/suiteapi/process/NotesContentService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Interface NotesContentService

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface NotesContentService

Deprecated.

Convenience methods for creating note content. The service is used to retrieve notes from disk and update notes on disk. This service writes and retrieves notes from disk. This must be used in conjunction with the note methods in [`ProcessExecutionService`](ProcessExecutionService.html "interface in com.appiancorp.suiteapi.process"). When creating a note this service must be called immediately after creating the [`NoteMetadata`](NoteMetadata.html "class in com.appiancorp.suiteapi.process") using [`ProcessExecutionService.createNoteMetadata(NoteMetadata)`](ProcessExecutionService.html#createNoteMetadata\(com.appiancorp.suiteapi.process.NoteMetadata\))

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

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

    `[assembleNote$UPDATES](#assembleNote$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[assembleNotes$UPDATES](#assembleNotes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createNoteContent$UPDATES](#createNoteContent$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateNoteContent$UPDATES](#updateNoteContent$UPDATES)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")`

    `[assembleNote](#assembleNote\(com.appiancorp.suiteapi.process.NoteMetadata\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_)`

    Deprecated.

    Assembles a note from note metadata.

    `[Note](Note.html "class in com.appiancorp.suiteapi.process")[]`

    `[assembleNotes](#assembleNotes\(com.appiancorp.suiteapi.process.NoteMetadata%5B%5D\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")[] nms_)`

    Deprecated.

    Assembles an array of notes from note metadata.

    `void`

    `[createNoteContent](#createNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content_)`

    Deprecated.

    Creates note content at the location on disk specified by the note metadata The location refers to the full path of a file on disk.

    `void`

    `[createNoteContent](#createNoteContent\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content_)`

    Deprecated.

    Creates new note content at the specified location on disk.

    `void`

    `[updateNoteContent](#updateNoteContent\(com.appiancorp.suiteapi.process.NoteMetadata,java.lang.String\))([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content_)`

    Deprecated.

    Updates the note content at the location on disk specified by the note metadata.

    `void`

    `[updateNoteContent](#updateNoteContent\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content_)`

    Deprecated.

    Updates the note content at the specified location on disk.

-   ## Field Details

    -   ### assembleNote$UPDATES

        static final boolean assembleNote$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.NotesContentService.assembleNote$UPDATES)

    -   ### assembleNotes$UPDATES

        static final boolean assembleNotes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.NotesContentService.assembleNotes$UPDATES)

    -   ### createNoteContent$UPDATES

        static final boolean createNoteContent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.NotesContentService.createNoteContent$UPDATES)

    -   ### updateNoteContent$UPDATES

        static final boolean updateNoteContent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.NotesContentService.updateNoteContent$UPDATES)

-   ## Method Details

    -   ### assembleNote

        [Note](Note.html "class in com.appiancorp.suiteapi.process") assembleNote([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Assembles a note from note metadata. The note content will be fetched from disk from the location pointed to by [`NoteMetadata.getLocation()`](NoteMetadata.html#getLocation\(\)). The location refers to the full path of a file on disk. If no note content file exists at the location, the returned note will be populated with default content (text indicating that the note could not be found). `NoteMetaData` fields required for `Note` creation are: none.

        Parameters:

        `nm_` - the metadata to assemble from which to assemble a note

        Returns:

        `Note` object populated from NoteMetadata

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### assembleNotes

        [Note](Note.html "class in com.appiancorp.suiteapi.process")\[\] assembleNotes([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process")\[\] nms\_) throws [AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

        Deprecated.

        Assembles an array of notes from note metadata. This method is the bulk version of [`assembleNote(com.appiancorp.suiteapi.process.NoteMetadata)`](#assembleNote\(com.appiancorp.suiteapi.process.NoteMetadata\))

        Parameters:

        `nms_` - an array of metadata from which to assemble the notes

        Returns:

        an array of notes, populated from the note metadata

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createNoteContent

        void createNoteContent([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content\_) throws [WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates new note content at the specified location on disk. The location refers to the full path of a file on disk.

        Parameters:

        `location_` - the location on disk where note content is to be stored.

        `content_` - the content to be stored at the given location

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### createNoteContent

        void createNoteContent([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content\_) throws [WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates note content at the location on disk specified by the note metadata The location refers to the full path of a file on disk.

        Parameters:

        `nm_` - the note metadata specifying the location on disk where content is to be created (specifically, content will be created at the location specified by [`NoteMetadata.getLocation()`](NoteMetadata.html#getLocation\(\)))

        `content_` - the content to be stored at the given location

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### updateNoteContent

        void updateNoteContent([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") location\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content\_) throws [WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the note content at the specified location on disk. The location refers to the full path of a file on disk.

        Parameters:

        `location_` - the location on disk of the note content

        `content_` - the new content to be stored at the given location

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### updateNoteContent

        void updateNoteContent([NoteMetadata](NoteMetadata.html "class in com.appiancorp.suiteapi.process") nm\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") content\_) throws [WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the note content at the location on disk specified by the note metadata. The location refers to the full path of a file on disk.

        Parameters:

        `nm_` - the note metadata specifying the location on disk where content is to be updated (specifically, content will be updated at the location specified by [`NoteMetadata.getLocation()`](NoteMetadata.html#getLocation\(\)))

        `content_` - the content to be stored at the given location

        Throws:

        `[AppianException](../../exceptions/AppianException.html "class in com.appiancorp.exceptions")` - if any error is encountered executing the method

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[WriteException](../common/exceptions/WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")`