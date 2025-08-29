---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/exceptions/package-summary.html
original_path: api/com/appiancorp/suiteapi/content/exceptions/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.content.exceptions

* * *

package com.appiancorp.suiteapi.content.exceptions

Contains exceptions that are thrown by [`ContentService`](../ContentService.html "interface in com.appiancorp.suiteapi.content").

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.content](../package-summary.html)

    Provides access and modification functionality for content, which replaces collaboration and is more extensible (for instance, content is now also being used for rules).

-   Exceptions

    Class

    Description

    [ContentExpiredException](ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods if the content they are referencing is expired.

    [DuplicateUuidException](DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods that create content if the UUID specified is already in use for another piece of content.

    [HasChildrenException](HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods that delete or deactive content if the content has children and the flag was not set to automatically delete or deactive any children.

    [IllegalRecursionException](IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods that create or modify a content item if the parent is set to the item itself.

    [InsufficientNameUniquenessException](InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods that create or modify a content item if the name of the content is insufficiently unique for the type of uniqueness specified ([`ContentConstants.UNIQUE_NONE`](../ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_PARENT`](../ContentConstants.html#UNIQUE_FOR_PARENT), [`ContentConstants.UNIQUE_FOR_TYPE`](../ContentConstants.html#UNIQUE_FOR_TYPE), or [`ContentConstants.UNIQUE_FOR_ALL`](../ContentConstants.html#UNIQUE_FOR_ALL)).

    [InvalidApprovalStateException](InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by [`ContentService.approveVersion(Long, Integer)`](../ContentService.html#approveVersion\(java.lang.Long,java.lang.Integer\))

    [InvalidContentException](InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods detecting that a content item does not exist.

    [InvalidPersonalContentException](InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by [`ContentService.getPersonalId()`](../ContentService.html#getPersonalId\(\)), [`ContentService.getPersonal()`](../ContentService.html#getPersonal\(\)), [`ContentService.getPersonalAndTeams(ContentFilter)`](../ContentService.html#getPersonalAndTeams\(com.appiancorp.suiteapi.content.ContentFilter\)), {@link com.appiancorp.suiteapi.content.ContentService#getPersonalAndTeamsIds(ContentFilter), and [`if no personal knowledge center exists yet for that user, and the service failed to create it. If this is thrown, a new personal knowledge center may be created for that user, and then the call that threw this exception should be repeated.`](../ContentService.html#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    [InvalidRejectionStateException](InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by [`ContentService.rejectVersion(Long, Integer)`](../ContentService.html#rejectVersion\(java.lang.Long,java.lang.Integer\))

    [InvalidTypeMaskException](InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods if they detect that the type mask provided is invalid.

    [NotLockOwnerException](NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by [`ContentService.lock(Long)`](../ContentService.html#lock\(java.lang.Long\)) and [`ContentService.lock(Long[])`](../ContentService.html#lock\(java.lang.Long%5B%5D\)) if the content is locked and the current user is not the owner.

    [PendingApprovalException](PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception may be thrown by service methods detecting that content is pending approval, which makes the attempted action illegal.

    [RenameNotAllowedException](RenameNotAllowedException.html "class in com.appiancorp.suiteapi.content.exceptions")

    This exception should be thrown when renaming of a `Content` (like `Rule` or `Constant`) is not allowed in certain scenarios.