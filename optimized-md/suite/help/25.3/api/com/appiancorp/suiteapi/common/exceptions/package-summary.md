---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/package-summary.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.common.exceptions"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.common.exceptions

* * *

package com.appiancorp.suiteapi.common.exceptions

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.common](../package-summary.html)

    Classes and interfaces for working with data structures and concepts that are common throughout Appian.

    [com.appiancorp.suiteapi.common.cli](../cli/package-summary.html)

    [com.appiancorp.suiteapi.common.paging](../paging/package-summary.html)

-   All Classes and InterfacesInterfacesClassesExceptions

    Class

    Description

    [AppianErrorCodeFormatter](AppianErrorCodeFormatter.html "interface in com.appiancorp.suiteapi.common.exceptions")

    Callback used to format an AppianErrorCode.

    [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `AppianException` is the base class of all application-level exceptions thrown in the product.

    [AppianPrivilegeNotFoundException](AppianPrivilegeNotFoundException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `AppianPrivilegeNotFoundException` acts as a wrapper around an equivalent `AppianPrivelegeException`.

    [AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `AppianRuntimeException` is the base class of all application-level runtime exceptions thrown in the product.

    [AppianStorageException](AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when an issue is encountered when interacting with Appian file storage.

    [ContextException](ContextException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown if the context is null or not valid.

    [DatabaseOperationException](DatabaseOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting a failure when backing up and/or saving the Database.

    [DecryptionException](DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Runtime exception thrown when an attempt at text decryption throws an exception.

    [DeprecatedException](DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods which themselves are deprecated, or that contain a deprecated combination of parameters.

    [DuplicateExpressionException](DuplicateExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown while trying to create or modify a [`Rule`](../../rules/Rule.html "class in com.appiancorp.suiteapi.rules") with a name that is already registered as an expression function.

    [DuplicateIdException](DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given id is not unique.

    [DuplicateNameException](DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given name of a user, group, grouptype, or attribute name is not unique.

    [DuplicatePortletException](DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when attempting to place a portlet into a page that already contains the same portlet.

    [DuplicateUuidException](DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods that create content if the UUID specified is already in use for another piece of content.

    [DuplicateWebServiceNameException](DuplicateWebServiceNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user tries to create a web service to start a process model, and a web service with the same name already exists.

    [EncryptionException](EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Runtime exception thrown when an attempt at text encryption throws an exception.

    [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    [ExceptionUtil](ExceptionUtil.html "class in com.appiancorp.suiteapi.common.exceptions")

    Deprecated.

    use individual method replacements

    [ExpressionException](ExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given expression is invalid.

    [GroupIsAttributeException](GroupIsAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to delete a group that is being used as an attribute for another group

    [GroupsExtantException](GroupsExtantException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when an attempt is made to delete a group type but groups exist that reference that group type.

    [GroupTypeUsedByRulesException](GroupTypeUsedByRulesException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception indicating that the attempted action could not completed because a `GroupType` involved in the action is being used by a rule.

    [InvalidAdminException](InvalidAdminException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given user or group does not exist as an admin of a group.

    [InvalidAnonymousUserException](InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the user is logged in as 'anonymous', but anonymous access has not been enabled.

    [InvalidAttachmentException](InvalidAttachmentException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user references an attachment that does not exist in the database.

    [InvalidAttributeException](InvalidAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to get, update, or delete an attribute for a group type that does not exist

    [InvalidAttributeValueException](InvalidAttributeValueException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that can be thrown if the user attempts to configure a group or group type attribute incorrectly (that is, by giving an attribute a value which is incompatible with its type).

    [InvalidCategoryException](InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a category id is used that does not refer to an existing category.

    [InvalidCommunityException](InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a collaboration community does not exist.

    [InvalidCreatorException](InvalidCreatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Deprecated.

    use InvalidUserException

    [InvalidDataFormatException](InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods when invalid data formats are passed to the service methods e.g.

    [InvalidDecimalException](InvalidDecimalException.html "class in com.appiancorp.suiteapi.common.exceptions")

    [InvalidDependencyException](InvalidDependencyException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user tries to delete a process model, but completed or active processes of that model exist.

    [InvalidDocumentException](InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a document or any versions of a document does not exist.

    [InvalidEmailAddressException](InvalidEmailAddressException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that given email address in invalid.

    [InvalidEscalationException](InvalidEscalationException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the escalation is non-existent or has been deleted.

    [InvalidEventException](InvalidEventException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that an event does not exist.

    [InvalidExpressionException](InvalidExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the expression with the given ID is non-existent or has been deleted.

    [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a folder does not exist.

    [InvalidForumException](InvalidForumException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown when a user references a forum that does not exist in the database.

    [InvalidGroupException](InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given group does not exist.

    [InvalidGroupTypeException](InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given group type does not exist.

    [InvalidKnowledgeCenterException](InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given knowledge center does not exist.

    [InvalidLocalObjectTypeException](InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a local object type does not exist.

    [InvalidLoginException](InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown by authenticating service methods detecting that a given username and password do not match.

    [InvalidMemberException](InvalidMemberException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given user or group does not exist as a member of a group.

    [InvalidMemberPolicyException](InvalidMemberPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given member policy id when creating a group is either not supported or is not supported in combination with the given security map id and/or viewing policy id.

    [InvalidMessageException](InvalidMessageException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown by service classes to indicate that a thread message is invalid.

    [InvalidMetadataRuleException](InvalidMetadataRuleException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a metadata rule id references a rule that is not in the database.

    [InvalidNameException](InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that an invalid or `null` name was specified for an object.

    [InvalidNodeException](InvalidNodeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the user has referenced a node that is not in the database.

    [InvalidNodeMultiplicityException](InvalidNodeMultiplicityException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if a node is started through IFM, but that node is not allowed to have multiple instance (i.e. is restricted by activity chaining).

    [InvalidNodeTypeLogicException](InvalidNodeTypeLogicException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if an invalid operation such as reassigning or starting the logic node is performed.

    [InvalidNodeTypeRecurringException](InvalidNodeTypeRecurringException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if an invalid operation such as starting node which is set to recur.

    [InvalidNotificationException](InvalidNotificationException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a notification id is used that does not refer to an existing notification.

    [InvalidNotificationTypeException](InvalidNotificationTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when the user references a notification type that is not in the database.

    [InvalidOperationException](InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods when the given method does not support a particular operation - for instance, it may be thrown when attempting to delete a collaboration folder that contains documents.

    [InvalidPageException](InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a page id is used that does not refer to an existing page.

    [InvalidParentException](InvalidParentException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when the parent group is set for a group that the user does not have permission to set or does not exist.

    [InvalidPortletException](InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a portlet id is used that does not refer to an existing portlet.

    [InvalidPortletTypeException](InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a portlet type id is used that does not refer to an existing portlet type.

    [InvalidPriorityException](InvalidPriorityException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the user has referenced a priority that is not in the database.

    [InvalidProcessModelException](InvalidProcessModelException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the user has referenced a process model that is not in the database.

    [InvalidRankNameException](InvalidRankNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the rank name is invalid.

    [InvalidRoleException](InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception should be thrown whenever an invalid role is passed in.

    [InvalidScheduleTypeException](InvalidScheduleTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when an invalid schedule type is triggered.

    [InvalidSecurityMapException](InvalidSecurityMapException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that an Invalid or null security map Id was specified for new group.

    [InvalidStateException](InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a page is not in a state compatible with the action attempted on it.

    [InvalidStatusException](InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions")

    [InvalidSupervisorException](InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown when trying to create or update a user with a supervisor that does not exist in the database.

    [InvalidThreadException](InvalidThreadException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user references a thread (now known as Topic) that does not exist in the database.

    [InvalidTitleException](InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the title (rank) is invalid.

    [InvalidUserException](InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a referenced user does not exist.

    [InvalidUuidException](InvalidUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if a user references a UUID that does not exist in the database.

    [InvalidVersionException](InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a referenced version of an entity (eg a process model) does not exist.

    [InvalidViewingPolicyException](InvalidViewingPolicyException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given viewing policy id when creating a group is either not supported or is not supported in combination with the given security map id and/or member policy policy id.

    [InvalidZoneException](InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when attempting to place a portlet into a non-existing zone in the page.

    [LocaleFormatter](LocaleFormatter.html "class in com.appiancorp.suiteapi.common.exceptions")

    ErrorCodeFormatter based upon a Locale.

    [LockedAccountException](LockedAccountException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when the user cannot login because the account is locked.

    [LockException](LockException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that indicates operation faliure due to a locking issue.

    [NotEmptyException](NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that indicates an operation failed because a container was not empty, such as an attempt to delete a [`Community`](../../collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration") that still has children.

    [NotesLimitException](NotesLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user tries to attach a [`Note`](../../process/Note.html "class in com.appiancorp.suiteapi.process") to a process (or task), but the maximum number of allowable notes have already been attached.

    [NullUserRenameException](NullUserRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    NullUserRenameException

    [PasswordExpiredException](PasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when the user's password has expired.

    [PortletSharingException](PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown if (1) user tries to create/modify a portlet so that it is shareable and inherits security from the page it is on or, (2) user tries to unshare a portlet that is on other pages (without using a method explicitly designed to do this).

    [PrivilegeException](PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception thrown to indicate that an operation failed because the actor had insufficient security permissions.

    [ProcessAttachmentsLimitException](ProcessAttachmentsLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception that is thrown if the user tries to attach an attachment to a process, but that object already has the maximum number of allowed attachments.

    [RecursiveRelationshipException](RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when a relationship is trying to be created that will result in a recursive loop.

    [Retryable](Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")

    A marker interface indicating that an Exception is transient.

    [RetryableAppianException](RetryableAppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    A subclass of AppianException that indicates that the exception is transient and the operation can be safely retried.

    [RetryableAppianRuntimeException](RetryableAppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    A subclass of AppianRuntimeException that indicates that the exception is transient and the operation can be safely retried.

    [SelfRenameException](SelfRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception will be thrown if a user attempts to change their own username by any means.

    [ServiceLocatorException](ServiceLocatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Exception meant to represent an error caught by an `ApplicationAssociatedObjectTranslator` while using an underlying service.

    [StorageLimitException](StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that the a particular entity cannot be stored because a particular limit has been reached on the server.

    [SystemAttributeException](SystemAttributeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to delete an Attribute of a Group Type that is core to the Appian Installation.

    [SystemGroupException](SystemGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to delete a group that is core to the Personalization service.

    [SystemGroupTypeException](SystemGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to delete a group type that is core to the Appian Installation.

    [TemporaryPasswordExpiredException](TemporaryPasswordExpiredException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when the user's **temporary** password has expired.

    [TooManyDocumentsException](TooManyDocumentsException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when the number of documents exceeds a specified number

    [UnsupportedAttributeTypeException](UnsupportedAttributeTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception is thrown when trying to create or update an attribute type that is not supported by the Personalization service.

    [UnsupportedOperatorException](UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

    Thrown when a given operator is not supported by the Personalization service.

    [UnsupportedRelationshipException](UnsupportedRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a relationship type does not exist or is not currently supported.

    [UnsupportedRoleException](UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given role does not exist or is not supported.

    [UnsupportedTitleException](UnsupportedTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception may be thrown by service methods detecting that a given title is not currently supported.

    [WriteException](WriteException.html "class in com.appiancorp.suiteapi.common.exceptions")

    This exception should be thrown when an error occurs trying to write data to a storage location (whether it be writing to a flat file on disk or writing to a DB).